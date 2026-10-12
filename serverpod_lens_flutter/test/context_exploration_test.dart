import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_flutter/screens/schema_map_screen.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import 'support/context_fixture.dart';

void main() {
  testWidgets(
    'context focus, groups, boundary navigation and mobile controls',
    (tester) async {
      const capture = ValueKey('context-capture');
      const fontPath = String.fromEnvironment('LENS_CAPTURE_FONT');
      const iconPath = String.fromEnvironment('LENS_CAPTURE_ICONS');
      if (fontPath.isNotEmpty) {
        for (final family in ['ContextReview']) {
          final loader = FontLoader(family)
            ..addFont(
              Future.value(
                ByteData.sublistView(File(fontPath).readAsBytesSync()),
              ),
            );
          await loader.load();
        }
      }
      if (iconPath.isNotEmpty) {
        final loader = FontLoader('MaterialIcons')
          ..addFont(
            Future.value(
              ByteData.sublistView(File(iconPath).readAsBytesSync()),
            ),
          );
        await loader.load();
      }
      final graph = contextFixture();
      const cursorChannel = MethodChannel('native_mouse_cursor');
      tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        cursorChannel,
        (call) async => call.method == 'isSupported' ? false : null,
      );
      final bytes = Uint8List.fromList(utf8.encode(jsonEncode(graph.toJson())));
      tester.binding.defaultBinaryMessenger.setMockMessageHandler(
        'flutter/assets',
        (message) async {
          return utf8.decode(message!.buffer.asUint8List()) == 'context-fixture'
              ? ByteData.sublistView(bytes)
              : null;
        },
      );
      addTearDown(() {
        tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
          cursorChannel,
          null,
        );
        tester.binding.defaultBinaryMessenger.setMockMessageHandler(
          'flutter/assets',
          null,
        );
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
        tester.view.resetViewInsets();
        tester.binding.setSurfaceSize(null);
      });
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(1440, 1000);
      await tester.binding.setSurfaceSize(const Size(1440, 1000));
      await tester.runAsync(() async {
        await tester.pumpWidget(
          RepaintBoundary(
            key: capture,
            child: MaterialApp(
              theme: ThemeData(
                fontFamily: fontPath.isEmpty ? null : 'ContextReview',
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              ),
              debugShowCheckedModeBanner: false,
              localizationsDelegates: GlobalMaterialLocalizations.delegates,
              home: const SchemaMapScreen(asset: 'context-fixture'),
            ),
          ),
        );
        await Future<void>.delayed(const Duration(milliseconds: 500));
        await tester.pump();
        await Future<void>.delayed(const Duration(milliseconds: 500));
      });
      await tester.pumpAndSettle();
      final controller = tester
          .widget<DiagramCanvas>(find.byType(DiagramCanvas))
          .controller;
      if (const bool.fromEnvironment('LENS_CAPTURE_CONTEXT')) {
        await tester.runAsync(() => controller.layout(Layout.grid(columns: 3)));
      }
      Future<void> settle() async {
        await tester.pump();
        controller.effects.stopAll();
        await tester.pumpAndSettle();
      }

      // Rapid changes in one turn must decorate only the final selection.
      controller.select(['catalog.products']);
      controller.select(['sales.payments']);
      controller.select(['sales.orders']);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 50));
      expect(find.text('3 tables in context'), findsOneWidget);
      expect(controller.document.elementById('catalog.products')!.opacity, .18);
      expect(controller.document.elementById('auth.users')!.opacity, 1);
      final camera = controller.camera;
      await tester.tap(find.byTooltip('Fit related tables'));
      await settle();
      await tester.tap(find.byTooltip('Back to previous view'));
      await tester.pump();
      expect(controller.camera.center, camera.center);
      expect(controller.camera.zoom, camera.zoom);
      controller.select(['auth.users', 'sales.orders']);
      await tester.pump();
      await tester.tap(find.text('Group selection'));
      await settle();
      await tester.enterText(
        find.byKey(const ValueKey('group-name')),
        'Checkout',
      );
      await tester.tap(find.widgetWithText(FilledButton, 'Create group'));
      await settle();
      expect(find.text('Groups (1)'), findsOneWidget);
      expect(find.text('2 tables · 1 external FKs'), findsOneWidget);
      await tester.tap(find.text('Relationships'));
      await settle();
      expect(find.text('2 internal · 1 incoming · 0 outgoing'), findsOneWidget);
      await tester.tap(find.byTooltip('Close relationships'));
      await settle();
      controller.effects.stopAll();
      // Keep fixture screenshots optional, outside the repository.
      Future<void> captureImage(String path) async {
        if (!const bool.fromEnvironment('LENS_CAPTURE_CONTEXT')) return;
        await tester.pump();
        final boundary = tester.renderObject<RenderRepaintBoundary>(
          find.byKey(capture),
        );
        await tester.runAsync(() async {
          final image = await boundary.toImage(pixelRatio: 1);
          final data = await image.toByteData(format: ui.ImageByteFormat.png);
          File(path).writeAsBytesSync(data!.buffer.asUint8List());
          image.dispose();
        });
      }

      if (const bool.fromEnvironment('LENS_CAPTURE_CONTEXT')) {
        await tester.tap(find.byTooltip('Fit related tables'));
        await settle();
      }
      await captureImage('/tmp/lens-context-desktop.png');
      tester.view.physicalSize = const Size(390, 844);
      await tester.binding.setSurfaceSize(const Size(390, 844));
      await settle();
      expect(tester.takeException(), isNull);
      await tester.tap(find.byTooltip('Fit related tables'));
      await settle();
      await captureImage('/tmp/lens-context-mobile.png');
      await tester.tap(find.text('Show all'));
      await tester.pump();
      expect(controller.document.elements.every((e) => e.opacity == 1), isTrue);
      expect(controller.selection, isNot(isA<ElementSelection>()));
      expect(find.text('Back to previous view'), findsOneWidget);
      await tester.tap(find.text('Back to previous view'));
      await settle();
      await tester.tap(find.byTooltip('Browse schemas'));
      await settle();
      await tester.tap(find.byTooltip('Manage Checkout'));
      await settle();
      await tester.tap(find.text('Edit group'));
      await settle();
      expect(tester.takeException(), isNull);
      await captureImage('/tmp/lens-context-editor.png');
      tester.view.viewInsets = const FakeViewPadding(bottom: 300);
      await tester.tap(find.byKey(const ValueKey('group-name')));
      await settle();
      expect(tester.takeException(), isNull);
      await captureImage('/tmp/lens-context-editor-keyboard.png');
      await tester.drag(
        find
            .descendant(
              of: find.byType(AlertDialog),
              matching: find.byType(SingleChildScrollView),
            )
            .first,
        const Offset(0, -500),
      );
      await settle();
      await tester.scrollUntilVisible(
        find.text('sales.orders'),
        100,
        scrollable: find
            .descendant(
              of: find.byType(AlertDialog),
              matching: find.byType(Scrollable),
            )
            .last,
      );
      expect(find.text('sales.orders').hitTestable(), findsOneWidget);
      await captureImage('/tmp/lens-context-editor-members.png');
      await tester.tap(find.text('sales.orders'));
      await tester.tap(find.text('Save group'));
      await settle();
      expect(
        (controller.selection as ElementSelection).elementIds,
        {'auth.users'},
      );
      tester.view.resetViewInsets();
      await settle();
      await tester.tap(find.byTooltip('Close schema browser'));
      await settle();
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pump();
    },
  );
}
