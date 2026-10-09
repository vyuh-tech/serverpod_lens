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
import 'package:serverpod/serverpod.dart' as _is;
import 'package:serverpod_lens_server/src/generated/protocol.dart' as _ioh8es0p;

abstract class ElogPdModuleConfig
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
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
    _is.UuidValue? id,
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
    _is.UuidValue? approverGroupIssuanceId,
    _is.UuidValue? approverGroupAcknowledgementId,
    _is.UuidValue? approverGroupCleaningReturnId,
    _is.UuidValue? approverGroupPolishingId,
    _is.UuidValue? approverGroupInspectionId,
    _is.UuidValue? approverGroupRejectionId,
    _is.UuidValue? approverGroupDefacingId,
    required String lifecycleActionSubmissionRequirements,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ElogPdModuleConfigImpl;

  factory ElogPdModuleConfig.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPdModuleConfig(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      temperatureUnit: jsonSerialization['temperatureUnit'] as String,
      codeGenerationRule: jsonSerialization['codeGenerationRule'] as String,
      nextSequenceNumber: jsonSerialization['nextSequenceNumber'] as int,
      codeCustomPattern: jsonSerialization['codeCustomPattern'] as String?,
      codeSequenceIncrement: jsonSerialization['codeSequenceIncrement'] as int,
      tabletsBeforeInspectionMillions:
          jsonSerialization['tabletsBeforeInspectionMillions'] as String?,
      allowedEquipmentCategoryIds: _ioh8es0p.Protocol()
          .deserialize<List<String>>(
            jsonSerialization['allowedEquipmentCategoryIds'],
          ),
      allowedAreaIds: _ioh8es0p.Protocol().deserialize<List<String>>(
        jsonSerialization['allowedAreaIds'],
      ),
      approverGroupIssuanceId:
          jsonSerialization['approverGroupIssuanceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupIssuanceId'],
            ),
      approverGroupAcknowledgementId:
          jsonSerialization['approverGroupAcknowledgementId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupAcknowledgementId'],
            ),
      approverGroupCleaningReturnId:
          jsonSerialization['approverGroupCleaningReturnId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupCleaningReturnId'],
            ),
      approverGroupPolishingId:
          jsonSerialization['approverGroupPolishingId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupPolishingId'],
            ),
      approverGroupInspectionId:
          jsonSerialization['approverGroupInspectionId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupInspectionId'],
            ),
      approverGroupRejectionId:
          jsonSerialization['approverGroupRejectionId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupRejectionId'],
            ),
      approverGroupDefacingId:
          jsonSerialization['approverGroupDefacingId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['approverGroupDefacingId'],
            ),
      lifecycleActionSubmissionRequirements:
          jsonSerialization['lifecycleActionSubmissionRequirements'] as String,
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = ElogPdModuleConfigTable();

  static const db = ElogPdModuleConfigRepository._();

  @override
  _is.UuidValue? id;

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

  _is.UuidValue? approverGroupIssuanceId;

  _is.UuidValue? approverGroupAcknowledgementId;

  _is.UuidValue? approverGroupCleaningReturnId;

  _is.UuidValue? approverGroupPolishingId;

  _is.UuidValue? approverGroupInspectionId;

  _is.UuidValue? approverGroupRejectionId;

  _is.UuidValue? approverGroupDefacingId;

  String lifecycleActionSubmissionRequirements;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPdModuleConfig]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPdModuleConfig copyWith({
    _is.UuidValue? id,
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
    _is.UuidValue? approverGroupIssuanceId,
    _is.UuidValue? approverGroupAcknowledgementId,
    _is.UuidValue? approverGroupCleaningReturnId,
    _is.UuidValue? approverGroupPolishingId,
    _is.UuidValue? approverGroupInspectionId,
    _is.UuidValue? approverGroupRejectionId,
    _is.UuidValue? approverGroupDefacingId,
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

  static ElogPdModuleConfigInclude include() {
    return ElogPdModuleConfigInclude._();
  }

  static ElogPdModuleConfigIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPdModuleConfigTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdModuleConfigTable>? orderBy,
    _is.OrderByListBuilder<ElogPdModuleConfigTable>? orderByList,
    ElogPdModuleConfigInclude? include,
  }) {
    return ElogPdModuleConfigIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdModuleConfig.t),
      orderByList: orderByList?.call(ElogPdModuleConfig.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdModuleConfigImpl extends ElogPdModuleConfig {
  _ElogPdModuleConfigImpl({
    _is.UuidValue? id,
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
    _is.UuidValue? approverGroupIssuanceId,
    _is.UuidValue? approverGroupAcknowledgementId,
    _is.UuidValue? approverGroupCleaningReturnId,
    _is.UuidValue? approverGroupPolishingId,
    _is.UuidValue? approverGroupInspectionId,
    _is.UuidValue? approverGroupRejectionId,
    _is.UuidValue? approverGroupDefacingId,
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
  @_is.useResult
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
      id: id is _is.UuidValue? ? id : this.id,
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
      approverGroupIssuanceId: approverGroupIssuanceId is _is.UuidValue?
          ? approverGroupIssuanceId
          : this.approverGroupIssuanceId,
      approverGroupAcknowledgementId:
          approverGroupAcknowledgementId is _is.UuidValue?
          ? approverGroupAcknowledgementId
          : this.approverGroupAcknowledgementId,
      approverGroupCleaningReturnId:
          approverGroupCleaningReturnId is _is.UuidValue?
          ? approverGroupCleaningReturnId
          : this.approverGroupCleaningReturnId,
      approverGroupPolishingId: approverGroupPolishingId is _is.UuidValue?
          ? approverGroupPolishingId
          : this.approverGroupPolishingId,
      approverGroupInspectionId: approverGroupInspectionId is _is.UuidValue?
          ? approverGroupInspectionId
          : this.approverGroupInspectionId,
      approverGroupRejectionId: approverGroupRejectionId is _is.UuidValue?
          ? approverGroupRejectionId
          : this.approverGroupRejectionId,
      approverGroupDefacingId: approverGroupDefacingId is _is.UuidValue?
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

class ElogPdModuleConfigUpdateTable
    extends _is.UpdateTable<ElogPdModuleConfigTable> {
  ElogPdModuleConfigUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<String, String> temperatureUnit(String value) =>
      _is.ColumnValue(
        table.temperatureUnit,
        value,
      );

  _is.ColumnValue<String, String> codeGenerationRule(String value) =>
      _is.ColumnValue(
        table.codeGenerationRule,
        value,
      );

  _is.ColumnValue<int, int> nextSequenceNumber(int value) => _is.ColumnValue(
    table.nextSequenceNumber,
    value,
  );

  _is.ColumnValue<String, String> codeCustomPattern(String? value) =>
      _is.ColumnValue(
        table.codeCustomPattern,
        value,
      );

  _is.ColumnValue<int, int> codeSequenceIncrement(int value) => _is.ColumnValue(
    table.codeSequenceIncrement,
    value,
  );

  _is.ColumnValue<String, String> tabletsBeforeInspectionMillions(
    String? value,
  ) => _is.ColumnValue(
    table.tabletsBeforeInspectionMillions,
    value,
  );

  _is.ColumnValue<List<String>, List<String>> allowedEquipmentCategoryIds(
    List<String> value,
  ) => _is.ColumnValue(
    table.allowedEquipmentCategoryIds,
    value,
  );

  _is.ColumnValue<List<String>, List<String>> allowedAreaIds(
    List<String> value,
  ) => _is.ColumnValue(
    table.allowedAreaIds,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> approverGroupIssuanceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.approverGroupIssuanceId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> approverGroupAcknowledgementId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.approverGroupAcknowledgementId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> approverGroupCleaningReturnId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.approverGroupCleaningReturnId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> approverGroupPolishingId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.approverGroupPolishingId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> approverGroupInspectionId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.approverGroupInspectionId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> approverGroupRejectionId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.approverGroupRejectionId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> approverGroupDefacingId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.approverGroupDefacingId,
    value,
  );

  _is.ColumnValue<String, String> lifecycleActionSubmissionRequirements(
    String value,
  ) => _is.ColumnValue(
    table.lifecycleActionSubmissionRequirements,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );
}

class ElogPdModuleConfigTable extends _is.Table<_is.UuidValue?> {
  ElogPdModuleConfigTable({super.tableRelation})
    : super(tableName: 'elog_pd_module_config') {
    updateTable = ElogPdModuleConfigUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
    temperatureUnit = _is.ColumnString(
      'temperatureUnit',
      this,
    );
    codeGenerationRule = _is.ColumnString(
      'codeGenerationRule',
      this,
    );
    nextSequenceNumber = _is.ColumnInt(
      'nextSequenceNumber',
      this,
    );
    codeCustomPattern = _is.ColumnString(
      'codeCustomPattern',
      this,
    );
    codeSequenceIncrement = _is.ColumnInt(
      'codeSequenceIncrement',
      this,
    );
    tabletsBeforeInspectionMillions = _is.ColumnString(
      'tabletsBeforeInspectionMillions',
      this,
    );
    allowedEquipmentCategoryIds = _is.ColumnSerializable<List<String>>(
      'allowedEquipmentCategoryIds',
      this,
    );
    allowedAreaIds = _is.ColumnSerializable<List<String>>(
      'allowedAreaIds',
      this,
    );
    approverGroupIssuanceId = _is.ColumnUuid(
      'approverGroupIssuanceId',
      this,
    );
    approverGroupAcknowledgementId = _is.ColumnUuid(
      'approverGroupAcknowledgementId',
      this,
    );
    approverGroupCleaningReturnId = _is.ColumnUuid(
      'approverGroupCleaningReturnId',
      this,
    );
    approverGroupPolishingId = _is.ColumnUuid(
      'approverGroupPolishingId',
      this,
    );
    approverGroupInspectionId = _is.ColumnUuid(
      'approverGroupInspectionId',
      this,
    );
    approverGroupRejectionId = _is.ColumnUuid(
      'approverGroupRejectionId',
      this,
    );
    approverGroupDefacingId = _is.ColumnUuid(
      'approverGroupDefacingId',
      this,
    );
    lifecycleActionSubmissionRequirements = _is.ColumnString(
      'lifecycleActionSubmissionRequirements',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final ElogPdModuleConfigUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnBool isActive;

  late final _is.ColumnString temperatureUnit;

  late final _is.ColumnString codeGenerationRule;

  late final _is.ColumnInt nextSequenceNumber;

  late final _is.ColumnString codeCustomPattern;

  late final _is.ColumnInt codeSequenceIncrement;

  late final _is.ColumnString tabletsBeforeInspectionMillions;

  late final _is.ColumnSerializable<List<String>> allowedEquipmentCategoryIds;

  late final _is.ColumnSerializable<List<String>> allowedAreaIds;

  late final _is.ColumnUuid approverGroupIssuanceId;

  late final _is.ColumnUuid approverGroupAcknowledgementId;

  late final _is.ColumnUuid approverGroupCleaningReturnId;

  late final _is.ColumnUuid approverGroupPolishingId;

  late final _is.ColumnUuid approverGroupInspectionId;

  late final _is.ColumnUuid approverGroupRejectionId;

  late final _is.ColumnUuid approverGroupDefacingId;

  late final _is.ColumnString lifecycleActionSubmissionRequirements;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    isActive,
    temperatureUnit,
    codeGenerationRule,
    nextSequenceNumber,
    codeCustomPattern,
    codeSequenceIncrement,
    tabletsBeforeInspectionMillions,
    allowedEquipmentCategoryIds,
    allowedAreaIds,
    approverGroupIssuanceId,
    approverGroupAcknowledgementId,
    approverGroupCleaningReturnId,
    approverGroupPolishingId,
    approverGroupInspectionId,
    approverGroupRejectionId,
    approverGroupDefacingId,
    lifecycleActionSubmissionRequirements,
    createdAt,
    updatedAt,
  ];
}

class ElogPdModuleConfigInclude extends _is.IncludeObject {
  ElogPdModuleConfigInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdModuleConfig.t;
}

class ElogPdModuleConfigIncludeList extends _is.IncludeList {
  ElogPdModuleConfigIncludeList._({
    _is.WhereExpressionBuilder<ElogPdModuleConfigTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPdModuleConfig.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdModuleConfig.t;
}

class ElogPdModuleConfigRepository {
  const ElogPdModuleConfigRepository._();

  /// Returns a list of [ElogPdModuleConfig]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<ElogPdModuleConfig>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdModuleConfigTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdModuleConfigTable>? orderBy,
    _is.OrderByListBuilder<ElogPdModuleConfigTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPdModuleConfig>(
      where: where?.call(ElogPdModuleConfig.t),
      orderBy: orderBy?.call(ElogPdModuleConfig.t),
      orderByList: orderByList?.call(ElogPdModuleConfig.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPdModuleConfig] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<ElogPdModuleConfig?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdModuleConfigTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPdModuleConfigTable>? orderBy,
    _is.OrderByListBuilder<ElogPdModuleConfigTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPdModuleConfig>(
      where: where?.call(ElogPdModuleConfig.t),
      orderBy: orderBy?.call(ElogPdModuleConfig.t),
      orderByList: orderByList?.call(ElogPdModuleConfig.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPdModuleConfig] by its [id] or null if no such row exists.
  Future<ElogPdModuleConfig?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPdModuleConfig>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPdModuleConfig]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPdModuleConfig]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdModuleConfig>> insert(
    _is.DatabaseSession session,
    List<ElogPdModuleConfig> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPdModuleConfig>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPdModuleConfig] and returns the inserted row.
  ///
  /// The returned [ElogPdModuleConfig] will have its `id` field set.
  Future<ElogPdModuleConfig> insertRow(
    _is.DatabaseSession session,
    ElogPdModuleConfig row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPdModuleConfig>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPdModuleConfig]s in the list and returns the resulting rows.
  ///
  /// If a row conflicts on the given [conflictColumns], the existing row is
  /// updated with the new values. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies to rows matching the
  /// given expression. Conflicting rows that don't match are skipped and not
  /// returned, so the resulting list may be shorter than [rows].
  ///
  /// The returned [ElogPdModuleConfig]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdModuleConfig>> upsert(
    _is.DatabaseSession session,
    List<ElogPdModuleConfig> rows, {
    required _is.ColumnSelections<ElogPdModuleConfigTable> conflictColumns,
    _is.ColumnSelections<ElogPdModuleConfigTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdModuleConfigTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPdModuleConfig>(
      rows,
      conflictColumns: conflictColumns(ElogPdModuleConfig.t),
      updateColumns: updateColumns?.call(ElogPdModuleConfig.t),
      updateWhere: updateWhere?.call(ElogPdModuleConfig.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPdModuleConfig] and returns the resulting row.
  ///
  /// If the row conflicts on the given [conflictColumns], the existing row is
  /// updated. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies when the existing
  /// row matches the expression. Returns `null` if no row was affected — for
  /// example when [updateWhere] does not match the conflicting row.
  ///
  /// The returned [ElogPdModuleConfig] will have its `id` field set.
  Future<ElogPdModuleConfig?> upsertRow(
    _is.DatabaseSession session,
    ElogPdModuleConfig row, {
    required _is.ColumnSelections<ElogPdModuleConfigTable> conflictColumns,
    _is.ColumnSelections<ElogPdModuleConfigTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdModuleConfigTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPdModuleConfig>(
      row,
      conflictColumns: conflictColumns(ElogPdModuleConfig.t),
      updateColumns: updateColumns?.call(ElogPdModuleConfig.t),
      updateWhere: updateWhere?.call(ElogPdModuleConfig.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdModuleConfig]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdModuleConfig>> update(
    _is.DatabaseSession session,
    List<ElogPdModuleConfig> rows, {
    _is.ColumnSelections<ElogPdModuleConfigTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPdModuleConfig>(
      rows,
      columns: columns?.call(ElogPdModuleConfig.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPdModuleConfig]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPdModuleConfig> updateRow(
    _is.DatabaseSession session,
    ElogPdModuleConfig row, {
    _is.ColumnSelections<ElogPdModuleConfigTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPdModuleConfig>(
      row,
      columns: columns?.call(ElogPdModuleConfig.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPdModuleConfig] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPdModuleConfig?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPdModuleConfigUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPdModuleConfig>(
      id,
      columnValues: columnValues(ElogPdModuleConfig.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdModuleConfig]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdModuleConfig>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPdModuleConfigUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPdModuleConfigTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdModuleConfigTable>? orderBy,
    _is.OrderByListBuilder<ElogPdModuleConfigTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPdModuleConfig>(
      columnValues: columnValues(ElogPdModuleConfig.t.updateTable),
      where: where(ElogPdModuleConfig.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdModuleConfig.t),
      orderByList: orderByList?.call(ElogPdModuleConfig.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPdModuleConfig]s in the list and returns the deleted rows.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdModuleConfig>> delete(
    _is.DatabaseSession session,
    List<ElogPdModuleConfig> rows, {
    _is.OrderByBuilder<ElogPdModuleConfigTable>? orderBy,
    _is.OrderByListBuilder<ElogPdModuleConfigTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPdModuleConfig>(
      rows,
      orderBy: orderBy?.call(ElogPdModuleConfig.t),
      orderByList: orderByList?.call(ElogPdModuleConfig.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPdModuleConfig].
  Future<ElogPdModuleConfig> deleteRow(
    _is.DatabaseSession session,
    ElogPdModuleConfig row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPdModuleConfig>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdModuleConfig>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdModuleConfigTable> where,
    _is.OrderByBuilder<ElogPdModuleConfigTable>? orderBy,
    _is.OrderByListBuilder<ElogPdModuleConfigTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPdModuleConfig>(
      where: where(ElogPdModuleConfig.t),
      orderBy: orderBy?.call(ElogPdModuleConfig.t),
      orderByList: orderByList?.call(ElogPdModuleConfig.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdModuleConfigTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPdModuleConfig>(
      where: where?.call(ElogPdModuleConfig.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPdModuleConfig] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdModuleConfigTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPdModuleConfig>(
      where: where(ElogPdModuleConfig.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
