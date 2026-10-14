import 'dart:convert';

import 'package:crypto/crypto.dart';

import 'schema_graph.dart';
import 'schema_definition_reader.dart';

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

  LensSchemaSnapshot read(
    List<Map<String, dynamic>> tables, {
    String? knownRevision,
    Map<String, String> sourcePaths = const {},
    Map<String, String> modelSources = const {},
  }) {
    // A module can be included both directly and through another module (for
    // example auth_core through auth_idp). Generated targets then repeat the
    // same table. A diagram must receive one node per database identity.
    final unique = <(String, String), Map<String, dynamic>>{};
    for (final table in tables) {
      final schema = table['schema'] as String? ?? 'public';
      final name = table['name'];
      if (name is! String || name.isEmpty) {
        throw const FormatException('Resolved table name is missing');
      }
      final identity = (schema, name);
      final existing = unique[identity];
      if (existing != null &&
          jsonEncode(_canonical(existing)) != jsonEncode(_canonical(table))) {
        throw StateError('Conflicting target definitions for $identity');
      }
      unique[identity] = Map<String, dynamic>.from(table);
    }
    final definitions = unique.values.toList()
      ..sort(
        (a, b) => "${a['schema'] ?? 'public'}.${a['name']}".compareTo(
          "${b['schema'] ?? 'public'}.${b['name']}",
        ),
      );
    final definition = jsonEncode(_canonical({'tables': definitions}));
    final identities = {
      for (final table in definitions)
        "${table['schema'] ?? 'public'}.${table['name']}",
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
  factory LensSchemaSnapshot.fromJson(Map<String, dynamic> value) {
    final project = value['projectId'];
    final kind = value['sourceKind'];
    final revision = value['revision'];
    final checked = value['checkedAt'];
    if (project is! String ||
        kind is! String ||
        revision is! String ||
        checked is! String) {
      throw const FormatException('Invalid snapshot metadata');
    }
    final time = DateTime.tryParse(checked);
    if (time == null) {
      throw const FormatException('Invalid snapshot check time');
    }
    final raw = value['graph'];
    if (raw != null && raw is! Map) {
      throw const FormatException('Invalid snapshot graph');
    }
    return LensSchemaSnapshot(
      projectId: project,
      sourceKind: kind,
      revision: revision,
      checkedAt: time,
      graph: raw == null
          ? null
          : SchemaGraph.fromJson(Map<String, dynamic>.from(raw as Map)),
      sourcePaths: value['sourcePaths'] == null
          ? null
          : Map<String, String>.from(value['sourcePaths'] as Map),
      modelSources: value['modelSources'] == null
          ? null
          : Map<String, String>.from(value['modelSources'] as Map),
    );
  }
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

// Object key order is irrelevant to a resolved definition; array order remains meaningful.
Object? _canonical(Object? value) {
  if (value is Map) {
    final keys = value.keys.cast<String>().toList()..sort();
    return {for (final key in keys) key: _canonical(value[key])};
  }
  if (value is List) return value.map(_canonical).toList();
  return value;
}

/// One snapshot policy for local and hosted delivery. Application records and auth
/// policy are outside this module. Invalid updates leave the last state intact.
final class LensSnapshotState {
  LensSnapshotState({this.expectedProjectId});
  final String? expectedProjectId;
  SchemaGraph? _graph;
  Map<String, String> _paths = const {};
  Map<String, String> _sources = const {};
  String? _project;
  String? _revision;
  DateTime? _checkedAt;
  SchemaGraph? get graph => _graph;
  Map<String, String> get sourcePaths => _paths;
  Map<String, String> get modelSources => _sources;
  String? get projectId => _project;
  String? get revision => _revision;
  DateTime? get checkedAt => _checkedAt;

  void accept(LensSchemaSnapshot snapshot) {
    if (snapshot.projectId.isEmpty ||
        snapshot.sourceKind != 'currentTarget' ||
        snapshot.revision.isEmpty ||
        (expectedProjectId != null &&
            snapshot.projectId != expectedProjectId) ||
        (_project != null && snapshot.projectId != _project) ||
        (snapshot.graph == null &&
            (_graph == null || _revision != snapshot.revision))) {
      throw const FormatException('Invalid schema snapshot');
    }
    if (snapshot.graph != null && _revision != snapshot.revision) {
      _graph = snapshot.graph;
      _paths = Map.unmodifiable(snapshot.sourcePaths ?? {});
      _sources = Map.unmodifiable(snapshot.modelSources ?? {});
    }
    _project = snapshot.projectId;
    _revision = snapshot.revision;
    _checkedAt = snapshot.checkedAt;
  }

  void clear() {
    _graph = null;
    _paths = const {};
    _sources = const {};
    _project = null;
    _revision = null;
    _checkedAt = null;
  }
}
