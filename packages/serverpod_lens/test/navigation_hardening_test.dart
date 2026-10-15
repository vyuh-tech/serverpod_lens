import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart';
import 'package:vyuh_diagram_extension_table/extension_api.dart';

import 'support/navigation_fixture.dart';

void main() {
  test('schema catalogs are deterministic and schema-qualified', () {
    final catalog = SchemaCatalog(fixture());
    expect(catalog.tables().take(2).map((t) => t.name), [
      'audit.log',
      'public.child0',
    ]);
    expect(catalog.tables(schema: 'audit').map((t) => t.name), ['audit.log']);
    expect(catalog.tables(), hasLength(6));
    expect(catalog.schemaCounts, {'audit': 1, 'public': 5});
  });
  test(
    'high-degree relationship lookup retains the complete source semantics',
    () {
      final graph = fixture(neighbors: 1000);
      final context = SchemaContext(graph);
      expect(context.neighborhood(['public.users']).tables, hasLength(1002));
      expect(
        context.external([
          'public.users',
        ], direction: RelationDirection.incoming),
        hasLength(1001),
      );
      expect(
        context.tables['public.orders']!.foreignKeys.map((fk) => fk.refTable),
        ['public.users', 'external.unavailable'],
      );
      expect(jsonEncode(graph.toJson()), contains('external.unavailable'));
    },
  );
  test('directions, two-hop traversal and missing targets remain correct', () {
    final context = SchemaContext(fixture(neighbors: 0));
    expect(
      context.neighborhood([
        'public.users',
      ], direction: RelationDirection.outgoing).tables,
      {'public.users'},
    );
    expect(
      context.neighborhood(['public.users'], hops: 2).tables,
      contains('audit.log'),
    );
    expect(context.neighborhood(['unknown']).tables, isEmpty);
    expect(() => context.neighborhood([], hops: 3), throwsRangeError);
  });
  test('duplicate table identities are rejected', () {
    final graph = fixture();
    expect(
      () => SchemaCatalog(
        graph.copyWith(tables: [graph.tables.first, graph.tables.first]),
      ),
      throwsArgumentError,
    );
  });
  for (final level in SchemaDetailLevel.values) {
    test(
      '$level preserves real keys, constraints and semantic metadata',
      () async {
        final root = table('public.parent');
        final child = table(
          'public.child',
          columns: [
            column('id', primary: true),
            for (var i = 0; i < 10; i++) column('fk$i'),
            column('details'),
          ],
          relations: [
            for (var i = 0; i < 10; i++)
              fk('fk$i', root.name, columns: ['fk$i']),
          ],
        );
        final graph = fixture().copyWith(tables: [root, child]);
        final before = jsonEncode(graph.toJson());
        final controller = await SchemaDiagram.build(graph, detailLevel: level);
        addTearDown(controller.dispose);
        final shape =
            controller.document.elementById(child.name)! as ShapeElement;
        final rows = controller.resolvedTable(
          child.name,
          '${child.name}-columns',
        );
        expect(
          rows?.cells.where((cell) => cell.column == 1).length ?? 0,
          level == SchemaDetailLevel.names
              ? 0
              : level == SchemaDetailLevel.keys
              ? 11
              : 12,
        );
        expect((shape.values['schema'] as Map)['columns'], hasLength(12));
        expect(
          controller.document.elements.whereType<ConnectorElement>(),
          hasLength(10),
        );
        for (final edge
            in controller.document.elements.whereType<ConnectorElement>()) {
          final start = edge.start as BoundEndpoint,
              end = edge.end as BoundEndpoint;
          expect(shape.ports.map((port) => port.id), contains(start.portId));
          expect(
            (controller.document.elementById(root.name)! as ShapeElement).ports
                .map((port) => port.id),
            contains(end.portId),
          );
        }
        expect(jsonEncode(graph.toJson()), before);
      },
    );
  }
  test(
    'compact preview never loses bindings for omitted foreign-key columns',
    () async {
      final root = table('public.parent');
      final child = table(
        'public.child',
        columns: [
          column('id', primary: true),
          for (var i = 0; i < 9; i++) column('fk$i'),
        ],
        relations: [
          for (var i = 0; i < 9; i++) fk('fk$i', root.name, columns: ['fk$i']),
        ],
      );
      final c = await SchemaDiagram.build(
        fixture().copyWith(tables: [root, child]),
        columnLimit: 6,
      );
      addTearDown(c.dispose);
      expect(c.document.elements.whereType<ConnectorElement>(), hasLength(9));
      expect(
        c.document.elements.whereType<ConnectorElement>().map(
          (e) => (e.start as BoundEndpoint).portId,
        ),
        everyElement(isNotNull),
      );
    },
  );
  test('composite keys, self-relations and partial unique indexes preserve cardinality', () async {
    final self = table(
      'public.self',
      columns: [column('id', primary: true), column('other', primary: true)],
      relations: [
        fk('self', 'public.self', columns: ['id']),
      ],
    );
    final c = await SchemaDiagram.build(
      fixture().copyWith(tables: [self]),
      detailLevel: SchemaDetailLevel.keys,
    );
    addTearDown(c.dispose);
    expect(
      c.document.elements
          .whereType<ConnectorElement>()
          .single
          .labels
          .first
          .story
          .plainText,
      '0..N',
    );
  });
  test('model paths reject traversal, URLs and absolute paths', () {
    expect(isSafeModelPath('lib/src/models/order.spy.yaml'), isTrue);
    for (final path in [
      '../order.spy.yaml',
      '/etc/order.spy.yaml',
      'https://host/order.spy.yaml',
      'lib\\order.spy.yaml',
      'lib//order.spy.yaml',
      'lib/./order.spy.yaml',
      'order.sql',
    ]) {
      expect(isSafeModelPath(path), isFalse, reason: path);
    }
  });
  test('view storage isolates accounts and returns detached data', () async {
    final store = MemorySchemaViewStore();
    await store.write('project/alice', {
      'positions': {
        'public.orders': [10, 20],
      },
    });
    expect(await store.read('project/bob'), isNull);
    final a = await store.read('project/alice');
    a!['positions'] = {};
    expect((await store.read('project/alice'))!['positions'], {
      'public.orders': [10, 20],
    });
  });
}
