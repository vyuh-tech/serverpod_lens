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
abstract class CampusEnrolment
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusEnrolment._({
    this.id,
    required this.studentId,
    required this.sectionId,
    required this.enrolledAt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusEnrolment({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue sectionId,
    required DateTime enrolledAt,
    required String status,
    DateTime? createdAt,
  }) = _CampusEnrolmentImpl;

  factory CampusEnrolment.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusEnrolment(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      sectionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      enrolledAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['enrolledAt'],
      ),
      status: jsonSerialization['status'] as String,
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

  _isc.UuidValue sectionId;

  DateTime enrolledAt;

  String status;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusEnrolment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusEnrolment copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    _isc.UuidValue? sectionId,
    DateTime? enrolledAt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusEnrolment',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'sectionId': sectionId.toJson(),
      'enrolledAt': enrolledAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusEnrolment',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'sectionId': sectionId.toJson(),
      'enrolledAt': enrolledAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusEnrolmentImpl extends CampusEnrolment {
  _CampusEnrolmentImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue sectionId,
    required DateTime enrolledAt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         sectionId: sectionId,
         enrolledAt: enrolledAt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusEnrolment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusEnrolment copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    _isc.UuidValue? sectionId,
    DateTime? enrolledAt,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusEnrolment(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      sectionId: sectionId ?? this.sectionId,
      enrolledAt: enrolledAt ?? this.enrolledAt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
