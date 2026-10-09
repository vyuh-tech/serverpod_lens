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

abstract class SsoDesignations
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoDesignations._({
    this.id,
    required this.companyId,
    required this.name,
    this.description,
    required this.code,
    required this.level,
  });

  factory SsoDesignations({
    _isc.UuidValue? id,
    required _isc.UuidValue companyId,
    required String name,
    String? description,
    required String code,
    required int level,
  }) = _SsoDesignationsImpl;

  factory SsoDesignations.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoDesignations(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      companyId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['companyId'],
      ),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      code: jsonSerialization['code'] as String,
      level: jsonSerialization['level'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue companyId;

  String name;

  String? description;

  String code;

  int level;

  /// Returns a shallow copy of this [SsoDesignations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoDesignations copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? companyId,
    String? name,
    String? description,
    String? code,
    int? level,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoDesignations',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'code': code,
      'level': level,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoDesignations',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'code': code,
      'level': level,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoDesignationsImpl extends SsoDesignations {
  _SsoDesignationsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue companyId,
    required String name,
    String? description,
    required String code,
    required int level,
  }) : super._(
         id: id,
         companyId: companyId,
         name: name,
         description: description,
         code: code,
         level: level,
       );

  /// Returns a shallow copy of this [SsoDesignations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoDesignations copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? companyId,
    String? name,
    Object? description = _Undefined,
    String? code,
    int? level,
  }) {
    return SsoDesignations(
      id: id is _isc.UuidValue? ? id : this.id,
      companyId: companyId ?? this.companyId,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      code: code ?? this.code,
      level: level ?? this.level,
    );
  }
}
