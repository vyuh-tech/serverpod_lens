import 'dart:convert';

import 'package:serverpod_lens_client/serverpod_lens_client.dart'
    show SchemaColumn, SchemaEnum, SchemaForeignKey, SchemaGraph, SchemaIndex, SchemaModule, SchemaTable;

/// Reads a Serverpod database definition (`definition.json` /
/// `definition_project.json`) and produces a normalized [SchemaGraph].
///
/// Pure Dart (no Flutter), so the app can analyze an uploaded project in the
/// browser as well as on desktop.
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
  ];

  static const _foreignKeyActions = [
    'setNull',
    'setDefault',
    'restrict',
    'noAction',
    'cascade',
  ];

  /// Builds a [SchemaGraph] from a raw definition JSON string.
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
      for (final rawIndex in ((raw['indexes'] as List?) ?? const [])
          .cast<Map<String, dynamic>>()) {
        final elements = ((rawIndex['elements'] as List?) ?? const [])
            .cast<Map<String, dynamic>>()
            .map((e) => (e['definition'] as String?) ?? '')
            .where((e) => e.isNotEmpty)
            .toList();
        final isUnique = (rawIndex['isUnique'] as bool?) ?? false;
        final isPrimary = (rawIndex['isPrimary'] as bool?) ?? false;
        if (isPrimary) primaryKeys.addAll(elements);
        if (isUnique) uniqueColumns.addAll(elements);
        indexes.add(SchemaIndex(
          name: (rawIndex['indexName'] as String?) ?? '',
          columns: elements,
          unique: isUnique,
          type: (rawIndex['type'] as String?) ?? 'btree',
        ));
      }

      for (final rawColumn in rawColumns.cast<Map<String, dynamic>>()) {
        final name = (rawColumn['name'] as String?) ?? '';
        columns.add(SchemaColumn(
          name: name,
          fieldName: (rawColumn['fieldName'] as String?) ?? name,
          dartType: (rawColumn['dartType'] as String?) ?? 'String',
          dbType: _enumName(rawColumn['columnType'], _columnTypes),
          isNullable: (rawColumn['isNullable'] as bool?) ?? true,
          isPrimaryKey: name == 'id' || primaryKeys.contains(name),
          isUnique: uniqueColumns.contains(name),
          defaultValue: rawColumn['columnDefault'] as String?,
        ));
      }

      final foreignKeys = <SchemaForeignKey>[];
      for (final rawFk in ((raw['foreignKeys'] as List?) ?? const [])
          .cast<Map<String, dynamic>>()) {
        foreignKeys.add(SchemaForeignKey(
          name: (rawFk['constraintName'] as String?) ?? '',
          columns: ((rawFk['columns'] as List?) ?? const []).cast<String>(),
          refTable: (rawFk['referenceTable'] as String?) ?? '',
          refColumns: ((rawFk['referenceColumns'] as List?) ?? const [])
              .cast<String>(),
          onDelete: _enumName(rawFk['onDelete'], _foreignKeyActions),
          onUpdate: _enumName(rawFk['onUpdate'], _foreignKeyActions),
        ));
      }

      final name = (raw['name'] as String?) ?? '';
      final domain = _domainOf(name);
      moduleCounts[domain] = (moduleCounts[domain] ?? 0) + 1;

      tables.add(SchemaTable(
        name: name,
        className: (raw['dartName'] as String?) ?? name,
        schema: (raw['schema'] as String?) ?? 'public',
        module: domain,
        documentation: null,
        columns: columns,
        foreignKeys: foreignKeys,
        indexes: indexes,
      ));
    }

    final modules = moduleCounts.entries
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
          .map((e) => SchemaEnum(
                name: (e['name'] as String?) ?? '',
                values: ((e['values'] as List?) ?? const []).cast<String>(),
              ))
          .toList(),
    );
  }

  /// Domain prefix used for grouping, derived from the table name.
  static String _domainOf(String tableName) {
    for (final prefix in const ['public', 'sso', 'elog']) {
      if (tableName.startsWith('${prefix}_')) return prefix;
    }
    // Fall back to the first word before an underscore for unknown projects.
    final underscore = tableName.indexOf('_');
    return underscore > 0 ? tableName.substring(0, underscore) : 'main';
  }

  static const _frameworkModules = {
    'serverpod',
    'serverpod_auth',
    'serverpod_auth_core',
    'serverpod_auth_idp',
    'serverpod_cloud_storage',
    'serverpod_offline_sync',
    'postgres',
  };

  static bool _isProjectModule(String module) =>
      !_frameworkModules.contains(module);

  static String _enumName(Object? value, List<String> names) {
    if (value is int && value >= 0 && value < names.length) return names[value];
    if (value is String && names.contains(value)) return value;
    return 'unknown';
  }
}
