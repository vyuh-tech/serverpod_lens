import 'dart:io';

import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_idp_server/core.dart';
import 'package:serverpod_auth_idp_server/providers/email.dart';

import '../schema/host_schema_source.dart';

/// Creates the read-only demonstration identity only when an operator enables it.
/// The password is never bundled with the Flutter app or stored in source.
Future<void> provisionDemoAccount(Serverpod pod) async {
  final password = Platform.environment['LENS_DEMO_PASSWORD'];
  if (password == null || password.isEmpty) return;
  const email = 'test@serverpod-lens.invalid';
  final provider = AuthServices.getIdentityProvider<EmailIdp>();
  await pod.withSession((session) async {
    await session.db.transaction((transaction) async {
      final accounts = await provider.utils.account.listAccounts(
        session,
        email: email,
        transaction: transaction,
      );
      // Never reset passwords or regrant access on subsequent restarts.
      if (accounts.isNotEmpty) return;
      final user = await const AuthUsers().create(
        session,
        scopes: {HostSchemaSource.readScope},
        transaction: transaction,
      );
      await provider.admin.createEmailAuthentication(
        session,
        authUserId: user.id,
        email: email,
        password: password,
        transaction: transaction,
      );
    });
  }, enableLogging: false);
}
