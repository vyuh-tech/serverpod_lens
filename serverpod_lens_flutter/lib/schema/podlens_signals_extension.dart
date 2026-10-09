import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart'
    show BoundEndpoint, DiagramPoint, DiagramRect, ElementSelection;
import 'package:vyuh_diagram_flutter/extension_api.dart';

import 'lens_state.dart';
import 'schema_diagram.dart';

/// Draws all pod_lens interactive chrome, because the engine's built-in
/// hover/selection outline is disabled via a transparent selection theme.
///
/// - marching-ants signal on the selected node's edges (optionally all),
/// - selection outline around selected table nodes,
/// - focus dimming of everything but the selected node and its neighbours,
/// - `1`/`N` cardinality markers on the selected node's edges,
/// - hover highlight: hovering a table highlights it, its neighbours and its
///   edges; hovering an edge highlights the exact FK columns at both ends.
final class PodLensSignalsExtension extends DiagramFlutterExtension {
  PodLensSignalsExtension({required this.lens, required this.columnsByTable})
    : super(id: 'podlens.signals');

  final LensState lens;

  /// Table name → ordered column names, for per-column hover highlighting.
  final Map<String, List<String>> columnsByTable;

  @override
  Widget build(BuildContext context, DiagramCanvasExtensionHost host) =>
      _SignalOverlay(host: host, lens: lens, columnsByTable: columnsByTable);
}

class _SignalOverlay extends StatefulWidget {
  const _SignalOverlay({
    required this.host,
    required this.lens,
    required this.columnsByTable,
  });

  final DiagramCanvasExtensionHost host;
  final LensState lens;
  final Map<String, List<String>> columnsByTable;

  @override
  State<_SignalOverlay> createState() => _SignalOverlayState();
}

