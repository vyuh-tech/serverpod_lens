import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_flutter/schema/schema_diagram.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_extension_table_flutter/vyuh_diagram_extension_table_flutter.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

void main() {
  testWidgets(
    'native read-only canvas preserves the document during navigation and selection',
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
      await tester.pump();
      controller.setOptions(
        controller.options<MinimapOptions>().copyWith(visible: false),
      );
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      await controller.view.show(ViewTarget.element(table.name));
      expect(controller.camera.zoom, greaterThan(0));
      await tester.pumpWidget(const SizedBox.shrink());
      controller.dispose();
      expect(tester.takeException(), isNull);
    },
  );
}
