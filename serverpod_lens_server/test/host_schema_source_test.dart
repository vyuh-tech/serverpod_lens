import 'package:serverpod/protocol.dart' show TableDefinition;
import 'package:serverpod_lens_server/src/schema/host_schema_source.dart';
import 'package:test/test.dart';

TableDefinition table(String name) => TableDefinition(
  name: name,
  schema: 'public',
  module: 'example',
  columns: [],
  foreignKeys: [],
  indexes: [],
);

void main() {
  test(
    'source metadata changes revisions without exposing unrelated models',
    () {
      final first = HostSchemaSource.read(
        [table('orders')],
        sourcePaths: {
          'public.orders': 'lib/src/models/order.spy.yaml',
          'private.hidden': 'config/passwords.yaml',
        },
        modelSources: {
          'public.orders': 'class: Order',
          'private.hidden': 'secret',
        },
      );
      expect(first.sourcePaths, {
        'public.orders': 'lib/src/models/order.spy.yaml',
      });
      expect(first.modelSources, {'public.orders': 'class: Order'});
      final changed = HostSchemaSource.read(
        [table('orders')],
        sourcePaths: {'public.orders': 'lib/src/models/order.spy.yaml'},
        modelSources: {'public.orders': 'class: Renamed'},
        knownRevision: first.revision,
      );
      expect(changed.graph, isNotNull);
      expect(changed.revision, isNot(first.revision));
      final unchanged = HostSchemaSource.read(
        [table('orders')],
        sourcePaths: first.sourcePaths!,
        modelSources: first.modelSources!,
        knownRevision: first.revision,
      );
      expect(unchanged.graph, isNull);
      expect(unchanged.sourcePaths, isNull);
      expect(unchanged.modelSources, isNull);
    },
  );

  test('repeated module tables produce one node and a stable revision', () {
    final single = HostSchemaSource.read([table('auth_token')]);
    final repeated = HostSchemaSource.read([
      table('auth_token'),
      table('auth_token'),
    ]);
    expect(repeated.graph!.tables, hasLength(1));
    expect(repeated.revision, single.revision);
  });

  test('revision ignores time and input table ordering', () {
    final first = HostSchemaSource.read([table('a'), table('b')]);
    final second = HostSchemaSource.read([table('b'), table('a')]);
    expect(second.revision, first.revision);
  });

  test('same table names in different schemas remain distinct', () {
    final result = HostSchemaSource.read([
      table('users'),
      table('users').copyWith(schema: 'audit'),
    ]);
    expect(result.graph!.tables.map((t) => t.name), [
      'audit.users',
      'public.users',
    ]);
  });

  test(
    'conflicting definitions fail instead of silently dropping metadata',
    () {
      expect(
        () => HostSchemaSource.read([
          table('users'),
          table('users').copyWith(module: 'conflicting_module'),
        ]),
        throwsStateError,
      );
    },
  );

  test(
    'target changes replace the graph instead of returning a stale match',
    () {
      final first = HostSchemaSource.read([table('removed')]);
      final next = HostSchemaSource.read([
        table('added'),
      ], knownRevision: first.revision);
      expect(next.revision, isNot(first.revision));
      expect(next.graph!.tables.map((t) => t.name), ['public.added']);
    },
  );

  test('a genuinely empty target remains a valid full snapshot', () {
    final result = HostSchemaSource.read([]);
    expect(result.graph, isNotNull);
    expect(result.graph!.tables, isEmpty);
  });
}
