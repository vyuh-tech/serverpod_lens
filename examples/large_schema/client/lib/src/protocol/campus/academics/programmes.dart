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
abstract class CampusProgramme
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusProgramme._({
    this.id,
    required this.departmentId,
    required this.qualificationId,
    required this.code,
    required this.title,
    required this.durationTerms,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusProgramme({
    _isc.UuidValue? id,
    required _isc.UuidValue departmentId,
    required _isc.UuidValue qualificationId,
    required String code,
    required String title,
    required int durationTerms,
    DateTime? createdAt,
  }) = _CampusProgrammeImpl;

  factory CampusProgramme.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusProgramme(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      departmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentId'],
      ),
      qualificationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['qualificationId'],
      ),
      code: jsonSerialization['code'] as String,
      title: jsonSerialization['title'] as String,
      durationTerms: jsonSerialization['durationTerms'] as int,
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

  _isc.UuidValue qualificationId;

  String code;

  String title;

  int durationTerms;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusProgramme]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusProgramme copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? departmentId,
    _isc.UuidValue? qualificationId,
    String? code,
    String? title,
    int? durationTerms,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusProgramme',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      'qualificationId': qualificationId.toJson(),
      'code': code,
      'title': title,
      'durationTerms': durationTerms,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusProgramme',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      'qualificationId': qualificationId.toJson(),
      'code': code,
      'title': title,
      'durationTerms': durationTerms,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusProgrammeImpl extends CampusProgramme {
  _CampusProgrammeImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue departmentId,
    required _isc.UuidValue qualificationId,
    required String code,
    required String title,
    required int durationTerms,
    DateTime? createdAt,
  }) : super._(
         id: id,
         departmentId: departmentId,
         qualificationId: qualificationId,
         code: code,
         title: title,
         durationTerms: durationTerms,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusProgramme]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusProgramme copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? departmentId,
    _isc.UuidValue? qualificationId,
    String? code,
    String? title,
    int? durationTerms,
    DateTime? createdAt,
  }) {
    return CampusProgramme(
      id: id is _isc.UuidValue? ? id : this.id,
      departmentId: departmentId ?? this.departmentId,
      qualificationId: qualificationId ?? this.qualificationId,
      code: code ?? this.code,
      title: title ?? this.title,
      durationTerms: durationTerms ?? this.durationTerms,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
