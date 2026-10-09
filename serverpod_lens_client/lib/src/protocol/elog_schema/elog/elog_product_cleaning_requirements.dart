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

abstract class ElogProductCleaningRequirements
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogProductCleaningRequirements._({
    this.id,
    this.fromProductId,
    this.toProductId,
    required this.cleaningTypeId,
    required this.resourceType,
    this.equipmentCategoryId,
    this.priority,
    this.notes,
    this.regulatoryReference,
    this.isActive,
  });

  factory ElogProductCleaningRequirements({
    _isc.UuidValue? id,
    _isc.UuidValue? fromProductId,
    _isc.UuidValue? toProductId,
    required _isc.UuidValue cleaningTypeId,
    required String resourceType,
    _isc.UuidValue? equipmentCategoryId,
    int? priority,
    String? notes,
    String? regulatoryReference,
    bool? isActive,
  }) = _ElogProductCleaningRequirementsImpl;

  factory ElogProductCleaningRequirements.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogProductCleaningRequirements(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      fromProductId: jsonSerialization['fromProductId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['fromProductId'],
            ),
      toProductId: jsonSerialization['toProductId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['toProductId'],
            ),
      cleaningTypeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['cleaningTypeId'],
      ),
      resourceType: jsonSerialization['resourceType'] as String,
      equipmentCategoryId: jsonSerialization['equipmentCategoryId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['equipmentCategoryId'],
            ),
      priority: jsonSerialization['priority'] as int?,
      notes: jsonSerialization['notes'] as String?,
      regulatoryReference: jsonSerialization['regulatoryReference'] as String?,
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue? fromProductId;

  _isc.UuidValue? toProductId;

  _isc.UuidValue cleaningTypeId;

  String resourceType;

  _isc.UuidValue? equipmentCategoryId;

  int? priority;

  String? notes;

  String? regulatoryReference;

  bool? isActive;

  /// Returns a shallow copy of this [ElogProductCleaningRequirements]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogProductCleaningRequirements copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? fromProductId,
    _isc.UuidValue? toProductId,
    _isc.UuidValue? cleaningTypeId,
    String? resourceType,
    _isc.UuidValue? equipmentCategoryId,
    int? priority,
    String? notes,
    String? regulatoryReference,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogProductCleaningRequirements',
      if (id != null) 'id': id?.toJson(),
      if (fromProductId != null) 'fromProductId': fromProductId?.toJson(),
      if (toProductId != null) 'toProductId': toProductId?.toJson(),
      'cleaningTypeId': cleaningTypeId.toJson(),
      'resourceType': resourceType,
      if (equipmentCategoryId != null)
        'equipmentCategoryId': equipmentCategoryId?.toJson(),
      if (priority != null) 'priority': priority,
      if (notes != null) 'notes': notes,
      if (regulatoryReference != null)
        'regulatoryReference': regulatoryReference,
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogProductCleaningRequirements',
      if (id != null) 'id': id?.toJson(),
      if (fromProductId != null) 'fromProductId': fromProductId?.toJson(),
      if (toProductId != null) 'toProductId': toProductId?.toJson(),
      'cleaningTypeId': cleaningTypeId.toJson(),
      'resourceType': resourceType,
      if (equipmentCategoryId != null)
        'equipmentCategoryId': equipmentCategoryId?.toJson(),
      if (priority != null) 'priority': priority,
      if (notes != null) 'notes': notes,
      if (regulatoryReference != null)
        'regulatoryReference': regulatoryReference,
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogProductCleaningRequirementsImpl
    extends ElogProductCleaningRequirements {
  _ElogProductCleaningRequirementsImpl({
    _isc.UuidValue? id,
    _isc.UuidValue? fromProductId,
    _isc.UuidValue? toProductId,
    required _isc.UuidValue cleaningTypeId,
    required String resourceType,
    _isc.UuidValue? equipmentCategoryId,
    int? priority,
    String? notes,
    String? regulatoryReference,
    bool? isActive,
  }) : super._(
         id: id,
         fromProductId: fromProductId,
         toProductId: toProductId,
         cleaningTypeId: cleaningTypeId,
         resourceType: resourceType,
         equipmentCategoryId: equipmentCategoryId,
         priority: priority,
         notes: notes,
         regulatoryReference: regulatoryReference,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogProductCleaningRequirements]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogProductCleaningRequirements copyWith({
    Object? id = _Undefined,
    Object? fromProductId = _Undefined,
    Object? toProductId = _Undefined,
    _isc.UuidValue? cleaningTypeId,
    String? resourceType,
    Object? equipmentCategoryId = _Undefined,
    Object? priority = _Undefined,
    Object? notes = _Undefined,
    Object? regulatoryReference = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return ElogProductCleaningRequirements(
      id: id is _isc.UuidValue? ? id : this.id,
      fromProductId: fromProductId is _isc.UuidValue?
          ? fromProductId
          : this.fromProductId,
      toProductId: toProductId is _isc.UuidValue?
          ? toProductId
          : this.toProductId,
      cleaningTypeId: cleaningTypeId ?? this.cleaningTypeId,
      resourceType: resourceType ?? this.resourceType,
      equipmentCategoryId: equipmentCategoryId is _isc.UuidValue?
          ? equipmentCategoryId
          : this.equipmentCategoryId,
      priority: priority is int? ? priority : this.priority,
      notes: notes is String? ? notes : this.notes,
      regulatoryReference: regulatoryReference is String?
          ? regulatoryReference
          : this.regulatoryReference,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}
