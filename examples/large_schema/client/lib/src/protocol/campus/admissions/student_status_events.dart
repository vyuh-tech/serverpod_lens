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

/// Fictional university fixture: admissions.
abstract class CampusStudentStatusEvent
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusStudentStatusEvent._({
    this.id,
    required this.studentId,
    this.previousStatus,
    required this.nextStatus,
    required this.effectiveAt,
    this.reason,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentStatusEvent({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    String? previousStatus,
    required String nextStatus,
    required DateTime effectiveAt,
    String? reason,
    DateTime? createdAt,
  }) = _CampusStudentStatusEventImpl;

  factory CampusStudentStatusEvent.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusStudentStatusEvent(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      previousStatus: jsonSerialization['previousStatus'] as String?,
      nextStatus: jsonSerialization['nextStatus'] as String,
      effectiveAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['effectiveAt'],
      ),
      reason: jsonSerialization['reason'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue studentId;

  String? previousStatus;

  String nextStatus;

  DateTime effectiveAt;

  String? reason;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusStudentStatusEvent]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusStudentStatusEvent copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    String? previousStatus,
    String? nextStatus,
    DateTime? effectiveAt,
    String? reason,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentStatusEvent',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      if (previousStatus != null) 'previousStatus': previousStatus,
      'nextStatus': nextStatus,
      'effectiveAt': effectiveAt.toJson(),
      if (reason != null) 'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentStatusEvent',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      if (previousStatus != null) 'previousStatus': previousStatus,
      'nextStatus': nextStatus,
      'effectiveAt': effectiveAt.toJson(),
      if (reason != null) 'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentStatusEventImpl extends CampusStudentStatusEvent {
  _CampusStudentStatusEventImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    String? previousStatus,
    required String nextStatus,
    required DateTime effectiveAt,
    String? reason,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         previousStatus: previousStatus,
         nextStatus: nextStatus,
         effectiveAt: effectiveAt,
         reason: reason,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentStatusEvent]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusStudentStatusEvent copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    Object? previousStatus = _Undefined,
    String? nextStatus,
    DateTime? effectiveAt,
    Object? reason = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusStudentStatusEvent(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      previousStatus: previousStatus is String?
          ? previousStatus
          : this.previousStatus,
      nextStatus: nextStatus ?? this.nextStatus,
      effectiveAt: effectiveAt ?? this.effectiveAt,
      reason: reason is String? ? reason : this.reason,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
