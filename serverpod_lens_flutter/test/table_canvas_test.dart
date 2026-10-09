import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_flutter/schema/schema_diagram.dart';
import 'package:serverpod_lens_flutter/schema/schema_view_interactions.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_extension_table_flutter/vyuh_diagram_extension_table_flutter.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';
import 'package:vyuh_diagram_core/extension_api.dart';

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
      final stopWatching = watchSchemaSelection(controller);
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
      expect(controller.effects.playing, isNotEmpty);
      controller.effects.stopAll();
      await controller.view.show(ViewTarget.element(table.name));
      await tester.pumpAndSettle();
      final shape = controller.document.elementById(table.name) as ShapeElement;
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
