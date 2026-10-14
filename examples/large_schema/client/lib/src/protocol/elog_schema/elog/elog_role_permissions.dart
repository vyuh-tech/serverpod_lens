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

abstract class ElogRolePermissions
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogRolePermissions._({
    this.id,
    required this.roleId,
    required this.entity,
    required this.action,
    this.grantedAt,
    this.grantedBy,
  });

  factory ElogRolePermissions({
    _isc.UuidValue? id,
    required _isc.UuidValue roleId,
    required String entity,
    required String action,
    DateTime? grantedAt,
    _isc.UuidValue? grantedBy,
  }) = _ElogRolePermissionsImpl;

  factory ElogRolePermissions.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogRolePermissions(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      roleId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['roleId']),
      entity: jsonSerialization['entity'] as String,
      action: jsonSerialization['action'] as String,
      grantedAt: jsonSerialization['grantedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['grantedAt']),
      grantedBy: jsonSerialization['grantedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['grantedBy'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue roleId;

  String entity;

  String action;

  DateTime? grantedAt;

  _isc.UuidValue? grantedBy;

  /// Returns a shallow copy of this [ElogRolePermissions]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogRolePermissions copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? roleId,
    String? entity,
    String? action,
    DateTime? grantedAt,
    _isc.UuidValue? grantedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogRolePermissions',
      if (id != null) 'id': id?.toJson(),
      'roleId': roleId.toJson(),
      'entity': entity,
      'action': action,
      if (grantedAt != null) 'grantedAt': grantedAt?.toJson(),
      if (grantedBy != null) 'grantedBy': grantedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogRolePermissions',
      if (id != null) 'id': id?.toJson(),
      'roleId': roleId.toJson(),
      'entity': entity,
      'action': action,
      if (grantedAt != null) 'grantedAt': grantedAt?.toJson(),
      if (grantedBy != null) 'grantedBy': grantedBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogRolePermissionsImpl extends ElogRolePermissions {
  _ElogRolePermissionsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue roleId,
    required String entity,
    required String action,
    DateTime? grantedAt,
    _isc.UuidValue? grantedBy,
  }) : super._(
         id: id,
         roleId: roleId,
         entity: entity,
         action: action,
         grantedAt: grantedAt,
         grantedBy: grantedBy,
       );

  /// Returns a shallow copy of this [ElogRolePermissions]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogRolePermissions copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? roleId,
    String? entity,
    String? action,
    Object? grantedAt = _Undefined,
    Object? grantedBy = _Undefined,
  }) {
    return ElogRolePermissions(
      id: id is _isc.UuidValue? ? id : this.id,
      roleId: roleId ?? this.roleId,
      entity: entity ?? this.entity,
      action: action ?? this.action,
      grantedAt: grantedAt is DateTime? ? grantedAt : this.grantedAt,
      grantedBy: grantedBy is _isc.UuidValue? ? grantedBy : this.grantedBy,
    );
  }
}
