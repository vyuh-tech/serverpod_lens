import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';
import '../schema/host_schema_source.dart';

/// Authenticated, read-only access to this host's resolved target schema.
class SchemaEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  @override
  Set<Scope> get requiredScopes => {HostSchemaSource.readScope};

  Future<SchemaSnapshot> snapshot(
    Session session, {
    required String projectId,
    String? knownRevision,
  }) async {
    if (projectId != HostSchemaSource.projectId) {
      throw SchemaAccessException(message: 'Project access denied.');
    }
    return HostSchemaSource.read(
      session.db.analyzer.getTargetTableDefinitions(),
      knownRevision: knownRevision,
    );
  }
}
