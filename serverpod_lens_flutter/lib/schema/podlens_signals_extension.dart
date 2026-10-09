import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart'
    show BoundEndpoint, DiagramPoint, ElementSelection;
import 'package:vyuh_diagram_flutter/extension_api.dart';

import 'lens_state.dart';

/// Draws a "marching ants" signal along connectors: the selected table's edges,
/// or every edge when the *Animate all edges* setting is on.
///
/// Performance: the animation clock only runs while there is something to
/// animate. A cheap timer polls the selection a few times a second and starts
/// or stops the ticker, so an idle canvas does no per-frame work.
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

  @override
  void initState() {
    super.initState();
    widget.lens.addListener(_onSettings);
    _gate = Timer.periodic(const Duration(milliseconds: 150), (_) => _sync());
    _sync();
  }

  void _onSettings() => _sync();

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
    if (should == _running) return;
    _running = should;
    if (should) {
      _clock.repeat();
    } else {
      _clock.stop();
    }
    if (mounted) setState(() {});
  }

  /// Only table nodes are selectable. Connectors can be clicked or marquee-
  /// selected by the canvas, so drop anything that is not a shape from the
  /// selection (edges then never show a selection box).
  void _normalizeSelection() {
    final controller = widget.host.controller;
    final selection = controller.selection;
    if (selection is! ElementSelection || selection.elementIds.isEmpty) return;
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
    if (!changed) return;
    controller.select(kept);
  }

  @override
  void dispose() {
    widget.lens.removeListener(_onSettings);
    _gate?.cancel();
    _clock.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = widget.host.controller;
    final camera = widget.host.camera;
    final animateAll = widget.lens.value.animateAllEdges;
    return IgnorePointer(
      child: SizedBox.expand(
        child: RepaintBoundary(
          child: AnimatedBuilder(
            animation: _clock,
            builder: (context, _) {
              Set<String> ids = const {};
              if (!animateAll) {
                final selection = controller.selection;
                if (selection is ElementSelection) ids = selection.elementIds;
              }
              return CustomPaint(
                painter: _SignalPainter(
                  selected: ids,
                  animateAll: animateAll,
                  active: _running,
                  scene: controller.scene,
                  camera: camera,
                  phase: _clock.value,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _SignalPainter extends CustomPainter {
  _SignalPainter({
    required this.selected,
    required this.animateAll,
    required this.active,
    required this.scene,
    required this.camera,
    required this.phase,
  });

  final Set<String> selected;
  final bool animateAll;
  final bool active;
  final ResolvedScene scene;
  final dynamic camera;
  final double phase;

  static const _signal = Color(0xFF22D3EE);
  static const _dash = 7.0;
  static const _gap = 5.0;

  @override
  void paint(Canvas canvas, Size size) {
    if (!active) return;
    if (!animateAll && selected.isEmpty) return;

    final ants = Paint()
      ..color = _signal
      ..strokeWidth = 2.4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    final glow = Paint()
      ..color = _signal.withValues(alpha: 0.3)
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..maskFilter = const ui.MaskFilter.blur(ui.BlurStyle.normal, 6);

    for (final element in scene.elements) {
      if (element is! ResolvedConnector) continue;
      if (!animateAll) {
        final start = element.source.start;
        final end = element.source.end;
        final startId = start is BoundEndpoint ? start.elementId : null;
        final endId = end is BoundEndpoint ? end.elementId : null;
        if ((startId == null || !selected.contains(startId)) &&
            (endId == null || !selected.contains(endId))) {
          continue;
        }
      }

      final points = element.points;
      if (points.length < 2) continue;

      final path = Path();
      var first = true;
      for (final p in points) {
        final s = camera.worldToScreen(p) as DiagramPoint;
        if (first) {
          path.moveTo(s.x, s.y);
          first = false;
        } else {
          path.lineTo(s.x, s.y);
        }
      }

      _drawAnts(canvas, path, glow, phase);
      _drawAnts(canvas, path, ants, phase);
    }
  }

  /// Draws dashes marching forward by [phase] of one dash period.
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
  bool shouldRepaint(_SignalPainter old) => true;
}
