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
abstract class CampusEnrolmentRequest
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusEnrolmentRequest._({
    this.id,
    required this.studentId,
    required this.sectionId,
    required this.requestedAt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusEnrolmentRequest({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue sectionId,
    required DateTime requestedAt,
    required String status,
    DateTime? createdAt,
  }) = _CampusEnrolmentRequestImpl;

  factory CampusEnrolmentRequest.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusEnrolmentRequest(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      sectionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      requestedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['requestedAt'],
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

  DateTime requestedAt;

  String status;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusEnrolmentRequest]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusEnrolmentRequest copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    _isc.UuidValue? sectionId,
    DateTime? requestedAt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusEnrolmentRequest',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'sectionId': sectionId.toJson(),
      'requestedAt': requestedAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusEnrolmentRequest',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'sectionId': sectionId.toJson(),
      'requestedAt': requestedAt.toJson(),
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

class _CampusEnrolmentRequestImpl extends CampusEnrolmentRequest {
  _CampusEnrolmentRequestImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue sectionId,
    required DateTime requestedAt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         sectionId: sectionId,
         requestedAt: requestedAt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusEnrolmentRequest]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusEnrolmentRequest copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    _isc.UuidValue? sectionId,
    DateTime? requestedAt,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusEnrolmentRequest(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      sectionId: sectionId ?? this.sectionId,
      requestedAt: requestedAt ?? this.requestedAt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
