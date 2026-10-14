import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';

LensSchemaSnapshot snapshot(String revision, {bool unchanged = false}) =>
    LensSchemaSnapshot(
      projectId: 'shop',
      sourceKind: 'currentTarget',
      revision: revision,
      checkedAt: DateTime.utc(2026),
      graph: unchanged
          ? null
          : SchemaGraph(
              source: 'Shop',
              generatedAt: DateTime.utc(2026),
              tables: [],
              modules: [],
              enums: [],
            ),
    );
void main() {
  test('controller coalesces overlapping refresh and ignores late disposed replies', () async {
    final pending = Completer<LensSchemaSnapshot>();
    var loads = 0;
    final controller = SchemaSnapshotController(
      load: (_) {
        loads++;
        return pending.future;
      },
    );
    final first = controller.refresh();
    await controller.refresh();
    expect(loads, 1);
    controller.dispose();
    pending.complete(snapshot('one'));
    await first;
    expect(controller.graph, isNull);
  });
  test('ordinary failures retain last state while host-classified denial clears it', () async {
    Object? failure;
    final controller = SchemaSnapshotController(
      projectId: 'shop',
      load: (_) async {
        if (failure != null) throw failure;
        return snapshot('one');
      },
      isAccessDenied: (error) => error is StateError,
    );
    addTearDown(controller.dispose);
    await controller.refresh();
    final graph = controller.graph;
    failure = Exception('offline');
    await controller.refresh();
    expect(identical(controller.graph, graph), isTrue);
    failure = StateError('denied');
    await controller.refresh();
    expect(controller.graph, isNull);
    expect(controller.accessDenied, isTrue);
  });
  test(
    'successful retry clears failure and unchanged revision preserves graph',
    () async {
      var fail = true;
      final controller = SchemaSnapshotController(
        load: (revision) async {
          if (fail) throw const FormatException('fixture');
          return snapshot('one', unchanged: revision == 'one');
        },
      );
      addTearDown(controller.dispose);
      await controller.refresh();
      expect(controller.failure, isNotNull);
      fail = false;
      await controller.refresh();
      final graph = controller.graph;
      expect(controller.failure, isNull);
      await controller.refresh();
      expect(identical(controller.graph, graph), isTrue);
    },
  );
}
