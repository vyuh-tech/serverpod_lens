import 'package:serverpod_lens_client/serverpod_lens_client.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart';

enum RelationDirection {
  both('Both directions'),
  incoming('Referenced by'),
  outgoing('References');

  const RelationDirection(this.label);
  final String label;
}

/// A view-only collection. A table can belong to several groups.
final class SchemaGroup {
  SchemaGroup({
    required this.id,
    required this.name,
    required Iterable<String> members,
    this.note = '',
    this.color = 0xff2563eb,
  }) : members = Set.unmodifiable(members);

  final String id;
  final String name;
  final Set<String> members;
  final String note;
  final int color;
}

final class ContextRelation {
  const ContextRelation(this.table, this.foreignKey);
  final String table;
  final SchemaForeignKey foreignKey;
}

final class SchemaNeighborhood {
  SchemaNeighborhood(Map<String, int> distances)
    : distances = Map.unmodifiable(distances);

  final Map<String, int> distances;
  Set<String> get tables => distances.keys.toSet();
  Set<String> get members => {
    for (final entry in distances.entries)
      if (entry.value == 0) entry.key,
  };
  bool get isEmpty => distances.isEmpty;
}

/// Cached graph traversal and relationship inspection, independent of Flutter.
final class SchemaContext {
  SchemaContext(SchemaGraph graph)
    : tables = Map.unmodifiable({for (final t in graph.tables) t.name: t}) {
    for (final table in graph.tables) {
      for (final key in table.foreignKeys) {
        final relation = ContextRelation(table.name, key);
        _relations.add(relation);
        _outgoing.putIfAbsent(table.name, () => []).add(relation);
        _incoming.putIfAbsent(key.refTable, () => []).add(relation);
      }
    }
  }

  final Map<String, SchemaTable> tables;
  final _relations = <ContextRelation>[];
  final _outgoing = <String, List<ContextRelation>>{};
  final _incoming = <String, List<ContextRelation>>{};

  SchemaNeighborhood neighborhood(
    Iterable<String> members, {
    int hops = 1,
    RelationDirection direction = RelationDirection.both,
  }) {
    if (hops < 0 || hops > 2) throw RangeError.range(hops, 0, 2, 'hops');
    final distances = {
      for (final id in members)
        if (tables.containsKey(id)) id: 0,
    };
    var frontier = distances.keys.toSet();
    for (var depth = 1; depth <= hops; depth++) {
      final next = <String>{};
      for (final id in frontier) {
        final neighbors = <String>{
          if (direction != RelationDirection.incoming)
            for (final relation in _outgoing[id] ?? <ContextRelation>[])
              relation.foreignKey.refTable,
          if (direction != RelationDirection.outgoing)
            for (final relation in _incoming[id] ?? <ContextRelation>[])
              relation.table,
        };
        for (final neighbor in neighbors) {
          if (tables.containsKey(neighbor) &&
              !distances.containsKey(neighbor)) {
            distances[neighbor] = depth;
            next.add(neighbor);
          }
        }
      }
      frontier = next;
    }
    return SchemaNeighborhood(distances);
  }

  List<ContextRelation> internal(Iterable<String> members) {
    final ids = members.toSet();
    return _relations
        .where(
          (r) => ids.contains(r.table) && ids.contains(r.foreignKey.refTable),
        )
        .toList();
  }

  List<ContextRelation> external(
    Iterable<String> members, {
    RelationDirection direction = RelationDirection.both,
  }) {
    final ids = members.toSet();
    return _relations.where((r) {
      final from = ids.contains(r.table);
      final to = ids.contains(r.foreignKey.refTable);
      return from != to &&
          (direction == RelationDirection.both ||
              (direction == RelationDirection.outgoing ? from : to));
    }).toList();
  }
}

/// Native decoration only: no source edits, movement or history entries.
void applySchemaContext(
  DiagramController controller,
  SchemaNeighborhood? neighborhood,
) {
  final distances = neighborhood?.distances;
  controller.edits.batch('Focus related tables', () {
    for (final element in controller.document.elements) {
      var opacity = 1.0;
      if (distances != null && distances.isNotEmpty) {
        if (element is ShapeElement) {
          opacity = switch (distances[element.id]) {
            null => .18,
            2 => .65,
            _ => 1,
          };
        } else if (element is ConnectorElement) {
          final start = element.start;
          final end = element.end;
          final from = start is BoundEndpoint
              ? distances[start.elementId]
              : null;
          final to = end is BoundEndpoint ? distances[end.elementId] : null;
          opacity = from == null || to == null
              ? .08
              : (from == 2 || to == 2 ? .55 : 1);
        }
      }
      if (element.opacity != opacity) {
        controller.edits
            .setOpacity(opacity, ids: [element.id])
            .requireAllowed();
      }
    }
  }, history: false).requireAllowed();
}
