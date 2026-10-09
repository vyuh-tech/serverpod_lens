import 'dart:convert';
import 'dart:io';

import 'package:serverpod_lens_server/src/schema/schema_extractor.dart';

/// Exports this Serverpod project's resolved schema for adapter verification.
/// This does not overwrite the separately imported flutter_elog SQL asset.
///
/// Run from the `serverpod_lens_server` directory:
///   dart run bin/dump_schema.dart
Future<void> main() async {
  final outPath =
      Platform.environment['POD_LENS_GRAPH_OUT'] ??
      '../docs/serverpod-schema.json';

  final migrationsDir = Directory('migrations');
  final versions =
      migrationsDir
          .listSync()
          .whereType<Directory>()
          .map((d) => d.path)
          .toList()
        ..sort();
  if (versions.isEmpty) {
    stderr.writeln('No migrations found. Run `serverpod create-migration`.');
    exit(1);
  }

  final definition = File('${versions.last}/definition_project.json');
  if (!definition.existsSync()) {
    stderr.writeln('Missing ${definition.path}');
    exit(1);
  }

  final graph = SchemaExtractor.fromDefinitionJson(
    definition.readAsStringSync(),
    source: 'serverpod_lens',
    projectOnly: true,
  );

  final out = File(outPath)..createSync(recursive: true);
  out.writeAsStringSync(
    const JsonEncoder.withIndent('  ').convert(graph.toJson()),
  );

  stdout.writeln(
    'Wrote ${graph.tables.length} tables, '
    '${graph.tables.fold<int>(0, (n, t) => n + t.foreignKeys.length)} FKs '
    'to ${out.path}',
  );
}
