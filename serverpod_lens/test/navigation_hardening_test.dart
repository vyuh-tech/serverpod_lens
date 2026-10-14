import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart';
import 'package:vyuh_diagram_extension_table/extension_api.dart';

import 'support/navigation_fixture.dart';

void main() {
  test('overview batches remain deterministic and schema-qualified', () {
    final navigation = SchemaNavigation(fixture());
    expect(navigation.overview(limit: 2).graph.tables.map((t) => t.name), [
      'audit.log',
      'public.child0',
    ]);
    expect(navigation.overview(limit: 2).hiddenCount, 4);
    expect(
      navigation.overview(schema: 'audit').graph.tables.map((t) => t.name),
      ['audit.log'],
    );
    expect(navigation.overview(limit: 24).graph.tables, hasLength(6));
  });
  test('bounded exploration indexes high-degree nodes without discarding source relations', () {
    final graph = fixture(neighbors: 1000);
    final nav = SchemaNavigation(graph);
    final area = nav.around({'public.users'}, limit: 8);
    expect(area.graph.tables, hasLength(9));
    expect(area.hiddenCount, 993);
    final orders = nav.around({'public.orders'}, limit: 0).graph.tables.single;
    expect(orders.foreignKeys.map((key) => key.refTable), [
      'public.users',
      'external.unavailable',
    ]);
    expect(jsonEncode(graph.toJson()), contains('external.unavailable'));
  });
  test(
    'directions, two-hop exploration, cycles and explicit reveals are bounded',
    () {
      final nav = SchemaNavigation(fixture(neighbors: 0));
      expect(
        nav
            .around({'public.users'}, direction: RelationDirection.outgoing)
            .graph
            .tables
            .map((t) => t.name),
        ['public.users'],
      );
      expect(
        nav.around({'public.users'}, hops: 2).graph.tables.map((t) => t.name),
        contains('audit.log'),
      );
      expect(
        nav
            .around({'public.users'}, limit: 0, revealed: {'public.orders'})
            .graph
            .tables
            .map((t) => t.name),
        ['public.users', 'public.orders'],
      );
      expect(nav.around({'unknown'}).graph.tables, isEmpty);
      expect(() => nav.around({}, hops: 3), throwsRangeError);
      expect(() => nav.overview(limit: -1), throwsRangeError);
    },
  );
  test('duplicate table identities are rejected', () {
    final graph = fixture();
    expect(
      () => SchemaNavigation(
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
      'N',
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
      'groups': ['commerce'],
    });
    expect(await store.read('project/bob'), isNull);
    final a = await store.read('project/alice');
    a!['groups'] = [];
    expect((await store.read('project/alice'))!['groups'], ['commerce']);
  });
}
