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
import 'package:serverpod_lens_client/src/protocol/protocol.dart' as _ixq89rj6;

abstract class ElogResourceFlagTypes
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogResourceFlagTypes._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.category,
    this.icon,
    required this.color,
    required this.blocksUsage,
    required this.requiresClearance,
    this.clearanceRoles,
    this.autoClearAfterMinutes,
    this.canBeCreatedByRoles,
    this.clearanceLogTemplateId,
    required this.isActive,
  });

  factory ElogResourceFlagTypes({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String category,
    String? icon,
    required String color,
    required bool blocksUsage,
    required bool requiresClearance,
    List<String>? clearanceRoles,
    int? autoClearAfterMinutes,
    List<String>? canBeCreatedByRoles,
    _isc.UuidValue? clearanceLogTemplateId,
    required bool isActive,
  }) = _ElogResourceFlagTypesImpl;

  factory ElogResourceFlagTypes.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogResourceFlagTypes(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      category: jsonSerialization['category'] as String,
      icon: jsonSerialization['icon'] as String?,
      color: jsonSerialization['color'] as String,
      blocksUsage: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['blocksUsage'],
      ),
      requiresClearance: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['requiresClearance'],
      ),
      clearanceRoles: jsonSerialization['clearanceRoles'] == null
          ? null
          : _ixq89rj6.Protocol().deserialize<List<String>>(
              jsonSerialization['clearanceRoles'],
            ),
      autoClearAfterMinutes: jsonSerialization['autoClearAfterMinutes'] as int?,
      canBeCreatedByRoles: jsonSerialization['canBeCreatedByRoles'] == null
          ? null
          : _ixq89rj6.Protocol().deserialize<List<String>>(
              jsonSerialization['canBeCreatedByRoles'],
            ),
      clearanceLogTemplateId:
          jsonSerialization['clearanceLogTemplateId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['clearanceLogTemplateId'],
            ),
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String? description;

  String category;

  String? icon;

  String color;

  bool blocksUsage;

  bool requiresClearance;

  List<String>? clearanceRoles;

  int? autoClearAfterMinutes;

  List<String>? canBeCreatedByRoles;

  _isc.UuidValue? clearanceLogTemplateId;

  bool isActive;

  /// Returns a shallow copy of this [ElogResourceFlagTypes]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogResourceFlagTypes copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? category,
    String? icon,
    String? color,
    bool? blocksUsage,
    bool? requiresClearance,
    List<String>? clearanceRoles,
    int? autoClearAfterMinutes,
    List<String>? canBeCreatedByRoles,
    _isc.UuidValue? clearanceLogTemplateId,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogResourceFlagTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'category': category,
      if (icon != null) 'icon': icon,
      'color': color,
      'blocksUsage': blocksUsage,
      'requiresClearance': requiresClearance,
      if (clearanceRoles != null) 'clearanceRoles': clearanceRoles?.toJson(),
      if (autoClearAfterMinutes != null)
        'autoClearAfterMinutes': autoClearAfterMinutes,
      if (canBeCreatedByRoles != null)
        'canBeCreatedByRoles': canBeCreatedByRoles?.toJson(),
      if (clearanceLogTemplateId != null)
        'clearanceLogTemplateId': clearanceLogTemplateId?.toJson(),
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogResourceFlagTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'category': category,
      if (icon != null) 'icon': icon,
      'color': color,
      'blocksUsage': blocksUsage,
      'requiresClearance': requiresClearance,
      if (clearanceRoles != null) 'clearanceRoles': clearanceRoles?.toJson(),
      if (autoClearAfterMinutes != null)
        'autoClearAfterMinutes': autoClearAfterMinutes,
      if (canBeCreatedByRoles != null)
        'canBeCreatedByRoles': canBeCreatedByRoles?.toJson(),
      if (clearanceLogTemplateId != null)
        'clearanceLogTemplateId': clearanceLogTemplateId?.toJson(),
      'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogResourceFlagTypesImpl extends ElogResourceFlagTypes {
  _ElogResourceFlagTypesImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String category,
    String? icon,
    required String color,
    required bool blocksUsage,
    required bool requiresClearance,
    List<String>? clearanceRoles,
    int? autoClearAfterMinutes,
    List<String>? canBeCreatedByRoles,
    _isc.UuidValue? clearanceLogTemplateId,
    required bool isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         category: category,
         icon: icon,
         color: color,
         blocksUsage: blocksUsage,
         requiresClearance: requiresClearance,
         clearanceRoles: clearanceRoles,
         autoClearAfterMinutes: autoClearAfterMinutes,
         canBeCreatedByRoles: canBeCreatedByRoles,
         clearanceLogTemplateId: clearanceLogTemplateId,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogResourceFlagTypes]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogResourceFlagTypes copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? category,
    Object? icon = _Undefined,
    String? color,
    bool? blocksUsage,
    bool? requiresClearance,
    Object? clearanceRoles = _Undefined,
    Object? autoClearAfterMinutes = _Undefined,
    Object? canBeCreatedByRoles = _Undefined,
    Object? clearanceLogTemplateId = _Undefined,
    bool? isActive,
  }) {
    return ElogResourceFlagTypes(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      category: category ?? this.category,
      icon: icon is String? ? icon : this.icon,
      color: color ?? this.color,
      blocksUsage: blocksUsage ?? this.blocksUsage,
      requiresClearance: requiresClearance ?? this.requiresClearance,
      clearanceRoles: clearanceRoles is List<String>?
          ? clearanceRoles
          : this.clearanceRoles?.map((e0) => e0).toList(),
      autoClearAfterMinutes: autoClearAfterMinutes is int?
          ? autoClearAfterMinutes
          : this.autoClearAfterMinutes,
      canBeCreatedByRoles: canBeCreatedByRoles is List<String>?
          ? canBeCreatedByRoles
          : this.canBeCreatedByRoles?.map((e0) => e0).toList(),
      clearanceLogTemplateId: clearanceLogTemplateId is _isc.UuidValue?
          ? clearanceLogTemplateId
          : this.clearanceLogTemplateId,
      isActive: isActive ?? this.isActive,
    );
  }
}
