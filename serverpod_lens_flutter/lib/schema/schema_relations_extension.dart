import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';
import 'package:vyuh_diagram_flutter/extension_api.dart';

/// Schema-specific choices of which native effects play. Vyuh owns the effects,
/// their frame clock, geometry, painting and cleanup when the canvas unmounts.
final class SchemaRelationsOptions {
  const SchemaRelationsOptions({
    this.animate = true,
    this.animateAll = false,
    this.focus = false,
  });
  final bool animate, animateAll, focus;
  SchemaRelationsOptions copyWith({
    bool? animate,
    bool? animateAll,
    bool? focus,
  }) => SchemaRelationsOptions(
    animate: animate ?? this.animate,
    animateAll: animateAll ?? this.animateAll,
    focus: focus ?? this.focus,
  );
}

final class SchemaRelationsExtension extends DiagramFlutterExtension {
  const SchemaRelationsExtension()
    : super(id: 'podlens.relations', options: const SchemaRelationsOptions());
  @override
  Widget build(BuildContext context, DiagramCanvasExtensionHost host) =>
      _SchemaRelations(controller: host.controller);
}

class _SchemaRelations extends StatefulWidget {
  const _SchemaRelations({required this.controller});
  final DiagramController controller;
  @override
  State<_SchemaRelations> createState() => _SchemaRelationsState();
}

class _SchemaRelationsState extends State<_SchemaRelations> {
  late final ReactionDisposer _disposeReaction;
  final _handles = <String, EffectHandle>{};
  bool _pending = false;

  @override
  void initState() {
    super.initState();
    _disposeReaction = autorun((_) {
      final controller = widget.controller;
      controller.selection;
      controller.document;
      controller.options<SchemaRelationsOptions>();
      _schedule();
    });
  }

  void _schedule() {
    if (_pending) return;
    _pending = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pending = false;
      if (mounted && widget.controller.isAttached) _sync();
    });
  }

  void _sync() {
    final controller = widget.controller;
    final options = controller.options<SchemaRelationsOptions>();
    final selection = controller.selection;
    final selected = selection is ElementSelection
        ? selection.elementIds
        : <String>{};
    final related = <String>{...selected};
    final connected = <String>{};
    for (final edge
        in controller.document.elements.whereType<ConnectorElement>()) {
      final source = edge.start is BoundEndpoint
          ? (edge.start as BoundEndpoint).elementId
          : null;
      final target = edge.end is BoundEndpoint
          ? (edge.end as BoundEndpoint).elementId
          : null;
      if (selected.contains(edge.id) ||
          selected.contains(source) ||
          selected.contains(target)) {
        related.addAll([edge.id, ?source, ?target]);
        connected.add(edge.id);
      }
    }
    final desired = <String, Effect>{};
    for (final element in controller.document.elements) {
      if (!element.isVisible) continue;
      if (options.focus &&
          selected.isNotEmpty &&
          !related.contains(element.id)) {
        desired[element.id] = const Effect.fade(
          dim: 0.25,
          period: Duration(milliseconds: 180),
        );
      } else if (element is ConnectorElement &&
          options.animate &&
          (options.animateAll || connected.contains(element.id))) {
        desired[element.id] = const Effect.flow(
          particle: EffectParticle.dash(),
          color: DiagramColor(0xff22d3ee),
          period: Duration(milliseconds: 900),
          count: 8,
          size: 1,
          width: 2,
          scale: EffectScale.screen,
        );
      }
    }
    for (final id in _handles.keys.toList()) {
      if (!desired.containsKey(id)) _handles.remove(id)!.stop();
    }
    for (final entry in desired.entries) {
      final handle = _handles[entry.key];
      if (handle == null || !handle.isPlaying) {
        _handles[entry.key] = controller.effects.play(
          entry.value,
          on: entry.key,
        );
      } else if (handle.effect != entry.value) {
        handle.update(entry.value);
      }
    }
  }

  @override
  void dispose() {
    _disposeReaction();
    for (final handle in _handles.values) {
      handle.stop();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
}
