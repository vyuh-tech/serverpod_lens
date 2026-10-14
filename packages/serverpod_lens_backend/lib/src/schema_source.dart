import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart'
    show isSafeModelPath, SchemaDefinitionReader, SchemaGraph;
import 'package:serverpod/serverpod.dart';
import 'package:serverpod/protocol.dart' show TableDefinition;

/// This deployment exposes only its own generated target, never a client path.
final class LensSchemaSource {
  LensSchemaSource({required this.projectId}) {
    if (!RegExp(r'^[a-z][a-z0-9_]{0,63}$').hasMatch(projectId)) {
      throw ArgumentError.value(
        projectId,
        'projectId',
        'Use a stable lowercase project identity',
      );
    }
  }
  final String projectId;
  Scope get readScope => Scope('schema:read:$projectId');

  LensSchemaSnapshot read(
    List<TableDefinition> tables, {
    String? knownRevision,
    Map<String, String> sourcePaths = const {},
    Map<String, String> modelSources = const {},
  }) {
    // A module can be included both directly and through another module (for
    // example auth_core through auth_idp). Generated targets then repeat the
    // same table. A diagram must receive one node per database identity.
    final unique = <(String, String), TableDefinition>{};
    for (final table in tables) {
      final identity = (table.schema, table.name);
      final existing = unique[identity];
      if (existing != null && jsonEncode(existing) != jsonEncode(table)) {
        throw StateError('Conflicting target definitions for $identity');
      }
      unique[identity] = table;
    }
    final definitions = unique.values.toList()
      ..sort(
        (a, b) => '${a.schema}.${a.name}'.compareTo('${b.schema}.${b.name}'),
      );
    final definition = jsonEncode({'tables': definitions});
    final identities = {
      for (final table in definitions) '${table.schema}.${table.name}',
    };
    final paths = Map.fromEntries(
      sourcePaths.entries
          .where(
            (entry) =>
                identities.contains(entry.key) && isSafeModelPath(entry.value),
          )
          .toList()
        ..sort((a, b) => a.key.compareTo(b.key)),
    );
    final sources = Map.fromEntries(
      modelSources.entries
          .where((entry) => paths.containsKey(entry.key))
          .toList()
        ..sort((a, b) => a.key.compareTo(b.key)),
    );
    final revision = sha256
        .convert(
          utf8.encode(
            jsonEncode([
              SchemaDefinitionReader.contractRevision,
              definition,
              paths,
              sources,
            ]),
          ),
        )
        .toString();
    return LensSchemaSnapshot(
      projectId: projectId,
      sourceKind: 'currentTarget',
      revision: revision,
      checkedAt: DateTime.now().toUtc(),
      sourcePaths: revision == knownRevision ? null : paths,
      modelSources: revision == knownRevision ? null : sources,
      graph: revision == knownRevision
          ? null
          : SchemaGraph.fromJson(
              SchemaDefinitionReader.read(
                definition,
                source: '$projectId · Current target',
              ),
            ),
    );
  }
}

/// Transport-neutral snapshot; hosts choose generated DTOs or JSON delivery.
final class LensSchemaSnapshot {
  const LensSchemaSnapshot({
    required this.projectId,
    required this.sourceKind,
    required this.revision,
    required this.checkedAt,
    this.sourcePaths,
    this.modelSources,
    this.graph,
  });
  final String projectId;
  final String sourceKind;
  final String revision;
  final DateTime checkedAt;
  final Map<String, String>? sourcePaths;
  final Map<String, String>? modelSources;
  final SchemaGraph? graph;
  Map<String, dynamic> toJson() => {
    'projectId': projectId,
    'sourceKind': sourceKind,
    'revision': revision,
    'checkedAt': checkedAt.toIso8601String(),
    if (sourcePaths != null) 'sourcePaths': sourcePaths,
    if (modelSources != null) 'modelSources': modelSources,
    if (graph != null) 'graph': graph!.toJson(),
  };
}
