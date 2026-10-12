import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart' as api;
import 'package:serverpod_lens_host_flutter/connected_schema_controller.dart';

api.SchemaSnapshot snapshot(String revision, {bool unchanged = false}) =>
    api.SchemaSnapshot(
      projectId: 'serverpod_lens',
      sourceKind: 'currentTarget',
      revision: revision,
      checkedAt: DateTime.utc(2026, 10, 12),
      graph: unchanged
          ? null
          : api.SchemaGraph(
              source: 'Host current target',
              generatedAt: DateTime.utc(2026, 10, 12),
              modules: [],
              tables: [],
              enums: [],
            ),
    );

void main() {
  test(
    'unchanged refresh preserves the graph and changed revision replaces it',
    () async {
      var result = snapshot('first');
      final revisions = <String?>[];
      final controller = ConnectedSchemaController((revision) async {
        revisions.add(revision);
        return result;
      });
      addTearDown(controller.dispose);
      await controller.refresh();
      final graph = controller.graph;
      result = snapshot('first', unchanged: true);
      await controller.refresh();
      expect(identical(graph, controller.graph), isTrue);
      result = snapshot('second');
      await controller.refresh();
      expect(identical(graph, controller.graph), isFalse);
      expect(revisions, [null, 'first', 'first']);
    },
  );

  test('network loss keeps last graph and retry recovers', () async {
    var disconnected = false;
    final controller = ConnectedSchemaController((_) async {
      if (disconnected) throw TimeoutException('offline');
      return snapshot('first');
    });
    addTearDown(controller.dispose);
    await controller.refresh();
    final graph = controller.graph;
    disconnected = true;
    await controller.refresh();
    expect(identical(graph, controller.graph), isTrue);
    expect(controller.error, contains('last loaded schema'));
    disconnected = false;
    await controller.refresh();
    expect(controller.error, isNull);
  });

  for (final failure in [
    api.ServerpodClientUnauthorized(),
    api.ServerpodClientForbidden(),
    api.SchemaAccessException(message: 'Denied'),
  ]) {
    test(
      '${failure.runtimeType} clears previously visible protected data',
      () async {
        var denied = false;
        final controller = ConnectedSchemaController((_) async {
          if (denied) throw failure;
          return snapshot('first');
        });
        addTearDown(controller.dispose);
        await controller.refresh();
        denied = true;
        await controller.refresh();
        expect(controller.accessDenied, isTrue);
        expect(controller.graph, isNull);
        expect(controller.revision, isNull);
        expect(controller.checkedAt, isNull);
      },
    );
  }

  test('duplicate refresh requests are suppressed and late replies ignored on sign-out', () async {
    var calls = 0;
    final pending = Completer<api.SchemaSnapshot>();
    final controller = ConnectedSchemaController((_) {
      calls++;
      return pending.future;
    });
    final first = controller.refresh();
    await controller.refresh();
    expect(calls, 1);
    controller.dispose();
    pending.complete(snapshot('late'));
    await first;
    expect(controller.graph, isNull);
    expect(controller.revision, isNull);
  });

  test(
    'unchanged without an initial graph is rejected and can retry',
    () async {
      var result = snapshot('first', unchanged: true);
      final controller = ConnectedSchemaController((_) async => result);
      addTearDown(controller.dispose);
      await controller.refresh();
      expect(controller.graph, isNull);
      expect(controller.error, isNotNull);
      result = snapshot('first');
      await controller.refresh();
      expect(controller.graph, isNotNull);
      expect(controller.error, isNull);
    },
  );

  test('a response for a different project is rejected', () async {
    final controller = ConnectedSchemaController(
      (_) async => snapshot('first')..projectId = 'other',
    );
    addTearDown(controller.dispose);
    await controller.refresh();
    expect(controller.graph, isNull);
    expect(controller.error, isNotNull);
  });
}
