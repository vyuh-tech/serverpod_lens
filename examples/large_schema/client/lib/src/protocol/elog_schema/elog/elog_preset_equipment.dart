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

abstract class ElogPresetEquipment
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPresetEquipment._({
    this.id,
    required this.industryId,
    required this.code,
    required this.name,
    required this.categoryCode,
    this.manufacturer,
    this.description,
    required this.displayOrder,
  });

  factory ElogPresetEquipment({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String code,
    required String name,
    required String categoryCode,
    String? manufacturer,
    String? description,
    required int displayOrder,
  }) = _ElogPresetEquipmentImpl;

  factory ElogPresetEquipment.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPresetEquipment(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      categoryCode: jsonSerialization['categoryCode'] as String,
      manufacturer: jsonSerialization['manufacturer'] as String?,
      description: jsonSerialization['description'] as String?,
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue industryId;

  String code;

  String name;

  String categoryCode;

  String? manufacturer;

  String? description;

  int displayOrder;

  /// Returns a shallow copy of this [ElogPresetEquipment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPresetEquipment copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? industryId,
    String? code,
    String? name,
    String? categoryCode,
    String? manufacturer,
    String? description,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetEquipment',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'categoryCode': categoryCode,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (description != null) 'description': description,
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetEquipment',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'categoryCode': categoryCode,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (description != null) 'description': description,
      'displayOrder': displayOrder,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetEquipmentImpl extends ElogPresetEquipment {
  _ElogPresetEquipmentImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String code,
    required String name,
    required String categoryCode,
    String? manufacturer,
    String? description,
    required int displayOrder,
  }) : super._(
         id: id,
         industryId: industryId,
         code: code,
         name: name,
         categoryCode: categoryCode,
         manufacturer: manufacturer,
         description: description,
         displayOrder: displayOrder,
       );

  /// Returns a shallow copy of this [ElogPresetEquipment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPresetEquipment copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? industryId,
    String? code,
    String? name,
    String? categoryCode,
    Object? manufacturer = _Undefined,
    Object? description = _Undefined,
    int? displayOrder,
  }) {
    return ElogPresetEquipment(
      id: id is _isc.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      code: code ?? this.code,
      name: name ?? this.name,
      categoryCode: categoryCode ?? this.categoryCode,
      manufacturer: manufacturer is String? ? manufacturer : this.manufacturer,
      description: description is String? ? description : this.description,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}
