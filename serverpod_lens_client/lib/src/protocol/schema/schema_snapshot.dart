/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'package:serverpod_lens_client/src/protocol/protocol.dart' as _ixq89rj6;
import '../schema/schema_graph.dart' as _i1epj4g7;

abstract class SchemaSnapshot
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SchemaSnapshot._({
    required this.projectId,
    required this.sourceKind,
    required this.revision,
    required this.checkedAt,
    this.graph,
    this.sourcePaths,
    this.modelSources,
  });

  factory SchemaSnapshot({
    required String projectId,
    required String sourceKind,
    required String revision,
    required DateTime checkedAt,
    _i1epj4g7.SchemaGraph? graph,
    Map<String, String>? sourcePaths,
    Map<String, String>? modelSources,
  }) = _SchemaSnapshotImpl;

  factory SchemaSnapshot.fromJson(Map<String, dynamic> jsonSerialization) {
    return SchemaSnapshot(
      projectId: jsonSerialization['projectId'] as String,
      sourceKind: jsonSerialization['sourceKind'] as String,
      revision: jsonSerialization['revision'] as String,
      checkedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['checkedAt'],
      ),
      graph: jsonSerialization['graph'] == null
          ? null
          : _ixq89rj6.Protocol().deserialize<_i1epj4g7.SchemaGraph>(
              jsonSerialization['graph'],
            ),
      sourcePaths: jsonSerialization['sourcePaths'] == null
          ? null
          : _ixq89rj6.Protocol().deserialize<Map<String, String>>(
              jsonSerialization['sourcePaths'],
            ),
      modelSources: jsonSerialization['modelSources'] == null
          ? null
          : _ixq89rj6.Protocol().deserialize<Map<String, String>>(
              jsonSerialization['modelSources'],
            ),
    );
  }

  String projectId;

  String sourceKind;

  String revision;

  DateTime checkedAt;

  _i1epj4g7.SchemaGraph? graph;

  Map<String, String>? sourcePaths;

  Map<String, String>? modelSources;

  /// Returns a shallow copy of this [SchemaSnapshot]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SchemaSnapshot copyWith({
    String? projectId,
    String? sourceKind,
    String? revision,
    DateTime? checkedAt,
    _i1epj4g7.SchemaGraph? graph,
    Map<String, String>? sourcePaths,
    Map<String, String>? modelSources,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SchemaSnapshot',
      'projectId': projectId,
      'sourceKind': sourceKind,
      'revision': revision,
      'checkedAt': checkedAt.toJson(),
      if (graph != null) 'graph': graph?.toJson(),
      if (sourcePaths != null) 'sourcePaths': sourcePaths?.toJson(),
      if (modelSources != null) 'modelSources': modelSources?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SchemaSnapshot',
      'projectId': projectId,
      'sourceKind': sourceKind,
      'revision': revision,
      'checkedAt': checkedAt.toJson(),
      if (graph != null) 'graph': graph?.toJsonForProtocol(),
      if (sourcePaths != null) 'sourcePaths': sourcePaths?.toJson(),
      if (modelSources != null) 'modelSources': modelSources?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SchemaSnapshotImpl extends SchemaSnapshot {
  _SchemaSnapshotImpl({
    required String projectId,
    required String sourceKind,
    required String revision,
    required DateTime checkedAt,
    _i1epj4g7.SchemaGraph? graph,
    Map<String, String>? sourcePaths,
    Map<String, String>? modelSources,
  }) : super._(
         projectId: projectId,
         sourceKind: sourceKind,
         revision: revision,
         checkedAt: checkedAt,
         graph: graph,
         sourcePaths: sourcePaths,
         modelSources: modelSources,
       );

  /// Returns a shallow copy of this [SchemaSnapshot]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SchemaSnapshot copyWith({
    String? projectId,
    String? sourceKind,
    String? revision,
    DateTime? checkedAt,
    Object? graph = _Undefined,
    Object? sourcePaths = _Undefined,
    Object? modelSources = _Undefined,
  }) {
    return SchemaSnapshot(
      projectId: projectId ?? this.projectId,
      sourceKind: sourceKind ?? this.sourceKind,
      revision: revision ?? this.revision,
      checkedAt: checkedAt ?? this.checkedAt,
      graph: graph is _i1epj4g7.SchemaGraph? ? graph : this.graph?.copyWith(),
      sourcePaths: sourcePaths is Map<String, String>?
          ? sourcePaths
          : this.sourcePaths?.map(
              (
                key0,
                value0,
              ) => MapEntry(
                key0,
                value0,
              ),
            ),
      modelSources: modelSources is Map<String, String>?
          ? modelSources
          : this.modelSources?.map(
              (
                key0,
                value0,
              ) => MapEntry(
                key0,
                value0,
              ),
            ),
    );
  }
}
