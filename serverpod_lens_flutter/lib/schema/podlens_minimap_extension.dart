import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart'
    show DiagramCameraState, DiagramPoint, DiagramRect;
import 'package:vyuh_diagram_flutter/extension_api.dart';

import 'lens_state.dart';

/// A corner minimap of the whole diagram with a viewport rectangle. Click or
/// drag to move the camera. Visibility is driven by the diagram's own options.
final class PodLensMinimapExtension extends DiagramFlutterExtension {
  PodLensMinimapExtension({required this.lens, required this.colors})
    : super(id: 'podlens.minimap');

  final LensState lens;
  final Map<String, Color> colors;

  @override
  Widget build(BuildContext context, DiagramCanvasExtensionHost host) =>
      _Minimap(host: host, lens: lens, colors: colors);
}

class _Minimap extends StatefulWidget {
  const _Minimap({required this.host, required this.lens, required this.colors});

  final DiagramCanvasExtensionHost host;
  final LensState lens;
  final Map<String, Color> colors;

  @override
  State<_Minimap> createState() => _MinimapState();
}

class _MinimapState extends State<_Minimap> {
  static const _size = Size(220, 150);
  Timer? _refresh;

  @override
  void initState() {
    super.initState();
    widget.lens.addListener(_onChange);
    widget.host.camera.changes.addListener(_onChange);
    // Cheap refresh so node moves (which don't move the camera) show up.
    _refresh = Timer.periodic(const Duration(milliseconds: 350), (_) {
      if (mounted) setState(() {});
    });
  }

  void _onChange() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    widget.lens.removeListener(_onChange);
    widget.host.camera.changes.removeListener(_onChange);
    _refresh?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.lens.value.showMinimap) return const SizedBox.shrink();
    final dark = Theme.of(context).brightness == Brightness.dark;

    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: dark ? const Color(0xE60B1220) : const Color(0xE6FFFFFF),
            border: Border.all(
              color: dark ? const Color(0xFF334155) : const Color(0xFFCBD5E1),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: SizedBox(
            width: _size.width,
            height: _size.height,
            child: LayoutBuilder(
              builder: (context, constraints) {
                final size = Size(constraints.maxWidth, constraints.maxHeight);
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTapUp: (d) => _navigate(d.localPosition, size),
                  onPanUpdate: (d) => _navigate(d.localPosition, size),
                  child: CustomPaint(
                    painter: _MinimapPainter(
                      scene: widget.host.controller.scene,
                      camera: widget.host.camera,
                      colors: widget.colors,
                      dark: dark,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _navigate(Offset local, Size size) {
    final bounds = widget.host.controller.scene.bounds;
    if (bounds.width <= 0 || bounds.height <= 0) return;
    final scale = _scale(bounds, size);
    if (scale <= 0) return;
    const pad = _padding;
    final world = DiagramPoint(
      bounds.left + (local.dx - pad) / scale,
      bounds.top + (local.dy - pad) / scale,
    );
    final camera = widget.host.controller.camera;
    widget.host.controller.setCamera(
      DiagramCameraState(
        center: world,
        zoom: camera.zoom,
        viewportSize: camera.viewportSize,
      ),
    );
  }
}

const double _padding = 8;

double _scale(DiagramRect bounds, Size size) => math.min(
  (size.width - 2 * _padding) / bounds.width,
  (size.height - 2 * _padding) / bounds.height,
);

class _MinimapPainter extends CustomPainter {
  _MinimapPainter({
    required this.scene,
    required this.camera,
    required this.colors,
    required this.dark,
  });

  final ResolvedScene scene;
  final dynamic camera;
  final Map<String, Color> colors;
  final bool dark;

  @override
  void paint(Canvas canvas, Size size) {
    final bounds = scene.bounds;
    if (bounds.width <= 0 || bounds.height <= 0) return;
    final scale = _scale(bounds, size);
    Offset map(DiagramPoint p) => Offset(
      _padding + (p.x - bounds.left) * scale,
      _padding + (p.y - bounds.top) * scale,
    );

    final linkPaint = Paint()
      ..color = (dark ? Colors.white : Colors.black).withValues(alpha: 0.18)
      ..strokeWidth = 0.7
      ..style = PaintingStyle.stroke;
    final nodePaint = Paint()..style = PaintingStyle.fill;

    for (final element in scene.elements) {
      if (element is ResolvedShape) {
        final r = element.bounds;
        final rect = Rect.fromLTWH(
          map(DiagramPoint(r.left, r.top)).dx,
          map(DiagramPoint(r.left, r.top)).dy,
          r.width * scale,
          r.height * scale,
        );
        nodePaint.color = (colors[element.id] ?? const Color(0xFF64748B))
            .withValues(alpha: 0.85);
        canvas.drawRRect(
          RRect.fromRectAndRadius(rect, const Radius.circular(1.5)),
          nodePaint,
        );
      } else if (element is ResolvedConnector) {
        final points = element.points;
        if (points.length < 2) continue;
        final path = Path();
        var first = true;
        for (final p in points) {
          final o = map(p);
          if (first) {
            path.moveTo(o.dx, o.dy);
            first = false;
          } else {
            path.lineTo(o.dx, o.dy);
          }
        }
        canvas.drawPath(path, linkPaint);
      }
    }

    final view = camera.visibleWorldBounds as DiagramRect;
    final topLeft = map(DiagramPoint(view.left, view.top));
    final viewRect = Rect.fromLTWH(
      topLeft.dx,
      topLeft.dy,
      view.width * scale,
      view.height * scale,
    );
    canvas.drawRect(
      viewRect,
      Paint()
        ..color = const Color(0xFF22D3EE)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.4,
    );
  }

  @override
  bool shouldRepaint(_MinimapPainter old) => true;
}
