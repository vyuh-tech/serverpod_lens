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

/// Fictional university fixture: research.
abstract class CampusEthicsReview
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusEthicsReview._({
    this.id,
    required this.applicationId,
    required this.reviewerId,
    required this.decision,
    this.reviewedAt,
    this.notes,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusEthicsReview({
    _isc.UuidValue? id,
    required _isc.UuidValue applicationId,
    required _isc.UuidValue reviewerId,
    required String decision,
    DateTime? reviewedAt,
    String? notes,
    DateTime? createdAt,
  }) = _CampusEthicsReviewImpl;

  factory CampusEthicsReview.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusEthicsReview(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      applicationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['applicationId'],
      ),
      reviewerId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['reviewerId'],
      ),
      decision: jsonSerialization['decision'] as String,
      reviewedAt: jsonSerialization['reviewedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['reviewedAt'],
            ),
      notes: jsonSerialization['notes'] as String?,
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

  _isc.UuidValue reviewerId;

  String decision;

  DateTime? reviewedAt;

  String? notes;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusEthicsReview]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusEthicsReview copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? applicationId,
    _isc.UuidValue? reviewerId,
    String? decision,
    DateTime? reviewedAt,
    String? notes,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusEthicsReview',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'reviewerId': reviewerId.toJson(),
      'decision': decision,
      if (reviewedAt != null) 'reviewedAt': reviewedAt?.toJson(),
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusEthicsReview',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'reviewerId': reviewerId.toJson(),
      'decision': decision,
      if (reviewedAt != null) 'reviewedAt': reviewedAt?.toJson(),
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusEthicsReviewImpl extends CampusEthicsReview {
  _CampusEthicsReviewImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue applicationId,
    required _isc.UuidValue reviewerId,
    required String decision,
    DateTime? reviewedAt,
    String? notes,
    DateTime? createdAt,
  }) : super._(
         id: id,
         applicationId: applicationId,
         reviewerId: reviewerId,
         decision: decision,
         reviewedAt: reviewedAt,
         notes: notes,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusEthicsReview]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusEthicsReview copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? applicationId,
    _isc.UuidValue? reviewerId,
    String? decision,
    Object? reviewedAt = _Undefined,
    Object? notes = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusEthicsReview(
      id: id is _isc.UuidValue? ? id : this.id,
      applicationId: applicationId ?? this.applicationId,
      reviewerId: reviewerId ?? this.reviewerId,
      decision: decision ?? this.decision,
      reviewedAt: reviewedAt is DateTime? ? reviewedAt : this.reviewedAt,
      notes: notes is String? ? notes : this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
