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

abstract class ElogUserRoles
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogUserRoles._({
    this.id,
    required this.userId,
    required this.roleId,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.isActive,
  });

  factory ElogUserRoles({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required _isc.UuidValue roleId,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    bool? isActive,
  }) = _ElogUserRolesImpl;

  factory ElogUserRoles.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogUserRoles(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      roleId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['roleId']),
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

  DateTime? createdAt;

  DateTime? updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  bool? isActive;

  /// Returns a shallow copy of this [ElogUserRoles]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogUserRoles copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    _isc.UuidValue? roleId,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogUserRoles',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'roleId': roleId.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogUserRoles',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'roleId': roleId.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogUserRolesImpl extends ElogUserRoles {
  _ElogUserRolesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required _isc.UuidValue roleId,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    bool? isActive,
  }) : super._(
         id: id,
         userId: userId,
         roleId: roleId,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogUserRoles]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogUserRoles copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? userId,
    _isc.UuidValue? roleId,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return ElogUserRoles(
      id: id is _isc.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      roleId: roleId ?? this.roleId,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}
