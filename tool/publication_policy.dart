import 'dart:io';

import 'package:yaml/yaml.dart';

const publicationRegistry = 'https://pub.vyuh.tech';
const publicationTier = 'internal';
const publicationPackages = ['serverpod_lens_schema', 'serverpod_lens'];

final class PackageRelease {
  const PackageRelease(this.name, this.version, this.path);
  final String name;
  final String version;
  final String path;
}

List<PackageRelease> releasePackages(Directory root) {
  final releases = <PackageRelease>[];
  for (final name in publicationPackages) {
    final location = 'packages/$name';
    final spec = loadYaml(
      File('${root.path}/$location/pubspec.yaml').readAsStringSync(),
    ) as YamlMap;
    final version = spec['version'];
    if (spec['name'] != name ||
        spec['publish_to'] != publicationRegistry ||
        spec['publish_to_tier'] != publicationTier ||
        spec['resolution'] != 'workspace' ||
        version is! String ||
        !RegExp(r'^\d+\.\d+\.\d+(?:-[\w.-]+)?(?:\+[\w.-]+)?$')
            .hasMatch(version)) {
      throw StateError(
        '$name must have a valid version, workspace resolution and internal registry metadata.',
      );
    }
    releases.add(PackageRelease(name, version, location));
  }
  final viewer = loadYaml(
    File('${root.path}/packages/serverpod_lens/pubspec.yaml')
        .readAsStringSync(),
  ) as YamlMap;
  final dependency =
      (viewer['dependencies'] as YamlMap)['serverpod_lens_schema'];
  if (dependency is! YamlMap ||
      dependency['hosted'] != publicationRegistry ||
      dependency['version'] is! String) {
    throw StateError(
      'The viewer must resolve the schema package from pub.vyuh.tech.',
    );
  }
  final workspace =
      loadYaml(File('${root.path}/pubspec.yaml').readAsStringSync()) as YamlMap;
  if (workspace['publish_to'] != 'none')
    throw StateError('The workspace root must remain unpublished.');
  for (final path in workspace['workspace'] as YamlList) {
    if (releases.any((release) => release.path == path)) continue;
    final spec = loadYaml(
      File('${root.path}/$path/pubspec.yaml').readAsStringSync(),
    ) as YamlMap;
    if (spec['publish_to'] != 'none')
      throw StateError('$path must remain unpublished.');
  }
  return releases;
}

/// Match CDX's exact exception for the custom registry key. Errors or any
/// additional warning fail; publication never uses a broad skip-validation flag.
bool publicationValidationPassed(int exitCode, String output) {
  if (exitCode == 0) return true;
  if (exitCode != 65 ||
      RegExp(r'Package validation found the following errors?:')
          .hasMatch(output))
    return false;
  return RegExp(
    r'Package validation found the following potential issue:\s*\* "publish_to_tier" is not a key recognized by pub - did you mean "publish_to"\?\s*(?:Package validation found the following hints?:[\s\S]*?)?The server may enforce additional checks\.\s*Package has 1 warning(?: and \d+ hints?)?\.\s*$',
  ).hasMatch(output);
}

bool registryContainsInternalRelease(
  Map<String, dynamic> response,
  PackageRelease release,
) {
  final versions = response['versions'];
  if (versions is! List) return false;
  for (final raw in versions) {
    if (raw is! Map || raw['version'] != release.version) continue;
    final spec = raw['pubspec'];
    return spec is Map &&
        spec['name'] == release.name &&
        spec['version'] == release.version &&
        spec['publish_to_tier'] == publicationTier;
  }
  return false;
}
