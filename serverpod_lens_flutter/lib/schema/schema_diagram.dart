import 'dart:convert';
import 'dart:math' as math;

import 'package:serverpod_lens_client/serverpod_lens_client.dart'
    show SchemaGraph, SchemaTable;
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart';

import 'lens_settings.dart';

/// Turns a [SchemaGraph] into a Vyuh Diagram: one node per table, one port per
/// column, one connector per foreign key, laid out in dependency layers.
///
/// This module is presentation logic and stays free of Flutter so it can be
/// unit-tested headlessly. It also implements its own layered layout because
/// Vyuh's graph-layout algorithms ship in a separate (commercial) extension.
abstract final class SchemaDiagram {
  /// Shape type + widget key for a table node (registered by the Flutter side).
  static const String tableShapeType = 'podlens.table';
  static const String tableWidgetKey = 'podlens.table';

  static const double nodeWidth = 320;
  static const double rowHeight = 26;
  static const double headerHeight = 38;
  static const double layerGap = 220;
  static const double nodeGap = 56;

  /// Builds nodes and edges into [controller] (creating one if omitted).
  static DiagramController build(
    SchemaGraph graph, {
    DiagramController? controller,
    LensLayout layout = LensLayout.layered,
  }) {
    controller ??= DiagramController();
    final byName = {for (final t in graph.tables) t.name: t};
    final positions = positionsFor(graph, layout);

    for (final table in graph.tables) {
      controller.edits.createShape(
        tableShapeType,
        id: table.name,
        at: positions[table.name]!,
        size: DiagramSize(nodeWidth, _heightOf(table)),
        text: table.name,
        ports: _portsOf(table),
      );
    }

    var skipped = 0;
    for (final table in graph.tables) {
      for (final fk in table.foreignKeys) {
        if (!byName.containsKey(fk.refTable)) {
          skipped++;
          continue;
        }
        final childColumn = fk.columns.isNotEmpty ? fk.columns.first : null;
        final parentColumn = fk.refColumns.isNotEmpty
            ? fk.refColumns.first
            : 'id';
        controller.edits.connect(
          table.name,
          fk.refTable,
          fromPort: childColumn == null
              ? null
              : _portId(table.name, childColumn, 'r'),
          toPort: _portId(fk.refTable, parentColumn, 'l'),
          route: ConnectorRoute.straight,
        );
      }
    }

    // ignore: avoid_print
    print(
      'SchemaDiagram: ${graph.tables.length} nodes, '
      '${graph.tables.fold<int>(0, (n, t) => n + t.foreignKeys.length) - skipped} edges '
      '($skipped unresolved)',
    );
    return controller;
  }

  /// Loads a [SchemaGraph] from a JSON string (as produced by the server's
  /// `dump_schema` pipeline).
  static SchemaGraph graphFromJson(String json) =>
      SchemaGraph.fromJson(jsonDecode(json) as Map<String, dynamic>);

  /// Positions for [graph] under [layout].
  static Map<String, DiagramPoint> positionsFor(
    SchemaGraph graph,
    LensLayout layout,
  ) {
    final byName = {for (final t in graph.tables) t.name: t};
    return switch (layout) {
      LensLayout.layered => _layeredPositions(graph, byName),
      LensLayout.grid => _gridPositions(graph),
    };
  }

  /// Moves the existing shapes to [positions] as one undoable batch (no rebuild,
  /// so no flicker).
  static void applyLayout(
    DiagramController controller,
    Map<String, DiagramPoint> positions,
  ) {
    final frames = <String, DiagramRect>{
      for (final element in controller.document.elements)
        if (element is ShapeElement) element.id: element.frame,
    };
    controller.edits.batch('Apply layout', () {
      for (final entry in positions.entries) {
        final frame = frames[entry.key];
        if (frame == null) continue;
        final dx = entry.value.x - frame.left;
        final dy = entry.value.y - frame.top;
        if (dx == 0 && dy == 0) continue;
        controller.edits.move(DiagramPoint(dx, dy), ids: [entry.key]);
      }
    });
  }

  /// Places nodes in left-to-right layers. A node's layer is one deeper than
  /// its deepest foreign-key parent, so referenced tables sit to the left.
  /// Cycles are broken by capping the recursion.
  static Map<String, DiagramPoint> _layeredPositions(
    SchemaGraph graph,
    Map<String, SchemaTable> byName,
  ) {
    final ranks = <String, int>{};

    int rankOf(String name, List<String> stack) {
      final known = ranks[name];
      if (known != null) return known;
      if (stack.contains(name)) return 0;
      final table = byName[name];
      var rank = 0;
      if (table != null) {
        stack.add(name);
        for (final fk in table.foreignKeys) {
          if (!byName.containsKey(fk.refTable)) continue;
          rank = math.max(rank, rankOf(fk.refTable, stack) + 1);
        }
        stack.removeLast();
      }
      ranks[name] = rank;
      return rank;
    }

    for (final table in graph.tables) {
      rankOf(table.name, <String>[]);
    }

    final columns = <int, List<SchemaTable>>{};
    for (final table in graph.tables) {
      columns.putIfAbsent(ranks[table.name] ?? 0, () => []).add(table);
    }

    final positions = <String, DiagramPoint>{};
    columns.forEach((rank, tables) {
      final x = rank * (nodeWidth + layerGap);
      var y = 0.0;
      for (final table in tables) {
        positions[table.name] = DiagramPoint(x, y);
        y += _heightOf(table) + nodeGap;
      }
    });
    return positions;
  }

  /// Packs tables into a compact masonry grid of [_gridColumns] columns.
  static Map<String, DiagramPoint> _gridPositions(SchemaGraph graph) {
    final columnHeights = List<double>.filled(_gridColumns, 0);
    final positions = <String, DiagramPoint>{};
    for (final table in graph.tables) {
      var column = 0;
      for (var i = 1; i < _gridColumns; i++) {
        if (columnHeights[i] < columnHeights[column]) column = i;
      }
      final x = column * (nodeWidth + nodeGap);
      final y = columnHeights[column];
      positions[table.name] = DiagramPoint(x, y);
      columnHeights[column] = y + _heightOf(table) + nodeGap;
    }
    return positions;
  }

  static const int _gridColumns = 8;

  static double _heightOf(SchemaTable table) =>
      headerHeight + table.columns.length * rowHeight;

  static String _pairId(String table, String column) => '$table::$column';

  static String _portId(String table, String column, String side) =>
      '${_pairId(table, column)}::$side';

  static List<Port> _portsOf(SchemaTable table) {
    final ports = <Port>[];
    for (var i = 0; i < table.columns.length; i++) {
      final column = table.columns[i];
      final offset = headerHeight + i * rowHeight + rowHeight / 2;
      for (final side in const [PortSide.left, PortSide.right]) {
        ports.add(
          Port(
            id: _portId(
              table.name,
              column.name,
              side == PortSide.left ? 'l' : 'r',
            ),
            side: side,
            offsetKind: PortOffsetMode.distanceFromStart,
            offset: offset,
            width: 8,
            height: 8,
          ),
        );
      }
    }
    return ports;
  }
}
