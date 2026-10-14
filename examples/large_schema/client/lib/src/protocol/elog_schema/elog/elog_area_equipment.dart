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

abstract class ElogAreaEquipment
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogAreaEquipment._({
    this.id,
    required this.areaId,
    required this.equipmentId,
    this.isPrimary,
    this.isActive,
  });

  factory ElogAreaEquipment({
    _isc.UuidValue? id,
    required _isc.UuidValue areaId,
    required _isc.UuidValue equipmentId,
    bool? isPrimary,
    bool? isActive,
  }) = _ElogAreaEquipmentImpl;

  factory ElogAreaEquipment.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogAreaEquipment(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      areaId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['areaId']),
      equipmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['equipmentId'],
      ),
      isPrimary: jsonSerialization['isPrimary'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isPrimary']),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue areaId;

  _isc.UuidValue equipmentId;

  bool? isPrimary;

  bool? isActive;

  /// Returns a shallow copy of this [ElogAreaEquipment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogAreaEquipment copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? areaId,
    _isc.UuidValue? equipmentId,
    bool? isPrimary,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogAreaEquipment',
      if (id != null) 'id': id?.toJson(),
      'areaId': areaId.toJson(),
      'equipmentId': equipmentId.toJson(),
      if (isPrimary != null) 'isPrimary': isPrimary,
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogAreaEquipment',
      if (id != null) 'id': id?.toJson(),
      'areaId': areaId.toJson(),
      'equipmentId': equipmentId.toJson(),
      if (isPrimary != null) 'isPrimary': isPrimary,
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogAreaEquipmentImpl extends ElogAreaEquipment {
  _ElogAreaEquipmentImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue areaId,
    required _isc.UuidValue equipmentId,
    bool? isPrimary,
    bool? isActive,
  }) : super._(
         id: id,
         areaId: areaId,
         equipmentId: equipmentId,
         isPrimary: isPrimary,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogAreaEquipment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogAreaEquipment copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? areaId,
    _isc.UuidValue? equipmentId,
    Object? isPrimary = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return ElogAreaEquipment(
      id: id is _isc.UuidValue? ? id : this.id,
      areaId: areaId ?? this.areaId,
      equipmentId: equipmentId ?? this.equipmentId,
      isPrimary: isPrimary is bool? ? isPrimary : this.isPrimary,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}
