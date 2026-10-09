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

abstract class ElogActivityArtifacts
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogActivityArtifacts._({
    this.id,
    required this.activityId,
    required this.artifactType,
    required this.artifactTemplateId,
    required this.artifactUsageId,
    required this.status,
    required this.sortOrder,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  factory ElogActivityArtifacts({
    _isc.UuidValue? id,
    required _isc.UuidValue activityId,
    required String artifactType,
    required _isc.UuidValue artifactTemplateId,
    required _isc.UuidValue artifactUsageId,
    required String status,
    required int sortOrder,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ElogActivityArtifactsImpl;

  factory ElogActivityArtifacts.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogActivityArtifacts(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      activityId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['activityId'],
      ),
      artifactType: jsonSerialization['artifactType'] as String,
      artifactTemplateId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['artifactTemplateId'],
      ),
      artifactUsageId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['artifactUsageId'],
      ),
      status: jsonSerialization['status'] as String,
      sortOrder: jsonSerialization['sortOrder'] as int,
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['createdBy'],
            ),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['updatedBy'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue activityId;

  String artifactType;

  _isc.UuidValue artifactTemplateId;

  _isc.UuidValue artifactUsageId;

  String status;

  int sortOrder;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  DateTime? createdAt;

  DateTime? updatedAt;

  /// Returns a shallow copy of this [ElogActivityArtifacts]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogActivityArtifacts copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? activityId,
    String? artifactType,
    _isc.UuidValue? artifactTemplateId,
    _isc.UuidValue? artifactUsageId,
    String? status,
    int? sortOrder,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogActivityArtifacts',
      if (id != null) 'id': id?.toJson(),
      'activityId': activityId.toJson(),
      'artifactType': artifactType,
      'artifactTemplateId': artifactTemplateId.toJson(),
      'artifactUsageId': artifactUsageId.toJson(),
      'status': status,
      'sortOrder': sortOrder,
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogActivityArtifacts',
      if (id != null) 'id': id?.toJson(),
      'activityId': activityId.toJson(),
      'artifactType': artifactType,
      'artifactTemplateId': artifactTemplateId.toJson(),
      'artifactUsageId': artifactUsageId.toJson(),
      'status': status,
      'sortOrder': sortOrder,
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogActivityArtifactsImpl extends ElogActivityArtifacts {
  _ElogActivityArtifactsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue activityId,
    required String artifactType,
    required _isc.UuidValue artifactTemplateId,
    required _isc.UuidValue artifactUsageId,
    required String status,
    required int sortOrder,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         activityId: activityId,
         artifactType: artifactType,
         artifactTemplateId: artifactTemplateId,
         artifactUsageId: artifactUsageId,
         status: status,
         sortOrder: sortOrder,
         createdBy: createdBy,
         updatedBy: updatedBy,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [ElogActivityArtifacts]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogActivityArtifacts copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? activityId,
    String? artifactType,
    _isc.UuidValue? artifactTemplateId,
    _isc.UuidValue? artifactUsageId,
    String? status,
    int? sortOrder,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
  }) {
    return ElogActivityArtifacts(
      id: id is _isc.UuidValue? ? id : this.id,
      activityId: activityId ?? this.activityId,
      artifactType: artifactType ?? this.artifactType,
      artifactTemplateId: artifactTemplateId ?? this.artifactTemplateId,
      artifactUsageId: artifactUsageId ?? this.artifactUsageId,
      status: status ?? this.status,
      sortOrder: sortOrder ?? this.sortOrder,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
    );
  }
}
