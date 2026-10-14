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

abstract class PublicESignatures
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PublicESignatures._({
    this.id,
    required this.entityType,
    this.entityId,
    required this.operation,
    required this.role,
    required this.meaning,
    required this.authMethod,
    this.remarks,
    this.versionNumber,
    this.workflowInstanceId,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PublicESignatures({
    _isc.UuidValue? id,
    required String entityType,
    String? entityId,
    required String operation,
    required String role,
    required String meaning,
    required String authMethod,
    String? remarks,
    int? versionNumber,
    _isc.UuidValue? workflowInstanceId,
    required _isc.UuidValue createdBy,
    required _isc.UuidValue updatedBy,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PublicESignaturesImpl;

  factory PublicESignatures.fromJson(Map<String, dynamic> jsonSerialization) {
    return PublicESignatures(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      entityType: jsonSerialization['entityType'] as String,
      entityId: jsonSerialization['entityId'] as String?,
      operation: jsonSerialization['operation'] as String,
      role: jsonSerialization['role'] as String,
      meaning: jsonSerialization['meaning'] as String,
      authMethod: jsonSerialization['authMethod'] as String,
      remarks: jsonSerialization['remarks'] as String?,
      versionNumber: jsonSerialization['versionNumber'] as int?,
      workflowInstanceId: jsonSerialization['workflowInstanceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowInstanceId'],
            ),
      createdBy: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['createdBy'],
      ),
      updatedBy: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['updatedBy'],
      ),
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String entityType;

  String? entityId;

  String operation;

  String role;

  String meaning;

  String authMethod;

  String? remarks;

  int? versionNumber;

  _isc.UuidValue? workflowInstanceId;

  _isc.UuidValue createdBy;

  _isc.UuidValue updatedBy;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [PublicESignatures]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PublicESignatures copyWith({
    _isc.UuidValue? id,
    String? entityType,
    String? entityId,
    String? operation,
    String? role,
    String? meaning,
    String? authMethod,
    String? remarks,
    int? versionNumber,
    _isc.UuidValue? workflowInstanceId,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicESignatures',
      if (id != null) 'id': id?.toJson(),
      'entityType': entityType,
      if (entityId != null) 'entityId': entityId,
      'operation': operation,
      'role': role,
      'meaning': meaning,
      'authMethod': authMethod,
      if (remarks != null) 'remarks': remarks,
      if (versionNumber != null) 'versionNumber': versionNumber,
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      'createdBy': createdBy.toJson(),
      'updatedBy': updatedBy.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicESignatures',
      if (id != null) 'id': id?.toJson(),
      'entityType': entityType,
      if (entityId != null) 'entityId': entityId,
      'operation': operation,
      'role': role,
      'meaning': meaning,
      'authMethod': authMethod,
      if (remarks != null) 'remarks': remarks,
      if (versionNumber != null) 'versionNumber': versionNumber,
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      'createdBy': createdBy.toJson(),
      'updatedBy': updatedBy.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicESignaturesImpl extends PublicESignatures {
  _PublicESignaturesImpl({
    _isc.UuidValue? id,
    required String entityType,
    String? entityId,
    required String operation,
    required String role,
    required String meaning,
    required String authMethod,
    String? remarks,
    int? versionNumber,
    _isc.UuidValue? workflowInstanceId,
    required _isc.UuidValue createdBy,
    required _isc.UuidValue updatedBy,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         entityType: entityType,
         entityId: entityId,
         operation: operation,
         role: role,
         meaning: meaning,
         authMethod: authMethod,
         remarks: remarks,
         versionNumber: versionNumber,
         workflowInstanceId: workflowInstanceId,
         createdBy: createdBy,
         updatedBy: updatedBy,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [PublicESignatures]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PublicESignatures copyWith({
    Object? id = _Undefined,
    String? entityType,
    Object? entityId = _Undefined,
    String? operation,
    String? role,
    String? meaning,
    String? authMethod,
    Object? remarks = _Undefined,
    Object? versionNumber = _Undefined,
    Object? workflowInstanceId = _Undefined,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PublicESignatures(
      id: id is _isc.UuidValue? ? id : this.id,
      entityType: entityType ?? this.entityType,
      entityId: entityId is String? ? entityId : this.entityId,
      operation: operation ?? this.operation,
      role: role ?? this.role,
      meaning: meaning ?? this.meaning,
      authMethod: authMethod ?? this.authMethod,
      remarks: remarks is String? ? remarks : this.remarks,
      versionNumber: versionNumber is int? ? versionNumber : this.versionNumber,
      workflowInstanceId: workflowInstanceId is _isc.UuidValue?
          ? workflowInstanceId
          : this.workflowInstanceId,
      createdBy: createdBy ?? this.createdBy,
      updatedBy: updatedBy ?? this.updatedBy,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
