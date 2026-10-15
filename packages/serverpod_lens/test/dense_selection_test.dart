import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import 'explorer_workflow_test.dart' show settle, wide;
import 'support/navigation_fixture.dart';

void main() {
  testWidgets(
    'large schema selection dims unrelated tables on web and desktop',
    (tester) async {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
            const MethodChannel('native_mouse_cursor'),
            (_) async => false,
          );
      addTearDown(
        () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
            .setMockMethodCallHandler(
              const MethodChannel('native_mouse_cursor'),
              null,
            ),
      );
      wide(tester);
      await tester.pumpWidget(
        MaterialApp(
          home: SchemaViewer(
            graph: fixture(neighbors: 97),
            viewStore: MemorySchemaViewStore(),
          ),
        ),
      );
      await settle(tester);
      final controller = tester
          .widget<DiagramCanvas>(find.byType(DiagramCanvas))
          .controller;
      final document = controller.document;
      final camera = controller.camera;
      controller.select(['public.orders']);
      await settle(tester);
      expect(
        controller.effects.playingOn('public.child0').single.effect!.kind,
        EffectKind.fade,
      );
      expect(controller.effects.playingOn('public.users'), isEmpty);
      expect(controller.effects.playingOn('audit.log'), isEmpty);
      expect(controller.effects.playingOn('public.orders'), isEmpty);
      expect(
        controller.effects
            .playingOn('public.child0::relation::0')
            .single
            .effect!
            .kind,
        EffectKind.fade,
      );
      expect(
        controller.effects
            .playingOn('public.orders::relation::0')
            .any((handle) => handle.effect?.kind == EffectKind.fade),
        isFalse,
      );
      controller.select(['public.users']);
      await settle(tester);
      expect(controller.effects.playingOn('public.child0'), isEmpty);
      expect(
        controller.effects.playingOn('audit.log').single.effect!.kind,
        EffectKind.fade,
      );
      expect(identical(controller.document, document), isTrue);
      expect(controller.camera.zoom, camera.zoom);
      expect(controller.camera.center, camera.center);
      controller.clearSelection();
      await settle(tester);
      expect(controller.effects.playing, isEmpty);
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
      expect(tester.takeException(), isNull);
    },
  );
}
