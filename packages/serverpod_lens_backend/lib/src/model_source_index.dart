import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';

/// Indexes only this host's authored models. Never accepts a client file path.
final class ModelSourceIndex {
  ModelSourceIndex({this.root = 'lib', this.projectDirectory});
  final String? projectDirectory;
  final String root;

  ({Map<String, String> paths, Map<String, String> sources}) read() {
    final directory = Directory(
      projectDirectory == null ? root : path.join(projectDirectory!, root),
    );
    final paths = <String, String>{};
    final sources = <String, String>{};
    if (!directory.existsSync()) return (paths: paths, sources: sources);
    final files =
        _authoredFiles(directory)
            .where(
              (file) =>
                  ['.spy.yaml', '.spy.yml', '.spy'].any(file.path.endsWith),
            )
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));
    for (final file in files) {
      if (FileSystemEntity.isLinkSync(file.path)) continue;
      final stat = file.statSync();
      if (stat.size > 256 * 1024) continue;
      final source = file.readAsStringSync();
      String? identity;
      try {
        final yaml = loadYaml(source);
        if (yaml is YamlMap && yaml['table'] is String) {
          final table = yaml['table'] as String;
          identity = table.contains('.')
              ? table
              : '${yaml['schema'] ?? 'public'}.$table';
        }
      } catch (_) {
        // Generation may be in flight; omit partial source, preserving native metadata.
      }
      if (identity == null) continue;
      if (paths.containsKey(identity)) {
        throw StateError('Ambiguous model source for $identity');
      }
      paths[identity] =
          (projectDirectory == null
                  ? file.path
                  : path.relative(file.path, from: projectDirectory))
              .replaceAll('\\', '/');
      sources[identity] = source;
    }
    return (paths: paths, sources: sources);
  }
}

/// Prune generated code before traversing it; authored models may live anywhere
/// under lib. Link entries are never followed.
Iterable<File> _authoredFiles(Directory directory) sync* {
  for (final entity in directory.listSync(followLinks: false)) {
    if (entity is File) {
      yield entity;
    } else if (entity is Directory &&
        path.basename(entity.path) != 'generated') {
      yield* _authoredFiles(entity);
    }
  }
}
