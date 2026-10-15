import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:vyuh_diagram_core/extension_api.dart'
    show ResolvedConnector, DiagramCameraGeometry;
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';
import 'package:serverpod_lens/src/schema/schema_neighborhood.dart';
import 'package:serverpod_lens/src/screens/schema_exploration_bar.dart';

import 'explorer_workflow_test.dart' show canvas, settle, wide;
import 'support/navigation_fixture.dart';

void main() {
  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('native_mouse_cursor'),
          (_) async => false,
        );
  });

  Future<DiagramController> open(
    WidgetTester tester, {
    bool mobile = false,
  }) async {
    wide(tester);
    if (mobile) tester.view.physicalSize = const Size(390, 844);
    await tester.pumpWidget(
      MaterialApp(
        home: SchemaViewer(
          graph: fixture().copyWith(
            tables: [
              ...fixture().tables,
              table(
                'public.grandchild',
                relations: [fk('grandchild', 'public.child0')],
              ),
              table('public.isolated'),
            ],
          ),
          viewStore: MemorySchemaViewStore(),
        ),
      ),
    );
    await settle(tester);
    return canvas(tester);
  }

  testWidgets('short and long native routes have equal flow velocity', (
    tester,
  ) async {
    final controller = await open(tester);
    controller.select(['public.orders']);
    await settle(tester);
    final edges = controller.scene.elements
        .whereType<ResolvedConnector>()
        .where(
          (edge) => controller.effects
              .playingOn(edge.id)
              .any((handle) => handle.effect?.kind == EffectKind.flow),
        )
        .toList();
    expect(edges.length, 2);
    double velocity(ResolvedConnector edge) {
      final effect = controller.effects
          .playingOn(edge.id)
          .singleWhere((handle) => handle.effect?.kind == EffectKind.flow)
          .effect!;
      return edge.pathGeometry.length / (effect.period.inMicroseconds / 1e6);
    }

    expect(
      edges.first.pathGeometry.length,
      isNot(closeTo(edges.last.pathGeometry.length, 1)),
    );
    expect(velocity(edges.first), closeTo(velocity(edges.last), .01));
    expect(velocity(edges.first), closeTo(20, .01));
    final handle = controller.effects
        .playingOn(edges.first.id)
        .singleWhere((handle) => handle.effect?.kind == EffectKind.flow);
    controller.edits
        .move(const DiagramPoint(0, 1000), ids: ['audit.log'])
        .requireAllowed();
    await settle(tester);
    final moved = controller.scene.elements
        .whereType<ResolvedConnector>()
        .where((edge) => edges.any((original) => original.id == edge.id))
        .toList();
    expect(velocity(moved.first), closeTo(velocity(moved.last), .01));
    expect(
      controller.effects.playingOn(edges.first.id).contains(handle),
      isTrue,
    );
    await tester.pumpWidget(const SizedBox.shrink());
    await settle(tester);
  });

  testWidgets(
    'floating hops expand emphasis to two steps without changing the view',
    (tester) async {
      final controller = await open(tester);
      expect(find.byType(SchemaExplorationBar), findsNothing);
      controller.select(['public.orders']);
      await settle(tester);
      final document = controller.document;
      final camera = controller.camera;
      expect(find.byType(SchemaExplorationBar), findsOneWidget);
      expect(
        controller.effects.playingOn('public.child0').single.effect!.kind,
        EffectKind.fade,
      );
      await tester.tap(find.text('2 hops'));
      await settle(tester);
      expect(controller.effects.playingOn('public.child0'), isEmpty);
      expect(
        controller.effects.playingOn('public.grandchild').single.effect!.kind,
        EffectKind.fade,
      );
      expect(
        controller.effects.playingOn('public.isolated').single.effect!.kind,
        EffectKind.fade,
      );
      final secondHop = controller.effects
          .playingOn('public.child0::relation::0')
          .singleWhere((handle) => handle.effect?.kind == EffectKind.flow)
          .effect!;
      expect(secondHop.reverse, isTrue);
      expect(identical(controller.document, document), isTrue);
      expect(controller.camera.center, camera.center);
      expect(controller.camera.zoom, camera.zoom);
      await tester.tap(find.text('1 hop'));
      await settle(tester);
      expect(
        controller.effects.playingOn('public.child0').single.effect!.kind,
        EffectKind.fade,
      );
      controller.clearSelection();
      await settle(tester);
      expect(find.byType(SchemaExplorationBar), findsNothing);
      expect(controller.effects.playing, isEmpty);
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
    },
  );

  testWidgets(
    'bring together uses native layout only for the chosen neighborhood',
    (tester) async {
      final controller = await open(tester);
      controller.select(['public.orders']);
      await settle(tester);
      final before = controller.document;
      final neighborhood = schemaNeighborhood(before, {'public.orders'});
      expect(neighborhood.nodes, {
        'public.orders',
        'public.users',
        'audit.log',
      });
      final frames = {
        for (final node in before.elements.whereType<ShapeElement>())
          node.id: node.frame,
      };
      await tester.tap(find.text('Bring together'));
      await tester.pump();
      final watch = Stopwatch()..start();
      while (find.byType(LinearProgressIndicator).evaluate().isNotEmpty &&
          watch.elapsed < const Duration(seconds: 15)) {
        await tester.runAsync(
          () => Future<void>.delayed(const Duration(milliseconds: 30)),
        );
        await tester.pump();
      }
      await settle(tester);
      expect(find.byType(LinearProgressIndicator), findsNothing);
      expect(find.textContaining('Could not open this view:'), findsNothing);
      expect((controller.selection as ElementSelection).elementIds, {
        'public.orders',
      });
      expect(
        controller.document.elements.map((e) => e.id),
        before.elements.map((e) => e.id),
      );
      var moved = false;
      for (final node
          in controller.document.elements.whereType<ShapeElement>()) {
        if (neighborhood.nodes.contains(node.id)) {
          moved |= node.frame != frames[node.id];
        } else {
          expect(node.frame, frames[node.id]);
        }
      }
      expect(moved, isTrue);
      final visible = controller.camera.visibleWorldBounds;
      for (final id in neighborhood.nodes) {
        final bounds = controller.scene.elementById(id)!.bounds;
        expect(visible.left, lessThanOrEqualTo(bounds.left));
        expect(visible.top, lessThanOrEqualTo(bounds.top));
        expect(visible.right, greaterThanOrEqualTo(bounds.right));
        expect(visible.bottom, greaterThanOrEqualTo(bounds.bottom));
      }
      for (final edge in before.elements.whereType<ConnectorElement>()) {
        final after =
            controller.document.elementById(edge.id) as ConnectorElement;
        expect(after.start, edge.start);
        expect(after.end, edge.end);
      }
      controller.edits.undo().requireAllowed();
      await settle(tester);
      for (final node
          in controller.document.elements.whereType<ShapeElement>()) {
        expect(node.frame, frames[node.id]);
      }
      await tester.pumpWidget(const SizedBox.shrink());
      await settle(tester);
    },
  );

  testWidgets('mobile inspector keeps the same hop controls usable', (
    tester,
  ) async {
    final controller = await open(tester, mobile: true);
    controller.select(['public.orders']);
    await settle(tester);
    final sheet = find.byType(BottomSheet);
    expect(sheet, findsOneWidget);
    await tester.tap(find.descendant(of: sheet, matching: find.text('2 hops')));
    await settle(tester);
    expect(controller.effects.playingOn('public.child0'), isEmpty);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
    await settle(tester);
  });
}
