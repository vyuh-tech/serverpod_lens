import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';
import 'package:vyuh_diagram_extension_table/extension_api.dart';

import 'support/navigation_fixture.dart';

Future<void> settle(WidgetTester tester) async {
  await tester.runAsync(
    () => Future<void>.delayed(const Duration(milliseconds: 180)),
  );
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 450));
  await tester.runAsync(
    () => Future<void>.delayed(const Duration(milliseconds: 100)),
  );
  await tester.pump(const Duration(milliseconds: 450));
}

DiagramController canvas(WidgetTester tester) =>
    tester.widget<DiagramCanvas>(find.byType(DiagramCanvas)).controller;
Widget host(
  SchemaGraph graph,
  SchemaViewStore store, {
  String account = 'alice',
}) => MaterialApp(
  localizationsDelegates: GlobalMaterialLocalizations.delegates,
  home: SchemaViewer(
    graph: graph,
    viewStore: store,
    storageKey: 'project/$account',
    sourcePaths: const {'public.orders': 'lib/src/models/order.spy.yaml'},
    modelSources: const {'public.orders': 'class: Order\ntable: orders\n'},
  ),
);
void wide(WidgetTester tester) {
  tester.view.devicePixelRatio = 1;
  tester.view.physicalSize = const Size(1440, 960);
  addTearDown(tester.view.resetPhysicalSize);
  addTearDown(tester.view.resetDevicePixelRatio);
}

