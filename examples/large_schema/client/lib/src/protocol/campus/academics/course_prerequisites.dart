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
abstract class CampusCoursePrerequisite
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusCoursePrerequisite._({
    this.id,
    required this.courseId,
    required this.prerequisiteId,
    this.minimumGrade,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCoursePrerequisite({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required _isc.UuidValue prerequisiteId,
    String? minimumGrade,
    DateTime? createdAt,
  }) = _CampusCoursePrerequisiteImpl;

  factory CampusCoursePrerequisite.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusCoursePrerequisite(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      prerequisiteId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['prerequisiteId'],
      ),
      minimumGrade: jsonSerialization['minimumGrade'] as String?,
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

  _isc.UuidValue prerequisiteId;

  String? minimumGrade;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusCoursePrerequisite]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusCoursePrerequisite copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? courseId,
    _isc.UuidValue? prerequisiteId,
    String? minimumGrade,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCoursePrerequisite',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'prerequisiteId': prerequisiteId.toJson(),
      if (minimumGrade != null) 'minimumGrade': minimumGrade,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCoursePrerequisite',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'prerequisiteId': prerequisiteId.toJson(),
      if (minimumGrade != null) 'minimumGrade': minimumGrade,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCoursePrerequisiteImpl extends CampusCoursePrerequisite {
  _CampusCoursePrerequisiteImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required _isc.UuidValue prerequisiteId,
    String? minimumGrade,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         prerequisiteId: prerequisiteId,
         minimumGrade: minimumGrade,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCoursePrerequisite]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusCoursePrerequisite copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? courseId,
    _isc.UuidValue? prerequisiteId,
    Object? minimumGrade = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusCoursePrerequisite(
      id: id is _isc.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      prerequisiteId: prerequisiteId ?? this.prerequisiteId,
      minimumGrade: minimumGrade is String? ? minimumGrade : this.minimumGrade,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
