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

abstract class PublicEntityWorkflowTasks
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PublicEntityWorkflowTasks._({
    this.id,
    required this.idField,
    required this.name,
    required this.workflowInstanceId,
    required this.state,
    required this.context,
    this.completedBy,
    this.completedAt,
  });

  factory PublicEntityWorkflowTasks({
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required String name,
    required _isc.UuidValue workflowInstanceId,
    required String state,
    required String context,
    _isc.UuidValue? completedBy,
    DateTime? completedAt,
  }) = _PublicEntityWorkflowTasksImpl;

  factory PublicEntityWorkflowTasks.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return PublicEntityWorkflowTasks(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      name: jsonSerialization['name'] as String,
      workflowInstanceId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['workflowInstanceId'],
      ),
      state: jsonSerialization['state'] as String,
      context: jsonSerialization['context'] as String,
      completedBy: jsonSerialization['completedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['completedBy'],
            ),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue idField;

  String name;

  _isc.UuidValue workflowInstanceId;

  String state;

  String context;

  _isc.UuidValue? completedBy;

  DateTime? completedAt;

  /// Returns a shallow copy of this [PublicEntityWorkflowTasks]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PublicEntityWorkflowTasks copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? idField,
    String? name,
    _isc.UuidValue? workflowInstanceId,
    String? state,
    String? context,
    _isc.UuidValue? completedBy,
    DateTime? completedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicEntityWorkflowTasks',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'name': name,
      'workflowInstanceId': workflowInstanceId.toJson(),
      'state': state,
      'context': context,
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicEntityWorkflowTasks',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'name': name,
      'workflowInstanceId': workflowInstanceId.toJson(),
      'state': state,
      'context': context,
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicEntityWorkflowTasksImpl extends PublicEntityWorkflowTasks {
  _PublicEntityWorkflowTasksImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required String name,
    required _isc.UuidValue workflowInstanceId,
    required String state,
    required String context,
    _isc.UuidValue? completedBy,
    DateTime? completedAt,
  }) : super._(
         id: id,
         idField: idField,
         name: name,
         workflowInstanceId: workflowInstanceId,
         state: state,
         context: context,
         completedBy: completedBy,
         completedAt: completedAt,
       );

  /// Returns a shallow copy of this [PublicEntityWorkflowTasks]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PublicEntityWorkflowTasks copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? idField,
    String? name,
    _isc.UuidValue? workflowInstanceId,
    String? state,
    String? context,
    Object? completedBy = _Undefined,
    Object? completedAt = _Undefined,
  }) {
    return PublicEntityWorkflowTasks(
      id: id is _isc.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      name: name ?? this.name,
      workflowInstanceId: workflowInstanceId ?? this.workflowInstanceId,
      state: state ?? this.state,
      context: context ?? this.context,
      completedBy: completedBy is _isc.UuidValue?
          ? completedBy
          : this.completedBy,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
    );
  }
}
