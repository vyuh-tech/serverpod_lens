import 'dart:convert';

import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:test/test.dart';

SchemaTable relationTable({
  bool firstNullable = false,
  bool secondNullable = false,
  bool unique = false,
  bool partial = false,
  Object? match,
}) => SchemaTable(
  name: 'public.links',
  className: 'Link',
  schema: 'public',
  module: 'app',
  definition: jsonEncode({
    'foreignKeys': [
      {
        'constraintName': 'fk',
        'matchType': ?match,
        'deferrable': true,
        'initiallyDeferred': true,
      },
    ],
  }),
  columns: [
    for (final (name, nullable) in [
      ('tenant', firstNullable),
      ('owner', secondNullable),
    ])
      SchemaColumn(
        name: name,
        fieldName: name,
        dartType: 'int',
        dbType: 'bigint',
        isNullable: nullable,
        isPrimaryKey: false,
        isUnique: false,
      ),
  ],
  foreignKeys: const [
    SchemaForeignKey(
      name: 'fk',
      columns: ['tenant', 'owner'],
      refTable: 'public.people',
      refColumns: ['tenant', 'id'],
      onDelete: 'cascade',
      onUpdate: 'noAction',
    ),
  ],
  indexes: [
    if (unique)
      SchemaIndex(
        name: 'unique_owner',
        columns: ['owner'],
        unique: true,
        type: 'btree',
        predicate: partial ? 'active' : null,
      ),
  ],
);

void main() {
  test(
    'optional composite matching follows SIMPLE and FULL native semantics',
    () {
      for (final (match, first, second, expected) in [
        (null, false, true, '0..1'),
        (2, false, true, '0..1'),
        (0, false, true, '1'),
        ('full', true, true, '0..1'),
        (1, true, true, '?'),
        ('futureMatch', false, false, '?'),
      ]) {
        final table = relationTable(
          firstNullable: first,
          secondNullable: second,
          match: match,
        );
        expect(
          SchemaRelationshipInfo(table, table.foreignKeys.single).parent,
          expected,
        );
      }
    },
  );
  test(
    'a unique subset bounds reverse cardinality but a partial index does not',
    () {
      for (final partial in [false, true]) {
        final table = relationTable(unique: true, partial: partial);
        expect(
          SchemaRelationshipInfo(table, table.foreignKeys.single).children,
          partial ? '0..N' : '0..1',
        );
      }
    },
  );
  test(
    'optional metadata is cached and unknown attributes remain accessible',
    () {
      final table = relationTable();
      final first = SchemaTableMetadata(table);
      expect(identical(first, SchemaTableMetadata(table)), isTrue);
      expect(first.foreignKey('fk')['deferrable'], isTrue);
      expect(first.foreignKey('missing'), isEmpty);
      expect(
        SchemaTableMetadata(table.copyWith(definition: 'malformed')).definition,
        isEmpty,
      );
      expect(
        SchemaTableMetadata(table.copyWith(definition: '[]')).definition,
        isEmpty,
      );
    },
  );
  test('malformed authored metadata never overrides a native field label', () {
    final graph = SchemaExtractor.fromDefinitionJson(
      jsonEncode({
        'tables': [
          {
            'name': 'items',
            'lensModel': 'invalid',
            'columns': [
              {
                'name': 'item_name',
                'fieldName': 'itemName',
                'columnType': 'text',
              },
            ],
          },
        ],
      }),
      source: 'native',
    );
    expect(graph.tables.single.columns.single.fieldName, 'itemName');
  });
}
