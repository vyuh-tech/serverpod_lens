import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';
import 'package:vyuh_diagram_core/extension_api.dart'
    show DiagramCameraGeometry;
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'support/navigation_fixture.dart';

import 'package:serverpod_lens/src/schema/schema_canvas.dart';

Future<void> ready(WidgetTester tester) async {
  await tester.runAsync(
    () => Future<void>.delayed(const Duration(milliseconds: 200)),
  );
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 600));
  await tester.pump();
}

void main() {
  test('native layout budgets keep large web schemas responsive', () {
    expect(SchemaLayout.grid.availableFor(1000, web: true), isTrue);
    expect(SchemaLayout.layeredDown.availableFor(156, web: true), isFalse);
    expect(SchemaLayout.layeredRight.availableFor(99, web: true), isTrue);
    expect(SchemaLayout.layeredDown.availableFor(156, web: false), isTrue);
    expect((SchemaLayout.force.resolve(1000) as ForceLayout).iterations, 30);
    expect((SchemaLayout.force.resolve(10) as ForceLayout).iterations, 300);
  });
  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('native_mouse_cursor'),
          (_) async => false,
        );
  });
  testWidgets(
    'workspace has one schema navigation and an expanded native minimap',
    (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(1440, 960);
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          home: SchemaViewer(
            graph: fixture(),
            viewStore: MemorySchemaViewStore(),
          ),
        ),
      );
      await ready(tester);
      expect(find.byTooltip('Table references'), findsNothing);
      expect(find.byTooltip('Diagram detail level'), findsNothing);
      expect(find.byTooltip('View options'), findsNothing);
      expect(find.byTooltip('Back'), findsNothing);
      expect(find.textContaining('tables ·'), findsNothing);
      expect(find.byKey(const ValueKey('zoom-minimap')), findsOneWidget);
      final controller = tester
          .widget<DiagramCanvas>(find.byType(DiagramCanvas))
          .controller;
      controller.select(['public.orders']);
      await ready(tester);
      expect(find.text('Explore this table'), findsNothing);
      expect(find.widgetWithText(Tab, 'Fields'), findsOneWidget);
      await tester.pumpWidget(const SizedBox.shrink());
      await ready(tester);
    },
  );
  Future<DiagramController> workspace(
    WidgetTester tester, {
    bool mobile = false,
  }) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = mobile
        ? const Size(390, 844)
        : const Size(1440, 960);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        home: SchemaViewer(
          graph: fixture(),
          viewStore: MemorySchemaViewStore(),
          sourcePaths: const {'public.orders': 'lib/src/models/order.spy.yaml'},
          modelSources: const {
            'public.orders': 'class: Order\ntable: orders\n',
          },
          onOpenModel: (_) {},
        ),
      ),
    );
    await ready(tester);
    expect(
      tester
          .widgetList<Text>(find.byType(Text))
          .map((text) => text.data)
          .where((text) => text?.contains('Could not open this view') ?? false),
      isEmpty,
    );
    return tester.widget<DiagramCanvas>(find.byType(DiagramCanvas)).controller;
  }

  Future<void> close(WidgetTester tester) async {
    await tester.pumpWidget(const SizedBox.shrink());
    await ready(tester);
    expect(tester.takeException(), isNull);
  }

  testWidgets(
    'reselecting the same table keeps native effects instead of replaying them',
    (tester) async {
      final controller = await workspace(tester);
      controller.select(['public.orders']);
      await ready(tester);
      final handles = controller.effects.playing;
      controller.select(['public.orders']);
      await ready(tester);
      expect(controller.effects.playing, handles);
      await close(tester);
    },
  );

  testWidgets(
    'connections cannot replace table inspection or expose editing handles',
    (tester) async {
      expect(SchemaViewPreferences().snapGuides, isFalse);
      expect(SchemaViewPreferences().snap, isFalse);
      final controller = await workspace(tester);
      final edge = controller.document.elements
          .whereType<ConnectorElement>()
          .first;
      expect(edge.isLocked, isTrue);
      controller.select(['public.orders']);
      await ready(tester);
      controller.select([edge.id]);
      await ready(tester);
      expect((controller.selection as ElementSelection).elementIds, {
        'public.orders',
      });
      expect(find.widgetWithText(Tab, 'Fields'), findsOneWidget);
      controller.clearSelection();
      await ready(tester);
      controller.select([edge.id]);
      await ready(tester);
      expect(controller.selection, isA<EmptySelection>());
      await close(tester);
    },
  );

  testWidgets('layout menu runs every native layout without changing schema', (
    tester,
  ) async {
    final controller = await workspace(tester);
    final ids = controller.document.elements.map((e) => e.id).toSet();
    final bindings = controller.document.elements
        .whereType<ConnectorElement>()
        .map((edge) => (edge.id, edge.start, edge.end))
        .toSet();
    for (final label in [
      'Grid',
      'Layered · vertical',
      'Layered · horizontal',
      'Tree · vertical',
      'Tree · horizontal',
      'Tree · radial',
      'Force directed',
      'Circular',
    ]) {
      await tester.tap(find.byTooltip('Auto layout'));
      await tester.pumpAndSettle();
      await tester.tap(find.text(label));
      await ready(tester);
      await tester.pumpAndSettle();
      expect(controller.document.elements.map((e) => e.id).toSet(), ids);
      expect(
        controller.document.elements
            .whereType<ConnectorElement>()
            .map((edge) => (edge.id, edge.start, edge.end))
            .toSet(),
        bindings,
      );
      expect(find.textContaining('Could not open this view'), findsNothing);
      expect(find.byType(LinearProgressIndicator), findsNothing);
      expect(tester.takeException(), isNull);
    }
    await close(tester);
  });

  testWidgets(
    'selection uses native fades and directional flows without document or camera edits',
    (tester) async {
      final controller = await workspace(tester);
      final document = controller.document;
      final camera = controller.camera;
      controller.select(['public.orders']);
      await ready(tester);
      expect(identical(controller.document, document), isTrue);
      expect(controller.camera.zoom, camera.zoom);
      expect(controller.camera.center, camera.center);
      expect(
        controller.effects.playingOn('public.child0').single.effect!.kind,
        EffectKind.fade,
      );
      expect(controller.effects.playingOn('public.users'), isEmpty);
      expect(controller.effects.playingOn('audit.log'), isEmpty);
      expect(
        controller.effects
            .playingOn('public.orders::relation::0')
            .single
            .effect!
            .reverse,
        isFalse,
      );
      expect(
        controller.effects
            .playingOn('audit.log::relation::0')
            .single
            .effect!
            .reverse,
        isTrue,
      );
      expect(controller.document.elements.every((e) => e.opacity == 1), isTrue);
      controller.clearSelection();
      await ready(tester);
      expect(controller.effects.playing, isEmpty);
      await close(tester);
    },
  );
  testWidgets(
    'closing the inspector removes its space and placeholder while keeping the browser',
    (tester) async {
      final controller = await workspace(tester);
      controller.select(['public.orders']);
      await ready(tester);
      final size = tester.getSize(find.byType(DiagramCanvas));
      await tester.tap(find.byTooltip('Close inspector'));
      await ready(tester);
      expect(find.text('Schemas'), findsOneWidget);
      expect(
        tester.getSize(find.byType(DiagramCanvas)).width,
        greaterThan(size.width + 380),
      );
      expect(controller.selection, isA<EmptySelection>());
      expect(controller.effects.playing, isEmpty);
      expect(find.textContaining('Select a table to see'), findsNothing);
      await close(tester);
    },
  );
  testWidgets(
    'schema scope contains all its tables and All schemas restores all connections',
    (tester) async {
      await workspace(tester);
      await tester.tap(find.byKey(const ValueKey('schema:public')));
      await ready(tester);
      var controller = tester
          .widget<DiagramCanvas>(find.byType(DiagramCanvas))
          .controller;
      expect(
        controller.document.elements.whereType<ShapeElement>(),
        hasLength(5),
      );
      expect(controller.document.elementById('audit.log'), isNull);
      await tester.tap(find.byKey(const ValueKey('all-schemas')));
      await ready(tester);
      controller = tester
          .widget<DiagramCanvas>(find.byType(DiagramCanvas))
          .controller;
      expect(
        controller.document.elements.whereType<ShapeElement>(),
        hasLength(6),
      );
      expect(
        controller.document.elements.whereType<ConnectorElement>(),
        hasLength(5),
      );
      await close(tester);
    },
  );
  testWidgets(
    'initial and explicit fits contain the complete scope at the largest fitting zoom',
    (tester) async {
      final controller = await workspace(tester);
      void fitted() {
        final bounds = controller.scene.bounds;
        final visible = controller.camera.visibleWorldBounds;
        expect(visible.left, lessThanOrEqualTo(bounds.left));
        expect(visible.top, lessThanOrEqualTo(bounds.top));
        expect(visible.right, greaterThanOrEqualTo(bounds.right));
        expect(visible.bottom, greaterThanOrEqualTo(bounds.bottom));
        expect(
          controller.camera.zoom,
          closeTo(controller.camera.forBounds(bounds, padding: 24).zoom, .0001),
        );
      }

      fitted();
      controller.setCamera(
        controller.camera.copyWith(center: const DiagramPoint(0, 0), zoom: 2),
      );
      await tester.pump();
      await tester.tap(find.byTooltip('Fit view'));
      await ready(tester);
      fitted();
      await close(tester);
    },
  );
  testWidgets('minimap turns off and back on as an expanded native map', (
    tester,
  ) async {
    final controller = await workspace(tester);
    expect(find.byKey(const ValueKey('zoom-minimap')), findsOneWidget);
    await tester.tap(find.byTooltip('Settings'));
    await ready(tester);
    await tester.tap(find.text('Canvas'));
    await ready(tester);
    final toggle = find.widgetWithText(SwitchListTile, 'Show minimap');
    await tester.ensureVisible(toggle);
    await tester.tap(toggle);
    await ready(tester);
    expect(controller.options<MinimapOptions>().visible, isFalse);
    expect(find.byKey(const ValueKey('zoom-minimap')), findsNothing);
    await tester.tap(toggle);
    await ready(tester);
    expect(controller.options<MinimapOptions>().visible, isTrue);
    expect(find.byKey(const ValueKey('zoom-minimap')), findsOneWidget);
    await tester.tap(find.text('Done'));
    await ready(tester);
    await close(tester);
  });
  testWidgets(
    'Fields separates searchable metadata from Details and Source organizes the model',
    (tester) async {
      final controller = await workspace(tester);
      controller.select(['public.orders']);
      await ready(tester);
      expect(find.text('Basic information'), findsOneWidget);
      expect(find.text('Search fields'), findsNothing);
      await tester.tap(find.widgetWithText(Tab, 'Fields'));
      await ready(tester);
      expect(find.text('Primary key'), findsOneWidget);
      expect(find.text('Foreign key'), findsOneWidget);
      final search = find.widgetWithText(TextField, 'Search fields');
      await tester.enterText(search, 'description');
      await ready(tester);
      expect(
        find.widgetWithText(SelectableText, 'description'),
        findsOneWidget,
      );
      expect(find.text('Foreign key'), findsNothing);
      await tester.ensureVisible(find.widgetWithText(Tab, 'Source'));
      await tester.tap(find.widgetWithText(Tab, 'Source'));
      await ready(tester);
      expect(find.text('order.spy.yaml'), findsOneWidget);
      expect(find.byTooltip('Open model'), findsOneWidget);
      expect(find.text('Serverpod model'), findsOneWidget);
      expect(find.text('class: Order\ntable: orders\n'), findsOneWidget);
      await close(tester);
    },
  );
  testWidgets(
    'mobile selection opens the same inspector automatically and closing restores the map',
    (tester) async {
      final controller = await workspace(tester, mobile: true);
      controller.select(['public.orders']);
      await ready(tester);
      expect(find.byType(BottomSheet), findsOneWidget);
      expect(find.widgetWithText(Tab, 'Fields'), findsOneWidget);
      await tester.tap(find.byTooltip('Close inspector'));
      await ready(tester);
      expect(find.byType(BottomSheet), findsNothing);
      expect(controller.selection, isA<EmptySelection>());
      await close(tester);
    },
  );
  test(
    'theme mode restores and persists a single System/Light/Dark choice',
    () async {
      SharedPreferences.setMockInitialValues({'lens.theme': 'dark'});
      final theme = LensThemeController();
      await theme.restore();
      expect(theme.value, ThemeMode.dark);
      await theme.choose(ThemeMode.light);
      expect(theme.value, ThemeMode.light);
      expect(
        (await SharedPreferences.getInstance()).getString('lens.theme'),
        'light',
      );
      await theme.choose(ThemeMode.system);
      expect(theme.value, ThemeMode.system);
      theme.dispose();
    },
  );
  testWidgets(
    'switching light/dark updates the canvas and inspector without losing selection',
    (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(1440, 960);
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      SharedPreferences.setMockInitialValues({});
      final theme = LensThemeController();
      final graph = fixture();
      await tester.pumpWidget(
        LensThemeScope(
          controller: theme,
          child: ValueListenableBuilder<ThemeMode>(
            valueListenable: theme,
            builder: (_, mode, _) => MaterialApp(
              themeMode: mode,
              theme: ThemeData.light(),
              darkTheme: ThemeData.dark(),
              localizationsDelegates: GlobalMaterialLocalizations.delegates,
              home: SchemaViewer(
                graph: graph,
                viewStore: MemorySchemaViewStore(),
              ),
            ),
          ),
        ),
      );
      await ready(tester);
      final controller = tester
          .widget<DiagramCanvas>(find.byType(DiagramCanvas))
          .controller;
      controller.select(['public.orders']);
      await ready(tester);
      for (final mode in [ThemeMode.dark, ThemeMode.light]) {
        await theme.choose(mode);
        await ready(tester);
        final canvas = tester.widget<DiagramCanvas>(find.byType(DiagramCanvas));
        expect(identical(canvas.controller, controller), isTrue);
        expect(
          canvas.theme!.brightness,
          mode == ThemeMode.dark ? Brightness.dark : Brightness.light,
        );
        expect((controller.selection as ElementSelection).elementIds, {
          'public.orders',
        });
        expect(find.text('Basic information'), findsOneWidget);
      }
      await close(tester);
      theme.dispose();
    },
  );
  testWidgets(
    'reduced motion keeps static emphasis without invalid effects or continuous flow',
    (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(1440, 960);
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(disableAnimations: true),
            child: child!,
          ),
          home: SchemaViewer(
            graph: fixture(),
            viewStore: MemorySchemaViewStore(),
          ),
        ),
      );
      await ready(tester);
      final controller = tester
          .widget<DiagramCanvas>(find.byType(DiagramCanvas))
          .controller;
      controller.select(['public.orders']);
      await ready(tester);
      expect(controller.effects.playing, isNotEmpty);
      expect(
        controller.effects.playing.every(
          (handle) => handle.effect!.kind == EffectKind.fade,
        ),
        isTrue,
      );
      expect(
        controller.effects.playing.every((handle) => handle.effect!.isValid),
        isTrue,
      );
      await close(tester);
    },
  );
  testWidgets(
    'edge handles collapse each panel independently and preserve inspector state and selection',
    (tester) async {
      final controller = await workspace(tester);
      final initial = tester.getSize(find.byType(DiagramCanvas));
      expect(find.textContaining('Select a table to see'), findsNothing);
      controller.select(['public.orders']);
      await ready(tester);
      final selectedSize = tester.getSize(find.byType(DiagramCanvas));
      expect(selectedSize.width, lessThan(initial.width - 380));
      final camera = controller.camera;
      await tester.tap(find.widgetWithText(Tab, 'Fields'));
      await ready(tester);
      await tester.tap(find.byTooltip('Collapse table inspector'));
      await ready(tester);
      expect(find.widgetWithText(Tab, 'Fields'), findsNothing);
      expect(
        tester.getSize(find.byType(DiagramCanvas)).width,
        greaterThan(selectedSize.width + 370),
      );
      expect((controller.selection as ElementSelection).elementIds, {
        'public.orders',
      });
      expect(controller.camera.zoom, camera.zoom);
      expect(controller.camera.center, camera.center);
      await tester.tap(find.byTooltip('Expand table inspector'));
      await ready(tester);
      expect(find.widgetWithText(TextField, 'Search fields'), findsOneWidget);
      await tester.tap(find.byTooltip('Collapse schema browser'));
      await ready(tester);
      expect(find.text('Schemas'), findsNothing);
      expect(find.widgetWithText(TextField, 'Search fields'), findsOneWidget);
      await tester.tap(find.byTooltip('Expand schema browser'));
      await ready(tester);
      expect(find.text('Schemas'), findsOneWidget);
      expect(
        controller.effects
            .playingOn('public.orders::relation::0')
            .single
            .effect!
            .baseOpacity,
        1,
      );
      await close(tester);
    },
  );
  testWidgets(
    'resizing either panel respects width limits and leaves a usable canvas',
    (tester) async {
      final controller = await workspace(tester);
      controller.select(['public.orders']);
      await ready(tester);
      final inspectorHandle = find.byKey(
        const ValueKey('resize:table inspector'),
      );
      final initial = tester.getSize(find.byType(DiagramCanvas)).width;
      await tester.drag(inspectorHandle, const Offset(-150, 0));
      await ready(tester);
      expect(
        tester.getSize(find.byType(DiagramCanvas)).width,
        lessThan(initial - 100),
      );
      await tester.drag(inspectorHandle, const Offset(-1500, 0));
      await ready(tester);
      expect(
        tester.getSize(find.byType(DiagramCanvas)).width,
        greaterThanOrEqualTo(360),
      );
      await tester.drag(inspectorHandle, const Offset(1500, 0));
      await ready(tester);
      final restored = tester.getSize(find.byType(DiagramCanvas)).width;
      await tester.drag(
        find.byKey(const ValueKey('resize:schema browser')),
        const Offset(100, 0),
      );
      await ready(tester);
      expect(
        tester.getSize(find.byType(DiagramCanvas)).width,
        lessThan(restored - 50),
      );
      tester.view.physicalSize = const Size(1100, 960);
      await ready(tester);
      expect(
        tester.getSize(find.byType(DiagramCanvas)).width,
        greaterThanOrEqualTo(360),
      );
      await close(tester);
    },
  );
  testWidgets(
    'native minimap zoom ranges from whole-schema fit below 25 percent to natural node size',
    (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(1440, 960);
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          home: SchemaViewer(
            graph: fixture(neighbors: 100),
            viewStore: MemorySchemaViewStore(),
          ),
        ),
      );
      await ready(tester);
      final controller = tester
          .widget<DiagramCanvas>(find.byType(DiagramCanvas))
          .controller;
      expect(controller.camera.minZoom, lessThan(.25));
      expect(controller.camera.maxZoom, 1);
      controller.setCamera(controller.camera.copyWith(zoom: .25));
      await tester.pump();
      await tester.tap(find.byKey(const ValueKey('zoom-out')));
      await ready(tester);
      expect(controller.camera.zoom, lessThan(.25));
      for (var i = 0; i < 25; i++) {
        await tester.tap(find.byKey(const ValueKey('zoom-out')));
        await tester.pump();
      }
      expect(
        controller.camera.zoom,
        closeTo(controller.camera.minZoom, .00001),
      );
      for (var i = 0; i < 40; i++) {
        await tester.tap(find.byKey(const ValueKey('zoom-in')));
        await tester.pump();
      }
      expect(controller.camera.zoom, 1);
      await tester.tap(find.byKey(const ValueKey('zoom-fit')));
      await ready(tester);
      expect(
        controller.camera.zoom,
        closeTo(controller.camera.minZoom, .00001),
      );
      await close(tester);
    },
  );
}
