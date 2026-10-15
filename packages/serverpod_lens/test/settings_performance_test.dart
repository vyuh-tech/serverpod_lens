import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:serverpod_lens/src/screens/schema_view_settings.dart';
import 'package:vyuh_diagram_extension_snap_guides/vyuh_diagram_extension_snap_guides.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart'
    show ConnectorElement, GridOptions, NavigationOptions;

import 'schema_view_settings_test.dart' show openSettings;

void main() {
  Future<void> slider(WidgetTester tester, String label, double value) async {
    final control = tester.widget<Slider>(
      find.descendant(
        of: find.byKey(ValueKey(label)),
        matching: find.byType(Slider),
      ),
    );
    control.onChanged!(value);
    control.onChangeEnd!(value);
    await tester.pump();
  }

  testWidgets(
    'all connection styles and repeated slider drags preserve bindings',
    (tester) async {
      final preferences = SchemaViewPreferences();
      final controller = await openSettings(tester, preferences);
      addTearDown(controller.dispose);
      final endpoints = controller.document.elements
          .whereType<ConnectorElement>()
          .map((edge) => (edge.start, edge.end))
          .toList();
      for (final style in SchemaConnectionStyle.values) {
        tester
            .widget<DropdownButtonFormField<SchemaConnectionStyle>>(
              find.byType(DropdownButtonFormField<SchemaConnectionStyle>),
            )
            .onChanged!(style);
        await tester.pump();
        for (final width in [1.0, 5.0, 2.0]) {
          await slider(tester, 'Line width', width);
          expect(preferences.strokeWidth, width);
          expect(
            controller.document.elements.whereType<ConnectorElement>().every(
              (edge) => edge.strokeWidth == width && edge.route == style.route,
            ),
            isTrue,
          );
        }
        if (style.hasCorners) await slider(tester, 'Port lead length', 42);
        if (style == SchemaConnectionStyle.rounded)
          await slider(tester, 'Corner radius', 24);
        final dashed = tester.widget<SwitchListTile>(
          find.widgetWithText(SwitchListTile, 'Dashed lines'),
        );
        dashed.onChanged!(!preferences.dashedConnections);
        await tester.pump();
      }
      final labels = tester.widget<SwitchListTile>(
        find.widgetWithText(SwitchListTile, 'Show relationship labels'),
      );
      labels.onChanged!(true);
      await tester.pump();
      expect(preferences.showRelationshipLabels, isTrue);
      expect(
        controller.document.elements.whereType<ConnectorElement>().every(
          (edge) => edge.labels.isNotEmpty,
        ),
        isTrue,
      );
      expect(
        controller.document.elements
            .whereType<ConnectorElement>()
            .map((edge) => (edge.start, edge.end))
            .toList(),
        endpoints,
      );
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('every animation mode updates only effect preferences', (
    tester,
  ) async {
    final preferences = SchemaViewPreferences();
    final controller = await openSettings(tester, preferences);
    addTearDown(controller.dispose);
    await tester.tap(find.text('Animation').last);
    await tester.pumpAndSettle();
    final document = controller.document;
    for (final animation in SchemaAnimation.values) {
      tester
          .widget<DropdownButtonFormField<SchemaAnimation>>(
            find.byType(DropdownButtonFormField<SchemaAnimation>),
          )
          .onChanged!(animation);
      await tester.pump();
      final speed = tester.widget<Slider>(
        find.descendant(
          of: find.byKey(const ValueKey('Animation speed')),
          matching: find.byType(Slider),
        ),
      );
      expect(speed.onChanged != null, animation != SchemaAnimation.off);
      if (animation == SchemaAnimation.off) continue;
      await slider(tester, 'Animation speed', 1.5);
      await slider(tester, 'Animation opacity', .6);
      expect(preferences.speed, 1.5);
      expect(preferences.animationOpacity, .6);
      final flows = {
        SchemaAnimation.particles,
        SchemaAnimation.dashes,
        SchemaAnimation.arrows,
      }.contains(animation);
      final reverse = tester.widget<SwitchListTile>(
        find.widgetWithText(SwitchListTile, 'Reverse flow'),
      );
      expect(reverse.onChanged != null, flows);
      if (flows) {
        reverse.onChanged!(true);
        await tester.pump();
        await slider(tester, 'Trail density', 15);
        await slider(tester, switch (animation) {
          SchemaAnimation.dashes => 'Dash length',
          SchemaAnimation.arrows => 'Arrow size',
          _ => 'Particle radius',
        }, 3);
        expect(preferences.density, 15);
        expect(preferences.particleSize, 3);
      }
      if ({
        SchemaAnimation.dashes,
        SchemaAnimation.pulse,
        SchemaAnimation.blink,
      }.contains(animation)) {
        await slider(tester, 'Animation stroke width', 4);
        expect(preferences.animationWidth, 4);
      }
      expect(identical(controller.document, document), isTrue);
    }
    expect(tester.takeException(), isNull);
  });

  testWidgets('all canvas controls keep the document unchanged', (
    tester,
  ) async {
    final preferences = SchemaViewPreferences()..snapGuides = true;
    final controller = await openSettings(tester, preferences);
    addTearDown(controller.dispose);
    await tester.tap(find.text('Canvas').last);
    await tester.pumpAndSettle();
    final document = controller.document;
    for (final title in [
      'Snap to nearby tables',
      'Show grid',
      'Snap nodes to grid',
      'Show minimap',
      'Connections in minimap',
      'Pan when dragging near edges',
    ]) {
      for (final value in [false, true]) {
        tester
            .widget<SwitchListTile>(find.widgetWithText(SwitchListTile, title))
            .onChanged!(value);
        await tester.pump();
        expect(
          tester
              .widget<SwitchListTile>(
                find.widgetWithText(SwitchListTile, title),
              )
              .value,
          value,
        );
      }
    }
    await slider(tester, 'Snap distance', 14);
    await slider(tester, 'Grid spacing', 70);
    expect(controller.options<SnapGuidesOptions>().tolerance, 14);
    expect(
      controller.options<GridOptions>().size,
      GridOptions.normalizeSize(70),
    );
    expect(preferences.gridSize, controller.options<GridOptions>().size);
    expect(controller.options<GridOptions>().visible, isTrue);
    expect(controller.options<GridOptions>().snap, isTrue);
    expect(controller.options<MinimapOptions>().visible, isTrue);
    expect(controller.options<MinimapOptions>().policy.showConnections, isTrue);
    expect(controller.options<NavigationOptions>().edgePanEnabled, isTrue);
    expect(identical(controller.document, document), isTrue);
    expect(tester.takeException(), isNull);
  });

  for (final category in ['Connections', 'Animation', 'Canvas']) {
    testWidgets('$category slider drag stays local and commits on release', (
      tester,
    ) async {
      tester.view.physicalSize = const Size(1000, 900);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final preferences = SchemaViewPreferences()..snapGuides = true;
      final controller = await openSettings(tester, preferences);
      addTearDown(controller.dispose);
      await tester.tap(find.text(category).last);
      await tester.pumpAndSettle();
      final slider = tester.widgetList<Slider>(find.byType(Slider)).first;
      final initial = switch (category) {
        'Connections' => preferences.strokeWidth,
        'Animation' => preferences.speed,
        _ => controller.options<SnapGuidesOptions>().tolerance,
      };
      final document = controller.document;
      var settingsBuilds = 0;
      debugOnRebuildDirtyWidget = (element, _) {
        if (element.widget is SchemaViewSettings) settingsBuilds++;
      };
      for (var i = 1; i <= 10; i++) {
        slider.onChanged!(slider.min + (slider.max - slider.min) * i / 10);
        await tester.pump();
      }
      debugOnRebuildDirtyWidget = null;
      final duringDrag = switch (category) {
        'Connections' => preferences.strokeWidth,
        'Animation' => preferences.speed,
        _ => controller.options<SnapGuidesOptions>().tolerance,
      };
      // ignore: avoid_print
      print(
        'PERF $category settings builds during ten slider updates: $settingsBuilds',
      );
      expect(settingsBuilds, 0);
      expect(duringDrag, initial);
      expect(identical(controller.document, document), isTrue);
      slider.onChangeEnd!(slider.max);
      await tester.pump();
      final committed = switch (category) {
        'Connections' => preferences.strokeWidth,
        'Animation' => preferences.speed,
        _ => controller.options<SnapGuidesOptions>().tolerance,
      };
      expect(committed, slider.max);
      expect(tester.takeException(), isNull);
    });
  }
}
