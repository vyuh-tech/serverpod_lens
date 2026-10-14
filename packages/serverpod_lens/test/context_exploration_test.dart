import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import 'support/context_fixture.dart';

Future<void> settle(WidgetTester tester) async {
  await tester.runAsync(
    () => Future<void>.delayed(const Duration(milliseconds: 180)),
  );
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 600));
  await tester.pump();
}

void main() {
  testWidgets(
    'relationship navigation crosses real schema scopes without a Back workflow',
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
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          home: SchemaViewer(graph: graph, viewStore: MemorySchemaViewStore()),
        ),
      );
      await settle(tester);
      await tester.tap(find.byKey(const ValueKey('schema:auth')));
      await settle(tester);
      var controller = tester
          .widget<DiagramCanvas>(find.byType(DiagramCanvas))
          .controller;
      expect(controller.document.elementById('sales.orders'), isNull);
      controller.select(['auth.users']);
      await settle(tester);
      await tester.ensureVisible(find.widgetWithText(Tab, 'Relationships'));
      await tester.tap(find.widgetWithText(Tab, 'Relationships'));
      await settle(tester);
      expect(find.text('sales.orders → auth.users'), findsOneWidget);
      await tester.tap(find.text('sales.orders → auth.users'));
      await settle(tester);
      controller = tester
          .widget<DiagramCanvas>(find.byType(DiagramCanvas))
          .controller;
      expect((controller.selection as ElementSelection).elementIds, {
        'sales.orders',
      });
      expect(controller.document.elementById('auth.users'), isNull);
      expect(controller.document.elementById('sales.orders'), isNotNull);
      expect(find.byTooltip('Back'), findsNothing);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
    },
  );
}
