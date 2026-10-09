import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart';

import 'support/context_fixture.dart';

void main() {
  test(
    'focus follows FK direction and shortest hop distances across schemas',
    () {
      final context = SchemaContext(contextFixture());
      expect(context.neighborhood(['sales.orders']).distances, {
        'sales.orders': 0,
        'auth.users': 1,
        'sales.items': 1,
      });
      expect(
        context.neighborhood([
          'sales.orders',
        ], hops: 2).distances['sales.payments'],
        2,
      );
      expect(
        context.neighborhood([
          'sales.orders',
        ], direction: RelationDirection.incoming).tables,
        {'sales.orders', 'sales.items'},
      );
      expect(
        context.neighborhood([
          'sales.orders',
        ], direction: RelationDirection.outgoing).tables,
        {'sales.orders', 'auth.users'},
      );
      expect(
        context.neighborhood(['auth.users'], hops: 2).distances['auth.users'],
        0,
      );
    },
  );

  test('isolated and missing targets do not invent graph nodes', () {
    final context = SchemaContext(contextFixture());
    expect(context.neighborhood(['catalog.products']).tables, {
      'catalog.products',
    });
    expect(context.neighborhood(['audit.events']).tables, {'audit.events'});
    expect(
      context.external(['audit.events']).single.foreignKey.refTable,
      'external.logs',
    );
    expect(context.neighborhood(['missing']).isEmpty, isTrue);
  });

  test('groups overlap without double counting constraints or traversing at zero hops', () {
    final context = SchemaContext(contextFixture());
    final group = {'auth.users', 'sales.orders'};
    expect(context.internal(group), hasLength(2));
    expect(
      context
          .external(group, direction: RelationDirection.incoming)
          .single
          .table,
      'sales.items',
    );
    expect(
      context.external(group, direction: RelationDirection.outgoing),
      isEmpty,
    );
    expect(context.neighborhood(group, hops: 0).tables, group);
    expect(
      context.neighborhood({'sales.orders', 'sales.items'}).tables,
      containsAll(['auth.users', 'sales.payments']),
    );
  });

  test('native focus dims context without changing source, frames, visibility or ports', () async {
    final graph = contextFixture();
    final controller = DiagramController(
      configuration: DiagramConfiguration(
        extensions: [SchemaTableExtension(), const LayoutExtension()],
      ),
    );
    addTearDown(controller.dispose);
    await SchemaDiagram.build(
      graph,
      controller: controller,
      layout: Layout.grid(columns: 3),
    );
    controller.diagram.setRules(schemaViewRules);
    final originals = {for (final e in controller.document.elements) e.id: e};
    final camera = controller.camera;
    applySchemaContext(
      controller,
      SchemaContext(graph).neighborhood(['sales.orders']),
    );
    expect(controller.document.elementById('sales.orders')!.opacity, 1);
    expect(controller.document.elementById('catalog.products')!.opacity, .18);
    expect(controller.camera, camera);
    for (final e in controller.document.elements) {
      expect(e.copyWith(opacity: originals[e.id]!.opacity), originals[e.id]);
    }
    expect(controller.edits.delete(ids: ['sales.orders']).allowed, isFalse);
    applySchemaContext(controller, null);
    expect(controller.document.elements, originals.values);
  });
}
