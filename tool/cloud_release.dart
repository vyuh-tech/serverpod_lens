import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

const lensRegistry = 'https://pub.vyuh.tech';
const lensRelease = '0.1.0';
const lensArchives = {
  'serverpod_lens':
      '61dceb245a30d4991119fb0dd6b9cdd742d74e70d377ec07e2e77bc56f498ee7',
  'serverpod_lens_schema':
      'fadbf5b23c31224f0d77b78a706eec4ee7f8e698299f4b5b8571c07078941675',
};

/// A new workspace API must not accidentally deploy with an older archive.
void requireCurrentReleasePins(Directory repo) {
  for (final name in lensArchives.keys) {
    final spec = readManifest(File('${repo.path}/packages/$name/pubspec.yaml'));
    if (spec['version'] != lensRelease) {
      throw StateError(
        '$name ${spec['version']} is not the pinned Cloud release $lensRelease. Publish the approved packages, then update lensRelease and archive hashes before building Cloud.',
      );
    }
  }
}

Map<String, dynamic> readManifest(File file) =>
    jsonDecode(jsonEncode(loadYaml(file.readAsStringSync())))
        as Map<String, dynamic>;

void writeManifest(File file, Object value) {
  file.parent.createSync(recursive: true);
  file.writeAsStringSync(
    '${const JsonEncoder.withIndent('  ').convert(value)}\n',
  );
}

/// Rejects workspace substitution even when a pubspec requests hosted packages.
Map<String, Directory> publishedLensRoots(Directory frontend, Directory repo) {
  final packages =
      readManifest(File('${frontend.path}/pubspec.lock'))['packages']
          as Map<String, dynamic>;
  final configFile = File('${frontend.path}/.dart_tool/package_config.json');
  final config = jsonDecode(configFile.readAsStringSync()) as Map;
  final result = <String, Directory>{};
  for (final entry in lensArchives.entries) {
    final locked = packages[entry.key] as Map?;
    final description = locked?['description'];
    if (locked?['source'] != 'hosted' ||
        locked?['version'] != lensRelease ||
        description is! Map ||
        description['url'] != lensRegistry ||
        description['sha256'] != entry.value) {
      throw StateError(
        '${entry.key} must resolve to the published $lensRelease archive.',
      );
    }
    final item = (config['packages'] as List).cast<Map>().singleWhere(
      (item) => item['name'] == entry.key,
    );
    final root = Directory.fromUri(
      configFile.uri.resolve(item['rootUri'] as String),
    );
    final resolved = Directory(root.resolveSymbolicLinksSync());
    final repoUri = Directory(repo.resolveSymbolicLinksSync()).uri;
    if (resolved.uri.toString().startsWith(repoUri.toString())) {
      throw StateError('${entry.key} resolves to repository source.');
    }
    final manifest = readManifest(File('${resolved.path}/pubspec.yaml'));
    if (manifest['name'] != entry.key || manifest['version'] != lensRelease) {
      throw StateError(
        '${entry.key} package contents have the wrong identity.',
      );
    }
    result[entry.key] = resolved;
  }
  return result;
}
