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

abstract class ElogPresetPolicies
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPresetPolicies._({
    this.id,
    required this.industryId,
    this.cleaningConfig,
    this.calibrationConfig,
    this.usageConfig,
    this.maintenanceConfig,
  });

  factory ElogPresetPolicies({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    String? cleaningConfig,
    String? calibrationConfig,
    String? usageConfig,
    String? maintenanceConfig,
  }) = _ElogPresetPoliciesImpl;

  factory ElogPresetPolicies.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPresetPolicies(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      cleaningConfig: jsonSerialization['cleaningConfig'] as String?,
      calibrationConfig: jsonSerialization['calibrationConfig'] as String?,
      usageConfig: jsonSerialization['usageConfig'] as String?,
      maintenanceConfig: jsonSerialization['maintenanceConfig'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue industryId;

  String? cleaningConfig;

  String? calibrationConfig;

  String? usageConfig;

  String? maintenanceConfig;

  /// Returns a shallow copy of this [ElogPresetPolicies]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPresetPolicies copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? industryId,
    String? cleaningConfig,
    String? calibrationConfig,
    String? usageConfig,
    String? maintenanceConfig,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetPolicies',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      if (cleaningConfig != null) 'cleaningConfig': cleaningConfig,
      if (calibrationConfig != null) 'calibrationConfig': calibrationConfig,
      if (usageConfig != null) 'usageConfig': usageConfig,
      if (maintenanceConfig != null) 'maintenanceConfig': maintenanceConfig,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetPolicies',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      if (cleaningConfig != null) 'cleaningConfig': cleaningConfig,
      if (calibrationConfig != null) 'calibrationConfig': calibrationConfig,
      if (usageConfig != null) 'usageConfig': usageConfig,
      if (maintenanceConfig != null) 'maintenanceConfig': maintenanceConfig,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetPoliciesImpl extends ElogPresetPolicies {
  _ElogPresetPoliciesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    String? cleaningConfig,
    String? calibrationConfig,
    String? usageConfig,
    String? maintenanceConfig,
  }) : super._(
         id: id,
         industryId: industryId,
         cleaningConfig: cleaningConfig,
         calibrationConfig: calibrationConfig,
         usageConfig: usageConfig,
         maintenanceConfig: maintenanceConfig,
       );

  /// Returns a shallow copy of this [ElogPresetPolicies]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPresetPolicies copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? industryId,
    Object? cleaningConfig = _Undefined,
    Object? calibrationConfig = _Undefined,
    Object? usageConfig = _Undefined,
    Object? maintenanceConfig = _Undefined,
  }) {
    return ElogPresetPolicies(
      id: id is _isc.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      cleaningConfig: cleaningConfig is String?
          ? cleaningConfig
          : this.cleaningConfig,
      calibrationConfig: calibrationConfig is String?
          ? calibrationConfig
          : this.calibrationConfig,
      usageConfig: usageConfig is String? ? usageConfig : this.usageConfig,
      maintenanceConfig: maintenanceConfig is String?
          ? maintenanceConfig
          : this.maintenanceConfig,
    );
  }
}
