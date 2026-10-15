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
abstract class CampusSectionMeeting
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusSectionMeeting._({
    this.id,
    required this.sectionId,
    required this.roomId,
    required this.weekday,
    required this.startsAt,
    required this.endsAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSectionMeeting({
    _isc.UuidValue? id,
    required _isc.UuidValue sectionId,
    required _isc.UuidValue roomId,
    required int weekday,
    required DateTime startsAt,
    required DateTime endsAt,
    DateTime? createdAt,
  }) = _CampusSectionMeetingImpl;

  factory CampusSectionMeeting.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusSectionMeeting(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sectionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      roomId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['roomId']),
      weekday: jsonSerialization['weekday'] as int,
      startsAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['startsAt'],
      ),
      endsAt: _isc.DateTimeJsonExtension.fromJson(jsonSerialization['endsAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue sectionId;

  _isc.UuidValue roomId;

  int weekday;

  DateTime startsAt;

  DateTime endsAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusSectionMeeting]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusSectionMeeting copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? sectionId,
    _isc.UuidValue? roomId,
    int? weekday,
    DateTime? startsAt,
    DateTime? endsAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSectionMeeting',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'roomId': roomId.toJson(),
      'weekday': weekday,
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSectionMeeting',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'roomId': roomId.toJson(),
      'weekday': weekday,
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSectionMeetingImpl extends CampusSectionMeeting {
  _CampusSectionMeetingImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue sectionId,
    required _isc.UuidValue roomId,
    required int weekday,
    required DateTime startsAt,
    required DateTime endsAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sectionId: sectionId,
         roomId: roomId,
         weekday: weekday,
         startsAt: startsAt,
         endsAt: endsAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSectionMeeting]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusSectionMeeting copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? sectionId,
    _isc.UuidValue? roomId,
    int? weekday,
    DateTime? startsAt,
    DateTime? endsAt,
    DateTime? createdAt,
  }) {
    return CampusSectionMeeting(
      id: id is _isc.UuidValue? ? id : this.id,
      sectionId: sectionId ?? this.sectionId,
      roomId: roomId ?? this.roomId,
      weekday: weekday ?? this.weekday,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt ?? this.endsAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
