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

abstract class PublicWorkflowInstances
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PublicWorkflowInstances._({
    this.id,
    required this.workflowId,
    required this.workflowVersion,
    required this.status,
    required this.input,
    required this.output,
    required this.variables,
    required this.tokens,
    required this.runNumber,
    this.parentInstanceId,
    this.parentNodeId,
    this.error,
    this.correlationId,
    required this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.startedAt,
    this.completedAt,
    this.createdBy,
    this.startedBy,
    this.completedBy,
    this.updatedBy,
  });

  factory PublicWorkflowInstances({
    _isc.UuidValue? id,
    required _isc.UuidValue workflowId,
    required int workflowVersion,
    required String status,
    required String input,
    required String output,
    required String variables,
    required String tokens,
    required int runNumber,
    _isc.UuidValue? parentInstanceId,
    String? parentNodeId,
    String? error,
    String? correlationId,
    required String metadata,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? startedAt,
    DateTime? completedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? startedBy,
    _isc.UuidValue? completedBy,
    _isc.UuidValue? updatedBy,
  }) = _PublicWorkflowInstancesImpl;

  factory PublicWorkflowInstances.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return PublicWorkflowInstances(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      workflowId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['workflowId'],
      ),
      workflowVersion: jsonSerialization['workflowVersion'] as int,
      status: jsonSerialization['status'] as String,
      input: jsonSerialization['input'] as String,
      output: jsonSerialization['output'] as String,
      variables: jsonSerialization['variables'] as String,
      tokens: jsonSerialization['tokens'] as String,
      runNumber: jsonSerialization['runNumber'] as int,
      parentInstanceId: jsonSerialization['parentInstanceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['parentInstanceId'],
            ),
      parentNodeId: jsonSerialization['parentNodeId'] as String?,
      error: jsonSerialization['error'] as String?,
      correlationId: jsonSerialization['correlationId'] as String?,
      metadata: jsonSerialization['metadata'] as String,
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      startedAt: jsonSerialization['startedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['createdBy'],
            ),
      startedBy: jsonSerialization['startedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['startedBy'],
            ),
      completedBy: jsonSerialization['completedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['completedBy'],
            ),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['updatedBy'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue workflowId;

  int workflowVersion;

  String status;

  String input;

  String output;

  String variables;

  String tokens;

  int runNumber;

  _isc.UuidValue? parentInstanceId;

  String? parentNodeId;

  String? error;

  String? correlationId;

  String metadata;

  DateTime createdAt;

  DateTime updatedAt;

  DateTime? startedAt;

  DateTime? completedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? startedBy;

  _isc.UuidValue? completedBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [PublicWorkflowInstances]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PublicWorkflowInstances copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? workflowId,
    int? workflowVersion,
    String? status,
    String? input,
    String? output,
    String? variables,
    String? tokens,
    int? runNumber,
    _isc.UuidValue? parentInstanceId,
    String? parentNodeId,
    String? error,
    String? correlationId,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? startedAt,
    DateTime? completedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? startedBy,
    _isc.UuidValue? completedBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicWorkflowInstances',
      if (id != null) 'id': id?.toJson(),
      'workflowId': workflowId.toJson(),
      'workflowVersion': workflowVersion,
      'status': status,
      'input': input,
      'output': output,
      'variables': variables,
      'tokens': tokens,
      'runNumber': runNumber,
      if (parentInstanceId != null)
        'parentInstanceId': parentInstanceId?.toJson(),
      if (parentNodeId != null) 'parentNodeId': parentNodeId,
      if (error != null) 'error': error,
      if (correlationId != null) 'correlationId': correlationId,
      'metadata': metadata,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (startedBy != null) 'startedBy': startedBy?.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicWorkflowInstances',
      if (id != null) 'id': id?.toJson(),
      'workflowId': workflowId.toJson(),
      'workflowVersion': workflowVersion,
      'status': status,
      'input': input,
      'output': output,
      'variables': variables,
      'tokens': tokens,
      'runNumber': runNumber,
      if (parentInstanceId != null)
        'parentInstanceId': parentInstanceId?.toJson(),
      if (parentNodeId != null) 'parentNodeId': parentNodeId,
      if (error != null) 'error': error,
      if (correlationId != null) 'correlationId': correlationId,
      'metadata': metadata,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (startedBy != null) 'startedBy': startedBy?.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicWorkflowInstancesImpl extends PublicWorkflowInstances {
  _PublicWorkflowInstancesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue workflowId,
    required int workflowVersion,
    required String status,
    required String input,
    required String output,
    required String variables,
    required String tokens,
    required int runNumber,
    _isc.UuidValue? parentInstanceId,
    String? parentNodeId,
    String? error,
    String? correlationId,
    required String metadata,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? startedAt,
    DateTime? completedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? startedBy,
    _isc.UuidValue? completedBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         workflowId: workflowId,
         workflowVersion: workflowVersion,
         status: status,
         input: input,
         output: output,
         variables: variables,
         tokens: tokens,
         runNumber: runNumber,
         parentInstanceId: parentInstanceId,
         parentNodeId: parentNodeId,
         error: error,
         correlationId: correlationId,
         metadata: metadata,
         createdAt: createdAt,
         updatedAt: updatedAt,
         startedAt: startedAt,
         completedAt: completedAt,
         createdBy: createdBy,
         startedBy: startedBy,
         completedBy: completedBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [PublicWorkflowInstances]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PublicWorkflowInstances copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? workflowId,
    int? workflowVersion,
    String? status,
    String? input,
    String? output,
    String? variables,
    String? tokens,
    int? runNumber,
    Object? parentInstanceId = _Undefined,
    Object? parentNodeId = _Undefined,
    Object? error = _Undefined,
    Object? correlationId = _Undefined,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? startedAt = _Undefined,
    Object? completedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? startedBy = _Undefined,
    Object? completedBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return PublicWorkflowInstances(
      id: id is _isc.UuidValue? ? id : this.id,
      workflowId: workflowId ?? this.workflowId,
      workflowVersion: workflowVersion ?? this.workflowVersion,
      status: status ?? this.status,
      input: input ?? this.input,
      output: output ?? this.output,
      variables: variables ?? this.variables,
      tokens: tokens ?? this.tokens,
      runNumber: runNumber ?? this.runNumber,
      parentInstanceId: parentInstanceId is _isc.UuidValue?
          ? parentInstanceId
          : this.parentInstanceId,
      parentNodeId: parentNodeId is String? ? parentNodeId : this.parentNodeId,
      error: error is String? ? error : this.error,
      correlationId: correlationId is String?
          ? correlationId
          : this.correlationId,
      metadata: metadata ?? this.metadata,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      startedAt: startedAt is DateTime? ? startedAt : this.startedAt,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      startedBy: startedBy is _isc.UuidValue? ? startedBy : this.startedBy,
      completedBy: completedBy is _isc.UuidValue?
          ? completedBy
          : this.completedBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
