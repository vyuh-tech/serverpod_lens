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
abstract class CampusDepartment
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusDepartment._({
    this.id,
    required this.facultyId,
    required this.code,
    required this.name,
    this.parentId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusDepartment({
    _isc.UuidValue? id,
    required _isc.UuidValue facultyId,
    required String code,
    required String name,
    _isc.UuidValue? parentId,
    DateTime? createdAt,
  }) = _CampusDepartmentImpl;

  factory CampusDepartment.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusDepartment(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      facultyId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['facultyId'],
      ),
      code: jsonSerialization['code'] as String,
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

  _isc.UuidValue facultyId;

  String code;

  String name;

  _isc.UuidValue? parentId;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusDepartment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusDepartment copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? facultyId,
    String? code,
    String? name,
    _isc.UuidValue? parentId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusDepartment',
      if (id != null) 'id': id?.toJson(),
      'facultyId': facultyId.toJson(),
      'code': code,
      'name': name,
      if (parentId != null) 'parentId': parentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusDepartment',
      if (id != null) 'id': id?.toJson(),
      'facultyId': facultyId.toJson(),
      'code': code,
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

class _CampusDepartmentImpl extends CampusDepartment {
  _CampusDepartmentImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue facultyId,
    required String code,
    required String name,
    _isc.UuidValue? parentId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         facultyId: facultyId,
         code: code,
         name: name,
         parentId: parentId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusDepartment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusDepartment copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? facultyId,
    String? code,
    String? name,
    Object? parentId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusDepartment(
      id: id is _isc.UuidValue? ? id : this.id,
      facultyId: facultyId ?? this.facultyId,
      code: code ?? this.code,
      name: name ?? this.name,
      parentId: parentId is _isc.UuidValue? ? parentId : this.parentId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
