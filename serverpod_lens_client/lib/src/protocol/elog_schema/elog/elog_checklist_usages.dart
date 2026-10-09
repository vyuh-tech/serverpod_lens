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

abstract class ElogChecklistUsages
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogChecklistUsages._({
    this.id,
    required this.name,
    required this.checklistTemplateId,
    required this.checklistTemplateVersionNumber,
    this.resourceType,
    this.resourceId,
    required this.status,
    this.totalInstructions,
    this.completedInstructions,
  });

  factory ElogChecklistUsages({
    _isc.UuidValue? id,
    required String name,
    required _isc.UuidValue checklistTemplateId,
    required int checklistTemplateVersionNumber,
    String? resourceType,
    _isc.UuidValue? resourceId,
    required String status,
    int? totalInstructions,
    int? completedInstructions,
  }) = _ElogChecklistUsagesImpl;

  factory ElogChecklistUsages.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogChecklistUsages(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      checklistTemplateId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['checklistTemplateId'],
      ),
      checklistTemplateVersionNumber:
          jsonSerialization['checklistTemplateVersionNumber'] as int,
      resourceType: jsonSerialization['resourceType'] as String?,
      resourceId: jsonSerialization['resourceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceId'],
            ),
      status: jsonSerialization['status'] as String,
      totalInstructions: jsonSerialization['totalInstructions'] as int?,
      completedInstructions: jsonSerialization['completedInstructions'] as int?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String name;

  _isc.UuidValue checklistTemplateId;

  int checklistTemplateVersionNumber;

  String? resourceType;

  _isc.UuidValue? resourceId;

  String status;

  int? totalInstructions;

  int? completedInstructions;

  /// Returns a shallow copy of this [ElogChecklistUsages]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogChecklistUsages copyWith({
    _isc.UuidValue? id,
    String? name,
    _isc.UuidValue? checklistTemplateId,
    int? checklistTemplateVersionNumber,
    String? resourceType,
    _isc.UuidValue? resourceId,
    String? status,
    int? totalInstructions,
    int? completedInstructions,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogChecklistUsages',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'checklistTemplateId': checklistTemplateId.toJson(),
      'checklistTemplateVersionNumber': checklistTemplateVersionNumber,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      'status': status,
      if (totalInstructions != null) 'totalInstructions': totalInstructions,
      if (completedInstructions != null)
        'completedInstructions': completedInstructions,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogChecklistUsages',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'checklistTemplateId': checklistTemplateId.toJson(),
      'checklistTemplateVersionNumber': checklistTemplateVersionNumber,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      'status': status,
      if (totalInstructions != null) 'totalInstructions': totalInstructions,
      if (completedInstructions != null)
        'completedInstructions': completedInstructions,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogChecklistUsagesImpl extends ElogChecklistUsages {
  _ElogChecklistUsagesImpl({
    _isc.UuidValue? id,
    required String name,
    required _isc.UuidValue checklistTemplateId,
    required int checklistTemplateVersionNumber,
    String? resourceType,
    _isc.UuidValue? resourceId,
    required String status,
    int? totalInstructions,
    int? completedInstructions,
  }) : super._(
         id: id,
         name: name,
         checklistTemplateId: checklistTemplateId,
         checklistTemplateVersionNumber: checklistTemplateVersionNumber,
         resourceType: resourceType,
         resourceId: resourceId,
         status: status,
         totalInstructions: totalInstructions,
         completedInstructions: completedInstructions,
       );

  /// Returns a shallow copy of this [ElogChecklistUsages]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogChecklistUsages copyWith({
    Object? id = _Undefined,
    String? name,
    _isc.UuidValue? checklistTemplateId,
    int? checklistTemplateVersionNumber,
    Object? resourceType = _Undefined,
    Object? resourceId = _Undefined,
    String? status,
    Object? totalInstructions = _Undefined,
    Object? completedInstructions = _Undefined,
  }) {
    return ElogChecklistUsages(
      id: id is _isc.UuidValue? ? id : this.id,
      name: name ?? this.name,
      checklistTemplateId: checklistTemplateId ?? this.checklistTemplateId,
      checklistTemplateVersionNumber:
          checklistTemplateVersionNumber ?? this.checklistTemplateVersionNumber,
      resourceType: resourceType is String? ? resourceType : this.resourceType,
      resourceId: resourceId is _isc.UuidValue? ? resourceId : this.resourceId,
      status: status ?? this.status,
      totalInstructions: totalInstructions is int?
          ? totalInstructions
          : this.totalInstructions,
      completedInstructions: completedInstructions is int?
          ? completedInstructions
          : this.completedInstructions,
    );
  }
}
