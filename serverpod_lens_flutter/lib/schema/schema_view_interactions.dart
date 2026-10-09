import 'package:mobx/mobx.dart';
import 'package:vyuh_diagram_extension_connectors/vyuh_diagram_extension_connectors.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';
import 'package:vyuh_diagram_flutter/extension_api.dart';

/// Enables native selection, node movement and effects without editor chrome.
const schemaViewInteractions = DiagramFlutterExtension(
  id: 'lens.navigation',
  editable: true,
);

/// Keep schema content fixed while allowing positions and schema visibility.
final schemaViewRules = DiagramRules(
  beforeChange: (proposal) {
    const denied = EditResult.denied(reason: 'Schema content is read-only');
    final changes = proposal.elements;
    if (changes.insertedIds.isNotEmpty ||
        changes.removedIds.isNotEmpty ||
        changes.reparentedIds.isNotEmpty) {
      return denied;
    }
    for (final id in changes.updatedIds) {
      final before = proposal.before.elementById(id);
      final after = proposal.after.elementById(id);
      if (before is ShapeElement && after is ShapeElement) {
        if (before.frame.width != after.frame.width ||
            before.frame.height != after.frame.height ||
            before.copyWith(frame: after.frame, isVisible: after.isVisible) !=
                after) {
          return denied;
        }
      } else if (before is ConnectorElement && after is ConnectorElement) {
        if (before.copyWith(
              isVisible: after.isVisible,
              route: after.route,
              routeOptions: after.routeOptions,
              controlPoints: after.controlPoints,
              routedPoints: after.routedPoints,
              terminalGap: after.terminalGap,
              color: after.color,
              strokeWidth: after.strokeWidth,
              strokeStyle: after.strokeStyle,
            ) !=
            after) {
          return denied;
        }
      } else {
        return denied;
      }
    }
    return const EditResult.allow();
  },
);

enum SchemaAnimation {
  off('Off'),
  particles('Particles'),
  dashes('Marching dashes'),
  arrows('Flowing arrows'),
  pulse('Pulse'),
  blink('Blink');

  const SchemaAnimation(this.label);
  final String label;
}

enum SchemaConnectionStyle {
  straight('Straight', ConnectorRoute.straight),
  bezier('Bézier', ConnectorRoutes.bezier),
  quadratic('Quadratic', ConnectorRoutes.quadratic),
  orthogonal('Orthogonal', ConnectorRoutes.orthogonal),
  rounded('Rounded orthogonal', ConnectorRoutes.orthogonal);

  const SchemaConnectionStyle(this.label, this.route);
  final String label;
  final ConnectorRoute route;
  bool get hasCorners => route == ConnectorRoutes.orthogonal;
}

/// View preferences survive opening another project during this session.
final class SchemaViewPreferences {
  final _animation = Observable(SchemaAnimation.dashes);
  final _speed = Observable(1.0);
  final _reverse = Observable(false);
  final _density = Observable(12);
  SchemaAnimation get animation => _animation.value;
  set animation(SchemaAnimation value) =>
      runInAction(() => _animation.value = value);
  double get speed => _speed.value;
  set speed(double value) => runInAction(() => _speed.value = value);
  int get density => _density.value;
  set density(int value) => runInAction(() => _density.value = value);
  bool get reverse => _reverse.value;
  set reverse(bool value) => runInAction(() => _reverse.value = value);
  SchemaConnectionStyle connectionStyle = SchemaConnectionStyle.straight;
  double strokeWidth = 2;
  double cornerRadius = 8;
  double portExtension = 24;
  bool dashedConnections = false;
  bool grid = false;
  bool snap = false;
  bool snapGuides = true;
  double snapTolerance = 6;
  double gridSize = 20;
  bool minimap = true;
  bool minimapConnections = true;
  bool edgePan = true;

  Effect? get effect {
    final kind = animation;
    if (kind == SchemaAnimation.off) return null;
    final period = Duration(milliseconds: (1600 / speed).round());
    const color = DiagramColor(0xff2563eb);
    if (kind == SchemaAnimation.pulse || kind == SchemaAnimation.blink) {
      return Effect.pulse(
        period: period,
        color: color,
        target: EffectTarget.stroke,
        waveform: kind == SchemaAnimation.blink
            ? Waveform.step
            : Waveform.smooth,
      );
    }
    return Effect.flow(
      period: period,
      reverse: reverse,
      color: kind == SchemaAnimation.dashes
          ? const DiagramColor(0xff64748b)
          : color,
      count: density,
      size: kind == SchemaAnimation.dashes
          ? 1
          : kind == SchemaAnimation.arrows
          ? 4
          : 2,
      width: 1.5,
      baseOpacity: kind == SchemaAnimation.dashes ? 0 : .2,
      particle: switch (kind) {
        SchemaAnimation.dashes => const EffectParticle.dash(),
        SchemaAnimation.arrows => const EffectParticle.arrow(),
        _ => const EffectParticle.circle(),
      },
    );
  }
}

/// Native route/style updates leave column bindings and relation labels intact.
void applySchemaConnections(
  DiagramController controller,
  SchemaViewPreferences preferences,
) {
  final style = preferences.connectionStyle;
  controller.edits.batch('Connection appearance', () {
    for (final edge
        in controller.document.elements.whereType<ConnectorElement>()) {
      controller.edits
          .setConnectorRoute(
            edge.id,
            route: style.route,
            portSpacing: 0,
            options: style.hasCorners
                ? {
                    'cornerRadius': style == SchemaConnectionStyle.rounded
                        ? preferences.cornerRadius
                        : 0.0,
                    'terminalExtension': preferences.portExtension,
                  }
                : const {},
          )
          .requireAllowed();
      controller.edits
          .setConnectorStyle(
            edge.id,
            strokeWidth: preferences.strokeWidth,
            strokeStyle: preferences.dashedConnections
                ? StrokeStyle.dashed
                : StrokeStyle.solid,
          )
          .requireAllowed();
    }
  }).requireAllowed();
}

/// Play native effects on visible relationships touching selected tables.
ReactionDisposer watchSchemaSelection(
  DiagramController controller, {
  SchemaViewPreferences? preferences,
}) {
  final settings = preferences ?? SchemaViewPreferences();
  return reaction(
    (_) => (controller.selection, settings.effect),
    (state) {
      if (!controller.isAttached) return;
      controller.effects.stopAll();
      final (selection, effect) = state;
      if (selection is! ElementSelection || effect == null) return;
      final ids = selection.elementIds;
      for (final edge
          in controller.document.elements.whereType<ConnectorElement>()) {
        if (!edge.isVisible) continue;
        final start = edge.start;
        final end = edge.end;
        if ((start is BoundEndpoint && ids.contains(start.elementId)) ||
            (end is BoundEndpoint && ids.contains(end.elementId))) {
          controller.effects.play(effect, on: edge.id);
        }
      }
    },
  );
}
