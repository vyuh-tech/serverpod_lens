import 'package:flutter/foundation.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart'
    show SchemaColumn, SchemaTable;

/// A live, editable view of the schema. The diagram reads table data from here,
/// so adding a table/column updates the canvas immediately.
final class SchemaWorkspace extends ChangeNotifier {
  SchemaWorkspace(Iterable<SchemaTable> tables)
    : _tables = {for (final table in tables) table.name: table};

  final Map<String, SchemaTable> _tables;

  Iterable<SchemaTable> get tables => _tables.values;

  SchemaTable? table(String id) => _tables[id];

  bool contains(String id) => _tables.containsKey(id);

  /// Adds a table (no-op if the name is taken).
  bool addTable(SchemaTable table) {
    if (_tables.containsKey(table.name)) return false;
    _tables[table.name] = table;
    notifyListeners();
    return true;
  }

  /// Appends a column to a table.
  void addColumn(String tableId, SchemaColumn column) {
    final table = _tables[tableId];
    if (table == null) return;
    if (table.columns.any((c) => c.name == column.name)) return;
    _tables[tableId] = table.copyWith(columns: [...table.columns, column]);
    notifyListeners();
  }
}
