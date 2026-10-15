import 'package:serverpod_lens_schema/serverpod_lens_schema.dart'
    show SchemaGraph, SchemaTable;

/// Read-only queries over an imported schema snapshot.
/// Database schemas group tables; Serverpod modules remain separate metadata.
final class SchemaCatalog {
  SchemaCatalog(this.graph) {
    if (graph.tables.map((table) => table.name).toSet().length !=
        graph.tables.length) {
      throw ArgumentError('Duplicate table identities');
    }
    _sorted = List.of(graph.tables)..sort((a, b) => a.name.compareTo(b.name));
    for (final table in _sorted) {
      _search[table.name] =
          '${table.name} ${table.className} ${table.columns.map((c) => '${c.name} ${c.fieldName}').join(' ')}'
              .toLowerCase();
      _counts.update(table.schema, (n) => n + 1, ifAbsent: () => 1);
    }
    schemaCounts = Map.unmodifiable(_counts);
    _byName = {for (final table in _sorted) table.name: table};
  }
  late final List<SchemaTable> _sorted;
  final _search = <String, String>{};
  final _counts = <String, int>{};
  final SchemaGraph graph;

  late final Map<String, int> schemaCounts;
  late final Map<String, SchemaTable> _byName;
  SchemaTable? tableNamed(String? name) => _byName[name];

  List<SchemaTable> tables({String? schema, String query = ''}) {
    final term = query.trim().toLowerCase();
    return _sorted
        .where(
          (table) =>
              (schema == null || table.schema == schema) &&
              (term.isEmpty || _search[table.name]!.contains(term)),
        )
        .toList();
  }
}
