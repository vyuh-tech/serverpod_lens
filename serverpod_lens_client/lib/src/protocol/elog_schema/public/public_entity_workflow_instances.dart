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

abstract class PublicEntityWorkflowInstances
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PublicEntityWorkflowInstances._({
    this.id,
    required this.idField,
    required this.name,
    required this.operation,
    required this.entityType,
    this.entityId,
    required this.state,
    required this.context,
    this.startedAt,
    this.completedAt,
    this.cancelledAt,
    this.expiresAt,
    required this.entityVersion,
    this.submittedBy,
    this.submittedAt,
  });

  factory PublicEntityWorkflowInstances({
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required String name,
    required String operation,
    required String entityType,
    _isc.UuidValue? entityId,
    required String state,
    required String context,
    DateTime? startedAt,
    DateTime? completedAt,
    DateTime? cancelledAt,
    DateTime? expiresAt,
    required int entityVersion,
    _isc.UuidValue? submittedBy,
    DateTime? submittedAt,
  }) = _PublicEntityWorkflowInstancesImpl;

  factory PublicEntityWorkflowInstances.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return PublicEntityWorkflowInstances(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      name: jsonSerialization['name'] as String,
      operation: jsonSerialization['operation'] as String,
      entityType: jsonSerialization['entityType'] as String,
      entityId: jsonSerialization['entityId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['entityId']),
      state: jsonSerialization['state'] as String,
      context: jsonSerialization['context'] as String,
      startedAt: jsonSerialization['startedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      cancelledAt: jsonSerialization['cancelledAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['cancelledAt'],
            ),
      expiresAt: jsonSerialization['expiresAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['expiresAt']),
      entityVersion: jsonSerialization['entityVersion'] as int,
      submittedBy: jsonSerialization['submittedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['submittedBy'],
            ),
      submittedAt: jsonSerialization['submittedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['submittedAt'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue idField;

  String name;

  String operation;

  String entityType;

  _isc.UuidValue? entityId;

  String state;

  String context;

  DateTime? startedAt;

  DateTime? completedAt;

  DateTime? cancelledAt;

  DateTime? expiresAt;

  int entityVersion;

  _isc.UuidValue? submittedBy;

  DateTime? submittedAt;

  /// Returns a shallow copy of this [PublicEntityWorkflowInstances]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PublicEntityWorkflowInstances copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? idField,
    String? name,
    String? operation,
    String? entityType,
    _isc.UuidValue? entityId,
    String? state,
    String? context,
    DateTime? startedAt,
    DateTime? completedAt,
    DateTime? cancelledAt,
    DateTime? expiresAt,
    int? entityVersion,
    _isc.UuidValue? submittedBy,
    DateTime? submittedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicEntityWorkflowInstances',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'name': name,
      'operation': operation,
      'entityType': entityType,
      if (entityId != null) 'entityId': entityId?.toJson(),
      'state': state,
      'context': context,
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (cancelledAt != null) 'cancelledAt': cancelledAt?.toJson(),
      if (expiresAt != null) 'expiresAt': expiresAt?.toJson(),
      'entityVersion': entityVersion,
      if (submittedBy != null) 'submittedBy': submittedBy?.toJson(),
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicEntityWorkflowInstances',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'name': name,
      'operation': operation,
      'entityType': entityType,
      if (entityId != null) 'entityId': entityId?.toJson(),
      'state': state,
      'context': context,
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (cancelledAt != null) 'cancelledAt': cancelledAt?.toJson(),
      if (expiresAt != null) 'expiresAt': expiresAt?.toJson(),
      'entityVersion': entityVersion,
      if (submittedBy != null) 'submittedBy': submittedBy?.toJson(),
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicEntityWorkflowInstancesImpl extends PublicEntityWorkflowInstances {
  _PublicEntityWorkflowInstancesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required String name,
    required String operation,
    required String entityType,
    _isc.UuidValue? entityId,
    required String state,
    required String context,
    DateTime? startedAt,
    DateTime? completedAt,
    DateTime? cancelledAt,
    DateTime? expiresAt,
    required int entityVersion,
    _isc.UuidValue? submittedBy,
    DateTime? submittedAt,
  }) : super._(
         id: id,
         idField: idField,
         name: name,
         operation: operation,
         entityType: entityType,
         entityId: entityId,
         state: state,
         context: context,
         startedAt: startedAt,
         completedAt: completedAt,
         cancelledAt: cancelledAt,
         expiresAt: expiresAt,
         entityVersion: entityVersion,
         submittedBy: submittedBy,
         submittedAt: submittedAt,
       );

  /// Returns a shallow copy of this [PublicEntityWorkflowInstances]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PublicEntityWorkflowInstances copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? idField,
    String? name,
    String? operation,
    String? entityType,
    Object? entityId = _Undefined,
    String? state,
    String? context,
    Object? startedAt = _Undefined,
    Object? completedAt = _Undefined,
    Object? cancelledAt = _Undefined,
    Object? expiresAt = _Undefined,
    int? entityVersion,
    Object? submittedBy = _Undefined,
    Object? submittedAt = _Undefined,
  }) {
    return PublicEntityWorkflowInstances(
      id: id is _isc.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      name: name ?? this.name,
      operation: operation ?? this.operation,
      entityType: entityType ?? this.entityType,
      entityId: entityId is _isc.UuidValue? ? entityId : this.entityId,
      state: state ?? this.state,
      context: context ?? this.context,
      startedAt: startedAt is DateTime? ? startedAt : this.startedAt,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      cancelledAt: cancelledAt is DateTime? ? cancelledAt : this.cancelledAt,
      expiresAt: expiresAt is DateTime? ? expiresAt : this.expiresAt,
      entityVersion: entityVersion ?? this.entityVersion,
      submittedBy: submittedBy is _isc.UuidValue?
          ? submittedBy
          : this.submittedBy,
      submittedAt: submittedAt is DateTime? ? submittedAt : this.submittedAt,
    );
  }
}
