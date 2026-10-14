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

abstract class ElogUserGroups
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogUserGroups._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.groupType,
  });

  factory ElogUserGroups({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? groupType,
  }) = _ElogUserGroupsImpl;

  factory ElogUserGroups.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogUserGroups(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      groupType: jsonSerialization['groupType'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String? description;

  String? groupType;

  /// Returns a shallow copy of this [ElogUserGroups]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogUserGroups copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? groupType,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogUserGroups',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (groupType != null) 'groupType': groupType,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogUserGroups',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (groupType != null) 'groupType': groupType,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogUserGroupsImpl extends ElogUserGroups {
  _ElogUserGroupsImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? groupType,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         groupType: groupType,
       );

  /// Returns a shallow copy of this [ElogUserGroups]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogUserGroups copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? groupType = _Undefined,
  }) {
    return ElogUserGroups(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      groupType: groupType is String? ? groupType : this.groupType,
    );
  }
}
