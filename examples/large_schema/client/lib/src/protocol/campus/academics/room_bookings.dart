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

/// Fictional university fixture: academics.
abstract class CampusRoomBooking
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusRoomBooking._({
    this.id,
    required this.roomId,
    required this.lecturerId,
    required this.startsAt,
    required this.endsAt,
    required this.purpose,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusRoomBooking({
    _isc.UuidValue? id,
    required _isc.UuidValue roomId,
    required _isc.UuidValue lecturerId,
    required DateTime startsAt,
    required DateTime endsAt,
    required String purpose,
    DateTime? createdAt,
  }) = _CampusRoomBookingImpl;

  factory CampusRoomBooking.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusRoomBooking(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      roomId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['roomId']),
      lecturerId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      startsAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['startsAt'],
      ),
      endsAt: _isc.DateTimeJsonExtension.fromJson(jsonSerialization['endsAt']),
      purpose: jsonSerialization['purpose'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue roomId;

  _isc.UuidValue lecturerId;

  DateTime startsAt;

  DateTime endsAt;

  String purpose;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusRoomBooking]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusRoomBooking copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? roomId,
    _isc.UuidValue? lecturerId,
    DateTime? startsAt,
    DateTime? endsAt,
    String? purpose,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusRoomBooking',
      if (id != null) 'id': id?.toJson(),
      'roomId': roomId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'purpose': purpose,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusRoomBooking',
      if (id != null) 'id': id?.toJson(),
      'roomId': roomId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'purpose': purpose,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusRoomBookingImpl extends CampusRoomBooking {
  _CampusRoomBookingImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue roomId,
    required _isc.UuidValue lecturerId,
    required DateTime startsAt,
    required DateTime endsAt,
    required String purpose,
    DateTime? createdAt,
  }) : super._(
         id: id,
         roomId: roomId,
         lecturerId: lecturerId,
         startsAt: startsAt,
         endsAt: endsAt,
         purpose: purpose,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusRoomBooking]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusRoomBooking copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? roomId,
    _isc.UuidValue? lecturerId,
    DateTime? startsAt,
    DateTime? endsAt,
    String? purpose,
    DateTime? createdAt,
  }) {
    return CampusRoomBooking(
      id: id is _isc.UuidValue? ? id : this.id,
      roomId: roomId ?? this.roomId,
      lecturerId: lecturerId ?? this.lecturerId,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt ?? this.endsAt,
      purpose: purpose ?? this.purpose,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
