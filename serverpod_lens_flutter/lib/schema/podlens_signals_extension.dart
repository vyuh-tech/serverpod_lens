import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart'
    show BoundEndpoint, DiagramPoint, DiagramRect, ElementSelection;
import 'package:vyuh_diagram_flutter/extension_api.dart';

import 'lens_state.dart';

/// Draws all pod_lens selection chrome, because the engine's built-in
/// hover/selection outline is disabled via a transparent selection theme.
///
/// Responsibilities:
/// - a marching-ants signal on the selected node's edges (optionally all),
/// - a selection outline around selected table nodes,
/// - focus dimming of everything except the selected node and its neighbours,
/// - `1`/`N` cardinality markers on the selected node's edges.
final class PodLensSignalsExtension extends DiagramFlutterExtension {
  PodLensSignalsExtension({required this.lens}) : super(id: 'podlens.signals');

  final LensState lens;

  @override
  Widget build(BuildContext context, DiagramCanvasExtensionHost host) =>
      _SignalOverlay(host: host, lens: lens);
}

class _SignalOverlay extends StatefulWidget {
  const _SignalOverlay({required this.host, required this.lens});

  final DiagramCanvasExtensionHost host;
  final LensState lens;

  @override
  State<_SignalOverlay> createState() => _SignalOverlayState();
}

