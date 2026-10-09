import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_flutter/schema/lens_state.dart';
import 'package:serverpod_lens_flutter/schema/podlens_table_extension.dart';
import 'package:serverpod_lens_flutter/schema/schema_diagram.dart';
import 'package:serverpod_lens_flutter/schema/schema_workspace.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

void main() {
  test('builds a node per table and an edge per foreign key', () {
    final json = File('assets/schema_graph.json').readAsStringSync();
    final graph = SchemaDiagram.graphFromJson(json);

    expect(graph.tables.length, greaterThan(100));

    final controller = DiagramController(
      configuration: DiagramConfiguration(
        extensions: [
          PodLensTableExtension(
            workspace: SchemaWorkspace(graph.tables),
            lens: LensState(),
          ),
        ],
      ),
    );
    addTearDown(controller.dispose);
    SchemaDiagram.build(graph, controller: controller);

    final doc = controller.document;
    final shapes = doc.elements.whereType<ShapeElement>().length;
    final connectors = doc.elements.whereType<ConnectorElement>().length;

    expect(shapes, graph.tables.length);
    expect(connectors, greaterThan(150));
  });
}
