import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:vyuh_diagram_extension_table/extension_api.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

void main() {
  test('real generated Serverpod features render with all fields and bound FK ports', () async {
    final result = await Process.run(
      Platform.environment['DART_BIN'] ?? 'dart',
      ['run', 'bin/dump_lens.dart'],
      workingDirectory: '../../examples/shop/server',
    );
    expect(result.exitCode, 0, reason: result.stderr.toString());
    final encoded = const LineSplitter()
        .convert(result.stdout.toString())
        .lastWhere((line) => line.startsWith('{'));
    final snapshot = LensSchemaSnapshot.fromJson(
      jsonDecode(encoded) as Map<String, dynamic>,
    );
    final graph = snapshot.graph!.copyWith(
      tables: snapshot.graph!.tables
          .where((table) => table.name.startsWith('public.shop_'))
          .toList(),
    );
    final controller = await SchemaDiagram.build(
      graph,
      layout: Layout.grid(columns: 4),
    );
    addTearDown(controller.dispose);
    final shapes = {
      for (final shape
          in controller.document.elements.whereType<ShapeElement>())
        shape.id: shape,
    };
    final edges = controller.document.elements
        .whereType<ConnectorElement>()
        .toList();
    expect(shapes, hasLength(14));
    expect(edges, hasLength(9));
    for (final table in graph.tables) {
      final shape = shapes[table.name]!;
      final content = shape.textStory!.contents.whereType<TextTable>().single;
      expect(content.rows, hasLength(table.columns.length), reason: table.name);
      expect(
        content.rows.map((row) => row.cells[1].blocks.single.plainText),
        table.columns.map((column) => column.name),
      );
    }
    for (final edge in edges) {
      for (final endpoint in [edge.start, edge.end]) {
        expect(endpoint, isA<BoundEndpoint>());
        final bound = endpoint as BoundEndpoint;
        expect(
          shapes[bound.elementId]!.ports.map((port) => port.id),
          contains(bound.portId),
        );
      }
    }
    final hiddenKey = graph.tables
        .singleWhere((table) => table.name == 'public.shop_bins')
        .foreignKeys
        .single
        .columns
        .single;
    expect(
      edges
          .singleWhere((edge) => edge.id == 'public.shop_bins::relation::0')
          .start,
      isA<BoundEndpoint>().having(
        (endpoint) => endpoint.portId,
        'hidden column port',
        contains(hiddenKey),
      ),
    );
    final self = edges.singleWhere(
      (edge) => edge.id == 'public.shop_categories::relation::0',
    );
    expect(
      (self.start as BoundEndpoint).elementId,
      (self.end as BoundEndpoint).elementId,
    );
    final oneToOne = edges.singleWhere(
      (edge) => edge.id == 'public.shop_members::relation::1',
    );
    expect(oneToOne.labels.map((label) => label.story.plainText), [
      '0..1',
      '0..1',
    ]);
  }, timeout: const Timeout(Duration(minutes: 2)));
}
