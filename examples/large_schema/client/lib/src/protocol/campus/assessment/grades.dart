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
abstract class CampusGrade
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusGrade._({
    this.id,
    required this.submissionId,
    required this.markerId,
    this.gradeScaleId,
    required this.score,
    this.feedback,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGrade({
    _isc.UuidValue? id,
    required _isc.UuidValue submissionId,
    required _isc.UuidValue markerId,
    _isc.UuidValue? gradeScaleId,
    required double score,
    String? feedback,
    DateTime? createdAt,
  }) = _CampusGradeImpl;

  factory CampusGrade.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusGrade(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      submissionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['submissionId'],
      ),
      markerId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['markerId'],
      ),
      gradeScaleId: jsonSerialization['gradeScaleId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['gradeScaleId'],
            ),
      score: (jsonSerialization['score'] as num).toDouble(),
      feedback: jsonSerialization['feedback'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue submissionId;

  _isc.UuidValue markerId;

  _isc.UuidValue? gradeScaleId;

  double score;

  String? feedback;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusGrade]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusGrade copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? submissionId,
    _isc.UuidValue? markerId,
    _isc.UuidValue? gradeScaleId,
    double? score,
    String? feedback,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGrade',
      if (id != null) 'id': id?.toJson(),
      'submissionId': submissionId.toJson(),
      'markerId': markerId.toJson(),
      if (gradeScaleId != null) 'gradeScaleId': gradeScaleId?.toJson(),
      'score': score,
      if (feedback != null) 'feedback': feedback,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGrade',
      if (id != null) 'id': id?.toJson(),
      'submissionId': submissionId.toJson(),
      'markerId': markerId.toJson(),
      if (gradeScaleId != null) 'gradeScaleId': gradeScaleId?.toJson(),
      'score': score,
      if (feedback != null) 'feedback': feedback,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGradeImpl extends CampusGrade {
  _CampusGradeImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue submissionId,
    required _isc.UuidValue markerId,
    _isc.UuidValue? gradeScaleId,
    required double score,
    String? feedback,
    DateTime? createdAt,
  }) : super._(
         id: id,
         submissionId: submissionId,
         markerId: markerId,
         gradeScaleId: gradeScaleId,
         score: score,
         feedback: feedback,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGrade]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusGrade copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? submissionId,
    _isc.UuidValue? markerId,
    Object? gradeScaleId = _Undefined,
    double? score,
    Object? feedback = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusGrade(
      id: id is _isc.UuidValue? ? id : this.id,
      submissionId: submissionId ?? this.submissionId,
      markerId: markerId ?? this.markerId,
      gradeScaleId: gradeScaleId is _isc.UuidValue?
          ? gradeScaleId
          : this.gradeScaleId,
      score: score ?? this.score,
      feedback: feedback is String? ? feedback : this.feedback,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
