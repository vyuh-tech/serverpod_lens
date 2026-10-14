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

abstract class SsoRoleDashboards
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoRoleDashboards._({
    this.id,
    required this.roleId,
    required this.dashboardId,
    required this.isDefault,
    required this.displayOrder,
    required this.isActive,
  });

  factory SsoRoleDashboards({
    _isc.UuidValue? id,
    required _isc.UuidValue roleId,
    required _isc.UuidValue dashboardId,
    required bool isDefault,
    required int displayOrder,
    required bool isActive,
  }) = _SsoRoleDashboardsImpl;

  factory SsoRoleDashboards.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoRoleDashboards(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      roleId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['roleId']),
      dashboardId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['dashboardId'],
      ),
      isDefault: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['isDefault'],
      ),
      displayOrder: jsonSerialization['displayOrder'] as int,
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue roleId;

  _isc.UuidValue dashboardId;

  bool isDefault;

  int displayOrder;

  bool isActive;

  /// Returns a shallow copy of this [SsoRoleDashboards]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoRoleDashboards copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? roleId,
    _isc.UuidValue? dashboardId,
    bool? isDefault,
    int? displayOrder,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoRoleDashboards',
      if (id != null) 'id': id?.toJson(),
      'roleId': roleId.toJson(),
      'dashboardId': dashboardId.toJson(),
      'isDefault': isDefault,
      'displayOrder': displayOrder,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoRoleDashboards',
      if (id != null) 'id': id?.toJson(),
      'roleId': roleId.toJson(),
      'dashboardId': dashboardId.toJson(),
      'isDefault': isDefault,
      'displayOrder': displayOrder,
      'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoRoleDashboardsImpl extends SsoRoleDashboards {
  _SsoRoleDashboardsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue roleId,
    required _isc.UuidValue dashboardId,
    required bool isDefault,
    required int displayOrder,
    required bool isActive,
  }) : super._(
         id: id,
         roleId: roleId,
         dashboardId: dashboardId,
         isDefault: isDefault,
         displayOrder: displayOrder,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [SsoRoleDashboards]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoRoleDashboards copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? roleId,
    _isc.UuidValue? dashboardId,
    bool? isDefault,
    int? displayOrder,
    bool? isActive,
  }) {
    return SsoRoleDashboards(
      id: id is _isc.UuidValue? ? id : this.id,
      roleId: roleId ?? this.roleId,
      dashboardId: dashboardId ?? this.dashboardId,
      isDefault: isDefault ?? this.isDefault,
      displayOrder: displayOrder ?? this.displayOrder,
      isActive: isActive ?? this.isActive,
    );
  }
}
