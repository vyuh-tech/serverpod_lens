import 'dart:math';

import 'package:serverpod_lens/diagram.dart';
import 'package:vyuh_diagram_extension_connectors/vyuh_diagram_extension_connectors.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

void check(bool condition, String message) {
  if (!condition) throw StateError(message);
}

DiagramController connectionFixture({int count = 3, String prefix = 'edge'}) =>
    DiagramController(
      configuration: DiagramConfiguration(
        extensions: [ConnectorsExtension()],
        rules: schemaViewRules,
      ),
      document: DiagramDocument(
        id: prefix,
        revision: 0,
        elements: [
          for (var i = 0; i < count; i++)
            ConnectorElement(
              id: '$prefix-$i',
              start: FreeEndpoint(DiagramPoint(0, i * 40)),
              end: FreeEndpoint(DiagramPoint(300, i * 40)),
              labels: [
                for (var j = 0; j < 3; j++)
                  ConnectorLabel(
                    id: '$prefix-$i-label-$j',
                    story: TextStory.paragraph(
                      id: '$prefix-$i-story-$j',
                      blockId: '$prefix-$i-block-$j',
                      text: ['N', '1', 'tenant, id → tenant, id / 名称 / اسم'][j],
                    ),
                    fraction: [.08, .92, .5][j],
                    offset: const DiagramPoint(0, -12),
                    presentation: j == 2
                        ? const BadgeLabelPresentation()
                        : const PlainLabelPresentation(),
                  ),
              ],
            ),
        ],
      ),
    );

List<ConnectorElement> edges(DiagramController controller) =>
    controller.document.elements.whereType<ConnectorElement>().toList();

