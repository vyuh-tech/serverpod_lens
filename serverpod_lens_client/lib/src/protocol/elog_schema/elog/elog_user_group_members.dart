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

abstract class ElogUserGroupMembers
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogUserGroupMembers._({
    this.id,
    required this.userId,
    required this.userGroupId,
    this.isActive,
    required this.createdAt,
    this.createdBy,
    required this.updatedAt,
    this.updatedBy,
  });

  factory ElogUserGroupMembers({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required _isc.UuidValue userGroupId,
    bool? isActive,
    required DateTime createdAt,
    _isc.UuidValue? createdBy,
    required DateTime updatedAt,
    _isc.UuidValue? updatedBy,
  }) = _ElogUserGroupMembersImpl;

  factory ElogUserGroupMembers.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogUserGroupMembers(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      userGroupId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['userGroupId'],
      ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['createdBy'],
            ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
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

  _isc.UuidValue userId;

  _isc.UuidValue userGroupId;

  bool? isActive;

  DateTime createdAt;

  _isc.UuidValue? createdBy;

  DateTime updatedAt;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [ElogUserGroupMembers]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogUserGroupMembers copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    _isc.UuidValue? userGroupId,
    bool? isActive,
    DateTime? createdAt,
    _isc.UuidValue? createdBy,
    DateTime? updatedAt,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogUserGroupMembers',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'userGroupId': userGroupId.toJson(),
      if (isActive != null) 'isActive': isActive,
      'createdAt': createdAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogUserGroupMembers',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'userGroupId': userGroupId.toJson(),
      if (isActive != null) 'isActive': isActive,
      'createdAt': createdAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogUserGroupMembersImpl extends ElogUserGroupMembers {
  _ElogUserGroupMembersImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required _isc.UuidValue userGroupId,
    bool? isActive,
    required DateTime createdAt,
    _isc.UuidValue? createdBy,
    required DateTime updatedAt,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         userId: userId,
         userGroupId: userGroupId,
         isActive: isActive,
         createdAt: createdAt,
         createdBy: createdBy,
         updatedAt: updatedAt,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogUserGroupMembers]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogUserGroupMembers copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? userId,
    _isc.UuidValue? userGroupId,
    Object? isActive = _Undefined,
    DateTime? createdAt,
    Object? createdBy = _Undefined,
    DateTime? updatedAt,
    Object? updatedBy = _Undefined,
  }) {
    return ElogUserGroupMembers(
      id: id is _isc.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      userGroupId: userGroupId ?? this.userGroupId,
      isActive: isActive is bool? ? isActive : this.isActive,
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
