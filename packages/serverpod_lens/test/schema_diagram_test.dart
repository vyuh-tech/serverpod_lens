import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_extension_table/extension_api.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

void main() {
  final graph = SchemaDiagram.graphFromJson(
    File('test/fixtures/large_schema.json').readAsStringSync(),
  );

  test('an empty resolved schema creates an empty native document', () async {
    final controller = await SchemaDiagram.build(
      graph.copyWith(tables: []),
      layout: Layout.grid(),
    );
    addTearDown(controller.dispose);
    expect(controller.document.elements, isEmpty);
  });

  test('isolated tables keep native fallback port markers invisible', () async {
    final table = graph.tables.first.copyWith(foreignKeys: []);
    final controller = await SchemaDiagram.build(
      graph.copyWith(tables: [table]),
      layout: Layout.grid(),
    );
    addTearDown(controller.dispose);
    final shape = controller.document.elements.whereType<ShapeElement>().single;
    expect(shape.ports, hasLength(2));
    final defaults = SchemaTableExtension().shapes.single.connection.portsFor(
      shape,
    );
    expect(defaults, isNotEmpty);
    expect(
      defaults.every(
        (port) =>
            port.style.fill == const DiagramColor(0x00000000) &&
            port.style.strokeWidth == 0,
      ),
      isTrue,
    );
  });

  test(
    'one component of a composite primary key is not individually unique',
    () async {
      final source = graph.tables.firstWhere(
        (table) => table.columns.length >= 2 && table.foreignKeys.isNotEmpty,
      );
      final columns = source.columns
          .take(2)
          .map((column) => column.copyWith(isPrimaryKey: true, isUnique: false))
          .toList();
      final table = source.copyWith(
        name: 'public.composite',
        columns: columns,
        indexes: [],
        foreignKeys: [
          source.foreignKeys.first.copyWith(
            columns: [columns.first.name],
            refTable: 'public.composite',
            refColumns: [columns.first.name],
          ),
        ],
      );
      final controller = await SchemaDiagram.build(
        graph.copyWith(tables: [table]),
        layout: Layout.grid(),
      );
      addTearDown(controller.dispose);
      final edge = controller.document.elements
          .whereType<ConnectorElement>()
          .single;
      expect(edge.labels.first.story.plainText, 'N');
    },
  );

  test('maps every table, column and resolved foreign key to native diagram content', () async {
    final controller = await SchemaDiagram.build(
      graph,
      layout: Layout.grid(columns: 8),
    );
    addTearDown(controller.dispose);
    final shapes = controller.document.elements
        .whereType<ShapeElement>()
        .toList();
    final edges = controller.document.elements
        .whereType<ConnectorElement>()
        .toList();
    final names = graph.tables.map((table) => table.name).toSet();
    final foreignKeys = graph.tables
        .expand((table) => table.foreignKeys)
        .where((key) => names.contains(key.refTable));
    expect(shapes.length, graph.tables.length);
    expect(edges.length, foreignKeys.length);
    expect(controller.selection, isA<EmptySelection>());
    for (final table in graph.tables) {
      final shape = shapes.firstWhere((shape) => shape.id == table.name);
      final content = shape.textStory!.contents.whereType<TextTable>().single;
      expect(
        content.rows.length,
        table.columns.isEmpty ? 1 : table.columns.length,
      );
      final boundPortIds = {
        for (final edge in edges)
          for (final endpoint in [edge.start, edge.end])
            if (endpoint is BoundEndpoint &&
                endpoint.elementId == table.name &&
                endpoint.portId != null)
              endpoint.portId!,
      };
      expect(
        shape.ports
            .where((port) => !port.id.contains('::table-edge/'))
            .map((port) => port.id)
            .toSet(),
        boundPortIds.where((id) => !id.contains('::table-edge/')).toSet(),
      );
      final resolved = controller.resolvedTable(
        table.name,
        '${table.name}-columns',
      )!;
      for (var row = 0; row < table.columns.length; row++) {
        final centre =
            resolved.cells
                .firstWhere((cell) => cell.row == row)
                .bounds
                .center
                .y -
            shape.frame.top;
        for (final port in shape.ports.where(
          (port) =>
              port.id == '${table.name}::${table.columns[row].name}::l' ||
              port.id == '${table.name}::${table.columns[row].name}::r',
        )) {
          expect(port.offset, closeTo(centre, .001));
        }
      }
      for (var index = 0; index < table.columns.length; index++) {
        expect(
          content.rows[index].cells[1].blocks.single.plainText,
          table.columns[index].name,
        );
      }
    }
    for (final edge in edges) {
      expect(edge.labels.map((label) => label.story.plainText).last, '1');
      for (final end in [edge.start, edge.end]) {
        if (end is BoundEndpoint && end.portId != null) {
          final shape = shapes.firstWhere((shape) => shape.id == end.elementId);
          expect(shape.ports.any((port) => port.id == end.portId), isTrue);
        }
      }
    }
  });

  test('native grid layout is undoable and native codecs retain table content and ports', () async {
    final controller = await SchemaDiagram.build(
      graph.copyWith(
        tables: graph.tables
            .where((table) => table.schema == 'library')
            .toList(),
      ),
    );
    addTearDown(controller.dispose);
    final before = {
      for (final shape
          in controller.document.elements.whereType<ShapeElement>())
        shape.id: shape.frame,
    };
    await controller.layout(Layout.grid(columns: 8, gap: 56));
    final after = controller.document.elements
        .whereType<ShapeElement>()
        .toList();
    expect(after.any((shape) => shape.frame != before[shape.id]), isTrue);
    for (var i = 0; i < after.length; i++) {
      for (var j = i + 1; j < after.length; j++) {
        expect(after[i].frame.intersects(after[j].frame), isFalse);
      }
    }
    controller.undo();
    for (final shape
        in controller.document.elements.whereType<ShapeElement>()) {
      expect(shape.frame, before[shape.id]);
    }
    final reopened = DiagramController.open(
      controller.save(DiagramJsonCodec.new),
      format: DiagramJsonCodec.new,
      configuration: DiagramConfiguration(
        extensions: [SchemaTableExtension(), const LayoutExtension()],
      ),
    );
    addTearDown(reopened.dispose);
    expect(reopened.document.elements, controller.document.elements);
  });
}
