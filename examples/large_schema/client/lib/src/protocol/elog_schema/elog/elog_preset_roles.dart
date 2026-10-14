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

abstract class ElogPresetRoles
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPresetRoles._({
    this.id,
    required this.industryId,
    required this.code,
    required this.name,
    required this.level,
    required this.categoryCode,
    this.description,
    required this.isDefaultEnabled,
    required this.displayOrder,
  });

  factory ElogPresetRoles({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String code,
    required String name,
    required int level,
    required String categoryCode,
    String? description,
    required bool isDefaultEnabled,
    required int displayOrder,
  }) = _ElogPresetRolesImpl;

  factory ElogPresetRoles.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPresetRoles(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      level: jsonSerialization['level'] as int,
      categoryCode: jsonSerialization['categoryCode'] as String,
      description: jsonSerialization['description'] as String?,
      isDefaultEnabled: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['isDefaultEnabled'],
      ),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue industryId;

  String code;

  String name;

  int level;

  String categoryCode;

  String? description;

  bool isDefaultEnabled;

  int displayOrder;

  /// Returns a shallow copy of this [ElogPresetRoles]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPresetRoles copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? industryId,
    String? code,
    String? name,
    int? level,
    String? categoryCode,
    String? description,
    bool? isDefaultEnabled,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetRoles',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'level': level,
      'categoryCode': categoryCode,
      if (description != null) 'description': description,
      'isDefaultEnabled': isDefaultEnabled,
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetRoles',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'level': level,
      'categoryCode': categoryCode,
      if (description != null) 'description': description,
      'isDefaultEnabled': isDefaultEnabled,
      'displayOrder': displayOrder,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetRolesImpl extends ElogPresetRoles {
  _ElogPresetRolesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String code,
    required String name,
    required int level,
    required String categoryCode,
    String? description,
    required bool isDefaultEnabled,
    required int displayOrder,
  }) : super._(
         id: id,
         industryId: industryId,
         code: code,
         name: name,
         level: level,
         categoryCode: categoryCode,
         description: description,
         isDefaultEnabled: isDefaultEnabled,
         displayOrder: displayOrder,
       );

  /// Returns a shallow copy of this [ElogPresetRoles]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPresetRoles copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? industryId,
    String? code,
    String? name,
    int? level,
    String? categoryCode,
    Object? description = _Undefined,
    bool? isDefaultEnabled,
    int? displayOrder,
  }) {
    return ElogPresetRoles(
      id: id is _isc.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      code: code ?? this.code,
      name: name ?? this.name,
      level: level ?? this.level,
      categoryCode: categoryCode ?? this.categoryCode,
      description: description is String? ? description : this.description,
      isDefaultEnabled: isDefaultEnabled ?? this.isDefaultEnabled,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}
