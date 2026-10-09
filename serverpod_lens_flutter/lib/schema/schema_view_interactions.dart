import 'package:mobx/mobx.dart';
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
        if (before.copyWith(isVisible: after.isVisible) != after) return denied;
      } else {
        return denied;
      }
    }
    return const EditResult.allow();
  },
);

/// Play Vyuh's built-in flow on relationships touching the selected tables.
ReactionDisposer watchSchemaSelection(DiagramController controller) => reaction(
  (_) => controller.selection,
  (selection) {
    if (!controller.isAttached) return;
    controller.effects.stopAll();
    if (selection is! ElementSelection) return;
    final ids = selection.elementIds;
    for (final edge
        in controller.document.elements.whereType<ConnectorElement>()) {
      if (!edge.isVisible) continue;
      final start = edge.start;
      final end = edge.end;
      if ((start is BoundEndpoint && ids.contains(start.elementId)) ||
          (end is BoundEndpoint && ids.contains(end.elementId))) {
        controller.effects.play(
          const Effect.flow(color: DiagramColor(0xff2563eb), size: 5),
          on: edge.id,
        );
      }
    }
  },
);
