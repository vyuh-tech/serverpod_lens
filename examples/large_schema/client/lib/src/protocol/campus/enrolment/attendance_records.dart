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
abstract class CampusAttendanceRecord
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusAttendanceRecord._({
    this.id,
    required this.sessionId,
    required this.enrolmentId,
    required this.status,
    this.checkedInAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAttendanceRecord({
    _isc.UuidValue? id,
    required _isc.UuidValue sessionId,
    required _isc.UuidValue enrolmentId,
    required String status,
    DateTime? checkedInAt,
    DateTime? createdAt,
  }) = _CampusAttendanceRecordImpl;

  factory CampusAttendanceRecord.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusAttendanceRecord(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sessionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['sessionId'],
      ),
      enrolmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['enrolmentId'],
      ),
      status: jsonSerialization['status'] as String,
      checkedInAt: jsonSerialization['checkedInAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['checkedInAt'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue sessionId;

  _isc.UuidValue enrolmentId;

  String status;

  DateTime? checkedInAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusAttendanceRecord]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusAttendanceRecord copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? sessionId,
    _isc.UuidValue? enrolmentId,
    String? status,
    DateTime? checkedInAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAttendanceRecord',
      if (id != null) 'id': id?.toJson(),
      'sessionId': sessionId.toJson(),
      'enrolmentId': enrolmentId.toJson(),
      'status': status,
      if (checkedInAt != null) 'checkedInAt': checkedInAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAttendanceRecord',
      if (id != null) 'id': id?.toJson(),
      'sessionId': sessionId.toJson(),
      'enrolmentId': enrolmentId.toJson(),
      'status': status,
      if (checkedInAt != null) 'checkedInAt': checkedInAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAttendanceRecordImpl extends CampusAttendanceRecord {
  _CampusAttendanceRecordImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue sessionId,
    required _isc.UuidValue enrolmentId,
    required String status,
    DateTime? checkedInAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sessionId: sessionId,
         enrolmentId: enrolmentId,
         status: status,
         checkedInAt: checkedInAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAttendanceRecord]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusAttendanceRecord copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? sessionId,
    _isc.UuidValue? enrolmentId,
    String? status,
    Object? checkedInAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusAttendanceRecord(
      id: id is _isc.UuidValue? ? id : this.id,
      sessionId: sessionId ?? this.sessionId,
      enrolmentId: enrolmentId ?? this.enrolmentId,
      status: status ?? this.status,
      checkedInAt: checkedInAt is DateTime? ? checkedInAt : this.checkedInAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
