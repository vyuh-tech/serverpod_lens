import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod/protocol.dart' show TableDefinition;

import '../generated/protocol.dart';
import 'schema_extractor.dart';

/// This deployment exposes only its own generated target, never a client path.
abstract final class HostSchemaSource {
  static const projectId = 'serverpod_lens';
  static const readScope = Scope('schema:read:serverpod_lens');

  static SchemaSnapshot read(
    List<TableDefinition> tables, {
    String? knownRevision,
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
    final revision = sha256.convert(utf8.encode(definition)).toString();
    return SchemaSnapshot(
      projectId: projectId,
      sourceKind: 'currentTarget',
      revision: revision,
      checkedAt: DateTime.now().toUtc(),
      graph: revision == knownRevision
          ? null
          : SchemaExtractor.fromDefinitionJson(
              definition,
              source: '$projectId · Current target',
            ),
    );
  }
}
