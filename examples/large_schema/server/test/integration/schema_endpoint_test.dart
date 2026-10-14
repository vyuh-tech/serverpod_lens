import 'package:serverpod/serverpod.dart';
import 'package:serverpod_lens_server/src/generated/protocol.dart';
import 'package:serverpod_lens_server/src/schema/host_schema_source.dart';
import 'package:test/test.dart';

import 'test_tools/serverpod_test_tools.dart';

void main() {
  withServerpod('Protected current-target schema', (sessionBuilder, endpoints) {
    const project = HostSchemaSource.projectId;
    final alice = sessionBuilder.copyWith(
      authentication: AuthenticationOverride.authenticationInfo(
        '00000000-0000-4000-8000-000000000001',
        {HostSchemaSource.readScope},
      ),
    );

    test('signed-out users cannot read the schema', () async {
      await expectLater(
        endpoints.schema.snapshot(sessionBuilder, projectId: project),
        throwsA(isA<ServerpodUnauthenticatedException>()),
      );
    });

    test('a signed-in account without the host scope is denied', () async {
      final bob = sessionBuilder.copyWith(
        authentication: AuthenticationOverride.authenticationInfo(
          '00000000-0000-4000-8000-000000000002',
          {const Scope('schema:read:another_project')},
        ),
      );
      await expectLater(
        endpoints.schema.snapshot(
          bob,
          projectId: project,
          knownRevision: 'any',
        ),
        throwsA(isA<ServerpodInsufficientAccessException>()),
      );
    });

    test(
      'authorized requests include project, auth and framework tables',
      () async {
        final snapshot = await endpoints.schema.snapshot(
          alice,
          projectId: project,
        );
        expect(snapshot.sourceKind, 'currentTarget');
        expect(snapshot.projectId, project);
        expect(snapshot.revision, hasLength(64));
        expect(snapshot.graph!.tables.length, greaterThan(122));
        expect(
          snapshot.graph!.tables.map((table) => table.name).toSet(),
          hasLength(snapshot.graph!.tables.length),
          reason: 'Every target table must map to exactly one diagram node',
        );
        expect(
          snapshot.graph!.tables.any((t) => t.module == 'serverpod_auth_core'),
          isTrue,
        );
        expect(
          snapshot.graph!.tables.any((t) => t.module == 'serverpod'),
          isTrue,
        );
      },
    );

    test('refresh returns unchanged without resending graph content', () async {
      final first = await endpoints.schema.snapshot(alice, projectId: project);
      final next = await endpoints.schema.snapshot(
        alice,
        projectId: project,
        knownRevision: first.revision,
      );
      expect(next.revision, first.revision);
      expect(next.graph, isNull);
      expect(next.checkedAt.isBefore(first.checkedAt), isFalse);
    });

    test(
      'authorized users cannot select other projects or filesystem paths',
      () async {
        for (final id in [
          'another_project',
          '../../config/passwords.yaml',
          '',
        ]) {
          await expectLater(
            endpoints.schema.snapshot(alice, projectId: id),
            throwsA(isA<SchemaAccessException>()),
          );
        }
      },
    );
  });
}
