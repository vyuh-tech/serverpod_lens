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

abstract class ElogPresetEquipmentCategories
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPresetEquipmentCategories._({
    this.id,
    required this.industryId,
    required this.code,
    required this.name,
    required this.type,
  });

  factory ElogPresetEquipmentCategories({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String code,
    required String name,
    required String type,
  }) = _ElogPresetEquipmentCategoriesImpl;

  factory ElogPresetEquipmentCategories.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPresetEquipmentCategories(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      type: jsonSerialization['type'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue industryId;

  String code;

  String name;

  String type;

  /// Returns a shallow copy of this [ElogPresetEquipmentCategories]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPresetEquipmentCategories copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? industryId,
    String? code,
    String? name,
    String? type,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetEquipmentCategories',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'type': type,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetEquipmentCategories',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'type': type,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetEquipmentCategoriesImpl extends ElogPresetEquipmentCategories {
  _ElogPresetEquipmentCategoriesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String code,
    required String name,
    required String type,
  }) : super._(
         id: id,
         industryId: industryId,
         code: code,
         name: name,
         type: type,
       );

  /// Returns a shallow copy of this [ElogPresetEquipmentCategories]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPresetEquipmentCategories copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? industryId,
    String? code,
    String? name,
    String? type,
  }) {
    return ElogPresetEquipmentCategories(
      id: id is _isc.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      code: code ?? this.code,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}
