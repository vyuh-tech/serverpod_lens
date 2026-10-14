import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

void main() {
  test('real Serverpod-compiled shop definition renders all tables, fields and key bindings', () async {
    final raw = File('schema/definition.json').readAsStringSync();
    final definition = jsonDecode(raw) as Map<String, dynamic>;
    final graph = SchemaExtractor.fromDefinitionJson(raw, source: 'Shop');
    expect(graph.tables.length, 4);
    expect(graph.tables.map((t) => t.name).toSet(), {
      'public.shop_customers',
      'public.shop_products',
      'public.shop_orders',
      'public.shop_order_items',
    });
    expect(graph.tables.expand((t) => t.foreignKeys).length, 3);
    expect(graph.tables.expand((t) => t.indexes).length, 4);
    expect(
      graph.tables.expand((t) => t.columns).length,
      (definition['tables'] as List).fold<int>(
        0,
        (n, t) => n + (t['columns'] as List).length,
      ),
    );
    final controller = await SchemaDiagram.build(
      graph,
      detailLevel: SchemaDetailLevel.allFields,
      layout: Layout.grid(columns: 2),
    );
    addTearDown(controller.dispose);
    expect(controller.document.elements.whereType<ShapeElement>().length, 4);
    final edges = controller.document.elements.whereType<ConnectorElement>();
    expect(edges.length, 3);
    for (final edge in edges) {
      expect(edge.start, isA<BoundEndpoint>());
      expect(edge.end, isA<BoundEndpoint>());
    }
  });
  test('shop ZIP prefers the resolved definition and retains all four authored sources', () {
    final archive = Archive();
    for (final file in Directory(
      'lib/src/models',
    ).listSync().whereType<File>()) {
      final bytes = file.readAsBytesSync();
      archive.addFile(ArchiveFile(file.path, bytes.length, bytes));
    }
    final bytes = File('schema/definition.json').readAsBytesSync();
    archive.addFile(
      ArchiveFile(
        'migrations/20261014000000000/definition.json',
        bytes.length,
        bytes,
      ),
    );
    final result = ProjectAnalyzer.analyzeZip(
      Uint8List.fromList(ZipEncoder().encode(archive)),
      name: 'shop.zip',
    );
    expect(result.isValid, isTrue);
    expect(result.graph.tables.length, 4);
    expect(result.sourcePaths.length, 4);
    expect(result.modelSources.length, 4);
    expect(result.warnings.any((w) => w.contains('YAML inference')), isFalse);
  });
}
