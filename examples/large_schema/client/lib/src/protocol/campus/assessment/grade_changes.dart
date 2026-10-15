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
abstract class CampusGradeChange
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusGradeChange._({
    this.id,
    required this.gradeId,
    required this.changedById,
    required this.previousScore,
    required this.nextScore,
    required this.reason,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGradeChange({
    _isc.UuidValue? id,
    required _isc.UuidValue gradeId,
    required _isc.UuidValue changedById,
    required double previousScore,
    required double nextScore,
    required String reason,
    DateTime? createdAt,
  }) = _CampusGradeChangeImpl;

  factory CampusGradeChange.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusGradeChange(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      gradeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['gradeId'],
      ),
      changedById: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['changedById'],
      ),
      previousScore: (jsonSerialization['previousScore'] as num).toDouble(),
      nextScore: (jsonSerialization['nextScore'] as num).toDouble(),
      reason: jsonSerialization['reason'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue gradeId;

  _isc.UuidValue changedById;

  double previousScore;

  double nextScore;

  String reason;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusGradeChange]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusGradeChange copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? gradeId,
    _isc.UuidValue? changedById,
    double? previousScore,
    double? nextScore,
    String? reason,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGradeChange',
      if (id != null) 'id': id?.toJson(),
      'gradeId': gradeId.toJson(),
      'changedById': changedById.toJson(),
      'previousScore': previousScore,
      'nextScore': nextScore,
      'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGradeChange',
      if (id != null) 'id': id?.toJson(),
      'gradeId': gradeId.toJson(),
      'changedById': changedById.toJson(),
      'previousScore': previousScore,
      'nextScore': nextScore,
      'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGradeChangeImpl extends CampusGradeChange {
  _CampusGradeChangeImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue gradeId,
    required _isc.UuidValue changedById,
    required double previousScore,
    required double nextScore,
    required String reason,
    DateTime? createdAt,
  }) : super._(
         id: id,
         gradeId: gradeId,
         changedById: changedById,
         previousScore: previousScore,
         nextScore: nextScore,
         reason: reason,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGradeChange]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusGradeChange copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? gradeId,
    _isc.UuidValue? changedById,
    double? previousScore,
    double? nextScore,
    String? reason,
    DateTime? createdAt,
  }) {
    return CampusGradeChange(
      id: id is _isc.UuidValue? ? id : this.id,
      gradeId: gradeId ?? this.gradeId,
      changedById: changedById ?? this.changedById,
      previousScore: previousScore ?? this.previousScore,
      nextScore: nextScore ?? this.nextScore,
      reason: reason ?? this.reason,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
