import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

import 'schema_catalog.dart';
import 'schema_context.dart';

/// Indexed exploration. Render only the requested area, retaining full semantics.
final class SchemaNavigation {
  SchemaNavigation(this.graph)
    : context = SchemaContext(graph),
      catalog = SchemaCatalog(graph) {
    if (context.tables.length != graph.tables.length) {
      throw ArgumentError('Duplicate table identities');
    }
  }
  final SchemaGraph graph;
  final SchemaContext context;
  final SchemaCatalog catalog;

  SchemaSlice around(
    Set<String> roots, {
    int limit = 8,
    Set<String> revealed = const {},
    RelationDirection direction = RelationDirection.both,
    int hops = 1,
  }) {
    if (limit < 0) throw RangeError.value(limit, 'limit');
    if (hops < 0 || hops > 2) throw RangeError.range(hops, 0, 2, 'hops');
    final valid = roots.where(context.tables.containsKey).toSet();
    final distances = context
        .neighborhood(valid, hops: hops, direction: direction)
        .distances;
    final neighbors = distances.keys.toSet()..removeAll(valid);
    final ordered = neighbors.toList()
      ..sort((a, b) {
        final distance = distances[a]!.compareTo(distances[b]!);
        return distance != 0 ? distance : a.compareTo(b);
      });
    final visible = <String>{
      ...valid,
      ...revealed.where(neighbors.contains),
      ...ordered.take(limit),
    };
    return _slice(visible, valid, neighbors.difference(visible).length);
  }

  SchemaSlice overview({
    String? schema,
    int limit = 24,
    Set<String> revealed = const {},
  }) {
    if (limit < 0) throw RangeError.value(limit, 'limit');
    final tables = catalog.tables(schema: schema);
    final ids = {
      for (final table in tables.take(limit)) table.name,
      ...revealed.where((id) => tables.any((table) => table.name == id)),
    };
    return _slice(ids, const {}, tables.length - ids.length);
  }

  SchemaSlice _slice(Set<String> visible, Set<String> roots, int hidden) =>
      SchemaSlice(
        graph: graph.copyWith(
          tables: [for (final id in visible) context.tables[id]!],
        ),
        roots: Set.unmodifiable(roots),
        hiddenCount: hidden,
      );
}

final class SchemaSlice {
  const SchemaSlice({
    required this.graph,
    required this.roots,
    required this.hiddenCount,
  });
  final SchemaGraph graph;
  final Set<String> roots;
  final int hiddenCount;
}
