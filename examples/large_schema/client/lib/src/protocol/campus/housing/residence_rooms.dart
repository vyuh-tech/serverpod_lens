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

/// Fictional university fixture: housing.
abstract class CampusResidenceRoom
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusResidenceRoom._({
    this.id,
    required this.floorId,
    this.roomId,
    required this.number,
    required this.roomType,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResidenceRoom({
    _isc.UuidValue? id,
    required _isc.UuidValue floorId,
    _isc.UuidValue? roomId,
    required String number,
    required String roomType,
    DateTime? createdAt,
  }) = _CampusResidenceRoomImpl;

  factory CampusResidenceRoom.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusResidenceRoom(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      floorId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['floorId'],
      ),
      roomId: jsonSerialization['roomId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['roomId']),
      number: jsonSerialization['number'] as String,
      roomType: jsonSerialization['roomType'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue floorId;

  _isc.UuidValue? roomId;

  String number;

  String roomType;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusResidenceRoom]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusResidenceRoom copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? floorId,
    _isc.UuidValue? roomId,
    String? number,
    String? roomType,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResidenceRoom',
      if (id != null) 'id': id?.toJson(),
      'floorId': floorId.toJson(),
      if (roomId != null) 'roomId': roomId?.toJson(),
      'number': number,
      'roomType': roomType,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResidenceRoom',
      if (id != null) 'id': id?.toJson(),
      'floorId': floorId.toJson(),
      if (roomId != null) 'roomId': roomId?.toJson(),
      'number': number,
      'roomType': roomType,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusResidenceRoomImpl extends CampusResidenceRoom {
  _CampusResidenceRoomImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue floorId,
    _isc.UuidValue? roomId,
    required String number,
    required String roomType,
    DateTime? createdAt,
  }) : super._(
         id: id,
         floorId: floorId,
         roomId: roomId,
         number: number,
         roomType: roomType,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResidenceRoom]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusResidenceRoom copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? floorId,
    Object? roomId = _Undefined,
    String? number,
    String? roomType,
    DateTime? createdAt,
  }) {
    return CampusResidenceRoom(
      id: id is _isc.UuidValue? ? id : this.id,
      floorId: floorId ?? this.floorId,
      roomId: roomId is _isc.UuidValue? ? roomId : this.roomId,
      number: number ?? this.number,
      roomType: roomType ?? this.roomType,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
