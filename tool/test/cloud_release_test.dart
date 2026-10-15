import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:test/test.dart';

import '../../examples/large_schema/server/tool/check_release_build.dart'
    as guard;
import '../cloud_release.dart';

void main() {
  late Directory temporary;
  late Directory frontend;
  late Directory repo;

  setUp(() {
    temporary = Directory.systemTemp.createTempSync('lens-release-test-');
    frontend = Directory('${temporary.path}/frontend')..createSync();
    repo = Directory('${temporary.path}/repo')..createSync();
    final packages = <String, Object>{};
    final config = <Object>[];
    for (final entry in lensArchives.entries) {
      final root = Directory('${temporary.path}/cache/${entry.key}')
        ..createSync(recursive: true);
      writeManifest(File('${root.path}/pubspec.yaml'), {
        'name': entry.key,
        'version': lensRelease,
      });
      packages[entry.key] = {
        'source': 'hosted',
        'version': lensRelease,
        'description': {'url': lensRegistry, 'sha256': entry.value},
      };
      config.add({'name': entry.key, 'rootUri': root.uri.toString()});
    }
    writeManifest(File('${frontend.path}/pubspec.lock'), {
      'packages': packages,
    });
    writeManifest(File('${frontend.path}/.dart_tool/package_config.json'), {
      'packages': config,
    });
  });

  tearDown(() => temporary.deleteSync(recursive: true));

  test(
    'Cloud build refuses a newer workspace until publication pins are updated',
    () {
      for (final name in lensArchives.keys) {
        final spec = File('${repo.path}/packages/$name/pubspec.yaml');
        writeManifest(spec, {'name': name, 'version': lensRelease});
      }
      expect(() => requireCurrentReleasePins(repo), returnsNormally);
      writeManifest(
        File('${repo.path}/packages/serverpod_lens_schema/pubspec.yaml'),
        {'name': 'serverpod_lens_schema', 'version': '999.0.0'},
      );
      expect(() => requireCurrentReleasePins(repo), throwsStateError);
    },
  );

  test('accepts the pinned registry releases outside the repository', () {
    expect(
      publishedLensRoots(frontend, repo).keys,
      unorderedEquals(lensArchives.keys),
    );
  });

  for (final field in ['source', 'version', 'url', 'sha256']) {
    test('rejects a different $field', () {
      final lock = File('${frontend.path}/pubspec.lock');
      final data = readManifest(lock);
      final package = data['packages']['serverpod_lens_schema'] as Map;
      if (field == 'url' || field == 'sha256') {
        (package['description'] as Map)[field] = 'wrong';
      } else {
        package[field] = 'wrong';
      }
      writeManifest(lock, data);
      expect(() => publishedLensRoots(frontend, repo), throwsStateError);
    });
  }

  test('rejects local workspace resolution despite a hosted lock entry', () {
    final configFile = File('${frontend.path}/.dart_tool/package_config.json');
    final config = jsonDecode(configFile.readAsStringSync()) as Map;
    final local = Directory('${repo.path}/packages/serverpod_lens')
      ..createSync(recursive: true);
    (config['packages'] as List).first['rootUri'] = local.uri.toString();
    writeManifest(configFile, config);
    expect(() => publishedLensRoots(frontend, repo), throwsStateError);
  });

  test('rejects a symlink into repository source', () {
    final alias = Link('${temporary.path}/cache/alias')..createSync(repo.path);
    final configFile = File('${frontend.path}/.dart_tool/package_config.json');
    final config = jsonDecode(configFile.readAsStringSync()) as Map;
    (config['packages'] as List).first['rootUri'] = Directory(alias.path).uri
        .toString();
    writeManifest(configFile, config);
    expect(() => publishedLensRoots(frontend, repo), throwsStateError);
  });

  test('schema verification permits pub workspace metadata', () {
    final schema = Directory('${temporary.path}/schema')..createSync();
    final file = File('${schema.path}/lib/schema.dart');
    file.parent.createSync();
    file.writeAsStringSync('published source');
    final manifest = {
      'lib/schema.dart': sha256.convert(file.readAsBytesSync()).toString(),
    };
    final metadata = File('${schema.path}/.dart_tool/pub/workspace_ref.json');
    metadata.parent.createSync(recursive: true);
    metadata.writeAsStringSync('{}');
    expect(() => guard.verifySchemaFiles(schema, manifest), returnsNormally);
    file.writeAsStringSync('changed source');
    expect(() => guard.verifySchemaFiles(schema, manifest), throwsStateError);
  });

  test('schema verification rejects extra source files', () {
    final schema = Directory('${temporary.path}/schema')..createSync();
    File('${schema.path}/extra.dart').writeAsStringSync('extra source');
    expect(
      () => guard.verifySchemaFiles(schema, {'lib/schema.dart': 'missing'}),
      throwsStateError,
    );
  });
}
