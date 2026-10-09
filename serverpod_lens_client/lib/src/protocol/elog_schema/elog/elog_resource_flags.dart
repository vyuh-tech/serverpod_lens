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

abstract class ElogResourceFlags
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogResourceFlags._({
    this.id,
    required this.flagTypeId,
    required this.resourceType,
    required this.resourceId,
    required this.flagStatus,
    this.problemId,
    required this.flaggedAt,
    required this.flaggedBy,
    this.reason,
    this.clearanceRequestedAt,
    this.clearanceRequestedBy,
    this.clearanceLogUsageId,
    this.clearedAt,
    this.clearedBy,
    this.clearanceNotes,
    required this.versionNumber,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogResourceFlags({
    _isc.UuidValue? id,
    required _isc.UuidValue flagTypeId,
    required String resourceType,
    required _isc.UuidValue resourceId,
    required String flagStatus,
    _isc.UuidValue? problemId,
    required DateTime flaggedAt,
    required _isc.UuidValue flaggedBy,
    String? reason,
    DateTime? clearanceRequestedAt,
    _isc.UuidValue? clearanceRequestedBy,
    _isc.UuidValue? clearanceLogUsageId,
    DateTime? clearedAt,
    _isc.UuidValue? clearedBy,
    String? clearanceNotes,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) = _ElogResourceFlagsImpl;

  factory ElogResourceFlags.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogResourceFlags(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      flagTypeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['flagTypeId'],
      ),
      resourceType: jsonSerialization['resourceType'] as String,
      resourceId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['resourceId'],
      ),
      flagStatus: jsonSerialization['flagStatus'] as String,
      problemId: jsonSerialization['problemId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['problemId'],
            ),
      flaggedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['flaggedAt'],
      ),
      flaggedBy: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['flaggedBy'],
      ),
      reason: jsonSerialization['reason'] as String?,
      clearanceRequestedAt: jsonSerialization['clearanceRequestedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['clearanceRequestedAt'],
            ),
      clearanceRequestedBy: jsonSerialization['clearanceRequestedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['clearanceRequestedBy'],
            ),
      clearanceLogUsageId: jsonSerialization['clearanceLogUsageId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['clearanceLogUsageId'],
            ),
      clearedAt: jsonSerialization['clearedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['clearedAt']),
      clearedBy: jsonSerialization['clearedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['clearedBy'],
            ),
      clearanceNotes: jsonSerialization['clearanceNotes'] as String?,
      versionNumber: jsonSerialization['versionNumber'] as int,
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
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
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue flagTypeId;

  String resourceType;

  _isc.UuidValue resourceId;

  String flagStatus;

  _isc.UuidValue? problemId;

  DateTime flaggedAt;

  _isc.UuidValue flaggedBy;

  String? reason;

  DateTime? clearanceRequestedAt;

  _isc.UuidValue? clearanceRequestedBy;

  _isc.UuidValue? clearanceLogUsageId;

  DateTime? clearedAt;

  _isc.UuidValue? clearedBy;

  String? clearanceNotes;

  int versionNumber;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [ElogResourceFlags]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogResourceFlags copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? flagTypeId,
    String? resourceType,
    _isc.UuidValue? resourceId,
    String? flagStatus,
    _isc.UuidValue? problemId,
    DateTime? flaggedAt,
    _isc.UuidValue? flaggedBy,
    String? reason,
    DateTime? clearanceRequestedAt,
    _isc.UuidValue? clearanceRequestedBy,
    _isc.UuidValue? clearanceLogUsageId,
    DateTime? clearedAt,
    _isc.UuidValue? clearedBy,
    String? clearanceNotes,
    int? versionNumber,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogResourceFlags',
      if (id != null) 'id': id?.toJson(),
      'flagTypeId': flagTypeId.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      'flagStatus': flagStatus,
      if (problemId != null) 'problemId': problemId?.toJson(),
      'flaggedAt': flaggedAt.toJson(),
      'flaggedBy': flaggedBy.toJson(),
      if (reason != null) 'reason': reason,
      if (clearanceRequestedAt != null)
        'clearanceRequestedAt': clearanceRequestedAt?.toJson(),
      if (clearanceRequestedBy != null)
        'clearanceRequestedBy': clearanceRequestedBy?.toJson(),
      if (clearanceLogUsageId != null)
        'clearanceLogUsageId': clearanceLogUsageId?.toJson(),
      if (clearedAt != null) 'clearedAt': clearedAt?.toJson(),
      if (clearedBy != null) 'clearedBy': clearedBy?.toJson(),
      if (clearanceNotes != null) 'clearanceNotes': clearanceNotes,
      'versionNumber': versionNumber,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogResourceFlags',
      if (id != null) 'id': id?.toJson(),
      'flagTypeId': flagTypeId.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      'flagStatus': flagStatus,
      if (problemId != null) 'problemId': problemId?.toJson(),
      'flaggedAt': flaggedAt.toJson(),
      'flaggedBy': flaggedBy.toJson(),
      if (reason != null) 'reason': reason,
      if (clearanceRequestedAt != null)
        'clearanceRequestedAt': clearanceRequestedAt?.toJson(),
      if (clearanceRequestedBy != null)
        'clearanceRequestedBy': clearanceRequestedBy?.toJson(),
      if (clearanceLogUsageId != null)
        'clearanceLogUsageId': clearanceLogUsageId?.toJson(),
      if (clearedAt != null) 'clearedAt': clearedAt?.toJson(),
      if (clearedBy != null) 'clearedBy': clearedBy?.toJson(),
      if (clearanceNotes != null) 'clearanceNotes': clearanceNotes,
      'versionNumber': versionNumber,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogResourceFlagsImpl extends ElogResourceFlags {
  _ElogResourceFlagsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue flagTypeId,
    required String resourceType,
    required _isc.UuidValue resourceId,
    required String flagStatus,
    _isc.UuidValue? problemId,
    required DateTime flaggedAt,
    required _isc.UuidValue flaggedBy,
    String? reason,
    DateTime? clearanceRequestedAt,
    _isc.UuidValue? clearanceRequestedBy,
    _isc.UuidValue? clearanceLogUsageId,
    DateTime? clearedAt,
    _isc.UuidValue? clearedBy,
    String? clearanceNotes,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         flagTypeId: flagTypeId,
         resourceType: resourceType,
         resourceId: resourceId,
         flagStatus: flagStatus,
         problemId: problemId,
         flaggedAt: flaggedAt,
         flaggedBy: flaggedBy,
         reason: reason,
         clearanceRequestedAt: clearanceRequestedAt,
         clearanceRequestedBy: clearanceRequestedBy,
         clearanceLogUsageId: clearanceLogUsageId,
         clearedAt: clearedAt,
         clearedBy: clearedBy,
         clearanceNotes: clearanceNotes,
         versionNumber: versionNumber,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogResourceFlags]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogResourceFlags copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? flagTypeId,
    String? resourceType,
    _isc.UuidValue? resourceId,
    String? flagStatus,
    Object? problemId = _Undefined,
    DateTime? flaggedAt,
    _isc.UuidValue? flaggedBy,
    Object? reason = _Undefined,
    Object? clearanceRequestedAt = _Undefined,
    Object? clearanceRequestedBy = _Undefined,
    Object? clearanceLogUsageId = _Undefined,
    Object? clearedAt = _Undefined,
    Object? clearedBy = _Undefined,
    Object? clearanceNotes = _Undefined,
    int? versionNumber,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogResourceFlags(
      id: id is _isc.UuidValue? ? id : this.id,
      flagTypeId: flagTypeId ?? this.flagTypeId,
      resourceType: resourceType ?? this.resourceType,
      resourceId: resourceId ?? this.resourceId,
      flagStatus: flagStatus ?? this.flagStatus,
      problemId: problemId is _isc.UuidValue? ? problemId : this.problemId,
      flaggedAt: flaggedAt ?? this.flaggedAt,
      flaggedBy: flaggedBy ?? this.flaggedBy,
      reason: reason is String? ? reason : this.reason,
      clearanceRequestedAt: clearanceRequestedAt is DateTime?
          ? clearanceRequestedAt
          : this.clearanceRequestedAt,
      clearanceRequestedBy: clearanceRequestedBy is _isc.UuidValue?
          ? clearanceRequestedBy
          : this.clearanceRequestedBy,
      clearanceLogUsageId: clearanceLogUsageId is _isc.UuidValue?
          ? clearanceLogUsageId
          : this.clearanceLogUsageId,
      clearedAt: clearedAt is DateTime? ? clearedAt : this.clearedAt,
      clearedBy: clearedBy is _isc.UuidValue? ? clearedBy : this.clearedBy,
      clearanceNotes: clearanceNotes is String?
          ? clearanceNotes
          : this.clearanceNotes,
      versionNumber: versionNumber ?? this.versionNumber,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
