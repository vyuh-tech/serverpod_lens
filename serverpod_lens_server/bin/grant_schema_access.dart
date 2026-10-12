import 'dart:io';

import 'package:serverpod_auth_idp_server/core.dart';
import 'package:serverpod_lens_server/src/generated/serverpod.dart';
import 'package:serverpod_lens_server/src/schema/host_schema_source.dart';

/// An operator-only command using the host's database credentials. No HTTP
/// endpoint can grant access. The user must sign in again after a scope grant.
Future<void> main(List<String> args) async {
  if (args.isEmpty || args.first.startsWith('--')) {
    stderr.writeln(
      'Usage: dart run bin/grant_schema_access.dart <account-uuid> [--mode=development]',
    );
    exitCode = 64;
    return;
  }
  final userId = UuidValue.fromString(args.first);
  final pod = Serverpod(args.skip(1).toList());
  try {
    await pod.withSession((session) async {
      const users = AuthUsers();
      final user = await users.get(session, authUserId: userId);
      await users.update(
        session,
        authUserId: userId,
        scopes: {...user.scopeNames.map(Scope.new), HostSchemaSource.readScope},
      );
      stdout.writeln(
        'Schema access granted. Sign out and sign in again to use it.',
      );
    }, enableLogging: false);
  } finally {
    await pod.shutdown(exitProcess: false);
  }
}
