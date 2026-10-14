import 'dart:math' show sqrt;

import 'package:flutter/material.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:vyuh_diagram_extension_connectors/vyuh_diagram_extension_connectors.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_extension_snap_guides/vyuh_diagram_extension_snap_guides.dart';
import 'package:vyuh_diagram_extension_table_flutter/vyuh_diagram_extension_table_flutter.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';
import 'package:vyuh_diagram_core/extension_api.dart'
    show DiagramCamera, DiagramCameraGeometry;

import 'schema_diagram.dart';
import 'schema_view_interactions.dart';

/// Native layout for a complete schema scope. No hand-built node renderer.
Layout schemaGridLayout(int count) =>
    Layout.grid(columns: sqrt(count).ceil().clamp(1, 24).toInt(), gap: 100);

/// Layout choices map directly to Vyuh's native layout engine.
enum SchemaLayout {
  grid('Grid'),
  layeredDown('Layered · vertical'),
  layeredRight('Layered · horizontal'),
  treeDown('Tree · vertical'),
  treeRight('Tree · horizontal'),
  treeRadial('Tree · radial'),
  force('Force directed'),
  circular('Circular');

  const SchemaLayout(this.label);
  final String label;

  /// The installed web layered engine blocks on large connected graphs.
  /// Keep it available for smaller scopes until upstream execution is bounded.
  bool availableFor(int count, {required bool web}) =>
      !web || count < 100 || (this != layeredDown && this != layeredRight);

  Layout resolve(int count) => switch (this) {
    grid => schemaGridLayout(count),
    layeredDown => Layout.layered(gap: 100, layerGap: 160),
    layeredRight => Layout.layered(
      direction: LayoutDirection.right,
      gap: 100,
      layerGap: 160,
    ),
    treeDown => Layout.tree(gap: 100, levelGap: 160),
    treeRight => Layout.tree(
      direction: TreeDirection.right,
      gap: 100,
      levelGap: 160,
    ),
    treeRadial => Layout.tree(
      direction: TreeDirection.radial,
      gap: 100,
      levelGap: 160,
    ),
    force => Layout.force(
      iterations: (30000 ~/ count.clamp(1, 1000)).clamp(30, 300),
      gap: 100,
    ),
    circular => Layout.circular(gap: 100),
  };
}

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
        SchemaTableExtension(detailLevel: SchemaDetailLevel.allFields),
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
      detailLevel: SchemaDetailLevel.allFields,
      layout: schemaGridLayout(graph.tables.length),
    );
    controller.setCamera(
      controller.camera.copyWith(minZoom: .000001, maxZoom: 1),
    );
    applySchemaConnections(controller, preferences);
    controller.edits.batch('Read-only connection presentation', () {
      controller.edits
          .setLocked(
            true,
            ids: controller.document.elements.whereType<ConnectorElement>().map(
              (edge) => edge.id,
            ),
          )
          .requireAllowed();
    }, history: false).requireAllowed();
    controller.diagram.setRules(schemaViewRules);
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
  updateSchemaZoomRange(controller);
  DiagramCamera(controller).fitBounds(controller.scene.bounds, padding: 24);
}

/// Native zoom controls range from the full schema fit to natural node size.
void updateSchemaZoomRange(DiagramController controller) {
  if (controller.scene.elements.isEmpty ||
      controller.camera.viewportSize == DiagramSize.zero) {
    return;
  }
  final fit = controller.camera
      .forBounds(controller.scene.bounds, padding: 48)
      .zoom;
  controller.setCamera(
    controller.camera.copyWith(
      minZoom: fit.clamp(.000001, 1).toDouble(),
      maxZoom: 1,
    ),
  );
}
