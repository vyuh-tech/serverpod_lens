import 'schema_graph.dart';

enum RelationDirection {
  both('Both directions'),
  incoming('Referenced by'),
  outgoing('References');

  const RelationDirection(this.label);
  final String label;
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
        _outgoing.putIfAbsent(table.name, () => []).add(relation);
        _incoming.putIfAbsent(key.refTable, () => []).add(relation);
      }
    }
  }

  final Map<String, SchemaTable> tables;
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
    return [
      for (final id in ids)
        for (final r in _outgoing[id] ?? <ContextRelation>[])
          if (ids.contains(r.foreignKey.refTable)) r,
    ];
  }

  List<ContextRelation> external(
    Iterable<String> members, {
    RelationDirection direction = RelationDirection.both,
  }) {
    final ids = members.toSet();
    return [
      if (direction != RelationDirection.incoming)
        for (final id in ids)
          for (final r in _outgoing[id] ?? <ContextRelation>[])
            if (!ids.contains(r.foreignKey.refTable)) r,
      if (direction != RelationDirection.outgoing)
        for (final id in ids)
          for (final r in _incoming[id] ?? <ContextRelation>[])
            if (!ids.contains(r.table)) r,
    ];
  }
}
