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

abstract class SsoDepartments
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoDepartments._({
    this.id,
    required this.companyId,
    required this.departmentTypeId,
    required this.code,
    required this.name,
    this.description,
  });

  factory SsoDepartments({
    _isc.UuidValue? id,
    required _isc.UuidValue companyId,
    required _isc.UuidValue departmentTypeId,
    required String code,
    required String name,
    String? description,
  }) = _SsoDepartmentsImpl;

  factory SsoDepartments.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoDepartments(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      companyId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['companyId'],
      ),
      departmentTypeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentTypeId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue companyId;

  _isc.UuidValue departmentTypeId;

  String code;

  String name;

  String? description;

  /// Returns a shallow copy of this [SsoDepartments]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoDepartments copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? companyId,
    _isc.UuidValue? departmentTypeId,
    String? code,
    String? name,
    String? description,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoDepartments',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'departmentTypeId': departmentTypeId.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoDepartments',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'departmentTypeId': departmentTypeId.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoDepartmentsImpl extends SsoDepartments {
  _SsoDepartmentsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue companyId,
    required _isc.UuidValue departmentTypeId,
    required String code,
    required String name,
    String? description,
  }) : super._(
         id: id,
         companyId: companyId,
         departmentTypeId: departmentTypeId,
         code: code,
         name: name,
         description: description,
       );

  /// Returns a shallow copy of this [SsoDepartments]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoDepartments copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? companyId,
    _isc.UuidValue? departmentTypeId,
    String? code,
    String? name,
    Object? description = _Undefined,
  }) {
    return SsoDepartments(
      id: id is _isc.UuidValue? ? id : this.id,
      companyId: companyId ?? this.companyId,
      departmentTypeId: departmentTypeId ?? this.departmentTypeId,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
    );
  }
}
