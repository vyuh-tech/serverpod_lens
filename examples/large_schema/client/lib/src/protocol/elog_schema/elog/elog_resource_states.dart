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

abstract class ElogResourceStates
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogResourceStates._({
    this.id,
    required this.resourceType,
    required this.resourceId,
    required this.states,
    required this.totalUsageCount,
    required this.usagesSinceLastCleaning,
    required this.usagesSinceLastInspection,
    required this.usagesSinceLastMaintenance,
    this.lastEventAt,
    required this.isBlocked,
    this.blockingReason,
    required this.versionNumber,
    required this.status,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogResourceStates({
    _isc.UuidValue? id,
    required String resourceType,
    required _isc.UuidValue resourceId,
    required String states,
    required int totalUsageCount,
    required int usagesSinceLastCleaning,
    required int usagesSinceLastInspection,
    required int usagesSinceLastMaintenance,
    DateTime? lastEventAt,
    required bool isBlocked,
    String? blockingReason,
    required int versionNumber,
    required String status,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) = _ElogResourceStatesImpl;

  factory ElogResourceStates.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogResourceStates(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      resourceType: jsonSerialization['resourceType'] as String,
      resourceId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['resourceId'],
      ),
      states: jsonSerialization['states'] as String,
      totalUsageCount: jsonSerialization['totalUsageCount'] as int,
      usagesSinceLastCleaning:
          jsonSerialization['usagesSinceLastCleaning'] as int,
      usagesSinceLastInspection:
          jsonSerialization['usagesSinceLastInspection'] as int,
      usagesSinceLastMaintenance:
          jsonSerialization['usagesSinceLastMaintenance'] as int,
      lastEventAt: jsonSerialization['lastEventAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastEventAt'],
            ),
      isBlocked: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['isBlocked'],
      ),
      blockingReason: jsonSerialization['blockingReason'] as String?,
      versionNumber: jsonSerialization['versionNumber'] as int,
      status: jsonSerialization['status'] as String,
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

  String resourceType;

  _isc.UuidValue resourceId;

  String states;

  int totalUsageCount;

  int usagesSinceLastCleaning;

  int usagesSinceLastInspection;

  int usagesSinceLastMaintenance;

  DateTime? lastEventAt;

  bool isBlocked;

  String? blockingReason;

  int versionNumber;

  String status;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [ElogResourceStates]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogResourceStates copyWith({
    _isc.UuidValue? id,
    String? resourceType,
    _isc.UuidValue? resourceId,
    String? states,
    int? totalUsageCount,
    int? usagesSinceLastCleaning,
    int? usagesSinceLastInspection,
    int? usagesSinceLastMaintenance,
    DateTime? lastEventAt,
    bool? isBlocked,
    String? blockingReason,
    int? versionNumber,
    String? status,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogResourceStates',
      if (id != null) 'id': id?.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      'states': states,
      'totalUsageCount': totalUsageCount,
      'usagesSinceLastCleaning': usagesSinceLastCleaning,
      'usagesSinceLastInspection': usagesSinceLastInspection,
      'usagesSinceLastMaintenance': usagesSinceLastMaintenance,
      if (lastEventAt != null) 'lastEventAt': lastEventAt?.toJson(),
      'isBlocked': isBlocked,
      if (blockingReason != null) 'blockingReason': blockingReason,
      'versionNumber': versionNumber,
      'status': status,
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
      '__className__': 'ElogResourceStates',
      if (id != null) 'id': id?.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      'states': states,
      'totalUsageCount': totalUsageCount,
      'usagesSinceLastCleaning': usagesSinceLastCleaning,
      'usagesSinceLastInspection': usagesSinceLastInspection,
      'usagesSinceLastMaintenance': usagesSinceLastMaintenance,
      if (lastEventAt != null) 'lastEventAt': lastEventAt?.toJson(),
      'isBlocked': isBlocked,
      if (blockingReason != null) 'blockingReason': blockingReason,
      'versionNumber': versionNumber,
      'status': status,
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

class _ElogResourceStatesImpl extends ElogResourceStates {
  _ElogResourceStatesImpl({
    _isc.UuidValue? id,
    required String resourceType,
    required _isc.UuidValue resourceId,
    required String states,
    required int totalUsageCount,
    required int usagesSinceLastCleaning,
    required int usagesSinceLastInspection,
    required int usagesSinceLastMaintenance,
    DateTime? lastEventAt,
    required bool isBlocked,
    String? blockingReason,
    required int versionNumber,
    required String status,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         resourceType: resourceType,
         resourceId: resourceId,
         states: states,
         totalUsageCount: totalUsageCount,
         usagesSinceLastCleaning: usagesSinceLastCleaning,
         usagesSinceLastInspection: usagesSinceLastInspection,
         usagesSinceLastMaintenance: usagesSinceLastMaintenance,
         lastEventAt: lastEventAt,
         isBlocked: isBlocked,
         blockingReason: blockingReason,
         versionNumber: versionNumber,
         status: status,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogResourceStates]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogResourceStates copyWith({
    Object? id = _Undefined,
    String? resourceType,
    _isc.UuidValue? resourceId,
    String? states,
    int? totalUsageCount,
    int? usagesSinceLastCleaning,
    int? usagesSinceLastInspection,
    int? usagesSinceLastMaintenance,
    Object? lastEventAt = _Undefined,
    bool? isBlocked,
    Object? blockingReason = _Undefined,
    int? versionNumber,
    String? status,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogResourceStates(
      id: id is _isc.UuidValue? ? id : this.id,
      resourceType: resourceType ?? this.resourceType,
      resourceId: resourceId ?? this.resourceId,
      states: states ?? this.states,
      totalUsageCount: totalUsageCount ?? this.totalUsageCount,
      usagesSinceLastCleaning:
          usagesSinceLastCleaning ?? this.usagesSinceLastCleaning,
      usagesSinceLastInspection:
          usagesSinceLastInspection ?? this.usagesSinceLastInspection,
      usagesSinceLastMaintenance:
          usagesSinceLastMaintenance ?? this.usagesSinceLastMaintenance,
      lastEventAt: lastEventAt is DateTime? ? lastEventAt : this.lastEventAt,
      isBlocked: isBlocked ?? this.isBlocked,
      blockingReason: blockingReason is String?
          ? blockingReason
          : this.blockingReason,
      versionNumber: versionNumber ?? this.versionNumber,
      status: status ?? this.status,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
