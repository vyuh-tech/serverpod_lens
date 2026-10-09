import 'dart:convert';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart'
    show SchemaColumn, SchemaEnum, SchemaForeignKey, SchemaGraph, SchemaModule, SchemaTable;
import 'package:yaml/yaml.dart';

import 'schema_extractor.dart';

/// Result of analyzing an uploaded Serverpod project.
class ProjectAnalysis {
  const ProjectAnalysis(this.graph, {this.warnings = const [], this.projectName});

  final SchemaGraph graph;
  final List<String> warnings;
  final String? projectName;

  bool get isEmpty => graph.tables.isEmpty;
}

/// Analyzes an uploaded Serverpod project (a `.zip`) and builds a
/// [SchemaGraph].
///
/// Strategy, in order of preference:
///  1. the newest `migrations/<v>/definition_project.json` (resolved truth),
///  2. a `definition.json` (framework tables filtered out),
///  3. `.spy.yaml` models as a fallback (tables, columns, `relation(parent=…)`).
abstract final class ProjectAnalyzer {
  static final _projectDef = RegExp(
    r'(^|/)migrations/\d+/definition_project\.json$',
  );
  static final _fullDef = RegExp(r'(^|/)migrations/\d+/definition\.json$');

  static ProjectAnalysis analyzeZip(Uint8List bytes, {required String name}) {
    final Archive archive;
    try {
      archive = ZipDecoder().decodeBytes(bytes);
    } catch (error) {
      return ProjectAnalysis(
        _emptyGraph(name),
        warnings: ['Not a valid zip: $error'],
      );
    }

    final projectDefs = <String>[];
    final fullDefs = <String>[];
    final spyFiles = <String, String>{};

    for (final file in archive) {
      if (!file.isFile) continue;
      final path = file.name;
      final content = utf8.decode(file.content as List<int>, allowMalformed: true);
      if (_projectDef.hasMatch(path)) {
        projectDefs.add(content);
      } else if (_fullDef.hasMatch(path)) {
        fullDefs.add(content);
      } else if (path.endsWith('.spy.yaml') ||
          path.endsWith('.spy.yml') ||
          path.endsWith('.spy')) {
        spyFiles[path] = content;
      }
    }

    // 1. definition_project.json files — pick the one with the most tables
    //    (a zip can contain several server packages).
    SchemaGraph? best;
    for (final content in projectDefs) {
      final graph = _tryDefinition(content, name, projectOnly: false);
      if (graph != null && (best == null || graph.tables.length > best.tables.length)) {
        best = graph;
      }
    }
    if (best != null && best.tables.isNotEmpty) {
      return ProjectAnalysis(_withModules(best, name));
    }

    // 2. full definition.json (drop framework tables)
    for (final content in fullDefs) {
      final graph = _tryDefinition(content, name, projectOnly: true);
      if (graph != null && graph.tables.isNotEmpty) {
        return ProjectAnalysis(_withModules(graph, name));
      }
    }

    // 3. .spy.yaml fallback
    if (spyFiles.isNotEmpty) {
      final graph = _fromSpyFiles(spyFiles, name);
      return ProjectAnalysis(
        _withModules(graph, name),
        warnings: const [
          'No migrations found; derived from .spy.yaml (relations may be partial).',
        ],
      );
    }

    return ProjectAnalysis(
      _emptyGraph(name),
      warnings: const [
        'No Serverpod schema found (looked for migrations/*/definition*.json and *.spy.yaml).',
      ],
    );
  }

  static SchemaGraph? _tryDefinition(
    String content,
    String source, {
    required bool projectOnly,
  }) {
    try {
      return SchemaExtractor.fromDefinitionJson(
        content,
        source: source,
        projectOnly: projectOnly,
      );
    } catch (_) {
      return null;
    }
  }

  static SchemaGraph _emptyGraph(String source) => SchemaGraph(
    source: source,
    generatedAt: DateTime.now().toUtc(),
    modules: const [],
    tables: const [],
    enums: const [],
  );

