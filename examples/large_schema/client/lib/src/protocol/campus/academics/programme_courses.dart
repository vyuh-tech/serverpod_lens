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

/// Fictional university fixture: academics.
abstract class CampusProgrammeCourse
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusProgrammeCourse._({
    this.id,
    required this.programmeVersionId,
    required this.courseId,
    required this.required,
    required this.recommendedTerm,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusProgrammeCourse({
    _isc.UuidValue? id,
    required _isc.UuidValue programmeVersionId,
    required _isc.UuidValue courseId,
    required bool required,
    required int recommendedTerm,
    DateTime? createdAt,
  }) = _CampusProgrammeCourseImpl;

  factory CampusProgrammeCourse.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusProgrammeCourse(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      programmeVersionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeVersionId'],
      ),
      courseId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      required: _isc.BoolJsonExtension.fromJson(jsonSerialization['required']),
      recommendedTerm: jsonSerialization['recommendedTerm'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue programmeVersionId;

  _isc.UuidValue courseId;

  bool required;

  int recommendedTerm;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusProgrammeCourse]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusProgrammeCourse copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? programmeVersionId,
    _isc.UuidValue? courseId,
    bool? required,
    int? recommendedTerm,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusProgrammeCourse',
      if (id != null) 'id': id?.toJson(),
      'programmeVersionId': programmeVersionId.toJson(),
      'courseId': courseId.toJson(),
      'required': required,
      'recommendedTerm': recommendedTerm,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusProgrammeCourse',
      if (id != null) 'id': id?.toJson(),
      'programmeVersionId': programmeVersionId.toJson(),
      'courseId': courseId.toJson(),
      'required': required,
      'recommendedTerm': recommendedTerm,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusProgrammeCourseImpl extends CampusProgrammeCourse {
  _CampusProgrammeCourseImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue programmeVersionId,
    required _isc.UuidValue courseId,
    required bool required,
    required int recommendedTerm,
    DateTime? createdAt,
  }) : super._(
         id: id,
         programmeVersionId: programmeVersionId,
         courseId: courseId,
         required: required,
         recommendedTerm: recommendedTerm,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusProgrammeCourse]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusProgrammeCourse copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? programmeVersionId,
    _isc.UuidValue? courseId,
    bool? required,
    int? recommendedTerm,
    DateTime? createdAt,
  }) {
    return CampusProgrammeCourse(
      id: id is _isc.UuidValue? ? id : this.id,
      programmeVersionId: programmeVersionId ?? this.programmeVersionId,
      courseId: courseId ?? this.courseId,
      required: required ?? this.required,
      recommendedTerm: recommendedTerm ?? this.recommendedTerm,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
