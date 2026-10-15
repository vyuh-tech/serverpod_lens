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
abstract class CampusCourseOutcome
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusCourseOutcome._({
    this.id,
    required this.courseId,
    required this.code,
    required this.description,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCourseOutcome({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required String code,
    required String description,
    DateTime? createdAt,
  }) = _CampusCourseOutcomeImpl;

  factory CampusCourseOutcome.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusCourseOutcome(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      code: jsonSerialization['code'] as String,
      description: jsonSerialization['description'] as String,
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

  String code;

  String description;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusCourseOutcome]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusCourseOutcome copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? courseId,
    String? code,
    String? description,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCourseOutcome',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'code': code,
      'description': description,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCourseOutcome',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'code': code,
      'description': description,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCourseOutcomeImpl extends CampusCourseOutcome {
  _CampusCourseOutcomeImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required String code,
    required String description,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         code: code,
         description: description,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCourseOutcome]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusCourseOutcome copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? courseId,
    String? code,
    String? description,
    DateTime? createdAt,
  }) {
    return CampusCourseOutcome(
      id: id is _isc.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      code: code ?? this.code,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
