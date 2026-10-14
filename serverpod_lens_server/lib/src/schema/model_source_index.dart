import 'dart:io';
import 'package:yaml/yaml.dart';

/// Indexes only this host's authored models. Never accepts a client file path.
final class ModelSourceIndex {
  ModelSourceIndex({this.root = 'lib/src'});
  final String root;
  final _cache = <String, (DateTime, int, String, String?)>{};

  ({Map<String, String> paths, Map<String, String> sources}) read() {
    final directory = Directory(root);
    final paths = <String, String>{};
    final sources = <String, String>{};
    if (!directory.existsSync()) return (paths: paths, sources: sources);
    final present = <String>{};
    final files =
        directory
            .listSync(recursive: true, followLinks: false)
            .whereType<File>()
            .where((file) => file.path.endsWith('.spy.yaml'))
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));
    for (final file in files) {
      if (FileSystemEntity.isLinkSync(file.path)) continue;
      final stat = file.statSync();
      if (stat.size > 256 * 1024) continue;
      present.add(file.path);
      var cached = _cache[file.path];
      if (cached == null ||
          cached.$1 != stat.modified ||
          cached.$2 != stat.size) {
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
          // Generation may be in flight. A partial file must not break the last valid graph.
        }
        cached = (stat.modified, stat.size, source, identity);
        _cache[file.path] = cached;
      }
      final identity = cached.$4;
      if (identity == null) continue;
      if (paths.containsKey(identity)) {
        throw StateError('Ambiguous model source for $identity');
      }
      paths[identity] = file.path.replaceAll('\\', '/');
      sources[identity] = cached.$3;
    }
    _cache.removeWhere((path, _) => !present.contains(path));
    return (paths: paths, sources: sources);
  }
}
