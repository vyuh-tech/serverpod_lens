import 'dart:convert';
import 'dart:io';

import 'package:serverpod_lens_schema/io.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:shop_server/src/generated/protocol.dart';
import 'package:test/test.dart';

void main() {
  late LensSchemaSnapshot snapshot;
  late Map<String, SchemaTable> tables;

  setUpAll(() {
    final models = ModelSourceIndex().read();
    snapshot = LensSchemaSource(projectId: 'shop').read(
      Protocol()
          .getTargetTableDefinitions()
          .map((table) => table.toJson())
          .toList(),
      sourcePaths: models.paths,
      modelSources: models.sources,
    );
    tables = {for (final table in snapshot.graph!.tables) table.name: table};
  });

  SchemaTable table(String name) => tables['public.shop_$name']!;
  SchemaColumn column(String name) =>
      table('records').columns.singleWhere((column) => column.name == name);

  test(
    'inherited fields, UUID v7 IDs, defaults and column overrides survive',
    () {
      expect(column('id').dbType, 'uuid');
      expect(column('id').isPrimaryKey, isTrue);
      expect(column('id').defaultValue, 'random_v7');
      expect(column('createdAt').dbType, 'timestamp');
      expect(column('createdAt').defaultValue, 'now');
      expect(column('enabled').defaultValue, 'true');
      expect(column('display_name').isUnique, isTrue);
      expect(table('records').indexes.single.columns, ['display_name']);
      // The native target exposes the database name, not its Dart alias.
      expect(
        snapshot.modelSources![table('records').name],
        contains('column=display_name'),
      );
      expect(
        tables.values.any((table) => table.className == 'ShopAuditBase'),
        isFalse,
      );
    },
  );

  test(
    'both enum encodings retain their model types and storage semantics',
    () {
      expect(column('state').dartType, 'protocol:ShopState');
      expect(column('state').dbType, 'text');
      expect(column('state').defaultValue, "'draft'");
      expect(column('priority').dartType, 'protocol:ShopPriority');
      expect(column('priority').dbType, 'bigint');
      // A server database target has enum column types, not an enum catalogue.
      expect(snapshot.graph!.enums, isEmpty);
      expect(
        tables.values.any((table) => table.className == 'ShopState'),
        isFalse,
      );
    },
  );

  test('collections, records and nested models remain typed JSON columns', () {
    for (final name in [
      'labels',
      'flags',
      'attributes',
      'lookup',
      'coordinates',
      'payload',
      'optionalPayload',
    ]) {
      expect(column(name).dbType, 'jsonb', reason: name);
    }
    expect(column('labels').dartType, 'List<String>');
    expect(column('flags').dartType, 'Set<int>');
    expect(column('lookup').dartType, 'Map<int,String>');
    expect(column('coordinates').dartType, '(double, double,)');
    expect(column('payload').dartType, 'protocol:ShopPayload');
    expect(column('optionalPayload').isNullable, isTrue);
    expect(column('payload').isNullable, isFalse);
    expect(column('legacyPayload').dbType, 'json');
    expect(
      tables.values.any((table) => table.className == 'ShopPayload'),
      isFalse,
    );
    expect(column('secret').isNullable, isTrue);
    expect(
      table('records').columns.any((column) => column.name == 'transient'),
      isFalse,
    );
  });

  test(
    'scalar, vector and geography field types come from the real generator',
    () {
      const types = {
        'itemCount': 'bigint',
        'amount': 'double',
        'elapsed': 'bigint',
        'website': 'text',
        'largeNumber': 'text',
        'bytes': 'bytea',
        'embedding': 'vector(3)',
        'compactEmbedding': 'halfvec(3)',
        'sparseEmbedding': 'sparsevec(3)',
        'mask': 'bit(8)',
        'location': 'geography',
        'route': 'geographyLineString',
        'area': 'geographyPolygon',
        'geometry': 'geographyGeometryCollection',
      };
      for (final entry in types.entries) {
        expect(column(entry.key).dbType, entry.value, reason: entry.key);
      }
      expect(column('embedding').isNullable, isTrue);
      expect(table('customers').columns.first.dbType, 'bigint');
      expect(table('customers').columns.first.defaultValue, 'serial');
    },
  );

  test(
    'object, one-to-one and implicit reverse relations resolve to actual FKs',
    () {
      final members = table('members');
      final team = members.foreignKeys.singleWhere(
        (key) => key.refTable == table('teams').name,
      );
      expect(team.columns, ['teamId']);
      expect(team.onDelete, 'cascade');
      expect(
        members.columns
            .singleWhere((column) => column.name == 'profileId')
            .isUnique,
        isTrue,
      );
      expect(members.columns.any((column) => column.name == 'team'), isFalse);
      expect(
        table('teams').columns.any((column) => column.name == 'members'),
        isFalse,
      );
      final bins = table('bins');
      final hidden = bins.foreignKeys.single;
      expect(hidden.refTable, table('warehouses').name);
      expect(hidden.columns.single, startsWith('_'));
      expect(
        bins.columns.any((column) => column.name == hidden.columns.single),
        isTrue,
      );
      expect(
        snapshot.modelSources![bins.name],
        isNot(contains(hidden.columns.single)),
      );
    },
  );

  test(
    'self and junction relations keep endpoints and compound uniqueness',
    () {
      final category = table('categories');
      expect(category.foreignKeys.single.refTable, category.name);
      expect(
        category.columns
            .singleWhere((column) => column.name == 'parentId')
            .isNullable,
        isTrue,
      );
      final junction = table('product_tags');
      expect(junction.foreignKeys.map((key) => key.refTable).toSet(), {
        table('products').name,
        table('tags').name,
      });
      expect(
        junction.foreignKeys.every((key) => key.onDelete == 'cascade'),
        isTrue,
      );
      expect(junction.indexes.single.unique, isTrue);
      expect(junction.indexes.single.columns, ['productId', 'tagId']);
      expect(junction.columns.where((column) => column.isUnique), isEmpty);
    },
  );

  test('client-only models stay outside server graph and source mappings', () {
    final models = ModelSourceIndex().read();
    expect(models.paths, contains('public.shop_client_drafts'));
    expect(tables, isNot(contains('public.shop_client_drafts')));
    expect(snapshot.sourcePaths, isNot(contains('public.shop_client_drafts')));
    expect(snapshot.modelSources, isNot(contains('public.shop_client_drafts')));
    expect(tables, contains('public.shop_shared_preferences'));
    expect(snapshot.sourcePaths, hasLength(14));
  });

  test('every generated server column and FK reaches Lens without dangling endpoints', () {
    for (final native in Protocol().getTargetTableDefinitions()) {
      final resolved = tables['${native.schema}.${native.name}']!;
      expect(
        resolved.columns.map((column) => column.name),
        native.columns.map((column) => column.name),
      );
      expect(resolved.foreignKeys, hasLength(native.foreignKeys.length));
      for (final key in resolved.foreignKeys) {
        expect(
          resolved.columns.map((column) => column.name),
          containsAll(key.columns),
        );
        expect(tables, contains(key.refTable));
        expect(
          tables[key.refTable]!.columns.map((column) => column.name),
          containsAll(key.refColumns),
        );
      }
      expect(jsonDecode(resolved.definition!), native.toJson());
    }
    expect(
      SchemaGraph.fromJson(
        jsonDecode(jsonEncode(snapshot.graph!.toJson()))
            as Map<String, dynamic>,
      ).toJson(),
      snapshot.graph!.toJson(),
    );
  });

  test('migration and runtime targets describe the same database storage', () {
    final migrations =
        Directory('migrations').listSync().whereType<Directory>().toList()
          ..sort((a, b) => a.path.compareTo(b.path));
    final definition = jsonDecode(
      File('${migrations.last.path}/definition.json').readAsStringSync(),
    ) as Map<String, dynamic>;
    final migrated = SchemaExtractor.fromDefinitionJson(
      jsonEncode(definition),
      source: 'migration',
    );
    Map<String, dynamic> storage(SchemaTable table) => table.toJson()
      ..remove('definition')
      ..['columns'] = [
        for (final column in table.columns)
          column.toJson()..remove('fieldName'),
      ];
    expect(
      migrated.tables.map((table) => table.name).toSet(),
      tables.keys.toSet(),
    );
    for (final table in migrated.tables) {
      expect(storage(table), storage(tables[table.name]!), reason: table.name);
    }
    final alias = migrated.tables
        .singleWhere((table) => table.name == 'public.shop_records')
        .columns
        .singleWhere((column) => column.name == 'display_name');
    expect(alias.fieldName, 'displayName');
    expect(column('display_name').fieldName, 'display_name');
  });
}
