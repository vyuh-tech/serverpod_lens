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

abstract class ElogPdModuleConfig
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPdModuleConfig._({
    this.id,
    required this.name,
    required this.isActive,
    required this.temperatureUnit,
    required this.codeGenerationRule,
    required this.nextSequenceNumber,
    this.codeCustomPattern,
    required this.codeSequenceIncrement,
    this.tabletsBeforeInspectionMillions,
    required this.allowedEquipmentCategoryIds,
    required this.allowedAreaIds,
    this.approverGroupIssuanceId,
    this.approverGroupAcknowledgementId,
    this.approverGroupCleaningReturnId,
    this.approverGroupPolishingId,
    this.approverGroupInspectionId,
    this.approverGroupRejectionId,
    this.approverGroupDefacingId,
    required this.lifecycleActionSubmissionRequirements,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ElogPdModuleConfig({
    _isc.UuidValue? id,
    required String name,
    required bool isActive,
    required String temperatureUnit,
    required String codeGenerationRule,
    required int nextSequenceNumber,
    String? codeCustomPattern,
    required int codeSequenceIncrement,
    String? tabletsBeforeInspectionMillions,
    required List<String> allowedEquipmentCategoryIds,
    required List<String> allowedAreaIds,
    _isc.UuidValue? approverGroupIssuanceId,
    _isc.UuidValue? approverGroupAcknowledgementId,
    _isc.UuidValue? approverGroupCleaningReturnId,
    _isc.UuidValue? approverGroupPolishingId,
    _isc.UuidValue? approverGroupInspectionId,
    _isc.UuidValue? approverGroupRejectionId,
    _isc.UuidValue? approverGroupDefacingId,
    required String lifecycleActionSubmissionRequirements,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ElogPdModuleConfigImpl;

  factory ElogPdModuleConfig.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPdModuleConfig(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      temperatureUnit: jsonSerialization['temperatureUnit'] as String,
      codeGenerationRule: jsonSerialization['codeGenerationRule'] as String,
      nextSequenceNumber: jsonSerialization['nextSequenceNumber'] as int,
      codeCustomPattern: jsonSerialization['codeCustomPattern'] as String?,
      codeSequenceIncrement: jsonSerialization['codeSequenceIncrement'] as int,
      tabletsBeforeInspectionMillions:
          jsonSerialization['tabletsBeforeInspectionMillions'] as String?,
      allowedEquipmentCategoryIds: _ixq89rj6.Protocol()
          .deserialize<List<String>>(
            jsonSerialization['allowedEquipmentCategoryIds'],
          ),
      allowedAreaIds: _ixq89rj6.Protocol().deserialize<List<String>>(
        jsonSerialization['allowedAreaIds'],
      ),
      approverGroupIssuanceId:
          jsonSerialization['approverGroupIssuanceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupIssuanceId'],
            ),
      approverGroupAcknowledgementId:
          jsonSerialization['approverGroupAcknowledgementId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupAcknowledgementId'],
            ),
      approverGroupCleaningReturnId:
          jsonSerialization['approverGroupCleaningReturnId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupCleaningReturnId'],
            ),
      approverGroupPolishingId:
          jsonSerialization['approverGroupPolishingId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupPolishingId'],
            ),
      approverGroupInspectionId:
          jsonSerialization['approverGroupInspectionId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupInspectionId'],
            ),
      approverGroupRejectionId:
          jsonSerialization['approverGroupRejectionId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupRejectionId'],
            ),
      approverGroupDefacingId:
          jsonSerialization['approverGroupDefacingId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupDefacingId'],
            ),
      lifecycleActionSubmissionRequirements:
          jsonSerialization['lifecycleActionSubmissionRequirements'] as String,
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String name;

  bool isActive;

  String temperatureUnit;

  String codeGenerationRule;

  int nextSequenceNumber;

  String? codeCustomPattern;

  int codeSequenceIncrement;

  String? tabletsBeforeInspectionMillions;

  List<String> allowedEquipmentCategoryIds;

  List<String> allowedAreaIds;

  _isc.UuidValue? approverGroupIssuanceId;

  _isc.UuidValue? approverGroupAcknowledgementId;

  _isc.UuidValue? approverGroupCleaningReturnId;

  _isc.UuidValue? approverGroupPolishingId;

  _isc.UuidValue? approverGroupInspectionId;

  _isc.UuidValue? approverGroupRejectionId;

  _isc.UuidValue? approverGroupDefacingId;

  String lifecycleActionSubmissionRequirements;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [ElogPdModuleConfig]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPdModuleConfig copyWith({
    _isc.UuidValue? id,
    String? name,
    bool? isActive,
    String? temperatureUnit,
    String? codeGenerationRule,
    int? nextSequenceNumber,
    String? codeCustomPattern,
    int? codeSequenceIncrement,
    String? tabletsBeforeInspectionMillions,
    List<String>? allowedEquipmentCategoryIds,
    List<String>? allowedAreaIds,
    _isc.UuidValue? approverGroupIssuanceId,
    _isc.UuidValue? approverGroupAcknowledgementId,
    _isc.UuidValue? approverGroupCleaningReturnId,
    _isc.UuidValue? approverGroupPolishingId,
    _isc.UuidValue? approverGroupInspectionId,
    _isc.UuidValue? approverGroupRejectionId,
    _isc.UuidValue? approverGroupDefacingId,
    String? lifecycleActionSubmissionRequirements,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdModuleConfig',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'isActive': isActive,
      'temperatureUnit': temperatureUnit,
      'codeGenerationRule': codeGenerationRule,
      'nextSequenceNumber': nextSequenceNumber,
      if (codeCustomPattern != null) 'codeCustomPattern': codeCustomPattern,
      'codeSequenceIncrement': codeSequenceIncrement,
      if (tabletsBeforeInspectionMillions != null)
        'tabletsBeforeInspectionMillions': tabletsBeforeInspectionMillions,
      'allowedEquipmentCategoryIds': allowedEquipmentCategoryIds.toJson(),
      'allowedAreaIds': allowedAreaIds.toJson(),
      if (approverGroupIssuanceId != null)
        'approverGroupIssuanceId': approverGroupIssuanceId?.toJson(),
      if (approverGroupAcknowledgementId != null)
        'approverGroupAcknowledgementId': approverGroupAcknowledgementId
            ?.toJson(),
      if (approverGroupCleaningReturnId != null)
        'approverGroupCleaningReturnId': approverGroupCleaningReturnId
            ?.toJson(),
      if (approverGroupPolishingId != null)
        'approverGroupPolishingId': approverGroupPolishingId?.toJson(),
      if (approverGroupInspectionId != null)
        'approverGroupInspectionId': approverGroupInspectionId?.toJson(),
      if (approverGroupRejectionId != null)
        'approverGroupRejectionId': approverGroupRejectionId?.toJson(),
      if (approverGroupDefacingId != null)
        'approverGroupDefacingId': approverGroupDefacingId?.toJson(),
      'lifecycleActionSubmissionRequirements':
          lifecycleActionSubmissionRequirements,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdModuleConfig',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'isActive': isActive,
      'temperatureUnit': temperatureUnit,
      'codeGenerationRule': codeGenerationRule,
      'nextSequenceNumber': nextSequenceNumber,
      if (codeCustomPattern != null) 'codeCustomPattern': codeCustomPattern,
      'codeSequenceIncrement': codeSequenceIncrement,
      if (tabletsBeforeInspectionMillions != null)
        'tabletsBeforeInspectionMillions': tabletsBeforeInspectionMillions,
      'allowedEquipmentCategoryIds': allowedEquipmentCategoryIds.toJson(),
      'allowedAreaIds': allowedAreaIds.toJson(),
      if (approverGroupIssuanceId != null)
        'approverGroupIssuanceId': approverGroupIssuanceId?.toJson(),
      if (approverGroupAcknowledgementId != null)
        'approverGroupAcknowledgementId': approverGroupAcknowledgementId
            ?.toJson(),
      if (approverGroupCleaningReturnId != null)
        'approverGroupCleaningReturnId': approverGroupCleaningReturnId
            ?.toJson(),
      if (approverGroupPolishingId != null)
        'approverGroupPolishingId': approverGroupPolishingId?.toJson(),
      if (approverGroupInspectionId != null)
        'approverGroupInspectionId': approverGroupInspectionId?.toJson(),
      if (approverGroupRejectionId != null)
        'approverGroupRejectionId': approverGroupRejectionId?.toJson(),
      if (approverGroupDefacingId != null)
        'approverGroupDefacingId': approverGroupDefacingId?.toJson(),
      'lifecycleActionSubmissionRequirements':
          lifecycleActionSubmissionRequirements,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdModuleConfigImpl extends ElogPdModuleConfig {
  _ElogPdModuleConfigImpl({
    _isc.UuidValue? id,
    required String name,
    required bool isActive,
    required String temperatureUnit,
    required String codeGenerationRule,
    required int nextSequenceNumber,
    String? codeCustomPattern,
    required int codeSequenceIncrement,
    String? tabletsBeforeInspectionMillions,
    required List<String> allowedEquipmentCategoryIds,
    required List<String> allowedAreaIds,
    _isc.UuidValue? approverGroupIssuanceId,
    _isc.UuidValue? approverGroupAcknowledgementId,
    _isc.UuidValue? approverGroupCleaningReturnId,
    _isc.UuidValue? approverGroupPolishingId,
    _isc.UuidValue? approverGroupInspectionId,
    _isc.UuidValue? approverGroupRejectionId,
    _isc.UuidValue? approverGroupDefacingId,
    required String lifecycleActionSubmissionRequirements,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         name: name,
         isActive: isActive,
         temperatureUnit: temperatureUnit,
         codeGenerationRule: codeGenerationRule,
         nextSequenceNumber: nextSequenceNumber,
         codeCustomPattern: codeCustomPattern,
         codeSequenceIncrement: codeSequenceIncrement,
         tabletsBeforeInspectionMillions: tabletsBeforeInspectionMillions,
         allowedEquipmentCategoryIds: allowedEquipmentCategoryIds,
         allowedAreaIds: allowedAreaIds,
         approverGroupIssuanceId: approverGroupIssuanceId,
         approverGroupAcknowledgementId: approverGroupAcknowledgementId,
         approverGroupCleaningReturnId: approverGroupCleaningReturnId,
         approverGroupPolishingId: approverGroupPolishingId,
         approverGroupInspectionId: approverGroupInspectionId,
         approverGroupRejectionId: approverGroupRejectionId,
         approverGroupDefacingId: approverGroupDefacingId,
         lifecycleActionSubmissionRequirements:
             lifecycleActionSubmissionRequirements,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [ElogPdModuleConfig]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPdModuleConfig copyWith({
    Object? id = _Undefined,
    String? name,
    bool? isActive,
    String? temperatureUnit,
    String? codeGenerationRule,
    int? nextSequenceNumber,
    Object? codeCustomPattern = _Undefined,
    int? codeSequenceIncrement,
    Object? tabletsBeforeInspectionMillions = _Undefined,
    List<String>? allowedEquipmentCategoryIds,
    List<String>? allowedAreaIds,
    Object? approverGroupIssuanceId = _Undefined,
    Object? approverGroupAcknowledgementId = _Undefined,
    Object? approverGroupCleaningReturnId = _Undefined,
    Object? approverGroupPolishingId = _Undefined,
    Object? approverGroupInspectionId = _Undefined,
    Object? approverGroupRejectionId = _Undefined,
    Object? approverGroupDefacingId = _Undefined,
    String? lifecycleActionSubmissionRequirements,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ElogPdModuleConfig(
      id: id is _isc.UuidValue? ? id : this.id,
      name: name ?? this.name,
      isActive: isActive ?? this.isActive,
      temperatureUnit: temperatureUnit ?? this.temperatureUnit,
      codeGenerationRule: codeGenerationRule ?? this.codeGenerationRule,
      nextSequenceNumber: nextSequenceNumber ?? this.nextSequenceNumber,
      codeCustomPattern: codeCustomPattern is String?
          ? codeCustomPattern
          : this.codeCustomPattern,
      codeSequenceIncrement:
          codeSequenceIncrement ?? this.codeSequenceIncrement,
      tabletsBeforeInspectionMillions:
          tabletsBeforeInspectionMillions is String?
          ? tabletsBeforeInspectionMillions
          : this.tabletsBeforeInspectionMillions,
      allowedEquipmentCategoryIds:
          allowedEquipmentCategoryIds ??
          this.allowedEquipmentCategoryIds.map((e0) => e0).toList(),
      allowedAreaIds:
          allowedAreaIds ?? this.allowedAreaIds.map((e0) => e0).toList(),
      approverGroupIssuanceId: approverGroupIssuanceId is _isc.UuidValue?
          ? approverGroupIssuanceId
          : this.approverGroupIssuanceId,
      approverGroupAcknowledgementId:
          approverGroupAcknowledgementId is _isc.UuidValue?
          ? approverGroupAcknowledgementId
          : this.approverGroupAcknowledgementId,
      approverGroupCleaningReturnId:
          approverGroupCleaningReturnId is _isc.UuidValue?
          ? approverGroupCleaningReturnId
          : this.approverGroupCleaningReturnId,
      approverGroupPolishingId: approverGroupPolishingId is _isc.UuidValue?
          ? approverGroupPolishingId
          : this.approverGroupPolishingId,
      approverGroupInspectionId: approverGroupInspectionId is _isc.UuidValue?
          ? approverGroupInspectionId
          : this.approverGroupInspectionId,
      approverGroupRejectionId: approverGroupRejectionId is _isc.UuidValue?
          ? approverGroupRejectionId
          : this.approverGroupRejectionId,
      approverGroupDefacingId: approverGroupDefacingId is _isc.UuidValue?
          ? approverGroupDefacingId
          : this.approverGroupDefacingId,
      lifecycleActionSubmissionRequirements:
          lifecycleActionSubmissionRequirements ??
          this.lifecycleActionSubmissionRequirements,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
