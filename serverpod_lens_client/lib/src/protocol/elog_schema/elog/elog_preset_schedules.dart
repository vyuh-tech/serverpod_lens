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

abstract class ElogPresetSchedules
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPresetSchedules._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.scheduleConfig,
    this.effectiveFrom,
    this.effectiveUntil,
    this.toleranceMinutes,
    this.escalationMinutes,
    this.resourceType,
    this.resourceIds,
    this.isActive,
    this.priority,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogPresetSchedules({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String scheduleConfig,
    DateTime? effectiveFrom,
    DateTime? effectiveUntil,
    int? toleranceMinutes,
    int? escalationMinutes,
    String? resourceType,
    List<_isc.UuidValue>? resourceIds,
    bool? isActive,
    int? priority,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) = _ElogPresetSchedulesImpl;

  factory ElogPresetSchedules.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPresetSchedules(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      scheduleConfig: jsonSerialization['scheduleConfig'] as String,
      effectiveFrom: jsonSerialization['effectiveFrom'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['effectiveFrom'],
            ),
      effectiveUntil: jsonSerialization['effectiveUntil'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['effectiveUntil'],
            ),
      toleranceMinutes: jsonSerialization['toleranceMinutes'] as int?,
      escalationMinutes: jsonSerialization['escalationMinutes'] as int?,
      resourceType: jsonSerialization['resourceType'] as String?,
      resourceIds: jsonSerialization['resourceIds'] == null
          ? null
          : _ixq89rj6.Protocol().deserialize<List<_isc.UuidValue>>(
              jsonSerialization['resourceIds'],
            ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      priority: jsonSerialization['priority'] as int?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
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

  String code;

  String name;

  String? description;

  String scheduleConfig;

  DateTime? effectiveFrom;

  DateTime? effectiveUntil;

  int? toleranceMinutes;

  int? escalationMinutes;

  String? resourceType;

  List<_isc.UuidValue>? resourceIds;

  bool? isActive;

  int? priority;

  DateTime? createdAt;

  DateTime? updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [ElogPresetSchedules]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPresetSchedules copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? scheduleConfig,
    DateTime? effectiveFrom,
    DateTime? effectiveUntil,
    int? toleranceMinutes,
    int? escalationMinutes,
    String? resourceType,
    List<_isc.UuidValue>? resourceIds,
    bool? isActive,
    int? priority,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetSchedules',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'scheduleConfig': scheduleConfig,
      if (effectiveFrom != null) 'effectiveFrom': effectiveFrom?.toJson(),
      if (effectiveUntil != null) 'effectiveUntil': effectiveUntil?.toJson(),
      if (toleranceMinutes != null) 'toleranceMinutes': toleranceMinutes,
      if (escalationMinutes != null) 'escalationMinutes': escalationMinutes,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceIds != null)
        'resourceIds': resourceIds?.toJson(valueToJson: (v) => v.toJson()),
      if (isActive != null) 'isActive': isActive,
      if (priority != null) 'priority': priority,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetSchedules',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'scheduleConfig': scheduleConfig,
      if (effectiveFrom != null) 'effectiveFrom': effectiveFrom?.toJson(),
      if (effectiveUntil != null) 'effectiveUntil': effectiveUntil?.toJson(),
      if (toleranceMinutes != null) 'toleranceMinutes': toleranceMinutes,
      if (escalationMinutes != null) 'escalationMinutes': escalationMinutes,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceIds != null)
        'resourceIds': resourceIds?.toJson(valueToJson: (v) => v.toJson()),
      if (isActive != null) 'isActive': isActive,
      if (priority != null) 'priority': priority,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
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

class _ElogPresetSchedulesImpl extends ElogPresetSchedules {
  _ElogPresetSchedulesImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String scheduleConfig,
    DateTime? effectiveFrom,
    DateTime? effectiveUntil,
    int? toleranceMinutes,
    int? escalationMinutes,
    String? resourceType,
    List<_isc.UuidValue>? resourceIds,
    bool? isActive,
    int? priority,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         scheduleConfig: scheduleConfig,
         effectiveFrom: effectiveFrom,
         effectiveUntil: effectiveUntil,
         toleranceMinutes: toleranceMinutes,
         escalationMinutes: escalationMinutes,
         resourceType: resourceType,
         resourceIds: resourceIds,
         isActive: isActive,
         priority: priority,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogPresetSchedules]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPresetSchedules copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? scheduleConfig,
    Object? effectiveFrom = _Undefined,
    Object? effectiveUntil = _Undefined,
    Object? toleranceMinutes = _Undefined,
    Object? escalationMinutes = _Undefined,
    Object? resourceType = _Undefined,
    Object? resourceIds = _Undefined,
    Object? isActive = _Undefined,
    Object? priority = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogPresetSchedules(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      scheduleConfig: scheduleConfig ?? this.scheduleConfig,
      effectiveFrom: effectiveFrom is DateTime?
          ? effectiveFrom
          : this.effectiveFrom,
      effectiveUntil: effectiveUntil is DateTime?
          ? effectiveUntil
          : this.effectiveUntil,
      toleranceMinutes: toleranceMinutes is int?
          ? toleranceMinutes
          : this.toleranceMinutes,
      escalationMinutes: escalationMinutes is int?
          ? escalationMinutes
          : this.escalationMinutes,
      resourceType: resourceType is String? ? resourceType : this.resourceType,
      resourceIds: resourceIds is List<_isc.UuidValue>?
          ? resourceIds
          : this.resourceIds?.map((e0) => e0).toList(),
      isActive: isActive is bool? ? isActive : this.isActive,
      priority: priority is int? ? priority : this.priority,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
