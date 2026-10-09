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

abstract class ElogProblemTypes
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogProblemTypes._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.category,
    this.subcategory,
    required this.defaultSeverity,
    required this.requiresImmediateAction,
    this.detailsLogTemplateId,
    required this.appliesToAreas,
    required this.appliesToEquipment,
    required this.isActive,
  });

  factory ElogProblemTypes({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String category,
    String? subcategory,
    required String defaultSeverity,
    required bool requiresImmediateAction,
    _isc.UuidValue? detailsLogTemplateId,
    required bool appliesToAreas,
    required bool appliesToEquipment,
    required bool isActive,
  }) = _ElogProblemTypesImpl;

  factory ElogProblemTypes.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogProblemTypes(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      category: jsonSerialization['category'] as String,
      subcategory: jsonSerialization['subcategory'] as String?,
      defaultSeverity: jsonSerialization['defaultSeverity'] as String,
      requiresImmediateAction: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['requiresImmediateAction'],
      ),
      detailsLogTemplateId: jsonSerialization['detailsLogTemplateId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['detailsLogTemplateId'],
            ),
      appliesToAreas: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['appliesToAreas'],
      ),
      appliesToEquipment: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['appliesToEquipment'],
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

  String? subcategory;

  String defaultSeverity;

  bool requiresImmediateAction;

  _isc.UuidValue? detailsLogTemplateId;

  bool appliesToAreas;

  bool appliesToEquipment;

  bool isActive;

  /// Returns a shallow copy of this [ElogProblemTypes]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogProblemTypes copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? category,
    String? subcategory,
    String? defaultSeverity,
    bool? requiresImmediateAction,
    _isc.UuidValue? detailsLogTemplateId,
    bool? appliesToAreas,
    bool? appliesToEquipment,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogProblemTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'category': category,
      if (subcategory != null) 'subcategory': subcategory,
      'defaultSeverity': defaultSeverity,
      'requiresImmediateAction': requiresImmediateAction,
      if (detailsLogTemplateId != null)
        'detailsLogTemplateId': detailsLogTemplateId?.toJson(),
      'appliesToAreas': appliesToAreas,
      'appliesToEquipment': appliesToEquipment,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogProblemTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'category': category,
      if (subcategory != null) 'subcategory': subcategory,
      'defaultSeverity': defaultSeverity,
      'requiresImmediateAction': requiresImmediateAction,
      if (detailsLogTemplateId != null)
        'detailsLogTemplateId': detailsLogTemplateId?.toJson(),
      'appliesToAreas': appliesToAreas,
      'appliesToEquipment': appliesToEquipment,
      'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogProblemTypesImpl extends ElogProblemTypes {
  _ElogProblemTypesImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String category,
    String? subcategory,
    required String defaultSeverity,
    required bool requiresImmediateAction,
    _isc.UuidValue? detailsLogTemplateId,
    required bool appliesToAreas,
    required bool appliesToEquipment,
    required bool isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         category: category,
         subcategory: subcategory,
         defaultSeverity: defaultSeverity,
         requiresImmediateAction: requiresImmediateAction,
         detailsLogTemplateId: detailsLogTemplateId,
         appliesToAreas: appliesToAreas,
         appliesToEquipment: appliesToEquipment,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogProblemTypes]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogProblemTypes copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? category,
    Object? subcategory = _Undefined,
    String? defaultSeverity,
    bool? requiresImmediateAction,
    Object? detailsLogTemplateId = _Undefined,
    bool? appliesToAreas,
    bool? appliesToEquipment,
    bool? isActive,
  }) {
    return ElogProblemTypes(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      category: category ?? this.category,
      subcategory: subcategory is String? ? subcategory : this.subcategory,
      defaultSeverity: defaultSeverity ?? this.defaultSeverity,
      requiresImmediateAction:
          requiresImmediateAction ?? this.requiresImmediateAction,
      detailsLogTemplateId: detailsLogTemplateId is _isc.UuidValue?
          ? detailsLogTemplateId
          : this.detailsLogTemplateId,
      appliesToAreas: appliesToAreas ?? this.appliesToAreas,
      appliesToEquipment: appliesToEquipment ?? this.appliesToEquipment,
      isActive: isActive ?? this.isActive,
    );
  }
}
