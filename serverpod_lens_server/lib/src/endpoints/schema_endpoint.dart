import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';
import '../schema/host_schema_source.dart';
import '../schema/model_source_index.dart';

/// Authenticated, read-only access to this host's resolved target schema.
class SchemaEndpoint extends Endpoint {
  final _models = ModelSourceIndex();
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
    final models = _models.read();
    return HostSchemaSource.read(
      session.db.analyzer.getTargetTableDefinitions(),
      knownRevision: knownRevision,
      sourcePaths: models.paths,
      modelSources: models.sources,
    );
  }
}
