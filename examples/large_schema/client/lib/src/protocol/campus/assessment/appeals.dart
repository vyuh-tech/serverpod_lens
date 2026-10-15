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
abstract class CampusAppeal
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusAppeal._({
    this.id,
    required this.studentId,
    required this.gradeId,
    required this.reason,
    required this.status,
    this.reviewedById,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAppeal({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue gradeId,
    required String reason,
    required String status,
    _isc.UuidValue? reviewedById,
    DateTime? createdAt,
  }) = _CampusAppealImpl;

  factory CampusAppeal.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusAppeal(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      gradeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['gradeId'],
      ),
      reason: jsonSerialization['reason'] as String,
      status: jsonSerialization['status'] as String,
      reviewedById: jsonSerialization['reviewedById'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['reviewedById'],
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

  _isc.UuidValue gradeId;

  String reason;

  String status;

  _isc.UuidValue? reviewedById;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusAppeal]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusAppeal copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    _isc.UuidValue? gradeId,
    String? reason,
    String? status,
    _isc.UuidValue? reviewedById,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAppeal',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'gradeId': gradeId.toJson(),
      'reason': reason,
      'status': status,
      if (reviewedById != null) 'reviewedById': reviewedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAppeal',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'gradeId': gradeId.toJson(),
      'reason': reason,
      'status': status,
      if (reviewedById != null) 'reviewedById': reviewedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAppealImpl extends CampusAppeal {
  _CampusAppealImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue gradeId,
    required String reason,
    required String status,
    _isc.UuidValue? reviewedById,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         gradeId: gradeId,
         reason: reason,
         status: status,
         reviewedById: reviewedById,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAppeal]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusAppeal copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    _isc.UuidValue? gradeId,
    String? reason,
    String? status,
    Object? reviewedById = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusAppeal(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      gradeId: gradeId ?? this.gradeId,
      reason: reason ?? this.reason,
      status: status ?? this.status,
      reviewedById: reviewedById is _isc.UuidValue?
          ? reviewedById
          : this.reviewedById,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
