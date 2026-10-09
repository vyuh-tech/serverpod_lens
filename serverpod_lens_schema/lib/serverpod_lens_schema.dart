export 'src/schema_graph.dart';

import 'dart:convert';

/// Reads resolved Serverpod database definitions into the shared wire contract.
///
/// No Flutter, server runtime or generated protocol dependency is needed here.
/// The viewer uses the plain model; the Serverpod fixture bridges to its generated
/// protocol. Database schema and Serverpod module remain distinct.
abstract final class SchemaDefinitionReader {
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
  static const _actions = [
    'setNull',
    'setDefault',
    'restrict',
    'noAction',
    'cascade',
  ];
  static const _frameworkModules = {
    'serverpod',
    'serverpod_auth',
    'serverpod_auth_core',
    'serverpod_auth_idp',
    'serverpod_cloud_storage',
    'serverpod_offline_sync',
    'postgres',
  };

  static Map<String, dynamic> read(
    String definition, {
    required String source,
    bool projectOnly = false,
  }) {
    final decoded = jsonDecode(definition);
    if (decoded is! Map<String, dynamic> || decoded['tables'] is! List) {
      throw const FormatException(
        'Database definition must contain a tables list',
      );
    }
    final tables = <Map<String, dynamic>>[];
    final counts = <String, int>{};
    for (final raw in _objects(decoded['tables'])) {
      final module = raw['module'] as String? ?? 'unknown';
      if (projectOnly && _frameworkModules.contains(module)) continue;
      final primary = <String>{};
      final unique = <String>{};
      final indexes = <Map<String, dynamic>>[];
      for (final index in _objects(raw['indexes'])) {
        final columns = _objects(index['elements'])
            .map((element) => element['definition'])
            .whereType<String>()
            .where((name) => name.isNotEmpty)
            .toList();
        final isUnique = index['isUnique'] == true;
        if (index['isPrimary'] == true) primary.addAll(columns);
        if (isUnique &&
            (index['predicate'] == null || index['predicate'] == '') &&
            columns.length == 1) {
          unique.add(columns.single);
        }
        indexes.add({
          '__className__': 'SchemaIndex',
          'name': index['indexName'] ?? '',
          'columns': columns,
          'unique': isUnique,
          'type': index['type'] ?? 'btree',
          if (index['predicate'] != null) 'predicate': index['predicate'],
        });
      }
      tables.add({
        '__className__': 'SchemaTable',
        'name': _qualified(raw['schema'] ?? 'public', raw['name'] ?? ''),
        'className': raw['dartName'] ?? raw['name'] ?? '',
        'schema': raw['schema'] ?? 'public',
        'module': module,
        'columns': [
          for (final column in _objects(raw['columns']))
            {
              '__className__': 'SchemaColumn',
              'name': column['name'] ?? '',
              'fieldName': column['fieldName'] ?? column['name'] ?? '',
              'dartType': column['dartType'] ?? 'String',
              'dbType': _enumName(column['columnType'], _columnTypes),
              'isNullable': column['isNullable'] ?? true,
              'isPrimaryKey':
                  column['name'] == 'id' || primary.contains(column['name']),
              'isUnique': unique.contains(column['name']),
              if (column['columnDefault'] != null)
                'defaultValue': column['columnDefault'],
            },
        ],
        'foreignKeys': [
          for (final key in _objects(raw['foreignKeys']))
            {
              '__className__': 'SchemaForeignKey',
              'name': key['constraintName'] ?? '',
              'columns': _strings(key['columns']),
              'refTable': _qualified(
                key['referenceTableSchema'] ?? raw['schema'] ?? 'public',
                key['referenceTable'] ?? '',
              ),
              'refColumns': _strings(key['referenceColumns']),
              'onDelete': _enumName(key['onDelete'], _actions),
              'onUpdate': _enumName(key['onUpdate'], _actions),
            },
        ],
        'indexes': indexes,
      });
      counts[module] = (counts[module] ?? 0) + 1;
    }
    final modules = counts.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));
    return {
      '__className__': 'SchemaGraph',
      'source': source,
      'generatedAt': DateTime.now().toUtc().toIso8601String(),
      'tables': tables,
      'modules': [
        for (final entry in modules)
          {
            '__className__': 'SchemaModule',
            'name': entry.key,
            'tableCount': entry.value,
          },
      ],
      'enums': [
        for (final entry in _objects(decoded['enums']))
          {
            '__className__': 'SchemaEnum',
            'name': entry['name'] ?? '',
            'values': _strings(entry['values']),
          },
      ],
    };
  }

  static String _qualified(String schema, String name) =>
      name.contains('.') ? name : '$schema.$name';

  static Iterable<Map<String, dynamic>> _objects(Object? value) =>
      value is List ? value.cast<Map<String, dynamic>>() : const [];
  static List<String> _strings(Object? value) =>
      value is List ? value.whereType<String>().toList() : const [];
  static String _enumName(Object? value, List<String> names) {
    if (value is int && value >= 0 && value < names.length) return names[value];
    if (value is String && value.isNotEmpty) return value;
    return 'unknown';
  }
}