class _SignalOverlayState extends State<_SignalOverlay>
    with SingleTickerProviderStateMixin {
  late final AnimationController _clock = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  );
  final ValueNotifier<Offset?> _hover = ValueNotifier(null);
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
    if (selection is! ElementSelection || selection.elementIds.isEmpty) {
      _selected = const {};
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
    _hover.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = widget.host.controller;
    final camera = widget.host.camera;
    final dark = Theme.of(context).brightness == Brightness.dark;

    return MouseRegion(
      onHover: (event) => _hover.value = event.localPosition,
      onExit: (_) => _hover.value = null,
      child: ListenableBuilder(
        listenable: Listenable.merge([_clock, _hover]),
        builder: (context, _) {
          final settings = widget.lens.value;
          return IgnorePointer(
            child: SizedBox.expand(
              child: RepaintBoundary(
                child: CustomPaint(
                  painter: _OverlayPainter(
                    selected: _selected,
                    scene: controller.scene,
                    camera: camera,
                    phase: _clock.value,
                    active: _running,
                    animateAll: settings.animateAllEdges,
                    focus: settings.focusMode,
                    cardinality: settings.showCardinality,
                    hover: settings.hoverHighlight ? _hover.value : null,
                    columnsByTable: widget.columnsByTable,
                    dark: dark,
                  ),
                ),
              ),
            ),
          );
        },
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
    required this.hover,
    required this.columnsByTable,
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
  final Offset? hover;
  final Map<String, List<String>> columnsByTable;
  final bool dark;

  static const _accent = Color(0xFF22D3EE);
  static const _hoverColor = Color(0xFF60A5FA);
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

  Rect _shapeRect(DiagramRect bounds) => Rect.fromPoints(
    _screen(DiagramPoint(bounds.left, bounds.top)),
    _screen(DiagramPoint(bounds.left + bounds.width, bounds.top + bounds.height)),
  );

  @override
  void paint(Canvas canvas, Size size) {
    if (selected.isEmpty && !animateAll && hover == null) return;

    final isSelectedActive = selected.isNotEmpty;
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
    if (focus && isSelectedActive) {
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
        canvas.drawRRect(
          RRect.fromRectAndRadius(
            _shapeRect(bounds).inflate(6),
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
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          _shapeRect(bounds).inflate(2),
          const Radius.circular(11),
        ),
        outline,
      );
    }

    // Edges: ants + cardinality.
    if (active || (cardinality && isSelectedActive)) {
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
        final path = _pathOf(edge);
        if (path == null) continue;
        if (active) {
          _drawAnts(canvas, path, glow, phase);
          _drawAnts(canvas, path, ants, phase);
        }
        if (cardinality && isSelectedActive) _drawCardinality(canvas, edge);
      }
    }

    if (hover != null) _drawHover(canvas);
  }

  Path? _pathOf(ResolvedConnector edge) {
    final points = edge.points;
    if (points.length < 2) return null;
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
    return path;
  }

  void _drawHover(Canvas canvas) {
    final zoom = (camera.state.zoom as num).toDouble();
    final world = camera.screenToWorld(
      DiagramPoint(hover!.dx, hover!.dy),
    ) as DiagramPoint;
    final hit = scene.hitTest(world, tolerance: 6 / zoom);

    if (hit is ResolvedShape) {
      if (selected.contains(hit.id)) return;
      final accent = Paint()
        ..color = _hoverColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.6;
      final bounds = _shapeBounds(hit.id);
      if (bounds != null) {
        canvas.drawRRect(
          RRect.fromRectAndRadius(
            _shapeRect(bounds).inflate(2),
            const Radius.circular(11),
          ),
          accent,
        );
      }
      final dash = Paint()
        ..color = _hoverColor.withValues(alpha: 0.8)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.8
        ..strokeCap = StrokeCap.round;
      for (final element in scene.elements) {
        if (element is! ResolvedConnector) continue;
        final startId = element.source.start is BoundEndpoint
            ? (element.source.start as BoundEndpoint).elementId
            : null;
        final endId = element.source.end is BoundEndpoint
            ? (element.source.end as BoundEndpoint).elementId
            : null;
        if (startId == hit.id || endId == hit.id) {
          final other = startId == hit.id ? endId : startId;
          final otherBounds = other == null ? null : _shapeBounds(other);
          if (otherBounds != null) {
            canvas.drawRRect(
              RRect.fromRectAndRadius(
                _shapeRect(otherBounds).inflate(2),
                const Radius.circular(11),
              ),
              accent,
            );
          }
          final path = _pathOf(element);
          if (path != null) _drawAnts(canvas, path, dash, 0);
        }
      }
    } else if (hit is ResolvedConnector) {
      _highlightConnectorColumns(canvas, hit);
      final path = _pathOf(hit);
      if (path != null) {
        canvas.drawPath(
          path,
          Paint()
            ..color = _hoverColor
            ..style = PaintingStyle.stroke
            ..strokeWidth = 2.2,
        );
      }
    }
  }

  void _highlightConnectorColumns(Canvas canvas, ResolvedConnector edge) {
    for (final endpoint in [edge.source.start, edge.source.end]) {
      if (endpoint is! BoundEndpoint) continue;
      final portId = endpoint.portId;
      if (portId == null) continue;
      final parts = portId.split('::');
      if (parts.length < 2) continue;
      _highlightRow(canvas, parts[0], parts[1]);
    }
  }

  void _highlightRow(Canvas canvas, String tableId, String column) {
    final bounds = _shapeBounds(tableId);
    final columns = columnsByTable[tableId];
    if (bounds == null || columns == null) return;
    final index = columns.indexOf(column);
    if (index < 0) return;
    final top =
        bounds.top + SchemaDiagram.headerHeight + index * SchemaDiagram.rowHeight;
    final rect = Rect.fromPoints(
      _screen(DiagramPoint(bounds.left, top)),
      _screen(
        DiagramPoint(
          bounds.left + bounds.width,
          top + SchemaDiagram.rowHeight,
        ),
      ),
    );
    canvas.drawRect(
      rect,
      Paint()..color = _hoverColor.withValues(alpha: 0.22),
    );
    canvas.drawRect(
      rect,
      Paint()
        ..color = _hoverColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.2,
    );
  }

  void _drawCardinality(Canvas canvas, ResolvedConnector edge) {
    final start = edge.source.start;
    final end = edge.source.end;
    final startId = start is BoundEndpoint ? start.elementId : null;
    final endId = end is BoundEndpoint ? end.elementId : null;
    final points = edge.points;
    if (points.length < 2) return;

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
        style: TextStyle(color: color, fontSize: 11, fontWeight: FontWeight.w700),
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
