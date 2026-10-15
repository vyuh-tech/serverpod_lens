import 'dart:convert';

import 'schema_graph.dart';

/// One lazy decode per immutable table, shared by inspection and relationships.
final class SchemaTableMetadata {
  SchemaTableMetadata._(this.definition);
  static final _cache = Expando<SchemaTableMetadata>();
  factory SchemaTableMetadata(SchemaTable table) =>
      _cache[table] ??= _read(table);
  static SchemaTableMetadata _read(SchemaTable table) {
    try {
      final decoded = jsonDecode(table.definition ?? '{}');
      if (decoded is Map<String, dynamic>) {
        return SchemaTableMetadata._(Map.unmodifiable(decoded));
      }
    } catch (_) {
      // Unknown optional metadata never invalidates the resolved graph.
    }
    return SchemaTableMetadata._(const {});
  }

  final Map<String, dynamic> definition;
  Map<String, dynamic> get model => _map(definition['lensModel']);
  Map<String, dynamic> get declarations => _map(model['models']);
  Map<String, dynamic> declaredField(String name) {
    final fields = model['fields'];
    return fields is Map ? _map(fields[name]) : const {};
  }

  Map<String, dynamic> column(String name) => _entry('columns', 'name', name);
  Map<String, dynamic> index(String name) =>
      _entry('indexes', 'indexName', name);
  Map<String, dynamic> foreignKey(String name) =>
      _entry('foreignKeys', 'constraintName', name);
  Map<String, dynamic> _entry(String list, String key, String name) {
    final entries = definition[list];
    if (entries is List) {
      for (final value in entries) {
        if (value is Map && value[key] == name) return _map(value);
      }
    }
    return const {};
  }

  static Map<String, dynamic> _map(Object? value) =>
      value is Map<String, dynamic> ? value : const {};
}

/// Cardinalities describe allowed rows, not the number currently in a database.
final class SchemaRelationshipInfo {
  SchemaRelationshipInfo(this.table, this.key);
  final SchemaTable table;
  final SchemaForeignKey key;

  String get children {
    final columns = key.columns.toSet();
    if (table.columns.any(
      (column) => columns.contains(column.name) && column.isUnique,
    )) {
      return '0..1';
    }
    final primary = table.columns
        .where((column) => column.isPrimaryKey)
        .map((column) => column.name)
        .toSet();
    if (primary.isNotEmpty && columns.containsAll(primary)) return '0..1';
    if (table.indexes.any(
      (index) =>
          index.unique &&
          (index.predicate == null || index.predicate!.isEmpty) &&
          index.columns.isNotEmpty &&
          columns.containsAll(index.columns),
    )) {
      return '0..1';
    }
    return '0..N';
  }

  String get parent {
    final columns = [
      for (final name in key.columns)
        table.columns.where((column) => column.name == name).firstOrNull,
    ];
    if (columns.isEmpty || columns.any((column) => column == null)) return '?';
    final match = SchemaTableMetadata(table).foreignKey(key.name)['matchType'];
    if (match != null && !{0, 2, 'full', 'simple'}.contains(match)) return '?';
    final optional = match == 0 || match == 'full'
        ? columns.every((column) => column!.isNullable)
        : columns.any((column) => column!.isNullable);
    return optional ? '0..1' : '1';
  }
}
