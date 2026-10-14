import 'dart:math' show sqrt;

import 'package:flutter/material.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:vyuh_diagram_extension_connectors/vyuh_diagram_extension_connectors.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_extension_snap_guides/vyuh_diagram_extension_snap_guides.dart';
import 'package:vyuh_diagram_extension_table_flutter/vyuh_diagram_extension_table_flutter.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';
import 'package:vyuh_diagram_core/extension_api.dart' show DiagramCamera;

import 'schema_diagram.dart';
import 'schema_view_interactions.dart';

/// Native layout for a complete schema scope. No hand-built node renderer.
Layout schemaGridLayout(int count) =>
    Layout.grid(columns: sqrt(count).ceil().clamp(1, 24).toInt(), gap: 100);

Future<DiagramController> buildSchemaCanvas(
  SchemaGraph graph,
  SchemaViewPreferences preferences,
) async {
  final controller = DiagramController(
    configuration: DiagramConfiguration(
      extensions: [
        schemaViewInteractions,
        ConnectorsExtension(),
        SnapGuidesExtension(
          enabled: preferences.snapGuides,
          tolerance: preferences.snapTolerance,
        ),
        SchemaTableExtension(detailLevel: SchemaDetailLevel.keys),
        const LayoutExtension(),
        TableFlutterExtension(),
        MinimapExtension(
          visible: preferences.minimap,
          initiallyExpanded: true,
          alignment: Alignment.bottomLeft,
          policy: DiagramMinimapPolicy(
            showConnections: preferences.minimapConnections,
          ),
        ),
        NavigationExtension(
          fitOnAttach: false,
          edgePanEnabled: preferences.edgePan,
        ),
        GridExtension(
          visible: preferences.grid,
          snap: preferences.snap,
          size: preferences.gridSize,
        ),
      ],
    ),
  );
  try {
    await SchemaDiagram.build(
      graph,
      controller: controller,
      detailLevel: SchemaDetailLevel.keys,
      layout: schemaGridLayout(graph.tables.length),
    );
    controller.diagram.setRules(schemaViewRules);
    applySchemaConnections(controller, preferences);
    return controller;
  } catch (_) {
    controller.dispose();
    rethrow;
  }
}

/// Largest native camera fit containing the whole current scope, after layout.
void fitSchemaCanvas(DiagramController controller) {
  if (controller.scene.elements.isEmpty ||
      controller.camera.viewportSize == DiagramSize.zero) {
    return;
  }
  DiagramCamera(controller).fitBounds(controller.scene.bounds, padding: 24);
}
