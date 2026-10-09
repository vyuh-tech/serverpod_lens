import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_flutter/schema/lens_state.dart';
import 'package:serverpod_lens_flutter/schema/podlens_table_extension.dart';
import 'package:serverpod_lens_flutter/schema/schema_diagram.dart';
import 'package:serverpod_lens_flutter/schema/schema_workspace.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

void main() {
  testWidgets('renders widget-backed table cards on the diagram canvas', (
    tester,
  ) async {
    final json = File('assets/schema_graph.json').readAsStringSync();
    final graph = SchemaDiagram.graphFromJson(json);

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

    await tester.pumpWidget(
      MaterialApp(home: Scaffold(body: DiagramCanvas(controller: controller))),
    );
    await tester.pumpAndSettle();

    expect(find.byType(TableCard), findsWidgets);
  });
}
