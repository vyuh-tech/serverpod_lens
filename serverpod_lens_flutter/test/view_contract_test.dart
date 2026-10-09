import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_flutter/schema/schema_diagram.dart';
import 'package:serverpod_lens_flutter/schema/schema_view_interactions.dart';
import 'package:vyuh_diagram_extension_connectors/vyuh_diagram_extension_connectors.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

void main() {
  final imported = SchemaDiagram.graphFromJson(
    File('assets/schema_graph.json').readAsStringSync(),
  );
  final graph = imported.copyWith(
    tables: imported.tables.where((t) => t.schema == 'sso').toList(),
  );

  for (final entry in <String, Layout>{
    'grid': Layout.grid(columns: 6),
    'layered': Layout.layered(),
    'tree': Layout.tree(),
    'force': Layout.force(),
    'circular': Layout.circular(),
  }.entries) {
    test(
      '${entry.key} layout keeps schema content and bound relationships',
      () async {
        final c = DiagramController(
          configuration: DiagramConfiguration(
            extensions: [
              SchemaTableExtension(),
              const LayoutExtension(),
              ConnectorsExtension(),
            ],
          ),
        );
        addTearDown(c.dispose);
        await SchemaDiagram.build(graph, controller: c, layout: Layout.grid());
        c.diagram.setRules(schemaViewRules);
        applySchemaConnections(c, SchemaViewPreferences());
        final before = {for (final e in c.document.elements) e.id: e};
        await c.layout(entry.value);
        expect(c.document.elements.length, before.length);
        for (final element in c.document.elements) {
          if (element is ShapeElement) {
            final original = before[element.id] as ShapeElement;
            expect(element.copyWith(frame: original.frame), original);
            expect(
              element.frame.left.isFinite && element.frame.top.isFinite,
              isTrue,
            );
          } else if (element is ConnectorElement) {
            final original = before[element.id] as ConnectorElement;
            expect(element.start, original.start);
            expect(element.end, original.end);
            expect(element.labels, original.labels);
          }
        }
      },
    );
  }

  test(
    'view admission blocks creation, deletion, resizing, ports and rewiring',
    () async {
      final c = DiagramController(
        configuration: DiagramConfiguration(
          extensions: [
            SchemaTableExtension(),
            const LayoutExtension(),
            ConnectorsExtension(),
          ],
        ),
      );
      addTearDown(c.dispose);
      await SchemaDiagram.build(graph, controller: c, layout: Layout.grid());
      c.diagram.setRules(schemaViewRules);
      final document = c.document;
      final shape = document.elements.whereType<ShapeElement>().first;
      final edge = document.elements.whereType<ConnectorElement>().first;
      expect(
        c.edits
            .createShape(SchemaDiagram.tableShapeType, at: DiagramPoint.zero)
            .allowed,
        isFalse,
      );
      expect(c.document, same(document));
      expect(
        c.edits.resize(const DiagramSize(100, 100), ids: [shape.id]).allowed,
        isFalse,
      );
      expect(c.document, same(document));
      expect(
        c.edits
            .setPorts(shape.ports.reversed.toList(), ids: [shape.id])
            .allowed,
        isFalse,
      );
      expect(c.document, same(document));
      expect(
        c.edits
            .reconnect(
              edge.id,
              atStart: true,
              endpoint: const FreeEndpoint(DiagramPoint.zero),
            )
            .allowed,
        isFalse,
      );
      expect(c.document, same(document));
      c.select([shape.id]);
      // Delete uses the same native verb tested by the mounted keyboard test.
      expect(c.edits.delete(ids: [shape.id]).allowed, isFalse);
      expect(c.document, same(document));
    },
  );

  test('particle sizes are retained separately for each flow animation', () {
    final prefs = SchemaViewPreferences();
    for (final entry in {
      SchemaAnimation.particles: 7.0,
      SchemaAnimation.dashes: 3.0,
      SchemaAnimation.arrows: 9.0,
    }.entries) {
      prefs.animation = entry.key;
      prefs.particleSize = entry.value;
      prefs.animationWidth = 4;
      prefs.animationOpacity = .6;
      expect(prefs.effect!.size, entry.value);
      expect(prefs.effect!.width, 4);
      expect(prefs.effect!.opacity, .6);
    }
    prefs.animation = SchemaAnimation.particles;
    expect(prefs.particleSize, 7);
    prefs.animation = SchemaAnimation.dashes;
    expect(prefs.particleSize, 3);
    prefs.animation = SchemaAnimation.arrows;
    expect(prefs.particleSize, 9);
    prefs.animation = SchemaAnimation.pulse;
    expect(prefs.effect!.width, 4);
    expect(prefs.effect!.opacity, .6);
    prefs.animation = SchemaAnimation.off;
    expect(prefs.effect, isNull);
  });

  test('all animation choices and speed limits build valid native effects', () {
    final prefs = SchemaViewPreferences();
    expect(prefs.connectionStyle, SchemaConnectionStyle.orthogonal);
    for (final choice in SchemaAnimation.values) {
      prefs.animation = choice;
      for (final speed in [.25, 1.0, 3.0]) {
        prefs.speed = speed;
        prefs.reverse = true;
        prefs.density = 32;
        final effect = prefs.effect;
        if (choice == SchemaAnimation.off) {
          expect(effect, isNull);
        } else {
          expect(effect!.period.inMilliseconds, (1600 / speed).round());
          expect(effect.period.inMilliseconds, greaterThan(0));
          if (choice == SchemaAnimation.dashes ||
              choice == SchemaAnimation.particles ||
              choice == SchemaAnimation.arrows) {
            expect(effect.reverse, isTrue);
            expect(effect.count, 32);
          }
        }
      }
    }
  });
}
