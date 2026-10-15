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

/// Fictional university fixture: campus.
abstract class CampusFaculty
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusFaculty._({
    this.id,
    required this.campusId,
    required this.code,
    required this.name,
    this.deanId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusFaculty({
    _isc.UuidValue? id,
    required _isc.UuidValue campusId,
    required String code,
    required String name,
    _isc.UuidValue? deanId,
    DateTime? createdAt,
  }) = _CampusFacultyImpl;

  factory CampusFaculty.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusFaculty(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      campusId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['campusId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      deanId: jsonSerialization['deanId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['deanId']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue campusId;

  String code;

  String name;

  _isc.UuidValue? deanId;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusFaculty]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusFaculty copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? campusId,
    String? code,
    String? name,
    _isc.UuidValue? deanId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusFaculty',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'code': code,
      'name': name,
      if (deanId != null) 'deanId': deanId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusFaculty',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'code': code,
      'name': name,
      if (deanId != null) 'deanId': deanId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusFacultyImpl extends CampusFaculty {
  _CampusFacultyImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue campusId,
    required String code,
    required String name,
    _isc.UuidValue? deanId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         campusId: campusId,
         code: code,
         name: name,
         deanId: deanId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusFaculty]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusFaculty copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? campusId,
    String? code,
    String? name,
    Object? deanId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusFaculty(
      id: id is _isc.UuidValue? ? id : this.id,
      campusId: campusId ?? this.campusId,
      code: code ?? this.code,
      name: name ?? this.name,
      deanId: deanId is _isc.UuidValue? ? deanId : this.deanId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
