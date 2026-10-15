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
abstract class CampusCourseEquivalence
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusCourseEquivalence._({
    this.id,
    required this.courseId,
    required this.equivalentCourseId,
    required this.approvedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCourseEquivalence({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required _isc.UuidValue equivalentCourseId,
    required DateTime approvedAt,
    DateTime? createdAt,
  }) = _CampusCourseEquivalenceImpl;

  factory CampusCourseEquivalence.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusCourseEquivalence(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      equivalentCourseId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['equivalentCourseId'],
      ),
      approvedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['approvedAt'],
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

  _isc.UuidValue courseId;

  _isc.UuidValue equivalentCourseId;

  DateTime approvedAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusCourseEquivalence]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusCourseEquivalence copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? courseId,
    _isc.UuidValue? equivalentCourseId,
    DateTime? approvedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCourseEquivalence',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'equivalentCourseId': equivalentCourseId.toJson(),
      'approvedAt': approvedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCourseEquivalence',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'equivalentCourseId': equivalentCourseId.toJson(),
      'approvedAt': approvedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCourseEquivalenceImpl extends CampusCourseEquivalence {
  _CampusCourseEquivalenceImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required _isc.UuidValue equivalentCourseId,
    required DateTime approvedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         equivalentCourseId: equivalentCourseId,
         approvedAt: approvedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCourseEquivalence]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusCourseEquivalence copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? courseId,
    _isc.UuidValue? equivalentCourseId,
    DateTime? approvedAt,
    DateTime? createdAt,
  }) {
    return CampusCourseEquivalence(
      id: id is _isc.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      equivalentCourseId: equivalentCourseId ?? this.equivalentCourseId,
      approvedAt: approvedAt ?? this.approvedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
