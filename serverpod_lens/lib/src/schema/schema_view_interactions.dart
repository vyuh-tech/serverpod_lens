import 'package:mobx/mobx.dart';
import 'package:vyuh_diagram_core/adapter.dart'
    show DiagramTransaction, ReplaceElementStep;
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
            before.copyWith(
                  frame: after.frame,
                  isVisible: after.isVisible,
                  opacity: after.opacity,
                ) !=
                after) {
          return denied;
        }
      } else if (before is ConnectorElement && after is ConnectorElement) {
        if (before.copyWith(
              isVisible: after.isVisible,
              opacity: after.opacity,
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
  final _particleSizes = ObservableMap<SchemaAnimation, double>.of({
    SchemaAnimation.particles: 2,
    SchemaAnimation.dashes: 1,
    SchemaAnimation.arrows: 4,
  });
  final _animationWidth = Observable(1.5);
  final _animationOpacity = Observable(.9);
  double get particleSize => _particleSizes[animation] ?? 2;
  set particleSize(double value) => runInAction(() {
    if (_particleSizes.containsKey(animation)) {
      _particleSizes[animation] = value;
    }
  });
  double get animationWidth => _animationWidth.value;
  set animationWidth(double value) =>
      runInAction(() => _animationWidth.value = value);
  double get animationOpacity => _animationOpacity.value;
  set animationOpacity(double value) =>
      runInAction(() => _animationOpacity.value = value);
  SchemaAnimation get animation => _animation.value;
  set animation(SchemaAnimation value) =>
      runInAction(() => _animation.value = value);
  double get speed => _speed.value;
  set speed(double value) => runInAction(() => _speed.value = value);
  int get density => _density.value;
  set density(int value) => runInAction(() => _density.value = value);
  bool get reverse => _reverse.value;
  set reverse(bool value) => runInAction(() => _reverse.value = value);
  SchemaConnectionStyle connectionStyle = SchemaConnectionStyle.orthogonal;
  double strokeWidth = 2;
  double cornerRadius = 8;
  double portExtension = 24;
  bool dashedConnections = false;
  bool showRelationshipLabels = false;
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
    const color = DiagramColor(0xff525252);
    if (kind == SchemaAnimation.pulse || kind == SchemaAnimation.blink) {
      return Effect.pulse(
        period: period,
        color: color,
        target: EffectTarget.stroke,
        width: animationWidth,
        opacity: animationOpacity,
        waveform: kind == SchemaAnimation.blink
            ? Waveform.step
            : Waveform.smooth,
      );
    }
    return Effect.flow(
      period: period,
      reverse: reverse,
      color: kind == SchemaAnimation.dashes
          ? const DiagramColor(0xff737373)
          : color,
      count: density,
      size: particleSize,
      width: animationWidth,
      opacity: animationOpacity,
      baseOpacity: kind == SchemaAnimation.dashes ? 0 : .2,
      particle: switch (kind) {
        SchemaAnimation.dashes => const EffectParticle.dash(),
        SchemaAnimation.arrows => const EffectParticle.arrow(),
        _ => const EffectParticle.circle(),
      },
    );
  }
}

final _relationshipLabels = Expando<Map<String, List<ConnectorLabel>>>(
  'Schema relationship labels',
);

typedef _ConnectionSettings = ({
  SchemaConnectionStyle style,
  double width,
  double radius,
  double extension,
  bool dashed,
  bool labels,
});

_ConnectionSettings _connectionSettings(SchemaViewPreferences preferences) => (
  style: preferences.connectionStyle,
  width: preferences.strokeWidth,
  radius: preferences.cornerRadius,
  extension: preferences.portExtension,
  dashed: preferences.dashedConnections,
  labels: preferences.showRelationshipLabels,
);

final _appliedConnections =
    Expando<({DiagramDocument document, _ConnectionSettings settings})>();

/// Hide native labels without losing their identities, content or placement.
void _applyRelationshipLabels(DiagramController controller, bool visible) {
  final document = controller.document;
  final originals = _relationshipLabels[controller] ??= {
    for (final edge in document.elements.whereType<ConnectorElement>())
      edge.id: List.unmodifiable(edge.labels),
  };
  final steps = <ReplaceElementStep>[];
  for (final edge in document.elements.whereType<ConnectorElement>()) {
    final labels = visible
        ? originals[edge.id] ?? const <ConnectorLabel>[]
        : const <ConnectorLabel>[];
    final after = edge.copyWith(labels: labels);
    if (after != edge) {
      steps.add(ReplaceElementStep(before: edge, after: after));
    }
  }
  if (steps.isEmpty) return;
  final rules = controller.diagram.configuration.rules;
  // Admit only the prepared label replacements during this synchronous update.
  // User gestures remain subject to the original read-only rules afterward.
  final replacements = {for (final step in steps) step.before.id: step};
  controller.diagram.setRules(
    DiagramRules(
      canCreate: rules.canCreate,
      canConnect: rules.canConnect,
      beforeChange: (proposal) {
        final changes = proposal.elements;
        if (changes.insertedIds.isEmpty &&
            changes.removedIds.isEmpty &&
            changes.reparentedIds.isEmpty &&
            changes.updatedIds.every((id) {
              final step = replacements[id];
              return step != null &&
                  proposal.before.elementById(id) == step.before &&
                  proposal.after.elementById(id) == step.after;
            })) {
          return const EditResult.allow();
        }
        return const EditResult.denied(reason: 'Schema content is read-only');
      },
    ),
  );
  try {
    controller.edits.batch('Relationship label visibility', () {
      controller.edits
          .dispatch(
            DiagramTransaction(
              steps: steps,
              label: 'Relationship label visibility',
            ),
            expectedRevision: document.revision,
          )
          .requireAllowed();
    }, history: false).requireAllowed();
  } finally {
    controller.diagram.setRules(rules);
  }
}

/// Commit the preference only after the native label transaction succeeds.
/// This path never changes routes, styles, node positions or undo history.
void setSchemaRelationshipLabels(
  DiagramController controller,
  SchemaViewPreferences preferences,
  bool visible,
) {
  final previous = _appliedConnections[controller];
  final document = controller.document;
  final settingsBefore = _connectionSettings(preferences);
  _applyRelationshipLabels(controller, visible);
  preferences.showRelationshipLabels = visible;
  if (previous != null &&
      identical(previous.document, document) &&
      previous.settings == settingsBefore) {
    _appliedConnections[controller] = (
      document: controller.document,
      settings: _connectionSettings(preferences),
    );
  }
}

/// Native appearance updates preserve column bindings and schema semantics.
void applySchemaConnections(
  DiagramController controller,
  SchemaViewPreferences preferences,
) {
  final settings = _connectionSettings(preferences);
  final applied = _appliedConnections[controller];
  if (applied != null &&
      identical(applied.document, controller.document) &&
      applied.settings == settings) {
    return;
  }
  final style = preferences.connectionStyle;
  final ids = controller.document.elements
      .whereType<ConnectorElement>()
      .map((edge) => edge.id)
      .toList();
  if (ids.isNotEmpty) {
    controller.edits.batch('Connection appearance', () {
      controller.edits.perform(ids, 'setConnectorRoute', {
        'route': style.route,
        'portSpacing': 0.0,
        'options': style.hasCorners
            ? {
                'cornerRadius': style == SchemaConnectionStyle.rounded
                    ? preferences.cornerRadius
                    : 0.0,
                'terminalExtension': preferences.portExtension,
              }
            : const <String, Object?>{},
      }).requireAllowed();
      controller.edits.perform(ids, 'setConnectorStyle', {
        'strokeWidth': preferences.strokeWidth,
        'strokeStyle': preferences.dashedConnections
            ? StrokeStyle.dashed
            : StrokeStyle.solid,
      }).requireAllowed();
    }).requireAllowed();
  }
  _applyRelationshipLabels(controller, preferences.showRelationshipLabels);
  _appliedConnections[controller] = (
    document: controller.document,
    settings: settings,
  );
}

/// Play native effects on visible relationships touching selected tables.
ReactionDisposer watchSchemaSelection(
  DiagramController controller, {
  SchemaViewPreferences? preferences,
}) {
  final settings = preferences ?? SchemaViewPreferences();
  return reaction((_) => (controller.selection, settings.effect), (state) {
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
  });
}
