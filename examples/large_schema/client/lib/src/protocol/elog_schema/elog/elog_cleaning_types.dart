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

abstract class ElogCleaningTypes
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogCleaningTypes._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.category,
    this.estimatedDurationMinutes,
    this.holdTimeMinutes,
    required this.tierRank,
    this.validityMinutes,
    this.checklistTemplateId,
    this.logTemplateId,
    this.appliesToAreas,
    this.appliesToEquipment,
    this.instructions,
    this.sopReference,
    this.color,
    this.icon,
    this.isActive,
  });

  factory ElogCleaningTypes({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String category,
    int? estimatedDurationMinutes,
    int? holdTimeMinutes,
    required int tierRank,
    int? validityMinutes,
    _isc.UuidValue? checklistTemplateId,
    _isc.UuidValue? logTemplateId,
    bool? appliesToAreas,
    bool? appliesToEquipment,
    String? instructions,
    String? sopReference,
    String? color,
    String? icon,
    bool? isActive,
  }) = _ElogCleaningTypesImpl;

  factory ElogCleaningTypes.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogCleaningTypes(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      category: jsonSerialization['category'] as String,
      estimatedDurationMinutes:
          jsonSerialization['estimatedDurationMinutes'] as int?,
      holdTimeMinutes: jsonSerialization['holdTimeMinutes'] as int?,
      tierRank: jsonSerialization['tierRank'] as int,
      validityMinutes: jsonSerialization['validityMinutes'] as int?,
      checklistTemplateId: jsonSerialization['checklistTemplateId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['checklistTemplateId'],
            ),
      logTemplateId: jsonSerialization['logTemplateId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['logTemplateId'],
            ),
      appliesToAreas: jsonSerialization['appliesToAreas'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(
              jsonSerialization['appliesToAreas'],
            ),
      appliesToEquipment: jsonSerialization['appliesToEquipment'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(
              jsonSerialization['appliesToEquipment'],
            ),
      instructions: jsonSerialization['instructions'] as String?,
      sopReference: jsonSerialization['sopReference'] as String?,
      color: jsonSerialization['color'] as String?,
      icon: jsonSerialization['icon'] as String?,
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
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

  int? estimatedDurationMinutes;

  int? holdTimeMinutes;

  int tierRank;

  int? validityMinutes;

  _isc.UuidValue? checklistTemplateId;

  _isc.UuidValue? logTemplateId;

  bool? appliesToAreas;

  bool? appliesToEquipment;

  String? instructions;

  String? sopReference;

  String? color;

  String? icon;

  bool? isActive;

  /// Returns a shallow copy of this [ElogCleaningTypes]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogCleaningTypes copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? category,
    int? estimatedDurationMinutes,
    int? holdTimeMinutes,
    int? tierRank,
    int? validityMinutes,
    _isc.UuidValue? checklistTemplateId,
    _isc.UuidValue? logTemplateId,
    bool? appliesToAreas,
    bool? appliesToEquipment,
    String? instructions,
    String? sopReference,
    String? color,
    String? icon,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogCleaningTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'category': category,
      if (estimatedDurationMinutes != null)
        'estimatedDurationMinutes': estimatedDurationMinutes,
      if (holdTimeMinutes != null) 'holdTimeMinutes': holdTimeMinutes,
      'tierRank': tierRank,
      if (validityMinutes != null) 'validityMinutes': validityMinutes,
      if (checklistTemplateId != null)
        'checklistTemplateId': checklistTemplateId?.toJson(),
      if (logTemplateId != null) 'logTemplateId': logTemplateId?.toJson(),
      if (appliesToAreas != null) 'appliesToAreas': appliesToAreas,
      if (appliesToEquipment != null) 'appliesToEquipment': appliesToEquipment,
      if (instructions != null) 'instructions': instructions,
      if (sopReference != null) 'sopReference': sopReference,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogCleaningTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'category': category,
      if (estimatedDurationMinutes != null)
        'estimatedDurationMinutes': estimatedDurationMinutes,
      if (holdTimeMinutes != null) 'holdTimeMinutes': holdTimeMinutes,
      'tierRank': tierRank,
      if (validityMinutes != null) 'validityMinutes': validityMinutes,
      if (checklistTemplateId != null)
        'checklistTemplateId': checklistTemplateId?.toJson(),
      if (logTemplateId != null) 'logTemplateId': logTemplateId?.toJson(),
      if (appliesToAreas != null) 'appliesToAreas': appliesToAreas,
      if (appliesToEquipment != null) 'appliesToEquipment': appliesToEquipment,
      if (instructions != null) 'instructions': instructions,
      if (sopReference != null) 'sopReference': sopReference,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogCleaningTypesImpl extends ElogCleaningTypes {
  _ElogCleaningTypesImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String category,
    int? estimatedDurationMinutes,
    int? holdTimeMinutes,
    required int tierRank,
    int? validityMinutes,
    _isc.UuidValue? checklistTemplateId,
    _isc.UuidValue? logTemplateId,
    bool? appliesToAreas,
    bool? appliesToEquipment,
    String? instructions,
    String? sopReference,
    String? color,
    String? icon,
    bool? isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         category: category,
         estimatedDurationMinutes: estimatedDurationMinutes,
         holdTimeMinutes: holdTimeMinutes,
         tierRank: tierRank,
         validityMinutes: validityMinutes,
         checklistTemplateId: checklistTemplateId,
         logTemplateId: logTemplateId,
         appliesToAreas: appliesToAreas,
         appliesToEquipment: appliesToEquipment,
         instructions: instructions,
         sopReference: sopReference,
         color: color,
         icon: icon,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogCleaningTypes]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogCleaningTypes copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? category,
    Object? estimatedDurationMinutes = _Undefined,
    Object? holdTimeMinutes = _Undefined,
    int? tierRank,
    Object? validityMinutes = _Undefined,
    Object? checklistTemplateId = _Undefined,
    Object? logTemplateId = _Undefined,
    Object? appliesToAreas = _Undefined,
    Object? appliesToEquipment = _Undefined,
    Object? instructions = _Undefined,
    Object? sopReference = _Undefined,
    Object? color = _Undefined,
    Object? icon = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return ElogCleaningTypes(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      category: category ?? this.category,
      estimatedDurationMinutes: estimatedDurationMinutes is int?
          ? estimatedDurationMinutes
          : this.estimatedDurationMinutes,
      holdTimeMinutes: holdTimeMinutes is int?
          ? holdTimeMinutes
          : this.holdTimeMinutes,
      tierRank: tierRank ?? this.tierRank,
      validityMinutes: validityMinutes is int?
          ? validityMinutes
          : this.validityMinutes,
      checklistTemplateId: checklistTemplateId is _isc.UuidValue?
          ? checklistTemplateId
          : this.checklistTemplateId,
      logTemplateId: logTemplateId is _isc.UuidValue?
          ? logTemplateId
          : this.logTemplateId,
      appliesToAreas: appliesToAreas is bool?
          ? appliesToAreas
          : this.appliesToAreas,
      appliesToEquipment: appliesToEquipment is bool?
          ? appliesToEquipment
          : this.appliesToEquipment,
      instructions: instructions is String? ? instructions : this.instructions,
      sopReference: sopReference is String? ? sopReference : this.sopReference,
      color: color is String? ? color : this.color,
      icon: icon is String? ? icon : this.icon,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}