void main() {
  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('native_mouse_cursor'),
          (call) async => call.method == 'isSupported' ? false : null,
        );
  });
  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('native_mouse_cursor'),
          null,
        );
  });
  testWidgets('schema tree expands independently and settings stays visible', (
    tester,
  ) async {
    wide(tester);
    await tester.pumpWidget(host(fixture(), MemorySchemaViewStore()));
    await settle(tester);
    expect(find.byTooltip('Settings'), findsOneWidget);
    expect(find.text('Models'), findsNothing);
    expect(find.text('Domains'), findsNothing);
    final original = canvas(tester);
    await tester.tap(find.byKey(const ValueKey('toggle-schema:public')));
    await settle(tester);
    expect(find.byKey(const ValueKey('table:public.orders')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('toggle-schema:public')));
    await settle(tester);
    expect(find.byKey(const ValueKey('table:public.orders')), findsNothing);
    expect(identical(canvas(tester), original), isTrue);
    await tester.tap(find.byTooltip('Collapse schema browser'));
    await settle(tester);
    await tester.tap(find.byTooltip('Expand schema browser'));
    await settle(tester);
    expect(find.text('Schemas'), findsOneWidget);
    await tester.tap(find.byTooltip('Settings'));
    await settle(tester);
    expect(find.text('Connections'), findsWidgets);
    await tester.pumpWidget(const SizedBox.shrink());
    await settle(tester);
  });
  testWidgets(
    'inspector keeps its active tab across tables and tablet browser remains visible',
    (tester) async {
      wide(tester);
      await tester.pumpWidget(host(fixture(), MemorySchemaViewStore()));
      await settle(tester);
      final controller = canvas(tester);
      controller.select(['public.orders']);
      await settle(tester);
      await tester.ensureVisible(find.widgetWithText(Tab, 'Indexes'));
      await tester.tap(find.widgetWithText(Tab, 'Indexes'));
      await settle(tester);
      expect(find.text('No indexes in this snapshot'), findsOneWidget);
      controller.select(['public.users']);
      await settle(tester);
      expect(find.text('No indexes in this snapshot'), findsOneWidget);
      expect(find.text('Basic information'), findsNothing);
      tester.view.physicalSize = const Size(950, 960);
      await settle(tester);
      expect(find.text('Schemas'), findsOneWidget);
      expect(find.byType(TabBar), findsNothing);
      controller.clearSelection();
      await settle(tester);
      controller.select(['public.orders']);
      await settle(tester);
      expect(find.byType(TabBar), findsOneWidget);
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
      expect(tester.takeException(), isNull);
    },
  );
  testWidgets(
    'tree selects within the schema without rebuilding the surrounding graph',
    (tester) async {
      wide(tester);
      await tester.pumpWidget(host(fixture(), MemorySchemaViewStore()));
      await settle(tester);
      final original = canvas(tester);
      await tester.tap(find.byKey(const ValueKey('toggle-schema:public')));
      await settle(tester);
      await tester.tap(find.byKey(const ValueKey('table:public.orders')));
      await settle(tester);
      expect(identical(canvas(tester), original), isTrue);
      expect(
        original.document.elements.whereType<ShapeElement>(),
        hasLength(fixture().tables.length),
      );
      expect((original.selection as ElementSelection).elementIds, {
        'public.orders',
      });
      expect(find.byTooltip('Table references'), findsNothing);
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
    },
  );
  testWidgets(
    'All schemas explicitly opens the complete graph with selectable tables',
    (tester) async {
      wide(tester);
      final graph = fixture(neighbors: 30);
      await tester.pumpWidget(host(graph, MemorySchemaViewStore()));
      await settle(tester);
      await tester.tap(find.widgetWithText(ListTile, 'All schemas'));
      await settle(tester);
      expect(
        canvas(tester).document.elements.whereType<ShapeElement>(),
        hasLength(graph.tables.length),
      );
      canvas(tester).select(['public.orders']);
      await settle(tester);
      expect(find.text('Basic information'), findsOneWidget);
      expect(
        canvas(tester).document.elements.whereType<ShapeElement>(),
        hasLength(graph.tables.length),
      );
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
    },
  );
  testWidgets('node selection preserves zoom and opens five-tab inspector', (
    tester,
  ) async {
    wide(tester);
    await tester.pumpWidget(host(fixture(), MemorySchemaViewStore()));
    await settle(tester);
    expect(find.text('All schemas'), findsWidgets);
    expect(find.text('public'), findsOneWidget);
    final controller = canvas(tester);
    controller.setCamera(
      DiagramCameraState(
        center: const DiagramPoint(250, 150),
        zoom: .75,
        viewportSize: controller.camera.viewportSize,
      ),
    );
    controller.select(['public.orders']);
    await settle(tester);
    expect(identical(canvas(tester), controller), isTrue);
    expect(controller.camera.zoom, .75);
    expect(controller.camera.center, const DiagramPoint(250, 150));
    for (final label in [
      'Basic information',
      'Fields',
      'Relationships',
      'Indexes',
      'Source',
    ]) {
      expect(
        label == 'Basic information'
            ? find.text(label)
            : find.widgetWithText(Tab, label),
        findsOneWidget,
      );
    }
    await tester.ensureVisible(find.text('Source'));
    await tester.pump(const Duration(milliseconds: 450));
    await tester.tap(find.text('Source'));
    await settle(tester);
    expect(find.text('class: Order\ntable: orders\n'), findsOneWidget);
    await tester.pumpWidget(const SizedBox.shrink());
    await settle(tester);
    expect(tester.takeException(), isNull);
  });
  testWidgets(
    'live graph changes preserve query, selection, positions and camera',
    (tester) async {
      wide(tester);
      final store = MemorySchemaViewStore();
      final graph = fixture();
      await tester.pumpWidget(host(graph, store));
      await settle(tester);
      final old = canvas(tester);
      old.select(['public.orders']);
      await settle(tester);
      old.edits.move(const DiagramPoint(31, 47), ids: ['public.orders']);
      final position = old.scene.shapeById('public.orders')!.source.frame;
      old.setCamera(
        DiagramCameraState(
          center: const DiagramPoint(200, 300),
          zoom: .8,
          viewportSize: old.camera.viewportSize,
        ),
      );
      await tester.enterText(find.byType(TextField).first, 'orders');
      await tester.pump(const Duration(milliseconds: 150));
      await tester.pumpWidget(
        host(
          graph.copyWith(tables: [...graph.tables, table('public.new_table')]),
          store,
        ),
      );
      await settle(tester);
      final next = canvas(tester);
      expect(
        (next.selection as ElementSelection).elementIds,
        contains('public.orders'),
      );
      expect(next.camera.zoom, .8);
      expect(next.camera.center, const DiagramPoint(200, 300));
      expect(
        next.scene.shapeById('public.orders')!.source.frame.left,
        position.left,
      );
      expect(
        next.scene.shapeById('public.orders')!.source.frame.top,
        position.top,
      );
      expect(
        tester.widget<TextField>(find.byType(TextField).first).controller!.text,
        'orders',
      );
      expect(next.document.elementById('public.new_table'), isNotNull);
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
      expect(tester.takeException(), isNull);
    },
  );
  testWidgets(
    'dragged positions persist across remount and accounts remain isolated',
    (tester) async {
      final store = MemorySchemaViewStore();
      final graph = fixture();
      await tester.pumpWidget(host(graph, store));
      await settle(tester);
      final controller = canvas(tester);
      controller.edits.move(const DiagramPoint(77, 91), ids: ['public.orders']);
      final frame = controller.scene.shapeById('public.orders')!.source.frame;
      await tester.pump(const Duration(milliseconds: 500));
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
      await tester.pumpWidget(host(graph, store));
      await settle(tester);
      expect(
        canvas(tester).scene.shapeById('public.orders')!.source.frame.left,
        frame.left,
      );
      expect(
        canvas(tester).scene.shapeById('public.orders')!.source.frame.top,
        frame.top,
      );
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
      await tester.pumpWidget(host(graph, store, account: 'bob'));
      await settle(tester);
      expect(
        canvas(tester).scene.shapeById('public.orders')!.source.frame.left,
        isNot(frame.left),
      );
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
    },
  );
  testWidgets(
    'corrupt storage recovers without restoring removed domain controls',
    (tester) async {
      final store = MemorySchemaViewStore();
      await store.write('project/alice', {
        'version': 1,
        'views': {
          'schema:*': {
            'positions': {
              'public.orders': ['bad', 'NaN'],
            },
            'zoom': 'bad',
          },
        },
        'groups': ['malformed'],
      });
      await tester.pumpWidget(host(fixture(), store));
      await settle(tester);
      expect(find.byType(DiagramCanvas), findsOneWidget);
      expect(find.text('Schemas'), findsOneWidget);
      expect(find.text('Domains'), findsNothing);
      expect(find.text('Models'), findsNothing);
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'deleted tables and removed relationships never leave a stale selection',
    (tester) async {
      wide(tester);
      final store = MemorySchemaViewStore();
      final graph = fixture();
      await tester.pumpWidget(host(graph, store));
      await settle(tester);
      canvas(tester).select(['public.users']);
      await settle(tester);

      final changed = graph.copyWith(
        tables: graph.tables.where((t) => t.name != 'public.users').toList(),
      );
      await tester.pumpWidget(host(changed, store));
      await settle(tester);
      expect(canvas(tester).document.elementById('public.users'), isNull);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
    },
  );
  testWidgets('table cards show every field and retain full schema metadata', (
    tester,
  ) async {
    wide(tester);
    await tester.pumpWidget(host(fixture(), MemorySchemaViewStore()));
    await settle(tester);
    final controller = canvas(tester);
    final shape =
        controller.document.elementById('public.orders')! as ShapeElement;
    expect((shape.values['schema'] as Map)['columns'], hasLength(3));
    expect(
      controller
          .resolvedTable('public.orders', 'public.orders-columns')
          ?.cells
          .length,
      9,
    );
    controller.select(['public.orders']);
    await settle(tester);
    await tester.tap(find.widgetWithText(Tab, 'Fields'));
    await settle(tester);
    expect(find.text('description'), findsOneWidget);
    expect(find.byTooltip('Diagram detail level'), findsNothing);
    await tester.pumpWidget(const SizedBox.shrink());
    await settle(tester);
  });
  for (final size in [
    const Size(320, 568),
    const Size(390, 844),
    const Size(844, 390),
    const Size(1440, 960),
  ]) {
    testWidgets('exploration is usable at $size in dark RTL with large text', (
      tester,
    ) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = size;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.dark(),
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(1.6)),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: child!,
            ),
          ),
          home: SchemaViewer(
            graph: fixture(neighbors: 0),
            viewStore: MemorySchemaViewStore(),
          ),
        ),
      );
      await settle(tester);
      expect(find.byType(DiagramCanvas), findsOneWidget);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
    });
  }
}
