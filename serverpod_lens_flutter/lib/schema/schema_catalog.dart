import 'package:serverpod_lens_client/serverpod_lens_client.dart'
    show SchemaGraph, SchemaTable;

/// Read-only queries over an imported schema snapshot.
/// Database schemas group tables; Serverpod modules remain separate metadata.
final class SchemaCatalog {
  SchemaCatalog(this.graph);
  final SchemaGraph graph;

  Map<String, int> get schemaCounts {
    final counts = <String, int>{};
    for (final table in graph.tables) {
      counts.update(table.schema, (count) => count + 1, ifAbsent: () => 1);
    }
    return Map.fromEntries(
      counts.entries.toList()..sort((a, b) => a.key.compareTo(b.key)),
    );
  }

  List<SchemaTable> tables({String? schema, String query = ''}) {
    final term = query.trim().toLowerCase();
    return graph.tables
        .where(
          (table) =>
              (schema == null || table.schema == schema) &&
              (term.isEmpty ||
                  table.name.toLowerCase().contains(term) ||
                  table.columns.any(
                    (column) => column.name.toLowerCase().contains(term),
                  )),
        )
        .toList()
      ..sort((a, b) => a.name.compareTo(b.name));
  }
}
