import 'package:serverpod/serverpod.dart';
import 'package:serverpod/protocol.dart' show TableDefinition;
import 'package:serverpod_lens_backend/serverpod_lens_backend.dart';
import '../generated/protocol.dart';

/// Example transport adapter; reusable extraction lives in Lens's backend package.
abstract final class HostSchemaSource {
  static const projectId = 'serverpod_lens';
  static const readScope = Scope('schema:read:serverpod_lens');
  static final _source = LensSchemaSource(projectId: projectId);
  static SchemaSnapshot read(
    List<TableDefinition> tables, {
    String? knownRevision,
    Map<String, String> sourcePaths = const {},
    Map<String, String> modelSources = const {},
  }) => SchemaSnapshot.fromJson(
    _source
        .read(
          tables,
          knownRevision: knownRevision,
          sourcePaths: sourcePaths,
          modelSources: modelSources,
        )
        .toJson(),
  );
}