final connectionChecks = <String, void Function()>{
  'seeded mixed settings operations preserve schema and label identities': () {
    final controller = connectionFixture(count: 7);
    try {
      final random = Random(20261012);
      final preferences = SchemaViewPreferences();
      final originals = edges(controller);
      for (var iteration = 0; iteration < 100; iteration++) {
        preferences.connectionStyle = SchemaConnectionStyle
            .values[random.nextInt(SchemaConnectionStyle.values.length)];
        preferences.strokeWidth = 1 + random.nextDouble() * 4;
        preferences.dashedConnections = random.nextBool();
        preferences.cornerRadius = random.nextDouble() * 32;
        preferences.portExtension = random.nextDouble() * 80;
        preferences.showRelationshipLabels = random.nextBool();
        applySchemaConnections(controller, preferences);
        final actual = edges(controller);
        for (var i = 0; i < actual.length; i++) {
          check(
            actual[i].start == originals[i].start,
            'Seeded start moved at $iteration',
          );
          check(
            actual[i].end == originals[i].end,
            'Seeded end moved at $iteration',
          );
          check(
            actual[i].route == preferences.connectionStyle.route,
            'Seeded route mismatched',
          );
          check(
            actual[i].strokeWidth == preferences.strokeWidth,
            'Seeded width mismatched',
          );
          check(
            actual[i].strokeStyle ==
                (preferences.dashedConnections
                    ? StrokeStyle.dashed
                    : StrokeStyle.solid),
            'Seeded dash style mismatched',
          );
          check(
            actual[i].labels.length ==
                (preferences.showRelationshipLabels ? 3 : 0),
            'Seeded label count mismatched',
          );
          for (var j = 0; j < actual[i].labels.length; j++) {
            check(
              actual[i].labels[j] == originals[i].labels[j],
              'Seeded label identity or content changed',
            );
          }
        }
      }
    } finally {
      controller.dispose();
    }
  },
  'label toggles do not cache uncommitted appearance preferences': () {
    final controller = connectionFixture();
    try {
      final preferences = SchemaViewPreferences();
      applySchemaConnections(controller, preferences);
      preferences.strokeWidth = 5;
      setSchemaRelationshipLabels(controller, preferences, true);
      applySchemaConnections(controller, preferences);
      check(
        edges(controller).every((edge) => edge.strokeWidth == 5),
        'Uncommitted width was skipped',
      );
    } finally {
      controller.dispose();
    }
  },
  'external appearance changes invalidate the no-op cache': () {
    final controller = connectionFixture();
    try {
      final preferences = SchemaViewPreferences();
      applySchemaConnections(controller, preferences);
      controller.edits
          .setConnectorStyle('edge-0', strokeWidth: 5)
          .requireAllowed();
      applySchemaConnections(controller, preferences);
      check(
        edges(controller)
            .every((edge) => edge.strokeWidth == preferences.strokeWidth),
        'Stale cached appearance survived',
      );
    } finally {
      controller.dispose();
    }
  },
  'unchanged settings do not publish or enter undo history': () {
    final controller = connectionFixture();
    try {
      final preferences = SchemaViewPreferences();
      applySchemaConnections(controller, preferences);
      final document = controller.document;
      final canUndo = controller.canUndo;
      for (var i = 0; i < 20; i++) {
        applySchemaConnections(controller, preferences);
      }
      check(
        identical(document, controller.document),
        'No-op published a document',
      );
      check(controller.canUndo == canUndo, 'No-op changed undo history');
    } finally {
      controller.dispose();
    }
  },
  'label-only toggles preserve routes, styles and undo history': () {
    final controller = connectionFixture();
    try {
      final preferences = SchemaViewPreferences();
      preferences.connectionStyle = SchemaConnectionStyle.bezier;
      preferences.dashedConnections = true;
      preferences.strokeWidth = 4;
      applySchemaConnections(controller, preferences);
      final before = edges(controller);
      final canUndo = controller.canUndo;
      final revision = controller.document.revision;
      setSchemaRelationshipLabels(controller, preferences, true);
      check(
        preferences.showRelationshipLabels,
        'Successful preference not saved',
      );
      check(
        controller.document.revision == revision + 1,
        'Toggle published more than once',
      );
      check(controller.canUndo == canUndo, 'Toggle changed undo history');
      final after = edges(controller);
      for (var i = 0; i < before.length; i++) {
        check(
          before[i].copyWith(labels: after[i].labels) == after[i],
          'Toggle changed connection appearance',
        );
      }
      final document = controller.document;
      setSchemaRelationshipLabels(controller, preferences, true);
      check(
        identical(document, controller.document),
        'Repeated toggle published',
      );
    } finally {
      controller.dispose();
    }
  },
  'failed label update leaves the preference unchanged': () {
    final controller = connectionFixture();
    final preferences = SchemaViewPreferences();
    controller.dispose();
    var threw = false;
    try {
      setSchemaRelationshipLabels(controller, preferences, true);
    } on StateError {
      threw = true;
    }
    check(threw, 'Disposed controller accepted the update');
    check(
      !preferences.showRelationshipLabels,
      'Failure committed the preference',
    );
  },
  'empty graph accepts repeated settings changes': () {
    final controller = connectionFixture(count: 0);
    try {
      final preferences = SchemaViewPreferences();
      for (var i = 0; i < 10; i++) {
        preferences.showRelationshipLabels = i.isOdd;
        applySchemaConnections(controller, preferences);
      }
      check(
        controller.document.elements.isEmpty,
        'Empty graph gained elements',
      );
    } finally {
      controller.dispose();
    }
  },
  'rapid toggles preserve composite text, geometry, badges and endpoints': () {
    final controller = connectionFixture();
    try {
      final originals = edges(controller);
      final preferences = SchemaViewPreferences();
      for (var iteration = 0; iteration < 10; iteration++) {
        preferences.showRelationshipLabels = false;
        applySchemaConnections(controller, preferences);
        check(
          edges(controller).every((e) => e.labels.isEmpty),
          'Labels remain',
        );
        preferences.showRelationshipLabels = true;
        applySchemaConnections(controller, preferences);
        final restored = edges(controller);
        for (var i = 0; i < restored.length; i++) {
          check(restored[i].start == originals[i].start, 'Start moved');
          check(restored[i].end == originals[i].end, 'End moved');
          check(restored[i].labels.length == 3, 'Duplicate or missing labels');
          for (var j = 0; j < 3; j++) {
            final label = restored[i].labels[j];
            final original = originals[i].labels[j];
            check(label.id == original.id, 'Label identity changed');
            check(label.story == original.story, 'Text changed');
            check(label.fraction == original.fraction, 'Fraction changed');
            check(label.offset == original.offset, 'Offset changed');
            check(label.size == original.size, 'Size changed');
            check(label.presentation == original.presentation, 'Badge changed');
          }
        }
      }
    } finally {
      controller.dispose();
    }
  },
  'schema switches isolate label caches and retain the session preference': () {
    final first = connectionFixture(prefix: 'first');
    final second = connectionFixture(prefix: 'second');
    try {
      final preferences = SchemaViewPreferences();
      applySchemaConnections(first, preferences);
      applySchemaConnections(second, preferences);
      preferences.showRelationshipLabels = true;
      applySchemaConnections(second, preferences);
      check(edges(first).every((e) => e.labels.isEmpty), 'Other graph changed');
      check(
        edges(second).every((e) => e.labels.length == 3),
        'Cache crossed graphs',
      );
      check(
        edges(
          second,
        ).every((e) => e.labels.every((l) => l.story.id.startsWith('second'))),
        'Restored labels belong to another schema',
      );
    } finally {
      first.dispose();
      second.dispose();
    }
  },
  'read-only label rules survive toggles and denied appearance updates': () {
    final controller = connectionFixture();
    try {
      final preferences = SchemaViewPreferences();
      applySchemaConnections(controller, preferences);
      preferences.showRelationshipLabels = true;
      applySchemaConnections(controller, preferences);
      check(
        !controller.edits.addConnectorLabel('edge-0', text: 'tampered').allowed,
        'Label editing became enabled',
      );
      final denied = DiagramRules(
        beforeChange: (_) => const EditResult.denied(reason: 'Fixture denial'),
      );
      controller.diagram.setRules(denied);
      preferences.strokeWidth = 5;
      var threw = false;
      try {
        applySchemaConnections(controller, preferences);
      } on DiagramChangeDenied {
        threw = true;
      }
      check(threw, 'Denied appearance update unexpectedly succeeded');
      check(
        identical(controller.diagram.configuration.rules, denied),
        'Rules lost',
      );
      check(
        edges(controller).every((e) => e.labels.length == 3),
        'Failed update lost labels',
      );
    } finally {
      controller.dispose();
    }
  },
  'all connection styles keep hidden labels hidden': () {
    final controller = connectionFixture();
    try {
      final preferences = SchemaViewPreferences();
      for (final style in SchemaConnectionStyle.values) {
        preferences.connectionStyle = style;
        preferences.dashedConnections = true;
        applySchemaConnections(controller, preferences);
        check(
          edges(controller).every((e) => e.labels.isEmpty),
          'Style revealed labels',
        );
        check(
          edges(controller).every((e) => e.route == style.route),
          'Route not applied',
        );
      }
    } finally {
      controller.dispose();
    }
  },
};
