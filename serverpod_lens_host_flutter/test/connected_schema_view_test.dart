import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart' as api;
import 'package:serverpod_lens_host_flutter/connected_schema_controller.dart';
import 'package:serverpod_lens_host_flutter/connected_schema_screen.dart';

void main() {
  for (final width in [320.0, 1100.0]) {
    testWidgets('access denial remains usable at $width px and large text', (
      tester,
    ) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = Size(width, 800);
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final controller = ConnectedSchemaController(
        (_) async => throw api.ServerpodClientForbidden(),
      );
      addTearDown(controller.dispose);
      await controller.refresh();
      var signedOut = false;
      await tester.pumpWidget(
        MaterialApp(
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(2)),
            child: child!,
          ),
          home: ConnectedSchemaView(
            connection: controller,
            accountId: '00000000-0000-4000-8000-000000000001',
            onSignOut: () => signedOut = true,
          ),
        ),
      );
      expect(find.text('Access not enabled'), findsOneWidget);
      expect(tester.takeException(), isNull);
      await tester.tap(find.byTooltip('Sign out'));
      expect(signedOut, isTrue);
    });
  }

  testWidgets(
    'loading disables duplicate refresh and failed requests expose retry',
    (tester) async {
      final pending = Completer<api.SchemaSnapshot>();
      final controller = ConnectedSchemaController((_) => pending.future);
      addTearDown(controller.dispose);
      final request = controller.refresh();
      await tester.pumpWidget(
        MaterialApp(
          home: ConnectedSchemaView(
            connection: controller,
            accountId: 'reader',
            onSignOut: () {},
          ),
        ),
      );
      expect(
        tester
            .widget<IconButton>(
              find.byWidgetPredicate(
                (widget) =>
                    widget is IconButton &&
                    widget.tooltip == 'Refresh host schema',
              ),
            )
            .onPressed,
        isNull,
      );
      pending.completeError(TimeoutException('offline'));
      await request;
      await tester.pump();
      expect(find.textContaining('Could not load'), findsOneWidget);
      expect(
        tester
            .widget<IconButton>(
              find.byWidgetPredicate(
                (widget) =>
                    widget is IconButton &&
                    widget.tooltip == 'Refresh host schema',
              ),
            )
            .onPressed,
        isNotNull,
      );
      expect(tester.takeException(), isNull);
    },
  );
}