class _SignalOverlayState extends State<_SignalOverlay>
    with SingleTickerProviderStateMixin {
  late final AnimationController _clock = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  );
  Timer? _gate;
  bool _running = false;
  Set<String> _selected = const {};

  @override
  void initState() {
    super.initState();
    widget.lens.addListener(_onChange);
    widget.host.camera.changes.addListener(_onChange);
    _gate = Timer.periodic(const Duration(milliseconds: 150), (_) => _sync());
    _sync();
  }

  void _onChange() {
    if (mounted) setState(() {});
  }

  bool get _hasSelection {
    final selection = widget.host.controller.selection;
    return selection is ElementSelection && selection.elementIds.isNotEmpty;
  }

  void _sync() {
    _normalizeSelection();
    final settings = widget.lens.value;
    final should =
        settings.connectionAnimations &&
        (settings.animateAllEdges || _hasSelection);
    if (should != _running) {
      _running = should;
      if (should) {
        _clock.repeat();
      } else {
        _clock.stop();
      }
    }
    if (mounted) setState(() {});
  }

  /// Only table nodes are selectable; drop connectors from the selection.
  void _normalizeSelection() {
    final controller = widget.host.controller;
    final selection = controller.selection;
    if (selection is! ElementSelection) {
      if (_selected.isNotEmpty) _selected = const {};
      return;
    }
    if (selection.elementIds.isEmpty) {
      if (_selected.isNotEmpty) _selected = const {};
      return;
    }
    final scene = controller.scene;
    final kept = <String>{};
    var changed = false;
    for (final id in selection.elementIds) {
      if (scene.elementById(id) is ResolvedShape) {
        kept.add(id);
      } else {
        changed = true;
      }
    }
    if (changed) {
      controller.select(kept);
      return;
    }
    _selected = kept;
  }

  @override
  void dispose() {
    widget.lens.removeListener(_onChange);
    widget.host.camera.changes.removeListener(_onChange);
    _gate?.cancel();
    _clock.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = widget.host.controller;
    final camera = widget.host.camera;
    final settings = widget.lens.value;
    final dark = Theme.of(context).brightness == Brightness.dark;

    return IgnorePointer(
      child: SizedBox.expand(
        child: RepaintBoundary(
          child: AnimatedBuilder(
            animation: _clock,
            builder: (context, _) => CustomPaint(
              painter: _OverlayPainter(
                selected: _selected,
                scene: controller.scene,
                camera: camera,
                phase: _clock.value,
                active: _running,
                animateAll: settings.animateAllEdges,
                focus: settings.focusMode,
                cardinality: settings.showCardinality,
                dark: dark,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _OverlayPainter extends CustomPainter {
  _OverlayPainter({
    required this.selected,
    required this.scene,
    required this.camera,
    required this.phase,
    required this.active,
    required this.animateAll,
    required this.focus,
    required this.cardinality,
    required this.dark,
  });

  final Set<String> selected;
  final ResolvedScene scene;
  final dynamic camera;
  final double phase;
  final bool active;
  final bool animateAll;
  final bool focus;
  final bool cardinality;
  final bool dark;

  static const _accent = Color(0xFF22D3EE);
  static const _good = Color(0xFF34D399);
  static const _many = Color(0xFFF59E0B);
  static const _dash = 7.0;
  static const _gap = 5.0;

  Offset _screen(DiagramPoint p) {
    final s = camera.worldToScreen(p) as DiagramPoint;
    return Offset(s.x, s.y);
  }

  DiagramRect? _shapeBounds(String id) {
    final element = scene.elementById(id);
    return element is ResolvedShape ? element.bounds : null;
  }

  @override
  void paint(Canvas canvas, Size size) {
    if (selected.isEmpty && !animateAll) return;

    final related = <String>{...selected};
    final edges = <ResolvedConnector>[];
    for (final element in scene.elements) {
      if (element is! ResolvedConnector) continue;
      final start = element.source.start;
      final end = element.source.end;
      final startId = start is BoundEndpoint ? start.elementId : null;
      final endId = end is BoundEndpoint ? end.elementId : null;
      final touches =
          (startId != null && selected.contains(startId)) ||
          (endId != null && selected.contains(endId));
      if (touches) {
        edges.add(element);
        if (startId != null) related.add(startId);
        if (endId != null) related.add(endId);
      } else if (animateAll) {
        edges.add(element);
      }
    }

    // Focus: dim everything, then punch holes for selected + neighbours.
    if (focus && selected.isNotEmpty) {
      canvas.saveLayer(Offset.zero & size, Paint());
      canvas.drawRect(
        Offset.zero & size,
        Paint()..color = (dark ? Colors.black : Colors.white).withValues(
          alpha: dark ? 0.62 : 0.66,
        ),
      );
      final clear = Paint()..blendMode = BlendMode.clear;
      for (final id in related) {
        final bounds = _shapeBounds(id);
        if (bounds == null) continue;
        final tl = _screen(DiagramPoint(bounds.left, bounds.top));
        final br = _screen(
          DiagramPoint(bounds.left + bounds.width, bounds.top + bounds.height),
        );
        canvas.drawRRect(
          RRect.fromRectAndRadius(
            Rect.fromPoints(tl, br).inflate(6),
            const Radius.circular(12),
          ),
          clear,
        );
      }
      canvas.restore();
    }

    // Selection outline.
    final outline = Paint()
      ..color = _accent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeJoin = StrokeJoin.round;
    for (final id in selected) {
      final bounds = _shapeBounds(id);
      if (bounds == null) continue;
      final tl = _screen(DiagramPoint(bounds.left, bounds.top));
      final br = _screen(
        DiagramPoint(bounds.left + bounds.width, bounds.top + bounds.height),
      );
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromPoints(tl, br).inflate(2),
          const Radius.circular(11),
        ),
        outline,
      );
    }

    // Edges: ants + cardinality.
    final ants = Paint()
      ..color = _accent
      ..strokeWidth = 2.4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    final glow = Paint()
      ..color = _accent.withValues(alpha: 0.3)
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..maskFilter = const ui.MaskFilter.blur(ui.BlurStyle.normal, 6);

    for (final edge in edges) {
      final points = edge.points;
      if (points.length < 2) continue;
      final path = Path();
      var first = true;
      for (final p in points) {
        final o = _screen(p);
        if (first) {
          path.moveTo(o.dx, o.dy);
          first = false;
        } else {
          path.lineTo(o.dx, o.dy);
        }
      }
      if (active) {
        _drawAnts(canvas, path, glow, phase);
        _drawAnts(canvas, path, ants, phase);
      }
      if (cardinality && selected.isNotEmpty) {
        _drawCardinality(canvas, edge);
      }
    }
  }

  void _drawCardinality(Canvas canvas, ResolvedConnector edge) {
    final start = edge.source.start;
    final end = edge.source.end;
    final startId = start is BoundEndpoint ? start.elementId : null;
    final endId = end is BoundEndpoint ? end.elementId : null;
    final points = edge.points;
    if (points.length < 2) return;

    // The FK side ("many") is the source; the referenced side ("one") the end.
    if (startId != null && selected.contains(startId)) {
      _label(canvas, '1', _screen(points.last), _good, above: true);
    } else {
      _label(canvas, 'N', _screen(points.last), _many, above: true);
    }
    if (endId != null && selected.contains(endId)) {
      _label(canvas, '1', _screen(points.first), _good);
    } else {
      _label(canvas, 'N', _screen(points.first), _many);
    }
  }

  void _label(
    Canvas canvas,
    String text,
    Offset at,
    Color color, {
    bool above = false,
  }) {
    final painter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: color,
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    final dx = at.dx - painter.width / 2;
    final dy = above ? at.dy - painter.height - 3 : at.dy + 3;
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(dx - 3, dy - 1, painter.width + 6, painter.height + 2),
        const Radius.circular(3),
      ),
      Paint()..color = (dark ? Colors.black : Colors.white).withValues(alpha: 0.72),
    );
    painter.paint(canvas, Offset(dx, dy));
  }

  static void _drawAnts(Canvas canvas, Path path, Paint paint, double phase) {
    const period = _dash + _gap;
    final offset = period * phase;
    for (final metric in path.computeMetrics()) {
      var start = -offset;
      while (start < metric.length) {
        final from = math.max(0.0, start);
        final to = math.min(metric.length, start + _dash);
        if (to > from) {
          canvas.drawPath(metric.extractPath(from, to), paint);
        }
        start += period;
      }
    }
  }

  @override
  bool shouldRepaint(_OverlayPainter old) => true;
}
