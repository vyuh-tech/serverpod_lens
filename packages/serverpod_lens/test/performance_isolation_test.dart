import 'dart:ui' show PointerDeviceKind;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:serverpod_lens/src/screens/schema_browser.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';
import 'package:vyuh_diagram_flutter/adapter.dart' show RenderingOptions;
import 'package:serverpod_lens/src/schema/schema_canvas.dart';

import 'explorer_workflow_test.dart' show settle, wide;
import 'support/navigation_fixture.dart';

void main() {
  test(
    'web canvas uses native caching and adaptive paint without dropping tables',
    () async {
      final graph = fixture(neighbors: 120);
      final controller = await buildSchemaCanvas(
        graph,
        SchemaViewPreferences(),
        web: true,
      );
      try {
        final options = controller.options<RenderingOptions>();
        expect(options.render.rasterContent, isTrue);
        expect(options.lod.adaptive, isTrue);
        expect(
          controller.document.elements.whereType<ShapeElement>(),
          hasLength(graph.tables.length),
        );
      } finally {
        controller.dispose();
      }
    },
  );
  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('native_mouse_cursor'),
          (call) async => call.method == 'isSupported' ? false : null,
        );
  });
  tearDown(() {
    debugOnRebuildDirtyWidget = null;
    debugOnProfilePaint = null;
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('native_mouse_cursor'),
          null,
        );
  });

  testWidgets('schema headers are built only near the viewport', (
    tester,
  ) async {
    final graph = fixture().copyWith(
      tables: [for (var i = 0; i < 200; i++) table('schema_$i.items')],
    );
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SizedBox(
            width: 280,
            child: SchemaBrowser(
              catalog: SchemaCatalog(graph),
              selectedSchema: null,
              selectedTable: null,
              onSelectSchema: (_) {},
              onSelectTable: (_) {},
            ),
          ),
        ),
      ),
    );
    final count = find.byType(SchemaTreeRow).evaluate().length;
    // 600px viewport plus Flutter's normal cache should need fewer than 25 rows.
    // ignore: avoid_print
    print('PERF built schema rows: $count / 201');
    expect(count, lessThan(25));
  });

  testWidgets('hover changes the row surface without rebuilding its contents', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SchemaBrowser(
            catalog: SchemaCatalog(fixture()),
            selectedSchema: null,
            selectedTable: null,
            onSelectSchema: (_) {},
            onSelectTable: (_) {},
          ),
        ),
      ),
    );
    final mouse = await tester.createGesture(kind: PointerDeviceKind.mouse);
    await mouse.addPointer(location: const Offset(600, 590));
    var rows = 0;
    debugOnRebuildDirtyWidget = (element, _) {
      if (element.widget is SchemaTreeRow) rows++;
    };
    await mouse.moveTo(
      tester.getCenter(find.byKey(const ValueKey('schema:public'))),
    );
    await tester.pump();
    debugOnRebuildDirtyWidget = null;
    await mouse.removePointer();
    expect(rows, 0);
  });

  Future<DiagramController> mountViewer(WidgetTester tester) async {
    wide(tester);
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        home: MediaQuery(
          data: const MediaQueryData(
            size: Size(1440, 960),
            disableAnimations: true,
          ),
          child: SchemaViewer(
            graph: fixture(neighbors: 25),
            viewStore: MemorySchemaViewStore(),
          ),
        ),
      ),
    );
    await settle(tester);
    return tester.widget<DiagramCanvas>(find.byType(DiagramCanvas)).controller;
  }

  testWidgets('switching selected tables does not rebuild the canvas', (
    tester,
  ) async {
    final controller = await mountViewer(tester);
    controller.select(['public.orders']);
    await settle(tester);
    var canvasBuilds = 0;
    var unchangedRowBuilds = 0;
    debugOnRebuildDirtyWidget = (element, builtOnce) {
      if (element.widget is DiagramCanvas) canvasBuilds++;
      if (element.widget case SchemaTreeRow(
        key: ValueKey(value: 'table:public.child0'),
      )) {
        unchangedRowBuilds++;
      }
    };
    controller.select(['public.users']);
    await settle(tester);
    debugOnRebuildDirtyWidget = null;
    // ignore: avoid_print
    print('PERF canvas builds on table switch: $canvasBuilds');
    // ignore: avoid_print
    print('PERF unchanged row builds on table switch: $unchangedRowBuilds');
    expect(canvasBuilds, 0);
    expect(unchangedRowBuilds, 0);
    await tester.pumpWidget(const SizedBox.shrink());
    await settle(tester);
  });

  testWidgets('browser search and scroll do not repaint the diagram', (
    tester,
  ) async {
    await mountViewer(tester);
    final canvas = tester.renderObject(find.byType(DiagramCanvas));
    var paints = 0;
    debugOnProfilePaint = (object) {
      for (
        RenderObject? current = object;
        current != null;
        current = current.parent
      ) {
        if (identical(current, canvas)) {
          paints++;
          break;
        }
      }
    };
    await tester.enterText(
      find.widgetWithText(TextField, 'Find a table or column'),
      'child',
    );
    await tester.pump(const Duration(milliseconds: 150));
    await tester.pump();
    final tree = find.descendant(
      of: find.byType(SchemaBrowser),
      matching: find.byType(CustomScrollView),
    );
    await tester.drag(tree, const Offset(0, -220));
    await tester.pump();
    debugOnProfilePaint = null;
    // ignore: avoid_print
    print('PERF diagram subtree paints during search/scroll: $paints');
    expect(paints, 0);
    await tester.pumpWidget(const SizedBox.shrink());
    await settle(tester);
  });
}
