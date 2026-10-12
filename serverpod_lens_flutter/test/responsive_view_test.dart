import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_flutter/screens/schema_map_screen.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

void main() {
  testWidgets(
    'mobile browser overlays canvas; desktop browser collapses without losing search',
    (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(390, 844);
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final json = jsonDecode(
        File('assets/schema_graph.json').readAsStringSync(),
      ) as Map<String, dynamic>;
      json['tables'] = (json['tables'] as List).take(3).toList();
      final bytes = Uint8List.fromList(utf8.encode(jsonEncode(json)));
      tester.binding.defaultBinaryMessenger.setMockMessageHandler(
        'flutter/assets',
        (message) async {
          if (utf8.decode(message!.buffer.asUint8List()) == 'test-schema') {
            return ByteData.sublistView(bytes);
          }
          return null;
        },
      );
      addTearDown(() {
        tester.binding.defaultBinaryMessenger.setMockMessageHandler(
          'flutter/assets',
          null,
        );
        tester.binding.setSurfaceSize(null);
      });
      await tester.binding.setSurfaceSize(const Size(390, 844));
      await tester.runAsync(() async {
        await tester.pumpWidget(
          const MaterialApp(
            localizationsDelegates: GlobalMaterialLocalizations.delegates,
            home: SchemaMapScreen(asset: 'test-schema'),
          ),
        );
        await Future<void>.delayed(const Duration(milliseconds: 500));
        await tester.pump();
        await Future<void>.delayed(const Duration(milliseconds: 500));
      });
      await tester.pumpAndSettle();
      expect(find.byType(DiagramCanvas), findsOneWidget);
      expect(
        tester.getSize(find.byType(DiagramCanvas)).height,
        greaterThan(750),
      );
      expect(find.byType(TextField), findsNothing);
      await tester.tap(find.byTooltip('Browse schemas'));
      await tester.pumpAndSettle();
      expect(find.byType(TextField), findsOneWidget);
      await tester.enterText(find.byType(TextField), 'no_such_table');
      await tester.pump();
      expect(find.text('No matching tables'), findsOneWidget);
      await tester.tap(find.byTooltip('Close schema browser'));
      await tester.pumpAndSettle();
      expect(find.byType(TextField), findsNothing);
      expect(
        tester.getSize(find.byType(DiagramCanvas)).height,
        greaterThan(750),
      );

      for (final size in [
        const Size(320, 568),
        const Size(844, 390),
        const Size(1440, 1000),
      ]) {
        tester.view.physicalSize = size;
        await tester.binding.setSurfaceSize(size);
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull, reason: 'layout at $size');
      }
      expect(find.byType(TextField), findsOneWidget);
      expect(find.text('No matching tables'), findsOneWidget);
      await tester.tap(find.byTooltip('Schema view settings'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Animation'));
      await tester.pumpAndSettle();
      expect(find.text('Animation opacity'), findsNothing);
      await tester.tap(find.text('Off'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Marching dashes').last);
      await tester.pumpAndSettle();
      expect(find.text('Dash length'), findsOneWidget);
      expect(find.text('Animation stroke width'), findsOneWidget);
      expect(find.text('Animation opacity'), findsOneWidget);
      await tester.tap(find.text('Marching dashes'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Particles').last);
      await tester.pumpAndSettle();
      expect(find.text('Particle radius'), findsOneWidget);
      expect(find.text('Dash length'), findsNothing);
      expect(find.text('Animation stroke width'), findsNothing);
      await tester.tap(find.text('Particles'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Off').last);
      await tester.pumpAndSettle();
      expect(find.text('Particle radius'), findsNothing);
      expect(find.text('Animation opacity'), findsNothing);
      await tester.tap(find.text('Done'));
      await tester.pumpAndSettle();
      final width = tester.getSize(find.byType(DiagramCanvas)).width;
      await tester.tap(find.byTooltip('Collapse schema browser'));
      await tester.pumpAndSettle();
      expect(find.byType(TextField), findsNothing);
      expect(
        tester.getSize(find.byType(DiagramCanvas)).width,
        greaterThan(width + 270),
      );
      await tester.tap(find.byTooltip('Browse schemas'));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField), '');
      await tester.pump();
      expect(find.text('No matching tables'), findsNothing);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pump();
    },
  );
}
