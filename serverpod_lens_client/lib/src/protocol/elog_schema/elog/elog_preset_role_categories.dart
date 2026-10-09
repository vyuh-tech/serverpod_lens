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

abstract class ElogPresetRoleCategories
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPresetRoleCategories._({
    this.id,
    required this.industryId,
    required this.code,
    required this.name,
  });

  factory ElogPresetRoleCategories({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String code,
    required String name,
  }) = _ElogPresetRoleCategoriesImpl;

  factory ElogPresetRoleCategories.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPresetRoleCategories(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue industryId;

  String code;

  String name;

  /// Returns a shallow copy of this [ElogPresetRoleCategories]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPresetRoleCategories copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? industryId,
    String? code,
    String? name,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetRoleCategories',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetRoleCategories',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetRoleCategoriesImpl extends ElogPresetRoleCategories {
  _ElogPresetRoleCategoriesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String code,
    required String name,
  }) : super._(
         id: id,
         industryId: industryId,
         code: code,
         name: name,
       );

  /// Returns a shallow copy of this [ElogPresetRoleCategories]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPresetRoleCategories copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? industryId,
    String? code,
    String? name,
  }) {
    return ElogPresetRoleCategories(
      id: id is _isc.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      code: code ?? this.code,
      name: name ?? this.name,
    );
  }
}
