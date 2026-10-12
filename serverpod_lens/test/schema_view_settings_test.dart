import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens/src/screens/schema_view_settings.dart';
import 'package:vyuh_diagram_extension_connectors/vyuh_diagram_extension_connectors.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_extension_snap_guides/vyuh_diagram_extension_snap_guides.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import 'support/connection_checks.dart';

Future<DiagramController> openSettings(
  WidgetTester tester,
  SchemaViewPreferences preferences, {
  double textScale = 1,
  bool dark = false,
  bool rtl = false,
}) async {
  final fixture = connectionFixture();
  final controller = DiagramController(
    document: fixture.document,
    configuration: DiagramConfiguration(
      rules: schemaViewRules,
      extensions: [
        ConnectorsExtension(),
        SnapGuidesExtension(),
        MinimapExtension(),
        NavigationExtension(),
        GridExtension(),
      ],
    ),
  );
  fixture.dispose();
  applySchemaConnections(controller, preferences);
  await tester.pumpWidget(
    MaterialApp(
      theme: ThemeData(brightness: dark ? Brightness.dark : Brightness.light),
      home: Builder(
        builder: (context) => Scaffold(
          body: TextButton(
            onPressed: () => showDialog<void>(
              context: context,
              builder: (context) => MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: TextScaler.linear(textScale)),
                child: Directionality(
                  textDirection: rtl ? TextDirection.rtl : TextDirection.ltr,
                  child: RepaintBoundary(
                    key: const ValueKey('settings-preview'),
                    child: SchemaViewSettings(
                      controller: controller,
                      preferences: preferences,
                    ),
                  ),
                ),
              ),
            ),
            child: const Text('Open settings'),
          ),
        ),
      ),
    ),
  );
  await tester.tap(find.text('Open settings'));
  await tester.pumpAndSettle();
  return controller;
}

void main() {
  for (final viewport in [
    (width: 320.0, scale: 1.0, dark: false, rtl: false),
    (width: 320.0, scale: 2.0, dark: false, rtl: false),
    (width: 1000.0, scale: 1.0, dark: false, rtl: false),
    (width: 320.0, scale: 1.0, dark: true, rtl: false),
    (width: 320.0, scale: 2.0, dark: true, rtl: true),
    (width: 1000.0, scale: 1.0, dark: true, rtl: true),
  ]) {
    final scale = viewport.scale;
    testWidgets(
      'settings at ${viewport.width}px / ${scale}x / dark=${viewport.dark} / rtl=${viewport.rtl}',
      (tester) async {
        tester.view.physicalSize = Size(viewport.width, 640);
        tester.view.devicePixelRatio = 1;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);
        final preferences = SchemaViewPreferences();
        final controller = await openSettings(
          tester,
          preferences,
          textScale: scale,
          dark: viewport.dark,
          rtl: viewport.rtl,
        );
        addTearDown(controller.dispose);
        expect(find.text('Show relationship labels'), findsOneWidget);
        if (Platform.environment['LENS_SETTINGS_CAPTURE'] == '1') {
          await tester.runAsync(() async {
            final boundary = tester.renderObject<RenderRepaintBoundary>(
              find.byKey(const ValueKey('settings-preview')),
            );
            final image = await boundary.toImage();
            try {
              final data = await image.toByteData(
                format: ui.ImageByteFormat.png,
              );
              await File('/tmp/lens-settings-${viewport.width}-$scale.png')
                  .writeAsBytes(data!.buffer.asUint8List());
            } finally {
              image.dispose();
            }
          });
        }
        await tester.tap(find.text('Connections').first);
        await tester.pumpAndSettle();
        await tester.tap(find.text('Canvas').last);
        await tester.pumpAndSettle();
        expect(find.text('Snap to nearby tables'), findsOneWidget);
        final toggle = find.widgetWithText(
          SwitchListTile,
          'Snap to nearby tables',
        );
        final switchControl = find.descendant(
          of: toggle,
          matching: find.byType(Switch),
        );
        await tester.ensureVisible(switchControl);
        await tester.tap(switchControl);
        await tester.pumpAndSettle();
        expect(controller.options<SnapGuidesOptions>().enabled, isFalse);
        expect(preferences.snapGuides, isFalse);
        final slider = tester.widgetList<Slider>(find.byType(Slider)).first;
        expect(slider.onChanged, isNull);
        final gridToggle = find.widgetWithText(
          SwitchListTile,
          'Snap nodes to grid',
        );
        final gridControl = find.descendant(
          of: gridToggle,
          matching: find.byType(Switch),
        );
        await tester.ensureVisible(gridControl);
        await tester.tap(gridControl);
        await tester.pumpAndSettle();
        expect(controller.options<GridOptions>().snap, isTrue);
        expect(preferences.snap, isTrue);
        expect(controller.options<SnapGuidesOptions>().enabled, isFalse);
        await tester.ensureVisible(switchControl);
        await tester.tap(switchControl);
        await tester.pumpAndSettle();
        final enabledSlider = tester
            .widgetList<Slider>(find.byType(Slider))
            .first;
        for (final tolerance in [2.0, 16.0]) {
          enabledSlider.onChanged!(tolerance);
          await tester.pump();
          expect(controller.options<SnapGuidesOptions>().tolerance, tolerance);
          expect(preferences.snapTolerance, tolerance);
        }
        expect(controller.options<GridOptions>().snap, isTrue);
        expect(tester.takeException(), isNull);
      },
    );
  }

  testWidgets('connection errors restore controls and preferences', (
    tester,
  ) async {
    final preferences = SchemaViewPreferences();
    final controller = await openSettings(tester, preferences);
    addTearDown(controller.dispose);
    controller.diagram.setRules(
      DiagramRules(
        beforeChange: (_) => const EditResult.denied(reason: 'Fixture denial'),
      ),
    );
    final dashed = find.widgetWithText(SwitchListTile, 'Dashed lines');
    await tester.ensureVisible(dashed);
    await tester.tap(dashed);
    await tester.pumpAndSettle();
    expect(preferences.dashedConnections, isFalse);
    expect(tester.widget<SwitchListTile>(dashed).value, isFalse);
    expect(find.textContaining('Could not update connections'), findsOneWidget);
    expect(
      edges(controller).every((edge) => edge.strokeStyle == StrokeStyle.solid),
      isTrue,
    );
    expect(tester.takeException(), isNull);
  });
}
