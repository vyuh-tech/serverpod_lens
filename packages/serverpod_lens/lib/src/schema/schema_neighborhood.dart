import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

/// A bounded, undirected neighborhood over visible native schema connections.
/// Directions point away from the selected roots, including incoming references.
({Set<String> nodes, Map<String, bool> connections}) schemaNeighborhood(
  DiagramDocument document,
  Set<String> roots, {
  int hops = 1,
}) {
  RangeError.checkValueInInterval(hops, 1, 2, 'hops');
  final visible = {
    for (final shape in document.elements.whereType<ShapeElement>())
      if (shape.isVisible) shape.id,
  };
  final edges = <(String, String, String)>[];
  for (final edge in document.elements.whereType<ConnectorElement>()) {
    if (!edge.isVisible) continue;
    if (edge.start case BoundEndpoint(elementId: final from)) {
      if (edge.end case BoundEndpoint(elementId: final to)) {
        if (visible.contains(from) && visible.contains(to)) {
          edges.add((edge.id, from, to));
        }
      }
    }
  }
  final distances = {
    for (final root in roots)
      if (visible.contains(root)) root: 0,
  };
  for (var depth = 0; depth < hops; depth++) {
    final next = <String>{};
    for (final (_, from, to) in edges) {
      if (distances[from] == depth && !distances.containsKey(to)) next.add(to);
      if (distances[to] == depth && !distances.containsKey(from)) {
        next.add(from);
      }
    }
    for (final id in next) {
      distances[id] = depth + 1;
    }
  }
  return (
    nodes: distances.keys.toSet(),
    connections: {
      for (final (id, from, to) in edges)
        if (distances[from] case final int a)
          if (distances[to] case final int b)
            if (a < hops || b < hops) id: b < a,
    },
  );
}
