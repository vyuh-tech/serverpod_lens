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
