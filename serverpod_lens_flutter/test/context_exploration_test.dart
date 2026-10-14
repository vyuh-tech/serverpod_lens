import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import 'support/context_fixture.dart';

Future<void> settle(WidgetTester tester) async {
  await tester.runAsync(
    () => Future<void>.delayed(const Duration(milliseconds: 150)),
  );
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 500));
  await tester.runAsync(
    () => Future<void>.delayed(const Duration(milliseconds: 150)),
  );
  await tester.pumpAndSettle();
}

void main() {
  testWidgets(
    'relationships cross schemas and Back restores the prior table area',
    (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(1440, 1000);
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        const MethodChannel('native_mouse_cursor'),
        (call) async => call.method == 'isSupported' ? false : null,
      );
      addTearDown(
        () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
          const MethodChannel('native_mouse_cursor'),
          null,
        ),
      );
      final graph = contextFixture();
      final store = MemorySchemaViewStore();
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          home: SchemaViewer(graph: graph, viewStore: store),
        ),
      );
      await settle(tester);
      var controller = tester
          .widget<DiagramCanvas>(find.byType(DiagramCanvas))
          .controller;
      controller.select(['auth.users']);
      await settle(tester);
      await tester.tap(find.text('Explore this table'));
      await settle(tester);
      await tester.tap(find.byTooltip('Table references'));
      await settle(tester);
      await tester.tap(find.text('Show references'));
      await settle(tester);
      controller = tester
          .widget<DiagramCanvas>(find.byType(DiagramCanvas))
          .controller;
      expect(controller.document.elementById('auth.users'), isNotNull);
      expect(controller.document.elementById('sales.orders'), isNotNull);
      final camera = controller.camera;
      tester.view.physicalSize = const Size(390, 844);
      await tester.pumpAndSettle();
      await tester.tap(find.byTooltip('Table details'));
      await settle(tester);
      await tester.ensureVisible(find.text('Relationships'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Relationships'));
      await settle(tester);
      expect(find.text('sales.orders → auth.users'), findsOneWidget);
      await tester.tap(find.text('sales.orders → auth.users'));
      await settle(tester);
      expect(find.text('sales.orders'), findsWidgets);
      expect(find.byTooltip('Back'), findsOneWidget);
      await tester.tap(find.byTooltip('Back'));
      await settle(tester);
      controller = tester
          .widget<DiagramCanvas>(find.byType(DiagramCanvas))
          .controller;
      expect(controller.camera.zoom, camera.zoom);
      expect(find.text('auth.users'), findsWidgets);
      expect(controller.document.elementById('auth.users'), isNotNull);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
    },
  );
}
