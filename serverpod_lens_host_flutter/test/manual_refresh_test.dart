import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart' as api;
import 'package:serverpod_lens_host_flutter/connected_schema_controller.dart';

import 'connected_schema_controller_test.dart' show snapshot;

void main() {
  testWidgets(
    'manual refresh coalesces requests, updates sources and stops on disposal',
    (tester) async {
      var calls = 0;
      final pending = Completer<api.SchemaSnapshot>();
      final controller = ConnectedSchemaController((_) {
        calls++;
        return pending.future;
      });
      final first = controller.refresh();
      await controller.refresh();
      await tester.pump(const Duration(milliseconds: 100));
      expect(calls, 1);
      await tester.pump(const Duration(milliseconds: 500));
      expect(calls, 1);
      pending.complete(
        snapshot('first')
          ..sourcePaths = {'public.orders': 'lib/src/order.spy.yaml'}
          ..modelSources = {'public.orders': 'class: Order'},
      );
      await first;
      await tester.pump();
      expect(controller.sourcePaths['public.orders'], 'lib/src/order.spy.yaml');
      controller.dispose();
      await tester.pump(const Duration(seconds: 1));
      expect(calls, 1);
    },
  );
  test(
    'unchanged snapshots keep source text, access revocation removes it',
    () async {
      var result = snapshot('first')
        ..sourcePaths = {'public.orders': 'lib/src/order.spy.yaml'}
        ..modelSources = {'public.orders': 'class: Order'};
      var denied = false;
      final controller = ConnectedSchemaController((_) async {
        if (denied) throw api.ServerpodClientForbidden();
        return result;
      });
      addTearDown(controller.dispose);
      await controller.refresh();
      result = snapshot('first', unchanged: true);
      await controller.refresh();
      expect(controller.modelSources['public.orders'], 'class: Order');
      denied = true;
      await controller.refresh();
      expect(controller.modelSources, isEmpty);
      expect(controller.sourcePaths, isEmpty);
      expect(controller.graph, isNull);
    },
  );
  testWidgets('only explicit refresh produces requests, including after idle', (
    tester,
  ) async {
    var calls = 0;
    final controller = ConnectedSchemaController((_) async {
      calls++;
      return snapshot('first');
    });
    addTearDown(controller.dispose);
    await tester.pump(const Duration(seconds: 30));
    expect(calls, 0);
    await controller.refresh();
    expect(calls, 1);
    await tester.pump(const Duration(minutes: 1));
    expect(calls, 1);
    await controller.refresh();
    expect(calls, 2);
  });
}
