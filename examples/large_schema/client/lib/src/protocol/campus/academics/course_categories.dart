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
abstract class CampusCourseCategory
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusCourseCategory._({
    this.id,
    required this.name,
    this.parentId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCourseCategory({
    _isc.UuidValue? id,
    required String name,
    _isc.UuidValue? parentId,
    DateTime? createdAt,
  }) = _CampusCourseCategoryImpl;

  factory CampusCourseCategory.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusCourseCategory(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      parentId: jsonSerialization['parentId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['parentId']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String name;

  _isc.UuidValue? parentId;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusCourseCategory]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusCourseCategory copyWith({
    _isc.UuidValue? id,
    String? name,
    _isc.UuidValue? parentId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCourseCategory',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (parentId != null) 'parentId': parentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCourseCategory',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (parentId != null) 'parentId': parentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCourseCategoryImpl extends CampusCourseCategory {
  _CampusCourseCategoryImpl({
    _isc.UuidValue? id,
    required String name,
    _isc.UuidValue? parentId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         parentId: parentId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCourseCategory]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusCourseCategory copyWith({
    Object? id = _Undefined,
    String? name,
    Object? parentId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusCourseCategory(
      id: id is _isc.UuidValue? ? id : this.id,
      name: name ?? this.name,
      parentId: parentId is _isc.UuidValue? ? parentId : this.parentId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
