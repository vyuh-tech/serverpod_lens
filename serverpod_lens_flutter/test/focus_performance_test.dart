import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';

import 'support/context_fixture.dart';

void main() {
  test(
    'focus keeps movement undo intact and retains current decoration',
    () async {
      final graph = contextFixture();
      final controller = await SchemaDiagram.build(
        graph,
        layout: Layout.grid(columns: 3),
      );
      addTearDown(controller.dispose);
      controller.diagram.setRules(schemaViewRules);
      final initial =
          controller.document.elementById('catalog.products')! as ShapeElement;
      controller.edits
          .move(
            const DiagramPoint(50, 30),
            ids: ['catalog.products'],
          )
          .requireAllowed();
      applySchemaContext(
        controller,
        SchemaContext(graph).neighborhood(['sales.orders']),
      );
      controller.edits.undo().requireAllowed();
      final restored =
          controller.document.elementById('catalog.products')! as ShapeElement;
      expect(restored.frame, initial.frame);
      expect(restored.opacity, .18);
    },
  );

  for (final deniedAdmission in [1, 2]) {
    test(
      'focus rolls back completely when admission $deniedAdmission denies',
      () async {
        final graph = contextFixture();
        final controller = await SchemaDiagram.build(
          graph,
          layout: Layout.grid(columns: 3),
        );
        addTearDown(controller.dispose);
        final original = controller.document;
        final canUndo = controller.canUndo;
        var admissions = 0;
        controller.diagram.setRules(
          DiagramRules(
            beforeChange: (_) {
              return ++admissions == deniedAdmission
                  ? const EditResult.denied(reason: 'Focus fixture denial')
                  : const EditResult.allow();
            },
          ),
        );
        expect(
          () => applySchemaContext(
            controller,
            SchemaContext(graph).neighborhood(['sales.orders']),
          ),
          throwsA(isA<DiagramChangeDenied>()),
        );
        expect(identical(controller.document, original), isTrue);
        expect(controller.canUndo, canUndo);
      },
    );
  }

  test(
    'large-schema focus admits one bulk update and repeated focus is a no-op',
    () async {
      final base = contextFixture();
      final graph = base.copyWith(
        tables: [
          ...base.tables,
          for (var i = 0; i < 500; i++)
            base.tables.last.copyWith(name: 'catalog.extra_$i'),
        ],
      );
      final controller = DiagramController(
        configuration: DiagramConfiguration(
          extensions: [SchemaTableExtension(), const LayoutExtension()],
        ),
      );
      addTearDown(controller.dispose);
      await SchemaDiagram.build(
        graph,
        controller: controller,
        layout: Layout.grid(columns: 12),
      );
      var admissions = 0;
      controller.diagram.setRules(
        DiagramRules(
          beforeChange: (proposal) {
            admissions++;
            return schemaViewRules.beforeChange!(proposal);
          },
        ),
      );
      final originals = controller.document;
      final canUndo = controller.canUndo;
      final neighborhood = SchemaContext(graph).neighborhood(['sales.orders']);
      applySchemaContext(controller, neighborhood);
      // A structural performance guard, independent of CI machine speed.
      expect(admissions, lessThanOrEqualTo(2));
      final focused = controller.document;
      applySchemaContext(controller, neighborhood);
      expect(identical(controller.document, focused), isTrue);
      expect(
        controller.document.elementById('catalog.extra_499')!.opacity,
        .18,
      );
      applySchemaContext(controller, null);
      expect(controller.document.elements, originals.elements);
      expect(controller.canUndo, canUndo);
    },
  );
}
