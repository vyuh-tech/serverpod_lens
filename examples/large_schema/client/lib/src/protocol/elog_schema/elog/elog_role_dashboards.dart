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

abstract class ElogRoleDashboards
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogRoleDashboards._({
    this.id,
    required this.roleId,
    required this.dashboardId,
    this.isDefault,
    this.isActive,
    this.displayOrder,
    this.assignedAt,
    this.assignedBy,
  });

  factory ElogRoleDashboards({
    _isc.UuidValue? id,
    required _isc.UuidValue roleId,
    required _isc.UuidValue dashboardId,
    bool? isDefault,
    bool? isActive,
    int? displayOrder,
    DateTime? assignedAt,
    _isc.UuidValue? assignedBy,
  }) = _ElogRoleDashboardsImpl;

  factory ElogRoleDashboards.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogRoleDashboards(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      roleId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['roleId']),
      dashboardId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['dashboardId'],
      ),
      isDefault: jsonSerialization['isDefault'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isDefault']),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      displayOrder: jsonSerialization['displayOrder'] as int?,
      assignedAt: jsonSerialization['assignedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['assignedAt'],
            ),
      assignedBy: jsonSerialization['assignedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['assignedBy'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue roleId;

  _isc.UuidValue dashboardId;

  bool? isDefault;

  bool? isActive;

  int? displayOrder;

  DateTime? assignedAt;

  _isc.UuidValue? assignedBy;

  /// Returns a shallow copy of this [ElogRoleDashboards]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogRoleDashboards copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? roleId,
    _isc.UuidValue? dashboardId,
    bool? isDefault,
    bool? isActive,
    int? displayOrder,
    DateTime? assignedAt,
    _isc.UuidValue? assignedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogRoleDashboards',
      if (id != null) 'id': id?.toJson(),
      'roleId': roleId.toJson(),
      'dashboardId': dashboardId.toJson(),
      if (isDefault != null) 'isDefault': isDefault,
      if (isActive != null) 'isActive': isActive,
      if (displayOrder != null) 'displayOrder': displayOrder,
      if (assignedAt != null) 'assignedAt': assignedAt?.toJson(),
      if (assignedBy != null) 'assignedBy': assignedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogRoleDashboards',
      if (id != null) 'id': id?.toJson(),
      'roleId': roleId.toJson(),
      'dashboardId': dashboardId.toJson(),
      if (isDefault != null) 'isDefault': isDefault,
      if (isActive != null) 'isActive': isActive,
      if (displayOrder != null) 'displayOrder': displayOrder,
      if (assignedAt != null) 'assignedAt': assignedAt?.toJson(),
      if (assignedBy != null) 'assignedBy': assignedBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogRoleDashboardsImpl extends ElogRoleDashboards {
  _ElogRoleDashboardsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue roleId,
    required _isc.UuidValue dashboardId,
    bool? isDefault,
    bool? isActive,
    int? displayOrder,
    DateTime? assignedAt,
    _isc.UuidValue? assignedBy,
  }) : super._(
         id: id,
         roleId: roleId,
         dashboardId: dashboardId,
         isDefault: isDefault,
         isActive: isActive,
         displayOrder: displayOrder,
         assignedAt: assignedAt,
         assignedBy: assignedBy,
       );

  /// Returns a shallow copy of this [ElogRoleDashboards]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogRoleDashboards copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? roleId,
    _isc.UuidValue? dashboardId,
    Object? isDefault = _Undefined,
    Object? isActive = _Undefined,
    Object? displayOrder = _Undefined,
    Object? assignedAt = _Undefined,
    Object? assignedBy = _Undefined,
  }) {
    return ElogRoleDashboards(
      id: id is _isc.UuidValue? ? id : this.id,
      roleId: roleId ?? this.roleId,
      dashboardId: dashboardId ?? this.dashboardId,
      isDefault: isDefault is bool? ? isDefault : this.isDefault,
      isActive: isActive is bool? ? isActive : this.isActive,
      displayOrder: displayOrder is int? ? displayOrder : this.displayOrder,
      assignedAt: assignedAt is DateTime? ? assignedAt : this.assignedAt,
      assignedBy: assignedBy is _isc.UuidValue? ? assignedBy : this.assignedBy,
    );
  }
}
