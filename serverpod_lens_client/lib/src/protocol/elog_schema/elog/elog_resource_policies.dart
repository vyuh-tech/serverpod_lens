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

abstract class ElogResourcePolicies
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogResourcePolicies._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.scopeLevel,
    this.resourceType,
    this.resourceCategoryId,
    this.resourceId,
    this.cleaningConfig,
    this.calibrationConfig,
    this.maintenanceConfig,
    this.usageConfig,
    this.problemConfig,
    this.otherConfig,
    this.inspectionConfig,
    this.containmentConfig,
    this.activityCompatibility,
    this.priority,
    this.isActive,
    this.versionNumber,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogResourcePolicies({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String scopeLevel,
    String? resourceType,
    _isc.UuidValue? resourceCategoryId,
    _isc.UuidValue? resourceId,
    String? cleaningConfig,
    String? calibrationConfig,
    String? maintenanceConfig,
    String? usageConfig,
    String? problemConfig,
    String? otherConfig,
    String? inspectionConfig,
    String? containmentConfig,
    String? activityCompatibility,
    int? priority,
    bool? isActive,
    int? versionNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) = _ElogResourcePoliciesImpl;

  factory ElogResourcePolicies.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogResourcePolicies(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      scopeLevel: jsonSerialization['scopeLevel'] as String,
      resourceType: jsonSerialization['resourceType'] as String?,
      resourceCategoryId: jsonSerialization['resourceCategoryId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceCategoryId'],
            ),
      resourceId: jsonSerialization['resourceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceId'],
            ),
      cleaningConfig: jsonSerialization['cleaningConfig'] as String?,
      calibrationConfig: jsonSerialization['calibrationConfig'] as String?,
      maintenanceConfig: jsonSerialization['maintenanceConfig'] as String?,
      usageConfig: jsonSerialization['usageConfig'] as String?,
      problemConfig: jsonSerialization['problemConfig'] as String?,
      otherConfig: jsonSerialization['otherConfig'] as String?,
      inspectionConfig: jsonSerialization['inspectionConfig'] as String?,
      containmentConfig: jsonSerialization['containmentConfig'] as String?,
      activityCompatibility:
          jsonSerialization['activityCompatibility'] as String?,
      priority: jsonSerialization['priority'] as int?,
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      versionNumber: jsonSerialization['versionNumber'] as int?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
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

  String scopeLevel;

  String? resourceType;

  _isc.UuidValue? resourceCategoryId;

  _isc.UuidValue? resourceId;

  String? cleaningConfig;

  String? calibrationConfig;

  String? maintenanceConfig;

  String? usageConfig;

  String? problemConfig;

  String? otherConfig;

  String? inspectionConfig;

  String? containmentConfig;

  String? activityCompatibility;

  int? priority;

  bool? isActive;

  int? versionNumber;

  DateTime? createdAt;

  DateTime? updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [ElogResourcePolicies]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogResourcePolicies copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? scopeLevel,
    String? resourceType,
    _isc.UuidValue? resourceCategoryId,
    _isc.UuidValue? resourceId,
    String? cleaningConfig,
    String? calibrationConfig,
    String? maintenanceConfig,
    String? usageConfig,
    String? problemConfig,
    String? otherConfig,
    String? inspectionConfig,
    String? containmentConfig,
    String? activityCompatibility,
    int? priority,
    bool? isActive,
    int? versionNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogResourcePolicies',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'scopeLevel': scopeLevel,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceCategoryId != null)
        'resourceCategoryId': resourceCategoryId?.toJson(),
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (cleaningConfig != null) 'cleaningConfig': cleaningConfig,
      if (calibrationConfig != null) 'calibrationConfig': calibrationConfig,
      if (maintenanceConfig != null) 'maintenanceConfig': maintenanceConfig,
      if (usageConfig != null) 'usageConfig': usageConfig,
      if (problemConfig != null) 'problemConfig': problemConfig,
      if (otherConfig != null) 'otherConfig': otherConfig,
      if (inspectionConfig != null) 'inspectionConfig': inspectionConfig,
      if (containmentConfig != null) 'containmentConfig': containmentConfig,
      if (activityCompatibility != null)
        'activityCompatibility': activityCompatibility,
      if (priority != null) 'priority': priority,
      if (isActive != null) 'isActive': isActive,
      if (versionNumber != null) 'versionNumber': versionNumber,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogResourcePolicies',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'scopeLevel': scopeLevel,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceCategoryId != null)
        'resourceCategoryId': resourceCategoryId?.toJson(),
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (cleaningConfig != null) 'cleaningConfig': cleaningConfig,
      if (calibrationConfig != null) 'calibrationConfig': calibrationConfig,
      if (maintenanceConfig != null) 'maintenanceConfig': maintenanceConfig,
      if (usageConfig != null) 'usageConfig': usageConfig,
      if (problemConfig != null) 'problemConfig': problemConfig,
      if (otherConfig != null) 'otherConfig': otherConfig,
      if (inspectionConfig != null) 'inspectionConfig': inspectionConfig,
      if (containmentConfig != null) 'containmentConfig': containmentConfig,
      if (activityCompatibility != null)
        'activityCompatibility': activityCompatibility,
      if (priority != null) 'priority': priority,
      if (isActive != null) 'isActive': isActive,
      if (versionNumber != null) 'versionNumber': versionNumber,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
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

