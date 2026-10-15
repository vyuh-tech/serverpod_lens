import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

SchemaColumn field(String name, {bool nullable = false, bool unique = false}) =>
    SchemaColumn(
      name: name,
      fieldName: name,
      dartType: 'int',
      dbType: 'bigint',
      isNullable: nullable,
      isPrimaryKey: false,
      isUnique: unique,
    );

void main() {
  test(
    'optional composite foreign keys bind every actual field pair',
    () async {
      const key = SchemaForeignKey(
        name: 'owner',
        columns: ['tenantId', 'ownerId'],
        refTable: 'identity.people',
        refColumns: ['tenant', 'person'],
        onDelete: 'cascade',
        onUpdate: 'noAction',
      );
      final child = SchemaTable(
        name: 'public.records',
        className: 'Record',
        schema: 'public',
        module: 'app',
        columns: [field('tenantId'), field('ownerId', nullable: true)],
        foreignKeys: [key],
        indexes: [],
      );
      final parent = SchemaTable(
        name: 'identity.people',
        className: 'Person',
        schema: 'identity',
        module: 'app',
        columns: [field('tenant'), field('person')],
        foreignKeys: [],
        indexes: [],
      );
      final graph = SchemaGraph(
        source: 'composite',
        generatedAt: DateTime.utc(2026),
        modules: [],
        tables: [child, parent],
        enums: [],
      );
      final controller = await SchemaDiagram.build(graph);
      addTearDown(controller.dispose);
      final edges = controller.document.elements
          .whereType<ConnectorElement>()
          .toList();
      expect(edges, hasLength(2));
      expect(
        edges.map((edge) => (edge.start as BoundEndpoint).portId).toSet(),
        {'public.records::tenantId::r', 'public.records::ownerId::r'},
      );
      expect(edges.map((edge) => (edge.end as BoundEndpoint).portId).toSet(), {
        'identity.people::tenant::l',
        'identity.people::person::l',
      });
      expect(
        edges.first.labels.map((label) => label.story.plainText),
        containsAll(['0..N', '0..1']),
      );
    },
  );
}
