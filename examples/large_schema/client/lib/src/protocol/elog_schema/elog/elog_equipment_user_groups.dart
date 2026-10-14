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

abstract class ElogEquipmentUserGroups
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogEquipmentUserGroups._({
    this.id,
    required this.equipmentId,
    required this.userGroupId,
    this.isActive,
  });

  factory ElogEquipmentUserGroups({
    _isc.UuidValue? id,
    required _isc.UuidValue equipmentId,
    required _isc.UuidValue userGroupId,
    bool? isActive,
  }) = _ElogEquipmentUserGroupsImpl;

  factory ElogEquipmentUserGroups.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogEquipmentUserGroups(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      equipmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['equipmentId'],
      ),
      userGroupId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['userGroupId'],
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

  _isc.UuidValue equipmentId;

  _isc.UuidValue userGroupId;

  bool? isActive;

  /// Returns a shallow copy of this [ElogEquipmentUserGroups]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogEquipmentUserGroups copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? equipmentId,
    _isc.UuidValue? userGroupId,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogEquipmentUserGroups',
      if (id != null) 'id': id?.toJson(),
      'equipmentId': equipmentId.toJson(),
      'userGroupId': userGroupId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogEquipmentUserGroups',
      if (id != null) 'id': id?.toJson(),
      'equipmentId': equipmentId.toJson(),
      'userGroupId': userGroupId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogEquipmentUserGroupsImpl extends ElogEquipmentUserGroups {
  _ElogEquipmentUserGroupsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue equipmentId,
    required _isc.UuidValue userGroupId,
    bool? isActive,
  }) : super._(
         id: id,
         equipmentId: equipmentId,
         userGroupId: userGroupId,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogEquipmentUserGroups]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogEquipmentUserGroups copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? equipmentId,
    _isc.UuidValue? userGroupId,
    Object? isActive = _Undefined,
  }) {
    return ElogEquipmentUserGroups(
      id: id is _isc.UuidValue? ? id : this.id,
      equipmentId: equipmentId ?? this.equipmentId,
      userGroupId: userGroupId ?? this.userGroupId,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}
