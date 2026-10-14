import 'package:serverpod/protocol.dart';
import 'package:serverpod_lens_backend/serverpod_lens_backend.dart';
import 'package:test/test.dart';

TableDefinition table({String name = 'customers', String schema = 'public'}) =>
    TableDefinition(
      name: name,
      schema: schema,
      module: 'shop',
      columns: [
        ColumnDefinition(
          name: 'id',
          columnType: ColumnType.bigint,
          isNullable: false,
        ),
      ],
      foreignKeys: [],
      indexes: [],
    );
void main() {
  test('one extraction interface serves distinct hosts and identities', () {
    for (final project in ['shop', 'large_schema']) {
      final source = LensSchemaSource(projectId: project);
      final result = source.read([table()]);
      expect(result.projectId, project);
      expect(source.readScope.toString(), contains(project));
      expect(result.graph!.tables.single.name, 'public.customers');
      expect(result.toJson()['graph'], isA<Map<String, dynamic>>());
    }
  });
  test('unchanged revisions omit graph and source payloads', () {
    final source = LensSchemaSource(projectId: 'shop');
    final first = source.read(
      [table()],
      sourcePaths: {'public.customers': 'lib/src/models/customer.spy.yaml'},
      modelSources: {'public.customers': 'class: Customer'},
    );
    final second = source.read(
      [table()],
      knownRevision: first.revision,
      sourcePaths: {'public.customers': 'lib/src/models/customer.spy.yaml'},
      modelSources: {'public.customers': 'class: Customer'},
    );
    expect(second.revision, first.revision);
    expect(second.graph, isNull);
    expect(second.modelSources, isNull);
    final changed = source.read([table(name: 'orders')]);
    expect(changed.revision, isNot(first.revision));
  });
  test(
    'module duplication is deduplicated and schema identities remain distinct',
    () {
      final result = LensSchemaSource(projectId: 'shop')
          .read([table(), table(), table(schema: 'tenant')]);
      expect(result.graph!.tables.length, 2);
      expect(
        result.graph!.tables.map((table) => table.name),
        containsAll(['public.customers', 'tenant.customers']),
      );
    },
  );
  test('host identity and unsafe source paths are rejected', () {
    expect(() => LensSchemaSource(projectId: '../secret'), throwsArgumentError);
    final result = LensSchemaSource(projectId: 'shop').read(
      [table()],
      sourcePaths: {'public.customers': '../secret'},
      modelSources: {'public.customers': 'private'},
    );
    expect(result.sourcePaths, isEmpty);
    expect(result.modelSources, isEmpty);
  });
}
