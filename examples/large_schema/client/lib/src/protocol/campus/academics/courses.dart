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
abstract class CampusCourse
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusCourse._({
    this.id,
    required this.departmentId,
    this.categoryId,
    required this.code,
    required this.title,
    required this.credits,
    this.description,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCourse({
    _isc.UuidValue? id,
    required _isc.UuidValue departmentId,
    _isc.UuidValue? categoryId,
    required String code,
    required String title,
    required int credits,
    String? description,
    DateTime? createdAt,
  }) = _CampusCourseImpl;

  factory CampusCourse.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusCourse(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      departmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentId'],
      ),
      categoryId: jsonSerialization['categoryId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['categoryId'],
            ),
      code: jsonSerialization['code'] as String,
      title: jsonSerialization['title'] as String,
      credits: jsonSerialization['credits'] as int,
      description: jsonSerialization['description'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue departmentId;

  _isc.UuidValue? categoryId;

  String code;

  String title;

  int credits;

  String? description;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusCourse]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusCourse copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? departmentId,
    _isc.UuidValue? categoryId,
    String? code,
    String? title,
    int? credits,
    String? description,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCourse',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      if (categoryId != null) 'categoryId': categoryId?.toJson(),
      'code': code,
      'title': title,
      'credits': credits,
      if (description != null) 'description': description,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCourse',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      if (categoryId != null) 'categoryId': categoryId?.toJson(),
      'code': code,
      'title': title,
      'credits': credits,
      if (description != null) 'description': description,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCourseImpl extends CampusCourse {
  _CampusCourseImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue departmentId,
    _isc.UuidValue? categoryId,
    required String code,
    required String title,
    required int credits,
    String? description,
    DateTime? createdAt,
  }) : super._(
         id: id,
         departmentId: departmentId,
         categoryId: categoryId,
         code: code,
         title: title,
         credits: credits,
         description: description,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCourse]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusCourse copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? departmentId,
    Object? categoryId = _Undefined,
    String? code,
    String? title,
    int? credits,
    Object? description = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusCourse(
      id: id is _isc.UuidValue? ? id : this.id,
      departmentId: departmentId ?? this.departmentId,
      categoryId: categoryId is _isc.UuidValue? ? categoryId : this.categoryId,
      code: code ?? this.code,
      title: title ?? this.title,
      credits: credits ?? this.credits,
      description: description is String? ? description : this.description,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
