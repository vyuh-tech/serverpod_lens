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
abstract class CampusQualification
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusQualification._({
    this.id,
    required this.code,
    required this.title,
    required this.level,
    required this.requiredCredits,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusQualification({
    _isc.UuidValue? id,
    required String code,
    required String title,
    required int level,
    required int requiredCredits,
    DateTime? createdAt,
  }) = _CampusQualificationImpl;

  factory CampusQualification.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusQualification(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      title: jsonSerialization['title'] as String,
      level: jsonSerialization['level'] as int,
      requiredCredits: jsonSerialization['requiredCredits'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String title;

  int level;

  int requiredCredits;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusQualification]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusQualification copyWith({
    _isc.UuidValue? id,
    String? code,
    String? title,
    int? level,
    int? requiredCredits,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusQualification',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'title': title,
      'level': level,
      'requiredCredits': requiredCredits,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusQualification',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'title': title,
      'level': level,
      'requiredCredits': requiredCredits,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusQualificationImpl extends CampusQualification {
  _CampusQualificationImpl({
    _isc.UuidValue? id,
    required String code,
    required String title,
    required int level,
    required int requiredCredits,
    DateTime? createdAt,
  }) : super._(
         id: id,
         code: code,
         title: title,
         level: level,
         requiredCredits: requiredCredits,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusQualification]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusQualification copyWith({
    Object? id = _Undefined,
    String? code,
    String? title,
    int? level,
    int? requiredCredits,
    DateTime? createdAt,
  }) {
    return CampusQualification(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      title: title ?? this.title,
      level: level ?? this.level,
      requiredCredits: requiredCredits ?? this.requiredCredits,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
