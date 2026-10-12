import 'dart:io';

import 'package:vyuh_diagram_extension_connectors/vyuh_diagram_extension_connectors.dart';
import 'package:vyuh_diagram_extension_snap_guides/vyuh_diagram_extension_snap_guides.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_extension_table_flutter/vyuh_diagram_extension_table_flutter.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';
import 'package:vyuh_diagram_core/extension_api.dart';
import 'package:vyuh_diagram_extension_table/extension_api.dart';

void main() {
  testWidgets(
    'native node drag and relationship flow preserve schema content',
    (tester) async {
      await tester.binding.setSurfaceSize(const Size(1440, 1000));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final imported = SchemaDiagram.graphFromJson(
        File('assets/schema_graph.json').readAsStringSync(),
      );
      final graph = imported.copyWith(
        tables: imported.tables
            .where((table) => table.schema == 'sso')
            .toList(),
      );
      final controller = DiagramController(
        configuration: DiagramConfiguration(
          extensions: [
            schemaViewInteractions,
            ConnectorsExtension(),
            SnapGuidesExtension(),
            SchemaTableExtension(),
            const LayoutExtension(),
            TableFlutterExtension(),
            MinimapExtension(initiallyExpanded: true),
          ],
        ),
      );
      await tester.runAsync(
        () => SchemaDiagram.build(graph, controller: controller),
      );
      controller.diagram.setRules(schemaViewRules);
      final preferences = SchemaViewPreferences();
      final stopWatching = watchSchemaSelection(
        controller,
        preferences: preferences,
      );
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          home: Scaffold(body: DiagramCanvas(controller: controller)),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(TextField), findsNothing);
      expect(tester.takeException(), isNull);
      final document = controller.document;
      await tester.dragFrom(const Offset(720, 400), const Offset(70, 30));
      await tester.pumpAndSettle();
      await tester.sendKeyEvent(LogicalKeyboardKey.delete);
      expect(controller.document, same(document));
      expect(find.byType(TextField), findsNothing);
      final table = graph.tables.firstWhere(
        (table) => table.foreignKeys.isNotEmpty,
      );
      controller.select([table.name]);
      await tester.pump();
      expect(controller.effects.playing, isEmpty);
      preferences.animation = SchemaAnimation.dashes;
      await tester.pump();
      expect(controller.effects.playing, isNotEmpty);
      preferences.particleSize = 6;
      preferences.animationWidth = 3;
      preferences.animationOpacity = .65;
      await tester.pump();
      expect(controller.effects.playing.first.effect!.size, 6);
      expect(controller.effects.playing.first.effect!.width, 3);
      expect(controller.effects.playing.first.effect!.opacity, .65);
      preferences.speed = 2;
      await tester.pump();
      expect(
        controller.effects.playing.first.effect!.period,
        const Duration(milliseconds: 800),
      );
      preferences.animation = SchemaAnimation.blink;
      await tester.pump();
      expect(controller.effects.playing.first.effect!.kind, EffectKind.pulse);
      expect(controller.effects.playing.first.effect!.waveform, Waveform.step);
      preferences.animation = SchemaAnimation.off;
      await tester.pump();
      expect(controller.effects.playing, isEmpty);
      preferences.animation = SchemaAnimation.particles;
      await tester.pump();
      controller.effects.stopAll();
      await controller.view.show(ViewTarget.element(table.name));
      await tester.pumpAndSettle();
      final shape = controller.document.elementById(table.name) as ShapeElement;
      final nativeTable = controller.resolvedTable(
        table.name,
        '${table.name}-columns',
      )!;
      final cellId =
          '${shape.ports.first.id.substring(0, shape.ports.first.id.length - 3)}::key';
      expect(
        shape.ports.first.offset,
        closeTo(
          nativeTable.cells
                  .firstWhere(
                    (cell) => cell.source.id == cellId,
                  )
                  .bounds
                  .center
                  .y -
              shape.frame.top,
          .001,
        ),
      );
      final header = controller.camera.worldToScreen(
        DiagramPoint(shape.frame.left + 180, shape.frame.top + 18),
      );
      controller.clearSelection();
      await tester.tapAt(Offset(header.x, header.y));
      await tester.pump();
      expect(controller.effects.playing, isNotEmpty);
      controller.effects.stopAll();
      await tester.dragFrom(Offset(header.x, header.y), const Offset(60, 30));
      await tester.pump();
      final moved = controller.document.elementById(table.name) as ShapeElement;
      expect(moved.frame, isNot(shape.frame));
      expect(moved.copyWith(frame: shape.frame), shape);
      controller.effects.stopAll();
      setSchemaRelationshipLabels(controller, preferences, true);
      final edgeBefore = controller.document.elements
          .whereType<ConnectorElement>()
          .first;
      for (final style in SchemaConnectionStyle.values) {
        preferences.connectionStyle = style;
        applySchemaConnections(controller, preferences);
        final edge =
            controller.document.elementById(edgeBefore.id) as ConnectorElement;
        expect(edge.route, style.route);
        expect(edge.start, edgeBefore.start);
        expect(edge.end, edgeBefore.end);
        expect(edge.labels, edgeBefore.labels);
      }
      final afterMove = controller.document;
      await tester.sendKeyEvent(LogicalKeyboardKey.delete);
      expect(controller.document, same(afterMove));
      controller.setOptions(
        controller.options<MinimapOptions>().copyWith(visible: false),
      );
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      await controller.view.show(ViewTarget.element(table.name));
      expect(controller.camera.zoom, greaterThan(0));
      await tester.pumpWidget(const SizedBox.shrink());
      stopWatching();
      controller.dispose();
      expect(tester.takeException(), isNull);
    },
  );
}
