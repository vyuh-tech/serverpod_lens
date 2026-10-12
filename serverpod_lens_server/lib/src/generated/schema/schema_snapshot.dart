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
import 'package:serverpod/serverpod.dart' as _is;
import 'package:serverpod_lens_server/src/generated/protocol.dart' as _ioh8es0p;
import '../schema/schema_graph.dart' as _i1epj4g7;

abstract class SchemaSnapshot
    implements _is.SerializableModel, _is.ProtocolSerialization {
  SchemaSnapshot._({
    required this.projectId,
    required this.sourceKind,
    required this.revision,
    required this.checkedAt,
    this.graph,
  });

  factory SchemaSnapshot({
    required String projectId,
    required String sourceKind,
    required String revision,
    required DateTime checkedAt,
    _i1epj4g7.SchemaGraph? graph,
  }) = _SchemaSnapshotImpl;

  factory SchemaSnapshot.fromJson(Map<String, dynamic> jsonSerialization) {
    return SchemaSnapshot(
      projectId: jsonSerialization['projectId'] as String,
      sourceKind: jsonSerialization['sourceKind'] as String,
      revision: jsonSerialization['revision'] as String,
      checkedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['checkedAt'],
      ),
      graph: jsonSerialization['graph'] == null
          ? null
          : _ioh8es0p.Protocol().deserialize<_i1epj4g7.SchemaGraph>(
              jsonSerialization['graph'],
            ),
    );
  }

  String projectId;

  String sourceKind;

  String revision;

  DateTime checkedAt;

  _i1epj4g7.SchemaGraph? graph;

  /// Returns a shallow copy of this [SchemaSnapshot]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SchemaSnapshot copyWith({
    String? projectId,
    String? sourceKind,
    String? revision,
    DateTime? checkedAt,
    _i1epj4g7.SchemaGraph? graph,
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
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
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
  }) : super._(
         projectId: projectId,
         sourceKind: sourceKind,
         revision: revision,
         checkedAt: checkedAt,
         graph: graph,
       );

  /// Returns a shallow copy of this [SchemaSnapshot]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SchemaSnapshot copyWith({
    String? projectId,
    String? sourceKind,
    String? revision,
    DateTime? checkedAt,
    Object? graph = _Undefined,
  }) {
    return SchemaSnapshot(
      projectId: projectId ?? this.projectId,
      sourceKind: sourceKind ?? this.sourceKind,
      revision: revision ?? this.revision,
      checkedAt: checkedAt ?? this.checkedAt,
      graph: graph is _i1epj4g7.SchemaGraph? ? graph : this.graph?.copyWith(),
    );
  }
}
