import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

const lensRegistry = 'https://pub.vyuh.tech';
const lensRelease = '0.1.1';
const lensArchives = {
  'serverpod_lens':
      '8052cb9849ebce68327e057c6a1398fdcdf58d3bec7287d7fbbfcee588183394',
  'serverpod_lens_schema':
      '2c4504d1b5653fd096279ae87d55fbcdb0983019387e15c2ae708a9434423f96',
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
