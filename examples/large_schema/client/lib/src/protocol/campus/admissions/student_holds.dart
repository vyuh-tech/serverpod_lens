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
abstract class CampusStudentHold
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusStudentHold._({
    this.id,
    required this.studentId,
    required this.reason,
    required this.blocksEnrolment,
    this.releasedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentHold({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required String reason,
    required bool blocksEnrolment,
    DateTime? releasedAt,
    DateTime? createdAt,
  }) = _CampusStudentHoldImpl;

  factory CampusStudentHold.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusStudentHold(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      reason: jsonSerialization['reason'] as String,
      blocksEnrolment: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['blocksEnrolment'],
      ),
      releasedAt: jsonSerialization['releasedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['releasedAt'],
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

  _isc.UuidValue studentId;

  String reason;

  bool blocksEnrolment;

  DateTime? releasedAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusStudentHold]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusStudentHold copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    String? reason,
    bool? blocksEnrolment,
    DateTime? releasedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentHold',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'reason': reason,
      'blocksEnrolment': blocksEnrolment,
      if (releasedAt != null) 'releasedAt': releasedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentHold',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'reason': reason,
      'blocksEnrolment': blocksEnrolment,
      if (releasedAt != null) 'releasedAt': releasedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentHoldImpl extends CampusStudentHold {
  _CampusStudentHoldImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required String reason,
    required bool blocksEnrolment,
    DateTime? releasedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         reason: reason,
         blocksEnrolment: blocksEnrolment,
         releasedAt: releasedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentHold]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusStudentHold copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    String? reason,
    bool? blocksEnrolment,
    Object? releasedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusStudentHold(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      reason: reason ?? this.reason,
      blocksEnrolment: blocksEnrolment ?? this.blocksEnrolment,
      releasedAt: releasedAt is DateTime? ? releasedAt : this.releasedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
