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

/// Fictional university fixture: enrolment.
abstract class CampusAttendanceSession
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusAttendanceSession._({
    this.id,
    required this.sectionId,
    this.meetingId,
    required this.heldAt,
    this.topic,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAttendanceSession({
    _isc.UuidValue? id,
    required _isc.UuidValue sectionId,
    _isc.UuidValue? meetingId,
    required DateTime heldAt,
    String? topic,
    DateTime? createdAt,
  }) = _CampusAttendanceSessionImpl;

  factory CampusAttendanceSession.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusAttendanceSession(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sectionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      meetingId: jsonSerialization['meetingId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['meetingId'],
            ),
      heldAt: _isc.DateTimeJsonExtension.fromJson(jsonSerialization['heldAt']),
      topic: jsonSerialization['topic'] as String?,
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

  _isc.UuidValue? meetingId;

  DateTime heldAt;

  String? topic;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusAttendanceSession]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusAttendanceSession copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? sectionId,
    _isc.UuidValue? meetingId,
    DateTime? heldAt,
    String? topic,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAttendanceSession',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      if (meetingId != null) 'meetingId': meetingId?.toJson(),
      'heldAt': heldAt.toJson(),
      if (topic != null) 'topic': topic,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAttendanceSession',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      if (meetingId != null) 'meetingId': meetingId?.toJson(),
      'heldAt': heldAt.toJson(),
      if (topic != null) 'topic': topic,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAttendanceSessionImpl extends CampusAttendanceSession {
  _CampusAttendanceSessionImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue sectionId,
    _isc.UuidValue? meetingId,
    required DateTime heldAt,
    String? topic,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sectionId: sectionId,
         meetingId: meetingId,
         heldAt: heldAt,
         topic: topic,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAttendanceSession]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusAttendanceSession copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? sectionId,
    Object? meetingId = _Undefined,
    DateTime? heldAt,
    Object? topic = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusAttendanceSession(
      id: id is _isc.UuidValue? ? id : this.id,
      sectionId: sectionId ?? this.sectionId,
      meetingId: meetingId is _isc.UuidValue? ? meetingId : this.meetingId,
      heldAt: heldAt ?? this.heldAt,
      topic: topic is String? ? topic : this.topic,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
