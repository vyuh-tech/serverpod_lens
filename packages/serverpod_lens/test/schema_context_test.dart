import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';

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
}
