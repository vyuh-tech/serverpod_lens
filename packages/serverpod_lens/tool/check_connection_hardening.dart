// A socket-free runner for the same checks registered by flutter test.
// Compile for the Flutter engine; this is not a plain Dart VM program.
import 'dart:io';

import 'package:serverpod_lens/diagram.dart';

import '../test/support/connection_checks.dart';

void main() {
  var failures = 0;
  for (final entry in connectionChecks.entries) {
    try {
      entry.value();
      stdout.writeln('PASS ${entry.key}');
    } catch (error, stack) {
      failures++;
      stdout.writeln('FAIL ${entry.key}: $error\n$stack');
    }
  }
  for (final count in [100, 1000]) {
    final controller = connectionFixture(count: count);
    try {
      final preferences = SchemaViewPreferences();
      applySchemaConnections(controller, preferences);
      final timer = Stopwatch()..start();
      for (var i = 0; i < 5; i++) {
        applySchemaConnections(controller, preferences);
      }
      timer.stop();
      stdout.writeln(
        'MEASURE $count connections: unchanged settings ${timer.elapsedMicroseconds / 5000} ms/call',
      );
      final labelsTimer = Stopwatch()..start();
      setSchemaRelationshipLabels(controller, preferences, true);
      labelsTimer.stop();
      stdout.writeln(
        'MEASURE $count connections: show labels ${labelsTimer.elapsedMilliseconds} ms',
      );
    } catch (error, stack) {
      failures++;
      stdout.writeln('FAIL large graph: $error\n$stack');
    } finally {
      controller.dispose();
    }
  }
  exit(failures == 0 ? 0 : 1);
}
