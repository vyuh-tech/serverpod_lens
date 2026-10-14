import 'dart:convert';

import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:test/test.dart';

void main() {
  test('partial unique indexes retain predicates without implying global uniqueness', () {
    final graph = SchemaDefinitionReader.read(
      jsonEncode({
        'tables': [
          {
            'name': 'policy',
            'columns': [
              {'name': 'company', 'columnType': 7},
            ],
            'indexes': [
              {
                'indexName': 'active_company',
                'isUnique': true,
                'predicate': 'is_active',
                'elements': [
                  {'definition': 'company'},
                ],
              },
            ],
          },
        ],
      }),
      source: 'fixture',
    );
    final table = (graph['tables'] as List).single;
    expect(table['columns'].single['isUnique'], false);
    expect(table['indexes'].single['unique'], true);
    expect(table['indexes'].single['predicate'], 'is_active');
  });

  test(
    'qualifies same-named tables and foreign keys across database schemas',
    () {
      final graph = SchemaDefinitionReader.read(
        jsonEncode({
          'tables': [
            {'name': 'users', 'schema': 'public'},
            {
              'name': 'users',
              'schema': 'sso',
              'foreignKeys': [
                {
                  'columns': ['owner'],
                  'referenceTable': 'users',
                  'referenceTableSchema': 'public',
                  'referenceColumns': ['id'],
                },
              ],
            },
          ],
        }),
        source: 'fixture',
      );
      final tables = graph['tables'] as List;
      expect(tables.map((table) => table['name']), [
        'public.users',
        'sso.users',
      ]);
      expect(tables.last['foreignKeys'].single['refTable'], 'public.users');
    },
  );

  test('schema and module stay distinct; framework filtering is explicit', () {
    final definition = jsonEncode({
      'tables': [
        {
          'name': 'users',
          'schema': 'tenant',
          'module': 'accounts',
          'columns': [],
        },
        {
          'name': 'auth_users',
          'schema': 'public',
          'module': 'serverpod_auth_core',
        },
      ],
    });
    final all = SchemaDefinitionReader.read(definition, source: 'test');
    expect((all['tables'] as List).length, 2);
    final own = SchemaDefinitionReader.read(
      definition,
      source: 'test',
      projectOnly: true,
    );
    final table = (own['tables'] as List).single as Map;
    expect(table['schema'], 'tenant');
    expect(table['module'], 'accounts');
    expect((own['modules'] as List).single['name'], 'accounts');
  });

  test('preserves composite and self relations and tolerates malformed enum values', () {
    final definition = jsonEncode({
      'tables': [
        {
          'name': 'node',
          'foreignKeys': [
            {
              'constraintName': 'self',
              'columns': ['tenant', 'parent'],
              'referenceTable': 'node',
              'referenceColumns': ['tenant', 'id'],
              'onDelete': 4,
              'onUpdate': 'restrict',
            },
          ],
        },
      ],
      'enums': [
        {
          'name': 'state',
          'values': ['active', 42, null],
        },
      ],
    });
    final graph = SchemaDefinitionReader.read(definition, source: 'test');
    final relation = (graph['tables'] as List).single['foreignKeys'].single;
    expect(relation['columns'], ['tenant', 'parent']);
    expect(relation['refTable'], 'public.node');
    expect(relation['refColumns'], ['tenant', 'id']);
    expect(relation['onDelete'], 'cascade');
    expect(relation['onUpdate'], 'restrict');
    expect((graph['enums'] as List).single['values'], ['active']);
  });

  test('rejects unrelated JSON instead of treating it as an empty schema', () {
    expect(
      () => SchemaDefinitionReader.read('{}', source: 'test'),
      throwsFormatException,
    );
    expect(
      SchemaDefinitionReader.read('{"tables":[]}', source: 'test')['tables'],
      isEmpty,
    );
  });
}
