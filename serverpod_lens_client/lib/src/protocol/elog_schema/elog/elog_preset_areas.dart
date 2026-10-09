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

abstract class ElogPresetAreas
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPresetAreas._({
    this.id,
    required this.industryId,
    required this.code,
    required this.name,
    required this.categoryCode,
    this.description,
    this.floorNumber,
    this.roomNumber,
    this.capacity,
    required this.displayOrder,
  });

  factory ElogPresetAreas({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String code,
    required String name,
    required String categoryCode,
    String? description,
    int? floorNumber,
    int? roomNumber,
    int? capacity,
    required int displayOrder,
  }) = _ElogPresetAreasImpl;

  factory ElogPresetAreas.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPresetAreas(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      categoryCode: jsonSerialization['categoryCode'] as String,
      description: jsonSerialization['description'] as String?,
      floorNumber: jsonSerialization['floorNumber'] as int?,
      roomNumber: jsonSerialization['roomNumber'] as int?,
      capacity: jsonSerialization['capacity'] as int?,
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

  String? description;

  int? floorNumber;

  int? roomNumber;

  int? capacity;

  int displayOrder;

  /// Returns a shallow copy of this [ElogPresetAreas]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPresetAreas copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? industryId,
    String? code,
    String? name,
    String? categoryCode,
    String? description,
    int? floorNumber,
    int? roomNumber,
    int? capacity,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetAreas',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'categoryCode': categoryCode,
      if (description != null) 'description': description,
      if (floorNumber != null) 'floorNumber': floorNumber,
      if (roomNumber != null) 'roomNumber': roomNumber,
      if (capacity != null) 'capacity': capacity,
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetAreas',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'categoryCode': categoryCode,
      if (description != null) 'description': description,
      if (floorNumber != null) 'floorNumber': floorNumber,
      if (roomNumber != null) 'roomNumber': roomNumber,
      if (capacity != null) 'capacity': capacity,
      'displayOrder': displayOrder,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetAreasImpl extends ElogPresetAreas {
  _ElogPresetAreasImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String code,
    required String name,
    required String categoryCode,
    String? description,
    int? floorNumber,
    int? roomNumber,
    int? capacity,
    required int displayOrder,
  }) : super._(
         id: id,
         industryId: industryId,
         code: code,
         name: name,
         categoryCode: categoryCode,
         description: description,
         floorNumber: floorNumber,
         roomNumber: roomNumber,
         capacity: capacity,
         displayOrder: displayOrder,
       );

  /// Returns a shallow copy of this [ElogPresetAreas]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPresetAreas copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? industryId,
    String? code,
    String? name,
    String? categoryCode,
    Object? description = _Undefined,
    Object? floorNumber = _Undefined,
    Object? roomNumber = _Undefined,
    Object? capacity = _Undefined,
    int? displayOrder,
  }) {
    return ElogPresetAreas(
      id: id is _isc.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      code: code ?? this.code,
      name: name ?? this.name,
      categoryCode: categoryCode ?? this.categoryCode,
      description: description is String? ? description : this.description,
      floorNumber: floorNumber is int? ? floorNumber : this.floorNumber,
      roomNumber: roomNumber is int? ? roomNumber : this.roomNumber,
      capacity: capacity is int? ? capacity : this.capacity,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}
