import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

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
}