  /// Recomputes module counts / ordering (used after spy parsing).
  static SchemaGraph _withModules(SchemaGraph graph, String source) {
    final counts = <String, int>{};
    for (final table in graph.tables) {
      counts[table.module] = (counts[table.module] ?? 0) + 1;
    }
    final modules = counts.entries
        .map((e) => SchemaModule(name: e.key, tableCount: e.value))
        .toList()
      ..sort((a, b) => b.tableCount.compareTo(a.tableCount));
    return SchemaGraph(
      source: source,
      generatedAt: graph.generatedAt,
      modules: modules,
      tables: graph.tables,
      enums: graph.enums,
    );
  }

  static SchemaGraph _fromSpyFiles(Map<String, String> files, String source) {
    final tables = <SchemaTable>[];
    final enums = <SchemaEnum>[];

    for (final entry in files.entries) {
      final Object? doc;
      try {
        doc = loadYaml(entry.value);
      } catch (_) {
        continue;
      }
      if (doc is! YamlMap) continue;

      if (doc['enum'] != null) {
        final values = (doc['values'] as YamlList?)?.map((v) => '$v').toList();
        if (values != null) {
          enums.add(SchemaEnum(name: '${doc['enum']}', values: values));
        }
        continue;
      }

      final tableName = doc['table']?.toString();
      if (tableName == null) continue; // non-table model
      final fields = doc['fields'];
      if (fields is! YamlMap) continue;

      final columns = <SchemaColumn>[];
      final foreignKeys = <SchemaForeignKey>[];

      for (final field in fields.entries) {
        final name = '${field.key}';
        var type = 'String';
        var modifiers = '';
        final spec = field.value;
        if (spec is String) {
          final parts = spec.split(',');
          type = parts.first.trim();
          modifiers = parts.skip(1).join(',');
        } else if (spec is YamlMap) {
          type = '${spec['type'] ?? 'String'}';
          modifiers = spec.toString();
        }
        final nullable = type.endsWith('?');

        final parent = RegExp(
          r'parent\s*=\s*([A-Za-z0-9_]+)',
        ).firstMatch(modifiers)?.group(1);
        if (parent != null) {
          foreignKeys.add(SchemaForeignKey(
            name: '',
            columns: [name],
            refTable: parent,
            refColumns: const ['id'],
            onDelete: 'noAction',
            onUpdate: 'noAction',
          ));
        }

        columns.add(SchemaColumn(
          name: name,
          fieldName: name,
          dartType: type,
          dbType: _dbTypeFor(type),
          isNullable: nullable,
          isPrimaryKey: name == 'id',
          isUnique: modifiers.contains('unique'),
          defaultValue: null,
        ));
      }

      tables.add(SchemaTable(
        name: tableName,
        className: '${doc['class']}',
        schema: 'public',
        module: _domainOf(tableName),
        documentation: null,
        columns: columns,
        foreignKeys: foreignKeys,
        indexes: const [],
      ));
    }

    tables.sort((a, b) => a.name.compareTo(b.name));
    return SchemaGraph(
      source: source,
      generatedAt: DateTime.now().toUtc(),
      modules: const [],
      tables: tables,
      enums: enums,
    );
  }

  static String _dbTypeFor(String dartType) {
    final t = dartType.replaceAll('?', '').trim();
    if (t.startsWith('List<')) return 'array';
    return switch (t) {
      'UuidValue' => 'uuid',
      'String' => 'text',
      'int' => 'int',
      'BigInt' => 'bigint',
      'double' => 'double',
      'bool' => 'boolean',
      'DateTime' => 'timestamp',
      'Duration' => 'interval',
      'ByteData' => 'bytea',
      'Uri' => 'text',
      _ => 'text',
    };
  }

  static String _domainOf(String tableName) {
    final underscore = tableName.indexOf('_');
    return underscore > 0 ? tableName.substring(0, underscore) : 'main';
  }
}
