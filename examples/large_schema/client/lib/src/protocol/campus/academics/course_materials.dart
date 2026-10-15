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
abstract class CampusCourseMaterial
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusCourseMaterial._({
    this.id,
    required this.courseId,
    required this.title,
    required this.resourceUrl,
    required this.required,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCourseMaterial({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required String title,
    required String resourceUrl,
    required bool required,
    DateTime? createdAt,
  }) = _CampusCourseMaterialImpl;

  factory CampusCourseMaterial.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusCourseMaterial(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      title: jsonSerialization['title'] as String,
      resourceUrl: jsonSerialization['resourceUrl'] as String,
      required: _isc.BoolJsonExtension.fromJson(jsonSerialization['required']),
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

  String resourceUrl;

  bool required;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusCourseMaterial]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusCourseMaterial copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? courseId,
    String? title,
    String? resourceUrl,
    bool? required,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCourseMaterial',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'title': title,
      'resourceUrl': resourceUrl,
      'required': required,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCourseMaterial',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'title': title,
      'resourceUrl': resourceUrl,
      'required': required,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCourseMaterialImpl extends CampusCourseMaterial {
  _CampusCourseMaterialImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required String title,
    required String resourceUrl,
    required bool required,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         title: title,
         resourceUrl: resourceUrl,
         required: required,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCourseMaterial]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusCourseMaterial copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? courseId,
    String? title,
    String? resourceUrl,
    bool? required,
    DateTime? createdAt,
  }) {
    return CampusCourseMaterial(
      id: id is _isc.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      title: title ?? this.title,
      resourceUrl: resourceUrl ?? this.resourceUrl,
      required: required ?? this.required,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