class _ElogResourcePoliciesImpl extends ElogResourcePolicies {
  _ElogResourcePoliciesImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String scopeLevel,
    String? resourceType,
    _isc.UuidValue? resourceCategoryId,
    _isc.UuidValue? resourceId,
    String? cleaningConfig,
    String? calibrationConfig,
    String? maintenanceConfig,
    String? usageConfig,
    String? problemConfig,
    String? otherConfig,
    String? inspectionConfig,
    String? containmentConfig,
    String? activityCompatibility,
    int? priority,
    bool? isActive,
    int? versionNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         scopeLevel: scopeLevel,
         resourceType: resourceType,
         resourceCategoryId: resourceCategoryId,
         resourceId: resourceId,
         cleaningConfig: cleaningConfig,
         calibrationConfig: calibrationConfig,
         maintenanceConfig: maintenanceConfig,
         usageConfig: usageConfig,
         problemConfig: problemConfig,
         otherConfig: otherConfig,
         inspectionConfig: inspectionConfig,
         containmentConfig: containmentConfig,
         activityCompatibility: activityCompatibility,
         priority: priority,
         isActive: isActive,
         versionNumber: versionNumber,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogResourcePolicies]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogResourcePolicies copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? scopeLevel,
    Object? resourceType = _Undefined,
    Object? resourceCategoryId = _Undefined,
    Object? resourceId = _Undefined,
    Object? cleaningConfig = _Undefined,
    Object? calibrationConfig = _Undefined,
    Object? maintenanceConfig = _Undefined,
    Object? usageConfig = _Undefined,
    Object? problemConfig = _Undefined,
    Object? otherConfig = _Undefined,
    Object? inspectionConfig = _Undefined,
    Object? containmentConfig = _Undefined,
    Object? activityCompatibility = _Undefined,
    Object? priority = _Undefined,
    Object? isActive = _Undefined,
    Object? versionNumber = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogResourcePolicies(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      scopeLevel: scopeLevel ?? this.scopeLevel,
      resourceType: resourceType is String? ? resourceType : this.resourceType,
      resourceCategoryId: resourceCategoryId is _isc.UuidValue?
          ? resourceCategoryId
          : this.resourceCategoryId,
      resourceId: resourceId is _isc.UuidValue? ? resourceId : this.resourceId,
      cleaningConfig: cleaningConfig is String?
          ? cleaningConfig
          : this.cleaningConfig,
      calibrationConfig: calibrationConfig is String?
          ? calibrationConfig
          : this.calibrationConfig,
      maintenanceConfig: maintenanceConfig is String?
          ? maintenanceConfig
          : this.maintenanceConfig,
      usageConfig: usageConfig is String? ? usageConfig : this.usageConfig,
      problemConfig: problemConfig is String?
          ? problemConfig
          : this.problemConfig,
      otherConfig: otherConfig is String? ? otherConfig : this.otherConfig,
      inspectionConfig: inspectionConfig is String?
          ? inspectionConfig
          : this.inspectionConfig,
      containmentConfig: containmentConfig is String?
          ? containmentConfig
          : this.containmentConfig,
      activityCompatibility: activityCompatibility is String?
          ? activityCompatibility
          : this.activityCompatibility,
      priority: priority is int? ? priority : this.priority,
      isActive: isActive is bool? ? isActive : this.isActive,
      versionNumber: versionNumber is int? ? versionNumber : this.versionNumber,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
