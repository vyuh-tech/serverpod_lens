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

abstract class SsoUserRoles
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoUserRoles._({
    this.id,
    required this.userId,
    required this.roleId,
    this.isActive,
  });

  factory SsoUserRoles({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required _isc.UuidValue roleId,
    bool? isActive,
  }) = _SsoUserRolesImpl;

  factory SsoUserRoles.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoUserRoles(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      roleId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['roleId']),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue userId;

  _isc.UuidValue roleId;

  bool? isActive;

  /// Returns a shallow copy of this [SsoUserRoles]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoUserRoles copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    _isc.UuidValue? roleId,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoUserRoles',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'roleId': roleId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoUserRoles',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'roleId': roleId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoUserRolesImpl extends SsoUserRoles {
  _SsoUserRolesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required _isc.UuidValue roleId,
    bool? isActive,
  }) : super._(
         id: id,
         userId: userId,
         roleId: roleId,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [SsoUserRoles]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoUserRoles copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? userId,
    _isc.UuidValue? roleId,
    Object? isActive = _Undefined,
  }) {
    return SsoUserRoles(
      id: id is _isc.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      roleId: roleId ?? this.roleId,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}
