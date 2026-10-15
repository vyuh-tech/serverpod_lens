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
abstract class CampusCourseSection
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusCourseSection._({
    this.id,
    required this.courseId,
    required this.termId,
    required this.code,
    required this.capacity,
    required this.deliveryMode,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCourseSection({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required _isc.UuidValue termId,
    required String code,
    required int capacity,
    required String deliveryMode,
    DateTime? createdAt,
  }) = _CampusCourseSectionImpl;

  factory CampusCourseSection.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusCourseSection(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      termId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['termId']),
      code: jsonSerialization['code'] as String,
      capacity: jsonSerialization['capacity'] as int,
      deliveryMode: jsonSerialization['deliveryMode'] as String,
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

  _isc.UuidValue termId;

  String code;

  int capacity;

  String deliveryMode;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusCourseSection]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusCourseSection copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? courseId,
    _isc.UuidValue? termId,
    String? code,
    int? capacity,
    String? deliveryMode,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCourseSection',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'termId': termId.toJson(),
      'code': code,
      'capacity': capacity,
      'deliveryMode': deliveryMode,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCourseSection',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'termId': termId.toJson(),
      'code': code,
      'capacity': capacity,
      'deliveryMode': deliveryMode,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCourseSectionImpl extends CampusCourseSection {
  _CampusCourseSectionImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required _isc.UuidValue termId,
    required String code,
    required int capacity,
    required String deliveryMode,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         termId: termId,
         code: code,
         capacity: capacity,
         deliveryMode: deliveryMode,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCourseSection]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusCourseSection copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? courseId,
    _isc.UuidValue? termId,
    String? code,
    int? capacity,
    String? deliveryMode,
    DateTime? createdAt,
  }) {
    return CampusCourseSection(
      id: id is _isc.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      termId: termId ?? this.termId,
      code: code ?? this.code,
      capacity: capacity ?? this.capacity,
      deliveryMode: deliveryMode ?? this.deliveryMode,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
