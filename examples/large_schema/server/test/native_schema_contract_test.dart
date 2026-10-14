import 'dart:convert';
import 'package:serverpod/protocol.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart' as plain;
import 'package:serverpod_lens_server/src/schema/host_schema_source.dart';
import 'package:test/test.dart';

void main() {
  test(
    'every installed Serverpod column type survives the native contract',
    () {
      final target = TableDefinition(
        name: 'all_types',
        schema: 'tenant',
        module: 'my_app',
        columns: [
          for (final type in ColumnType.values)
            ColumnDefinition(
              name: type.name,
              columnType: type,
              isNullable: type.index.isEven,
              dartType: 'Custom${type.name}',
              vectorDimension: type == ColumnType.vector ? 1536 : null,
            ),
        ],
        indexes: [],
        foreignKeys: [],
      );
      final transported = HostSchemaSource.read([target]).graph!.tables.single;
      final viewer = plain.SchemaGraph.fromJson(
        HostSchemaSource.read([target]).graph!.toJson(),
      ).tables.single;
      expect(viewer.columns.length, ColumnType.values.length);
      for (var i = 0; i < ColumnType.values.length; i++) {
        expect(viewer.columns[i].name, ColumnType.values[i].name);
        expect(viewer.columns[i].isNullable, i.isEven);
        expect(
          viewer.columns[i].dartType,
          'Custom${ColumnType.values[i].name}',
        );
        if (ColumnType.values[i] != ColumnType.unknown) {
          expect(viewer.columns[i].dbType, isNot('unknown'));
        }
      }
      expect(jsonDecode(transported.definition!), target.toJson());
      expect(viewer.definition, transported.definition);
    },
  );
  test('all native foreign key actions survive with qualified targets', () {
    final target = TableDefinition(
      name: 'links',
      schema: 'public',
      columns: [],
      indexes: [],
      foreignKeys: [
        for (final action in ForeignKeyAction.values)
          ForeignKeyDefinition(
            constraintName: action.name,
            columns: ['owner'],
            referenceTable: 'users',
            referenceTableSchema: 'identity',
            referenceColumns: ['id'],
            onDelete: action,
            onUpdate: action,
          ),
      ],
    );
    final graph = HostSchemaSource.read([target]).graph!;
    expect(
      graph.tables.single.foreignKeys.map((key) => key.onDelete),
      ForeignKeyAction.values.map((action) => action.name),
    );
    expect(
      graph.tables.single.foreignKeys.map((key) => key.onUpdate),
      ForeignKeyAction.values.map((action) => action.name),
    );
    expect(
      graph.tables.single.foreignKeys.every(
        (key) => key.refTable == 'identity.users',
      ),
      isTrue,
    );
  });
  test(
    'explicit composite primary keys do not falsely mark an unrelated id',
    () {
      final raw = {
        'tables': [
          {
            'name': 'records',
            'columns': [
              for (final name in ['id', 'tenant', 'code'])
                {'name': name, 'columnType': 0},
            ],
            'indexes': [
              {
                'indexName': 'pk',
                'isPrimary': true,
                'isUnique': true,
                'elements': [
                  {'definition': 'tenant'},
                  {'definition': 'code'},
                ],
              },
            ],
          },
        ],
      };
      final graph = plain.SchemaGraph.fromJson(
        plain.SchemaDefinitionReader.read(jsonEncode(raw), source: 'composite'),
      );
      expect(
        graph.tables.single.columns
            .where((column) => column.isPrimaryKey)
            .map((column) => column.name),
        ['tenant', 'code'],
      );
    },
  );
  test('advanced and future schema metadata is retained losslessly', () {
    final definition = {
      'tables': [
        {
          'name': 'embeddings',
          'schema': 'public',
          'module': 'project',
          'managed': true,
          'tableSpace': 'custom',
          'columns': [
            {
              'name': 'embedding',
              'columnType': ColumnType.vector.index,
              'vectorDimension': 1536,
            },
          ],
          'indexes': [
            {
              'indexName': 'nearest',
              'elements': [
                {'type': 0, 'definition': 'embedding'},
              ],
              'type': 'hnsw',
              'isUnique': false,
              'isPrimary': false,
              'vectorDistanceFunction': 1,
              'parameters': {'m': '16'},
              'nullsDistinct': false,
            },
          ],
          'foreignKeys': [
            {
              'constraintName': 'composite',
              'columns': ['tenant', 'owner'],
              'referenceTable': 'users',
              'referenceTableSchema': 'identity',
              'referenceColumns': ['tenant', 'id'],
              'matchType': 1,
              'deferrable': 1,
            },
          ],
          'futureAttribute': {'value': 'retained'},
        },
      ],
    };
    final graph = plain.SchemaGraph.fromJson(
      plain.SchemaDefinitionReader.read(
        jsonEncode(definition),
        source: 'own project',
      ),
    );
    final table = graph.tables.single;
    expect(
      jsonDecode(table.definition!),
      (definition['tables'] as List).single,
    );
    expect(table.columns.single.dbType, 'vector(1536)');
    expect(table.indexes.single.type, 'hnsw');
    expect(table.foreignKeys.single.refTable, 'identity.users');
    expect(table.copyWith(name: 'public.copy').definition, table.definition);
  });
}
