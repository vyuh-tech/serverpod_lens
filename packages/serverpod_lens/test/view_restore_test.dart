import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

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

  testWidgets('saved positions reopen tables with locked self references', (
    tester,
  ) async {
    wide(tester);
    final graph = fixture().copyWith(
      tables: [
        table(
          'public.categories',
          relations: [fk('parent', 'public.categories')],
        ),
      ],
    );
    final store = MemorySchemaViewStore();
    await store.write(graph.source, {
      'version': 1,
      'views': {
        'schema:*': {
          'positions': {
            'public.categories': [250, 180],
          },
        },
      },
    });
    await tester.pumpWidget(
      MaterialApp(
        home: SchemaViewer(graph: graph, viewStore: store),
      ),
    );
    await settle(tester);
    expect(find.textContaining('cannot move'), findsNothing);
    expect(find.byType(DiagramCanvas), findsOneWidget);
    final controller = canvas(tester);
    final shape =
        controller.document.elementById('public.categories') as ShapeElement;
    expect(shape.frame.left, 250);
    expect(shape.frame.top, 180);
    final edge = controller.document.elements
        .whereType<ConnectorElement>()
        .single;
    expect(edge.isLocked, isTrue);
    expect((edge.start as BoundEndpoint).elementId, shape.id);
    expect((edge.end as BoundEndpoint).elementId, shape.id);
    await tester.pumpWidget(const SizedBox.shrink());
    await settle(tester);
    expect(tester.takeException(), isNull);
  });
}
