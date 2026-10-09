import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:material_ui/material_ui.dart' as diagram_material;
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_flutter/schema/schema_diagram.dart';
import 'package:serverpod_lens_flutter/schema/schema_relations_extension.dart';
import 'package:vyuh_diagram_extension_editor/vyuh_diagram_extension_editor.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_extension_table_flutter/vyuh_diagram_extension_table_flutter.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

void main() {
  testWidgets(
    'native minimap, editor, navigation and relation effects work on the schema canvas',
    (tester) async {
      await tester.binding.setSurfaceSize(const Size(1440, 1000));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final graph = SchemaDiagram.graphFromJson(
        File('assets/schema_graph.json').readAsStringSync(),
      );
      final controller = DiagramController(
        configuration: DiagramConfiguration(
          extensions: [
            SchemaTableExtension(),
            const LayoutExtension(),
            EditorExtension(
              palette: true,
              inspector: InspectorPlacement.docked,
            ),
            TableFlutterExtension(),
            MinimapExtension(initiallyExpanded: true),
            const SchemaRelationsExtension(),
          ],
        ),
      );
      await tester.runAsync(
        () => SchemaDiagram.build(graph, controller: controller),
      );
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [
            ...GlobalMaterialLocalizations.delegates,
            diagram_material.GlobalMaterialLocalizations.delegate,
          ],
          home: Scaffold(body: DiagramCanvas(controller: controller)),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(DiagramToolbar), findsOneWidget);
      expect(tester.takeException(), isNull);
      final table = graph.tables.firstWhere(
        (table) => table.foreignKeys.isNotEmpty,
      );
      controller.select([table.name]);
      await tester.pump();
      await tester.pump();
      expect(
        controller.effects.playing.any(
          (handle) => handle.effect?.kind == EffectKind.flow,
        ),
        isTrue,
      );
      controller.setOptions(
        const SchemaRelationsOptions(animate: false, focus: true),
      );
      await tester.pump();
      await tester.pump();
      expect(
        controller.effects.playing.any(
          (handle) => handle.effect?.kind == EffectKind.flow,
        ),
        isFalse,
      );
      expect(
        controller.effects.playing.any(
          (handle) => handle.effect?.kind == EffectKind.fade,
        ),
        isTrue,
      );
      controller.setOptions(const SchemaRelationsOptions(animate: false));
      controller.setOptions(
        controller.options<MinimapOptions>().copyWith(visible: false),
      );
      await tester.pumpAndSettle();
      expect(controller.effects.playing, isEmpty);
      await controller.view.show(ViewTarget.element(table.name));
      expect(controller.camera.zoom, greaterThan(0));
      await tester.pumpWidget(const SizedBox.shrink());
      controller.dispose();
      expect(tester.takeException(), isNull);
    },
  );
}
