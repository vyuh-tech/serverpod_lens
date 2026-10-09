import 'dart:convert';

import 'package:serverpod_lens_server/src/generated/protocol.dart';

/// Reads a Serverpod database definition (`definition.json` /
/// `definition_project.json`) and produces a normalized [SchemaGraph].
///
/// The definition files are what `serverpod generate` + `create-migration`
/// emit; they are the resolved truth for tables, columns, foreign keys and
/// indexes. Keeping this a pure function makes it trivially testable.
abstract final class SchemaExtractor {
  static const _columnTypes = [
    'text',
    'boolean',
    'integer',
    'double',
    'timestamp',
    'bytea',
    'bigint',
    'uuid',
    'json',
    'unknown',
    'vector',
    'halfvec',
    'sparsevec',
    'bit',
    'jsonb',
    'geography',
    'geographyLineString',
    'geographyPolygon',
    'geographyGeometryCollection',
  ];

  static const _foreignKeyActions = [
    'setNull',
    'setDefault',
    'restrict',
    'noAction',
    'cascade',
  ];

  /// Builds a [SchemaGraph] from a raw definition JSON string.
  ///
  /// Set [projectOnly] to keep only the project's own tables (the tables whose
  /// `module` is not a framework module). The graph still records module
  /// membership per table.
  static SchemaGraph fromDefinitionJson(
    String json, {
    required String source,
    bool projectOnly = false,
  }) {
    final decoded = jsonDecode(json) as Map<String, dynamic>;
    final rawTables = (decoded['tables'] as List?) ?? const [];
    final rawEnums = (decoded['enums'] as List?) ?? const [];

    final tables = <SchemaTable>[];
    final moduleCounts = <String, int>{};

    for (final raw in rawTables.cast<Map<String, dynamic>>()) {
      final module = (raw['module'] as String?) ?? 'unknown';
      if (projectOnly && !_isProjectModule(module)) continue;

      final rawColumns = (raw['columns'] as List?) ?? const [];
      final columns = <SchemaColumn>[];
      final primaryKeys = <String>{};
      final uniqueColumns = <String>{};

      final indexes = <SchemaIndex>[];
      for (final rawIndex
          in ((raw['indexes'] as List?) ?? const [])
              .cast<Map<String, dynamic>>()) {
        final elements = ((rawIndex['elements'] as List?) ?? const [])
            .cast<Map<String, dynamic>>()
            .map((e) => (e['definition'] as String?) ?? '')
            .where((e) => e.isNotEmpty)
            .toList();
        final isUnique = (rawIndex['isUnique'] as bool?) ?? false;
        final isPrimary = (rawIndex['isPrimary'] as bool?) ?? false;
        if (isPrimary) primaryKeys.addAll(elements);
        if (isUnique && elements.length == 1) uniqueColumns.addAll(elements);
        indexes.add(
          SchemaIndex(
            name: (rawIndex['indexName'] as String?) ?? '',
            columns: elements,
            unique: isUnique,
            type: (rawIndex['type'] as String?) ?? 'btree',
          ),
        );
      }

      for (final rawColumn in rawColumns.cast<Map<String, dynamic>>()) {
        final name = (rawColumn['name'] as String?) ?? '';
        final columnType = _enumName(
          rawColumn['columnType'],
          _columnTypes,
        );
        columns.add(
          SchemaColumn(
            name: name,
            fieldName: (rawColumn['fieldName'] as String?) ?? name,
            dartType: (rawColumn['dartType'] as String?) ?? 'String',
            dbType: columnType,
            isNullable: (rawColumn['isNullable'] as bool?) ?? true,
            isPrimaryKey: name == 'id' || primaryKeys.contains(name),
            isUnique: uniqueColumns.contains(name),
            defaultValue: rawColumn['columnDefault'] as String?,
          ),
        );
      }

      final foreignKeys = <SchemaForeignKey>[];
      for (final rawFk
          in ((raw['foreignKeys'] as List?) ?? const [])
              .cast<Map<String, dynamic>>()) {
        foreignKeys.add(
          SchemaForeignKey(
            name: (rawFk['constraintName'] as String?) ?? '',
            columns: ((rawFk['columns'] as List?) ?? const []).cast<String>(),
            refTable: (rawFk['referenceTable'] as String?) ?? '',
            refColumns: ((rawFk['referenceColumns'] as List?) ?? const [])
                .cast<String>(),
            onDelete: _enumName(rawFk['onDelete'], _foreignKeyActions),
            onUpdate: _enumName(rawFk['onUpdate'], _foreignKeyActions),
          ),
        );
      }

      final name = (raw['name'] as String?) ?? '';
      final domain = module;
      moduleCounts[domain] = (moduleCounts[domain] ?? 0) + 1;

      tables.add(
        SchemaTable(
          name: name,
          className: (raw['dartName'] as String?) ?? name,
          schema: (raw['schema'] as String?) ?? 'public',
          module: domain,
          documentation: null,
          columns: columns,
          foreignKeys: foreignKeys,
          indexes: indexes,
        ),
      );
    }

    final modules =
        moduleCounts.entries
            .map((e) => SchemaModule(name: e.key, tableCount: e.value))
            .toList()
          ..sort((a, b) => b.tableCount.compareTo(a.tableCount));

    return SchemaGraph(
      source: source,
      generatedAt: DateTime.now().toUtc(),
      modules: modules,
      tables: tables,
      enums: rawEnums
          .cast<Map<String, dynamic>>()
          .map(
            (e) => SchemaEnum(
              name: (e['name'] as String?) ?? '',
              values: ((e['values'] as List?) ?? const []).cast<String>(),
            ),
          )
          .toList(),
    );
  }

  static bool _isProjectModule(String module) =>
      !_frameworkModules.contains(module);

  /// Framework modules shipped with Serverpod (everything else is the project).
  static const _frameworkModules = {
    'serverpod',
    'serverpod_auth',
    'serverpod_auth_core',
    'serverpod_auth_idp',
    'serverpod_cloud_storage',
    'serverpod_offline_sync',
    'postgres',
  };

  static String _enumName(Object? value, List<String> names) {
    if (value is int && value >= 0 && value < names.length) return names[value];
    if (value is String && value.isNotEmpty) return value;
    return 'unknown';
  }
}
