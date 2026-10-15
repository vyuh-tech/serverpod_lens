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
abstract class CampusStudyPlanCourse
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusStudyPlanCourse._({
    this.id,
    required this.studyPlanId,
    required this.courseId,
    this.plannedTermId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudyPlanCourse({
    _isc.UuidValue? id,
    required _isc.UuidValue studyPlanId,
    required _isc.UuidValue courseId,
    _isc.UuidValue? plannedTermId,
    DateTime? createdAt,
  }) = _CampusStudyPlanCourseImpl;

  factory CampusStudyPlanCourse.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusStudyPlanCourse(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studyPlanId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studyPlanId'],
      ),
      courseId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      plannedTermId: jsonSerialization['plannedTermId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['plannedTermId'],
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

  _isc.UuidValue studyPlanId;

  _isc.UuidValue courseId;

  _isc.UuidValue? plannedTermId;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusStudyPlanCourse]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusStudyPlanCourse copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studyPlanId,
    _isc.UuidValue? courseId,
    _isc.UuidValue? plannedTermId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudyPlanCourse',
      if (id != null) 'id': id?.toJson(),
      'studyPlanId': studyPlanId.toJson(),
      'courseId': courseId.toJson(),
      if (plannedTermId != null) 'plannedTermId': plannedTermId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudyPlanCourse',
      if (id != null) 'id': id?.toJson(),
      'studyPlanId': studyPlanId.toJson(),
      'courseId': courseId.toJson(),
      if (plannedTermId != null) 'plannedTermId': plannedTermId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudyPlanCourseImpl extends CampusStudyPlanCourse {
  _CampusStudyPlanCourseImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studyPlanId,
    required _isc.UuidValue courseId,
    _isc.UuidValue? plannedTermId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studyPlanId: studyPlanId,
         courseId: courseId,
         plannedTermId: plannedTermId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudyPlanCourse]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusStudyPlanCourse copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studyPlanId,
    _isc.UuidValue? courseId,
    Object? plannedTermId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusStudyPlanCourse(
      id: id is _isc.UuidValue? ? id : this.id,
      studyPlanId: studyPlanId ?? this.studyPlanId,
      courseId: courseId ?? this.courseId,
      plannedTermId: plannedTermId is _isc.UuidValue?
          ? plannedTermId
          : this.plannedTermId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
