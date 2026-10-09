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

abstract class ElogAreas
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogAreas._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.parentAreaId,
    this.capacity,
    this.floorNumber,
    this.roomNumber,
    this.areaCategoryId,
  });

  factory ElogAreas({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    _isc.UuidValue? parentAreaId,
    int? capacity,
    int? floorNumber,
    String? roomNumber,
    _isc.UuidValue? areaCategoryId,
  }) = _ElogAreasImpl;

  factory ElogAreas.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogAreas(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      parentAreaId: jsonSerialization['parentAreaId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['parentAreaId'],
            ),
      capacity: jsonSerialization['capacity'] as int?,
      floorNumber: jsonSerialization['floorNumber'] as int?,
      roomNumber: jsonSerialization['roomNumber'] as String?,
      areaCategoryId: jsonSerialization['areaCategoryId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['areaCategoryId'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String? description;

  _isc.UuidValue? parentAreaId;

  int? capacity;

  int? floorNumber;

  String? roomNumber;

  _isc.UuidValue? areaCategoryId;

  /// Returns a shallow copy of this [ElogAreas]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogAreas copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    _isc.UuidValue? parentAreaId,
    int? capacity,
    int? floorNumber,
    String? roomNumber,
    _isc.UuidValue? areaCategoryId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogAreas',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (parentAreaId != null) 'parentAreaId': parentAreaId?.toJson(),
      if (capacity != null) 'capacity': capacity,
      if (floorNumber != null) 'floorNumber': floorNumber,
      if (roomNumber != null) 'roomNumber': roomNumber,
      if (areaCategoryId != null) 'areaCategoryId': areaCategoryId?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogAreas',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (parentAreaId != null) 'parentAreaId': parentAreaId?.toJson(),
      if (capacity != null) 'capacity': capacity,
      if (floorNumber != null) 'floorNumber': floorNumber,
      if (roomNumber != null) 'roomNumber': roomNumber,
      if (areaCategoryId != null) 'areaCategoryId': areaCategoryId?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogAreasImpl extends ElogAreas {
  _ElogAreasImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    _isc.UuidValue? parentAreaId,
    int? capacity,
    int? floorNumber,
    String? roomNumber,
    _isc.UuidValue? areaCategoryId,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         parentAreaId: parentAreaId,
         capacity: capacity,
         floorNumber: floorNumber,
         roomNumber: roomNumber,
         areaCategoryId: areaCategoryId,
       );

  /// Returns a shallow copy of this [ElogAreas]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogAreas copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? parentAreaId = _Undefined,
    Object? capacity = _Undefined,
    Object? floorNumber = _Undefined,
    Object? roomNumber = _Undefined,
    Object? areaCategoryId = _Undefined,
  }) {
    return ElogAreas(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      parentAreaId: parentAreaId is _isc.UuidValue?
          ? parentAreaId
          : this.parentAreaId,
      capacity: capacity is int? ? capacity : this.capacity,
      floorNumber: floorNumber is int? ? floorNumber : this.floorNumber,
      roomNumber: roomNumber is String? ? roomNumber : this.roomNumber,
      areaCategoryId: areaCategoryId is _isc.UuidValue?
          ? areaCategoryId
          : this.areaCategoryId,
    );
  }
}
