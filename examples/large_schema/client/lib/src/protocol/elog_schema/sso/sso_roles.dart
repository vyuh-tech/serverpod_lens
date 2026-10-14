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

abstract class SsoRoles
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoRoles._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.level,
    required this.hasGlobalProductAccess,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory SsoRoles({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required int level,
    required bool hasGlobalProductAccess,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) = _SsoRolesImpl;

  factory SsoRoles.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoRoles(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      level: jsonSerialization['level'] as int,
      hasGlobalProductAccess: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['hasGlobalProductAccess'],
      ),
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['createdBy'],
            ),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['updatedBy'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String? description;

  int level;

  bool hasGlobalProductAccess;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [SsoRoles]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoRoles copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    int? level,
    bool? hasGlobalProductAccess,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoRoles',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'level': level,
      'hasGlobalProductAccess': hasGlobalProductAccess,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoRoles',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'level': level,
      'hasGlobalProductAccess': hasGlobalProductAccess,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoRolesImpl extends SsoRoles {
  _SsoRolesImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required int level,
    required bool hasGlobalProductAccess,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         level: level,
         hasGlobalProductAccess: hasGlobalProductAccess,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [SsoRoles]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoRoles copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    int? level,
    bool? hasGlobalProductAccess,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return SsoRoles(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      level: level ?? this.level,
      hasGlobalProductAccess:
          hasGlobalProductAccess ?? this.hasGlobalProductAccess,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
