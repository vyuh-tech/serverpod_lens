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
abstract class CampusApplicationReview
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusApplicationReview._({
    this.id,
    required this.applicationId,
    required this.lecturerId,
    this.score,
    required this.recommendation,
    this.reviewedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusApplicationReview({
    _isc.UuidValue? id,
    required _isc.UuidValue applicationId,
    required _isc.UuidValue lecturerId,
    double? score,
    required String recommendation,
    DateTime? reviewedAt,
    DateTime? createdAt,
  }) = _CampusApplicationReviewImpl;

  factory CampusApplicationReview.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusApplicationReview(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      applicationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['applicationId'],
      ),
      lecturerId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      score: (jsonSerialization['score'] as num?)?.toDouble(),
      recommendation: jsonSerialization['recommendation'] as String,
      reviewedAt: jsonSerialization['reviewedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['reviewedAt'],
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

  _isc.UuidValue applicationId;

  _isc.UuidValue lecturerId;

  double? score;

  String recommendation;

  DateTime? reviewedAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusApplicationReview]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusApplicationReview copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? applicationId,
    _isc.UuidValue? lecturerId,
    double? score,
    String? recommendation,
    DateTime? reviewedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusApplicationReview',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'lecturerId': lecturerId.toJson(),
      if (score != null) 'score': score,
      'recommendation': recommendation,
      if (reviewedAt != null) 'reviewedAt': reviewedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusApplicationReview',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'lecturerId': lecturerId.toJson(),
      if (score != null) 'score': score,
      'recommendation': recommendation,
      if (reviewedAt != null) 'reviewedAt': reviewedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusApplicationReviewImpl extends CampusApplicationReview {
  _CampusApplicationReviewImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue applicationId,
    required _isc.UuidValue lecturerId,
    double? score,
    required String recommendation,
    DateTime? reviewedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         applicationId: applicationId,
         lecturerId: lecturerId,
         score: score,
         recommendation: recommendation,
         reviewedAt: reviewedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusApplicationReview]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusApplicationReview copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? applicationId,
    _isc.UuidValue? lecturerId,
    Object? score = _Undefined,
    String? recommendation,
    Object? reviewedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusApplicationReview(
      id: id is _isc.UuidValue? ? id : this.id,
      applicationId: applicationId ?? this.applicationId,
      lecturerId: lecturerId ?? this.lecturerId,
      score: score is double? ? score : this.score,
      recommendation: recommendation ?? this.recommendation,
      reviewedAt: reviewedAt is DateTime? ? reviewedAt : this.reviewedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
