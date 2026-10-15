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
abstract class CampusExam
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusExam._({
    this.id,
    required this.courseId,
    required this.title,
    required this.durationMinutes,
    required this.maximumScore,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusExam({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required String title,
    required int durationMinutes,
    required double maximumScore,
    DateTime? createdAt,
  }) = _CampusExamImpl;

  factory CampusExam.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusExam(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      title: jsonSerialization['title'] as String,
      durationMinutes: jsonSerialization['durationMinutes'] as int,
      maximumScore: (jsonSerialization['maximumScore'] as num).toDouble(),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue courseId;

  String title;

  int durationMinutes;

  double maximumScore;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusExam]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusExam copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? courseId,
    String? title,
    int? durationMinutes,
    double? maximumScore,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusExam',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'title': title,
      'durationMinutes': durationMinutes,
      'maximumScore': maximumScore,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusExam',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'title': title,
      'durationMinutes': durationMinutes,
      'maximumScore': maximumScore,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusExamImpl extends CampusExam {
  _CampusExamImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required String title,
    required int durationMinutes,
    required double maximumScore,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         title: title,
         durationMinutes: durationMinutes,
         maximumScore: maximumScore,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusExam]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusExam copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? courseId,
    String? title,
    int? durationMinutes,
    double? maximumScore,
    DateTime? createdAt,
  }) {
    return CampusExam(
      id: id is _isc.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      title: title ?? this.title,
      durationMinutes: durationMinutes ?? this.durationMinutes,
      maximumScore: maximumScore ?? this.maximumScore,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
