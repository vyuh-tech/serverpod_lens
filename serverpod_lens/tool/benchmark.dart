// Run in a release web build; this harness never contacts a backend.
// ignore_for_file: avoid_print
import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';
import 'package:serverpod_lens/src/schema/schema_canvas.dart';

@JS('lensBenchmarkResults')
external set benchmarkResults(JSString value);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final count = int.tryParse(Uri.base.queryParameters['tables'] ?? '') ?? 156;
  runApp(MaterialApp(home: Benchmark(tables: count.clamp(1, 1000))));
}

/// Exercises the actual viewer, all fields, native effects and layout engine.
class Benchmark extends StatefulWidget {
  const Benchmark({super.key, required this.tables});
  final int tables;
  @override
  State<Benchmark> createState() => _BenchmarkState();
}

class _BenchmarkState extends State<Benchmark> {
  final _viewer = GlobalKey();
  final _clock = Stopwatch()..start();
  late final SchemaGraph _graph = syntheticGraph(widget.tables);

  @override
  void initState() {
    super.initState();
    unawaited(_measure());
  }

  DiagramController? _findController() {
    DiagramController? controller;
    void visit(Element element) {
      if (element.widget case DiagramCanvas(controller: final value)) {
        controller = value;
      }
      element.visitChildren(visit);
    }

    _viewer.currentContext?.visitChildElements(visit);
    return controller;
  }

  Future<void> _measure() async {
    try {
      DiagramController? controller;
      while (controller == null) {
        await Future<void>.delayed(const Duration(milliseconds: 16));
        controller = _findController();
      }
      await WidgetsBinding.instance.endOfFrame;
      final readyMs = _clock.elapsedMilliseconds;
      print('BENCH ready: $readyMs ms');
      final document = controller.document;
      final select = Stopwatch()..start();
      controller.select(['public.table_0']);
      await Future<void>.delayed(Duration.zero);
      await WidgetsBinding.instance.endOfFrame;
      final selectMs = select.elapsedMilliseconds;
      final documentUnchanged = identical(document, controller.document);
      print('BENCH selection: $selectMs ms');
      final intervals = <double>[];
      final camera = controller.camera;
      final frames = Stopwatch()..start();
      var last = frames.elapsedMicroseconds;
      for (var i = 0; i < 30; i++) {
        controller.setCamera(
          camera.copyWith(
            center: camera.center + DiagramPoint(i * 8.0, i * 3.0),
            zoom: (camera.zoom * (1 + i / 180)).clamp(
              camera.minZoom,
              camera.maxZoom,
            ),
          ),
        );
        await WidgetsBinding.instance.endOfFrame;
        final now = frames.elapsedMicroseconds;
        intervals.add((now - last) / 1000);
        last = now;
      }
      intervals.sort();
      controller.clearSelection();
      print('BENCH pan/zoom done');
      final layouts = <String, int>{};
      for (final layout in [
        SchemaLayout.grid,
        SchemaLayout.layeredDown,
        SchemaLayout.treeDown,
        SchemaLayout.force,
        SchemaLayout.circular,
      ]) {
        print('BENCH layout: ${layout.label}');
        final timer = Stopwatch()..start();
        await controller.layout(layout.resolve(widget.tables));
        await WidgetsBinding.instance.endOfFrame;
        layouts[layout.label] = timer.elapsedMilliseconds;
        print(
          'BENCH layout done: ${layout.label} ${timer.elapsedMilliseconds} ms',
        );
      }
      benchmarkResults = jsonEncode({
        'tables': widget.tables,
        'columnsPerTable': 12,
        'connections': _graph.tables.fold<int>(
          0,
          (sum, table) => sum + table.foreignKeys.length,
        ),
        'viewerReadyMs': readyMs,
        'selectionFrameMs': selectMs,
        'selectionPreservesDocument': documentUnchanged,
        'panZoomFrameIntervalMedianMs': intervals[intervals.length ~/ 2],
        'panZoomFrameIntervalP95Ms':
            intervals[(intervals.length * .95).floor()],
        'layoutMs': layouts,
      }).toJS;
    } catch (error) {
      benchmarkResults = jsonEncode({'error': error.toString()}).toJS;
    }
  }

  @override
  Widget build(BuildContext context) => SchemaViewer(
    key: _viewer,
    graph: _graph,
    viewStore: MemorySchemaViewStore(),
  );
}

SchemaGraph syntheticGraph(int count) => SchemaGraph(
  source: 'Synthetic performance fixture',
  generatedAt: DateTime.utc(2026),
  modules: const [],
  enums: const [],
  tables: [
    for (var i = 0; i < count; i++)
      SchemaTable(
        name: 'public.table_$i',
        className: 'Table$i',
        schema: 'public',
        module: 'benchmark',
        columns: [
          for (var c = 0; c < 12; c++)
            SchemaColumn(
              name: c == 0 ? 'id' : 'field_$c',
              fieldName: c == 0 ? 'id' : 'field_$c',
              dartType: 'int',
              dbType: 'bigint',
              isNullable: c > 2,
              isPrimaryKey: c == 0,
              isUnique: false,
            ),
        ],
        foreignKeys: [
          if (i > 0)
            SchemaForeignKey(
              name: 'previous_$i',
              columns: const ['field_1'],
              refTable: 'public.table_${i - 1}',
              refColumns: const ['id'],
              onDelete: 'restrict',
              onUpdate: 'cascade',
            ),
          if (i > 10)
            SchemaForeignKey(
              name: 'root_$i',
              columns: const ['field_2'],
              refTable: 'public.table_${i ~/ 10}',
              refColumns: const ['id'],
              onDelete: 'restrict',
              onUpdate: 'cascade',
            ),
        ],
        indexes: const [],
      ),
  ],
);
