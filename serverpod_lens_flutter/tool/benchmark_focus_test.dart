// Run from this package: flutter test --no-pub tool/benchmark_focus_test.dart
// Native-engine diagnostics; excludes browser painting and camera animation.
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart';

void main() {
  test('measure native focus on default dataset', () async {
    final graph = SchemaDiagram.graphFromJson(
      File('assets/schema_graph.json').readAsStringSync(),
    );
    final controller = await SchemaDiagram.build(
      graph,
      layout: Layout.grid(columns: 12),
    );
    addTearDown(controller.dispose);
    controller.diagram.setRules(schemaViewRules);
    final context = SchemaContext(graph);
    final id = graph.tables.firstWhere((t) => t.foreignKeys.isNotEmpty).name;
    final neighborhood = context.neighborhood([id]);
    final samples = <double>[];
    for (var i = 0; i < 5; i++) {
      final sw = Stopwatch()..start();
      applySchemaContext(controller, neighborhood);
      sw.stop();
      samples.add(sw.elapsedMicroseconds / 1000);
      applySchemaContext(controller, null);
    }
    samples.sort();
    stdout.writeln(
      'REAL FOCUS: ${samples[2]} ms median; samples $samples; selected $id; ${graph.tables.length} tables',
    );
    final transitionSamples = <double>[];
    for (final table in graph.tables.take(25)) {
      final sw = Stopwatch()..start();
      applySchemaContext(controller, context.neighborhood([table.name]));
      sw.stop();
      transitionSamples.add(sw.elapsedMicroseconds / 1000);
    }
    transitionSamples.sort();
    stdout.writeln(
      'REAL successive selections median ${transitionSamples[12]} ms, max ${transitionSamples.last} ms',
    );
  });
}
