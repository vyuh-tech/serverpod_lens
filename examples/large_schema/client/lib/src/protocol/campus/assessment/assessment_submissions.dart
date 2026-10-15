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

/// Fictional university fixture: assessment.
abstract class CampusAssessmentSubmission
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusAssessmentSubmission._({
    this.id,
    required this.assessmentId,
    required this.enrolmentId,
    this.submittedAt,
    required this.attempt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAssessmentSubmission({
    _isc.UuidValue? id,
    required _isc.UuidValue assessmentId,
    required _isc.UuidValue enrolmentId,
    DateTime? submittedAt,
    required int attempt,
    required String status,
    DateTime? createdAt,
  }) = _CampusAssessmentSubmissionImpl;

  factory CampusAssessmentSubmission.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusAssessmentSubmission(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      assessmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['assessmentId'],
      ),
      enrolmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['enrolmentId'],
      ),
      submittedAt: jsonSerialization['submittedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['submittedAt'],
            ),
      attempt: jsonSerialization['attempt'] as int,
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

  _isc.UuidValue assessmentId;

  _isc.UuidValue enrolmentId;

  DateTime? submittedAt;

  int attempt;

  String status;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusAssessmentSubmission]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusAssessmentSubmission copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? assessmentId,
    _isc.UuidValue? enrolmentId,
    DateTime? submittedAt,
    int? attempt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAssessmentSubmission',
      if (id != null) 'id': id?.toJson(),
      'assessmentId': assessmentId.toJson(),
      'enrolmentId': enrolmentId.toJson(),
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
      'attempt': attempt,
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAssessmentSubmission',
      if (id != null) 'id': id?.toJson(),
      'assessmentId': assessmentId.toJson(),
      'enrolmentId': enrolmentId.toJson(),
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
      'attempt': attempt,
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

class _CampusAssessmentSubmissionImpl extends CampusAssessmentSubmission {
  _CampusAssessmentSubmissionImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue assessmentId,
    required _isc.UuidValue enrolmentId,
    DateTime? submittedAt,
    required int attempt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         assessmentId: assessmentId,
         enrolmentId: enrolmentId,
         submittedAt: submittedAt,
         attempt: attempt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAssessmentSubmission]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusAssessmentSubmission copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? assessmentId,
    _isc.UuidValue? enrolmentId,
    Object? submittedAt = _Undefined,
    int? attempt,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusAssessmentSubmission(
      id: id is _isc.UuidValue? ? id : this.id,
      assessmentId: assessmentId ?? this.assessmentId,
      enrolmentId: enrolmentId ?? this.enrolmentId,
      submittedAt: submittedAt is DateTime? ? submittedAt : this.submittedAt,
      attempt: attempt ?? this.attempt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
