import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';

void main() {
  test('preserves resolved types, modules and composite constraints', () {
    final graph = SchemaExtractor.fromDefinitionJson(
      jsonEncode({
        'tables': [
          {
            'name': 'child',
            'module': 'custom_module',
            'schema': 'tenant',
            'columns': [
              for (var i = 0; i < 19; i++)
                {'name': 'c$i', 'columnType': i, 'isNullable': i.isEven},
              {
                'name': 'future',
                'columnType': 'futureType',
                'columnDefault': '42',
              },
            ],
            'indexes': [
              {
                'indexName': 'pair',
                'isUnique': true,
                'elements': [
                  {'definition': 'c0'},
                  {'definition': 'c1'},
                ],
              },
              {
                'indexName': 'single',
                'isUnique': true,
                'elements': [
                  {'definition': 'c2'},
                ],
              },
            ],
            'foreignKeys': [
              {
                'constraintName': 'self',
                'columns': ['c0', 'c1'],
                'referenceTable': 'child',
                'referenceColumns': ['c2', 'c3'],
                'onDelete': 4,
              },
            ],
          },
          {'name': 'framework', 'module': 'serverpod', 'columns': []},
        ],
      }),
      source: 'fixture',
    );
    final table = graph.tables.first;
    expect(graph.tables.length, 2);
    expect(table.module, 'custom_module');
    expect(table.schema, 'tenant');
    expect(table.columns[13].dbType, 'bit');
    expect(table.columns[14].dbType, 'jsonb');
    expect(table.columns[18].dbType, 'geographyGeometryCollection');
    expect(table.columns[0].isUnique, false);
    expect(table.columns[1].isUnique, false);
    expect(table.columns[2].isUnique, true);
    expect(table.columns.last.dbType, 'futureType');
    expect(table.columns.last.defaultValue, '42');
    expect(table.foreignKeys.single.columns, ['c0', 'c1']);
    expect(table.foreignKeys.single.onDelete, 'cascade');
  });
}
