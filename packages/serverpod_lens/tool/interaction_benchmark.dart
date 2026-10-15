// Run as a release web target. Uses synthetic data and no backend.
import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens/src/screens/schema_browser.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import 'benchmark.dart' show syntheticGraph;

@JS('lensInteractionResults')
external set results(JSString value);

@JS('requestAnimationFrame')
external void _requestFrame(JSFunction callback);

void main() {
  runApp(const MaterialApp(home: _Benchmark()));
}

class _Benchmark extends StatefulWidget {
  const _Benchmark();
  @override
  State<_Benchmark> createState() => _BenchmarkState();
}

class _BenchmarkState extends State<_Benchmark> {
  final _viewer = GlobalKey();
  final _graph = syntheticGraph(200);
  final _store = MemorySchemaViewStore();

  T? _find<T extends Widget>(bool Function(T) matches) {
    T? found;
    void visit(Element element) {
      if (element.widget case final T value when matches(value)) found = value;
      if (found == null) element.visitChildren(visit);
    }

    _viewer.currentContext?.visitChildElements(visit);
    return found;
  }

  @override
  void initState() {
    super.initState();
    unawaited(_measure());
  }

  Future<void> _frame() async {
    WidgetsBinding.instance.scheduleFrame();
    final frame = Completer<void>();
    _requestFrame(((JSNumber timestamp) => frame.complete()).toJS);
    await frame.future;
  }

  Future<void> _measure() async {
    try {
      while (_find<DiagramCanvas>((_) => true) == null) {
        await Future<void>.delayed(const Duration(milliseconds: 16));
      }
      await _frame();
      _find<SchemaTreeRow>((row) => row.key == const ValueKey('schema:public'))!
          .onToggle!();
      await _frame();
      final scroll = _find<CustomScrollView>(
        (view) => view.key == const PageStorageKey('schema-tree'),
      )!.controller!;
      final intervals = <double>[];
      final clock = Stopwatch()..start();
      var last = clock.elapsedMicroseconds;
      for (var i = 1; i <= 60; i++) {
        scroll.jumpTo((i * 48.0).clamp(0, scroll.position.maxScrollExtent));
        await _frame();
        final now = clock.elapsedMicroseconds;
        intervals.add((now - last) / 1000);
        last = now;
      }
      final search = _find<TextField>(
        (field) => field.decoration?.hintText == 'Find a table or column',
      )!;
      final searchClock = Stopwatch()..start();
      for (final term in ['table_4', 'table_49', 'field_10', 'missing', '']) {
        search.controller!.text = term;
        search.onChanged!(term);
        await Future<void>.delayed(const Duration(milliseconds: 140));
        await _frame();
      }
      intervals.sort();
      results = jsonEncode({
        'tables': _graph.tables.length,
        'scrollFrames': intervals.length,
        'scrollMedianMs': intervals[intervals.length ~/ 2],
        'scrollP95Ms': intervals[(intervals.length * .95).floor()],
        'scrollMaxMs': intervals.last,
        'fiveSearchesMs': searchClock.elapsedMilliseconds,
      }).toJS;
    } catch (error) {
      results = jsonEncode({'error': error.toString()}).toJS;
    }
  }

  @override
  Widget build(BuildContext context) =>
      SchemaViewer(key: _viewer, graph: _graph, viewStore: _store);
}
