// Synthetic release-web fixture. Browser automation drives the real list
// controllers and samples requestAnimationFrame without a backend.
import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens/src/screens/schema_browser.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import 'benchmark.dart' show syntheticGraph;

@JS('lensInteractionReady')
external set _ready(JSBoolean value);
@JS('lensBrowserScroll')
external set _scroll(JSFunction value);
@JS('lensBrowserSearch')
external set _search(JSFunction value);
@JS('lensSelectTable')
external set _select(JSFunction value);
@JS('lensInteractionState')
external set _state(JSFunction value);

void main() => runApp(const MaterialApp(home: _Benchmark()));

class _Benchmark extends StatefulWidget {
  const _Benchmark();
  @override
  State<_Benchmark> createState() => _BenchmarkState();
}

class _BenchmarkState extends State<_Benchmark> {
  final _viewer = GlobalKey();
  final _graph = syntheticGraph(200);
  final _store = MemorySchemaViewStore();
  Timer? _timer;

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
    _timer = Timer.periodic(const Duration(milliseconds: 16), (_) {
      final canvas = _find<DiagramCanvas>((_) => true);
      if (canvas == null || !canvas.controller.isAttached) return;
      _timer!.cancel();
      _find<SchemaTreeRow>((row) => row.key == const ValueKey('schema:public'))!
          .onToggle!();
      final scroll = _find<CustomScrollView>(
        (view) => view.key == const PageStorageKey('schema-tree'),
      )!.controller!;
      final search = _find<TextField>(
        (field) => field.decoration?.hintText == 'Find a table or column',
      )!;
      _scroll = ((JSNumber offset) => scroll.jumpTo(
        offset.toDartDouble.clamp(0, scroll.position.maxScrollExtent),
      )).toJS;
      _search = ((JSString query) {
        search.controller!.text = query.toDart;
        search.onChanged!(query.toDart);
      }).toJS;
      _ready = true.toJS;
      _select = ((JSString name) => canvas.controller.select([
        name.toDart,
      ])).toJS;
      _state = (() => jsonEncode({
        'effects': canvas.controller.effects.playing.length,
        'fades': canvas.controller.effects.playing
            .where((handle) => handle.effect?.kind == EffectKind.fade)
            .length,
      }).toJS).toJS;
    });
  }

  @override
  Widget build(BuildContext context) =>
      SchemaViewer(key: _viewer, graph: _graph, viewStore: _store);

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
