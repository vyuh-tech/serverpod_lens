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

abstract class ElogChecklistUsageInstructions
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogChecklistUsageInstructions._({
    this.id,
    required this.usageId,
    required this.instructionId,
    this.sourceInstructionId,
    this.occurrenceIndex,
    this.occurrenceTotal,
    this.availableAt,
    this.warningAt,
    this.dueAt,
    this.deviationReason,
    required this.setId,
    required this.instructionData,
    this.setData,
    this.response,
    this.workflowInstanceId,
    required this.sequenceNumber,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.claimedBy,
    this.timerStartedAt,
    this.operatorSignature,
    this.witnessSignature,
    this.witnessUserId,
    this.approvalSignatures,
  });

  factory ElogChecklistUsageInstructions({
    _is.UuidValue? id,
    required _is.UuidValue usageId,
    required String instructionId,
    String? sourceInstructionId,
    int? occurrenceIndex,
    int? occurrenceTotal,
    DateTime? availableAt,
    DateTime? warningAt,
    DateTime? dueAt,
    String? deviationReason,
    required String setId,
    required String instructionData,
    String? setData,
    String? response,
    _is.UuidValue? workflowInstanceId,
    required int sequenceNumber,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    _is.UuidValue? claimedBy,
    DateTime? timerStartedAt,
    String? operatorSignature,
    String? witnessSignature,
    _is.UuidValue? witnessUserId,
    String? approvalSignatures,
  }) = _ElogChecklistUsageInstructionsImpl;

  factory ElogChecklistUsageInstructions.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogChecklistUsageInstructions(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      usageId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['usageId'],
      ),
      instructionId: jsonSerialization['instructionId'] as String,
      sourceInstructionId: jsonSerialization['sourceInstructionId'] as String?,
      occurrenceIndex: jsonSerialization['occurrenceIndex'] as int?,
      occurrenceTotal: jsonSerialization['occurrenceTotal'] as int?,
      availableAt: jsonSerialization['availableAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['availableAt'],
            ),
      warningAt: jsonSerialization['warningAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['warningAt']),
      dueAt: jsonSerialization['dueAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
      deviationReason: jsonSerialization['deviationReason'] as String?,
      setId: jsonSerialization['setId'] as String,
      instructionData: jsonSerialization['instructionData'] as String,
      setData: jsonSerialization['setData'] as String?,
      response: jsonSerialization['response'] as String?,
      workflowInstanceId: jsonSerialization['workflowInstanceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowInstanceId'],
            ),
      sequenceNumber: jsonSerialization['sequenceNumber'] as int,
      status: jsonSerialization['status'] as String,
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['createdBy']),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['updatedBy']),
      claimedBy: jsonSerialization['claimedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['claimedBy']),
      timerStartedAt: jsonSerialization['timerStartedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['timerStartedAt'],
            ),
      operatorSignature: jsonSerialization['operatorSignature'] as String?,
      witnessSignature: jsonSerialization['witnessSignature'] as String?,
      witnessUserId: jsonSerialization['witnessUserId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['witnessUserId'],
            ),
      approvalSignatures: jsonSerialization['approvalSignatures'] as String?,
    );
  }

  static final t = ElogChecklistUsageInstructionsTable();

  static const db = ElogChecklistUsageInstructionsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue usageId;

  String instructionId;

  String? sourceInstructionId;

  int? occurrenceIndex;

  int? occurrenceTotal;

  DateTime? availableAt;

  DateTime? warningAt;

  DateTime? dueAt;

  String? deviationReason;

  String setId;

  String instructionData;

  String? setData;

  String? response;

  _is.UuidValue? workflowInstanceId;

  int sequenceNumber;

  String status;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  _is.UuidValue? claimedBy;

  DateTime? timerStartedAt;

  String? operatorSignature;

  String? witnessSignature;

  _is.UuidValue? witnessUserId;

  String? approvalSignatures;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogChecklistUsageInstructions]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogChecklistUsageInstructions copyWith({
    _is.UuidValue? id,
    _is.UuidValue? usageId,
    String? instructionId,
    String? sourceInstructionId,
    int? occurrenceIndex,
    int? occurrenceTotal,
    DateTime? availableAt,
    DateTime? warningAt,
    DateTime? dueAt,
    String? deviationReason,
    String? setId,
    String? instructionData,
    String? setData,
    String? response,
    _is.UuidValue? workflowInstanceId,
    int? sequenceNumber,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    _is.UuidValue? claimedBy,
    DateTime? timerStartedAt,
    String? operatorSignature,
    String? witnessSignature,
    _is.UuidValue? witnessUserId,
    String? approvalSignatures,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogChecklistUsageInstructions',
      if (id != null) 'id': id?.toJson(),
      'usageId': usageId.toJson(),
      'instructionId': instructionId,
      if (sourceInstructionId != null)
        'sourceInstructionId': sourceInstructionId,
      if (occurrenceIndex != null) 'occurrenceIndex': occurrenceIndex,
      if (occurrenceTotal != null) 'occurrenceTotal': occurrenceTotal,
      if (availableAt != null) 'availableAt': availableAt?.toJson(),
      if (warningAt != null) 'warningAt': warningAt?.toJson(),
      if (dueAt != null) 'dueAt': dueAt?.toJson(),
      if (deviationReason != null) 'deviationReason': deviationReason,
      'setId': setId,
      'instructionData': instructionData,
      if (setData != null) 'setData': setData,
      if (response != null) 'response': response,
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      'sequenceNumber': sequenceNumber,
      'status': status,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      if (claimedBy != null) 'claimedBy': claimedBy?.toJson(),
      if (timerStartedAt != null) 'timerStartedAt': timerStartedAt?.toJson(),
      if (operatorSignature != null) 'operatorSignature': operatorSignature,
      if (witnessSignature != null) 'witnessSignature': witnessSignature,
      if (witnessUserId != null) 'witnessUserId': witnessUserId?.toJson(),
      if (approvalSignatures != null) 'approvalSignatures': approvalSignatures,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogChecklistUsageInstructions',
      if (id != null) 'id': id?.toJson(),
      'usageId': usageId.toJson(),
      'instructionId': instructionId,
      if (sourceInstructionId != null)
        'sourceInstructionId': sourceInstructionId,
      if (occurrenceIndex != null) 'occurrenceIndex': occurrenceIndex,
      if (occurrenceTotal != null) 'occurrenceTotal': occurrenceTotal,
      if (availableAt != null) 'availableAt': availableAt?.toJson(),
      if (warningAt != null) 'warningAt': warningAt?.toJson(),
      if (dueAt != null) 'dueAt': dueAt?.toJson(),
      if (deviationReason != null) 'deviationReason': deviationReason,
      'setId': setId,
      'instructionData': instructionData,
      if (setData != null) 'setData': setData,
      if (response != null) 'response': response,
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      'sequenceNumber': sequenceNumber,
      'status': status,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      if (claimedBy != null) 'claimedBy': claimedBy?.toJson(),
      if (timerStartedAt != null) 'timerStartedAt': timerStartedAt?.toJson(),
      if (operatorSignature != null) 'operatorSignature': operatorSignature,
      if (witnessSignature != null) 'witnessSignature': witnessSignature,
      if (witnessUserId != null) 'witnessUserId': witnessUserId?.toJson(),
      if (approvalSignatures != null) 'approvalSignatures': approvalSignatures,
    };
  }

  static ElogChecklistUsageInstructionsInclude include() {
    return ElogChecklistUsageInstructionsInclude._();
  }

  static ElogChecklistUsageInstructionsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogChecklistUsageInstructionsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogChecklistUsageInstructionsTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsageInstructionsTable>? orderByList,
    ElogChecklistUsageInstructionsInclude? include,
  }) {
    return ElogChecklistUsageInstructionsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogChecklistUsageInstructions.t),
      orderByList: orderByList?.call(ElogChecklistUsageInstructions.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogChecklistUsageInstructionsImpl
    extends ElogChecklistUsageInstructions {
  _ElogChecklistUsageInstructionsImpl({
    _is.UuidValue? id,
    required _is.UuidValue usageId,
    required String instructionId,
    String? sourceInstructionId,
    int? occurrenceIndex,
    int? occurrenceTotal,
    DateTime? availableAt,
    DateTime? warningAt,
    DateTime? dueAt,
    String? deviationReason,
    required String setId,
    required String instructionData,
    String? setData,
    String? response,
    _is.UuidValue? workflowInstanceId,
    required int sequenceNumber,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    _is.UuidValue? claimedBy,
    DateTime? timerStartedAt,
    String? operatorSignature,
    String? witnessSignature,
    _is.UuidValue? witnessUserId,
    String? approvalSignatures,
  }) : super._(
         id: id,
         usageId: usageId,
         instructionId: instructionId,
         sourceInstructionId: sourceInstructionId,
         occurrenceIndex: occurrenceIndex,
         occurrenceTotal: occurrenceTotal,
         availableAt: availableAt,
         warningAt: warningAt,
         dueAt: dueAt,
         deviationReason: deviationReason,
         setId: setId,
         instructionData: instructionData,
         setData: setData,
         response: response,
         workflowInstanceId: workflowInstanceId,
         sequenceNumber: sequenceNumber,
         status: status,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
         claimedBy: claimedBy,
         timerStartedAt: timerStartedAt,
         operatorSignature: operatorSignature,
         witnessSignature: witnessSignature,
         witnessUserId: witnessUserId,
         approvalSignatures: approvalSignatures,
       );

  /// Returns a shallow copy of this [ElogChecklistUsageInstructions]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogChecklistUsageInstructions copyWith({
    Object? id = _Undefined,
    _is.UuidValue? usageId,
    String? instructionId,
    Object? sourceInstructionId = _Undefined,
    Object? occurrenceIndex = _Undefined,
    Object? occurrenceTotal = _Undefined,
    Object? availableAt = _Undefined,
    Object? warningAt = _Undefined,
    Object? dueAt = _Undefined,
    Object? deviationReason = _Undefined,
    String? setId,
    String? instructionData,
    Object? setData = _Undefined,
    Object? response = _Undefined,
    Object? workflowInstanceId = _Undefined,
    int? sequenceNumber,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    Object? claimedBy = _Undefined,
    Object? timerStartedAt = _Undefined,
    Object? operatorSignature = _Undefined,
    Object? witnessSignature = _Undefined,
    Object? witnessUserId = _Undefined,
    Object? approvalSignatures = _Undefined,
  }) {
    return ElogChecklistUsageInstructions(
      id: id is _is.UuidValue? ? id : this.id,
      usageId: usageId ?? this.usageId,
      instructionId: instructionId ?? this.instructionId,
      sourceInstructionId: sourceInstructionId is String?
          ? sourceInstructionId
          : this.sourceInstructionId,
      occurrenceIndex: occurrenceIndex is int?
          ? occurrenceIndex
          : this.occurrenceIndex,
      occurrenceTotal: occurrenceTotal is int?
          ? occurrenceTotal
          : this.occurrenceTotal,
      availableAt: availableAt is DateTime? ? availableAt : this.availableAt,
      warningAt: warningAt is DateTime? ? warningAt : this.warningAt,
      dueAt: dueAt is DateTime? ? dueAt : this.dueAt,
      deviationReason: deviationReason is String?
          ? deviationReason
          : this.deviationReason,
      setId: setId ?? this.setId,
      instructionData: instructionData ?? this.instructionData,
      setData: setData is String? ? setData : this.setData,
      response: response is String? ? response : this.response,
      workflowInstanceId: workflowInstanceId is _is.UuidValue?
          ? workflowInstanceId
          : this.workflowInstanceId,
      sequenceNumber: sequenceNumber ?? this.sequenceNumber,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
      claimedBy: claimedBy is _is.UuidValue? ? claimedBy : this.claimedBy,
      timerStartedAt: timerStartedAt is DateTime?
          ? timerStartedAt
          : this.timerStartedAt,
      operatorSignature: operatorSignature is String?
          ? operatorSignature
          : this.operatorSignature,
      witnessSignature: witnessSignature is String?
          ? witnessSignature
          : this.witnessSignature,
      witnessUserId: witnessUserId is _is.UuidValue?
          ? witnessUserId
          : this.witnessUserId,
      approvalSignatures: approvalSignatures is String?
          ? approvalSignatures
          : this.approvalSignatures,
    );
  }
}

class ElogChecklistUsageInstructionsUpdateTable
    extends _is.UpdateTable<ElogChecklistUsageInstructionsTable> {
  ElogChecklistUsageInstructionsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> usageId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.usageId,
        value,
      );

  _is.ColumnValue<String, String> instructionId(String value) =>
      _is.ColumnValue(
        table.instructionId,
        value,
      );

  _is.ColumnValue<String, String> sourceInstructionId(String? value) =>
      _is.ColumnValue(
        table.sourceInstructionId,
        value,
      );

  _is.ColumnValue<int, int> occurrenceIndex(int? value) => _is.ColumnValue(
    table.occurrenceIndex,
    value,
  );

  _is.ColumnValue<int, int> occurrenceTotal(int? value) => _is.ColumnValue(
    table.occurrenceTotal,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> availableAt(DateTime? value) =>
      _is.ColumnValue(
        table.availableAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> warningAt(DateTime? value) =>
      _is.ColumnValue(
        table.warningAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> dueAt(DateTime? value) => _is.ColumnValue(
    table.dueAt,
    value,
  );

  _is.ColumnValue<String, String> deviationReason(String? value) =>
      _is.ColumnValue(
        table.deviationReason,
        value,
      );

  _is.ColumnValue<String, String> setId(String value) => _is.ColumnValue(
    table.setId,
    value,
  );

  _is.ColumnValue<String, String> instructionData(String value) =>
      _is.ColumnValue(
        table.instructionData,
        value,
      );

  _is.ColumnValue<String, String> setData(String? value) => _is.ColumnValue(
    table.setData,
    value,
  );

  _is.ColumnValue<String, String> response(String? value) => _is.ColumnValue(
    table.response,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> workflowInstanceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.workflowInstanceId,
    value,
  );

  _is.ColumnValue<int, int> sequenceNumber(int value) => _is.ColumnValue(
    table.sequenceNumber,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
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

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> createdBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.createdBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> updatedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.updatedBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> claimedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.claimedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> timerStartedAt(DateTime? value) =>
      _is.ColumnValue(
        table.timerStartedAt,
        value,
      );

  _is.ColumnValue<String, String> operatorSignature(String? value) =>
      _is.ColumnValue(
        table.operatorSignature,
        value,
      );

  _is.ColumnValue<String, String> witnessSignature(String? value) =>
      _is.ColumnValue(
        table.witnessSignature,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> witnessUserId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.witnessUserId,
    value,
  );

  _is.ColumnValue<String, String> approvalSignatures(String? value) =>
      _is.ColumnValue(
        table.approvalSignatures,
        value,
      );
}

class ElogChecklistUsageInstructionsTable extends _is.Table<_is.UuidValue?> {
  ElogChecklistUsageInstructionsTable({super.tableRelation})
    : super(tableName: 'elog_checklist_usage_instructions') {
    updateTable = ElogChecklistUsageInstructionsUpdateTable(this);
    usageId = _is.ColumnUuid(
      'usageId',
      this,
    );
    instructionId = _is.ColumnString(
      'instructionId',
      this,
    );
    sourceInstructionId = _is.ColumnString(
      'sourceInstructionId',
      this,
    );
    occurrenceIndex = _is.ColumnInt(
      'occurrenceIndex',
      this,
    );
    occurrenceTotal = _is.ColumnInt(
      'occurrenceTotal',
      this,
    );
    availableAt = _is.ColumnDateTime(
      'availableAt',
      this,
    );
    warningAt = _is.ColumnDateTime(
      'warningAt',
      this,
    );
    dueAt = _is.ColumnDateTime(
      'dueAt',
      this,
    );
    deviationReason = _is.ColumnString(
      'deviationReason',
      this,
    );
    setId = _is.ColumnString(
      'setId',
      this,
    );
    instructionData = _is.ColumnString(
      'instructionData',
      this,
    );
    setData = _is.ColumnString(
      'setData',
      this,
    );
    response = _is.ColumnString(
      'response',
      this,
    );
    workflowInstanceId = _is.ColumnUuid(
      'workflowInstanceId',
      this,
    );
    sequenceNumber = _is.ColumnInt(
      'sequenceNumber',
      this,
    );
    status = _is.ColumnString(
      'status',
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
    createdBy = _is.ColumnUuid(
      'createdBy',
      this,
    );
    updatedBy = _is.ColumnUuid(
      'updatedBy',
      this,
    );
    claimedBy = _is.ColumnUuid(
      'claimedBy',
      this,
    );
    timerStartedAt = _is.ColumnDateTime(
      'timerStartedAt',
      this,
    );
    operatorSignature = _is.ColumnString(
      'operatorSignature',
      this,
    );
    witnessSignature = _is.ColumnString(
      'witnessSignature',
      this,
    );
    witnessUserId = _is.ColumnUuid(
      'witnessUserId',
      this,
    );
    approvalSignatures = _is.ColumnString(
      'approvalSignatures',
      this,
    );
  }

  late final ElogChecklistUsageInstructionsUpdateTable updateTable;

  late final _is.ColumnUuid usageId;

  late final _is.ColumnString instructionId;

  late final _is.ColumnString sourceInstructionId;

  late final _is.ColumnInt occurrenceIndex;

  late final _is.ColumnInt occurrenceTotal;

  late final _is.ColumnDateTime availableAt;

  late final _is.ColumnDateTime warningAt;

  late final _is.ColumnDateTime dueAt;

  late final _is.ColumnString deviationReason;

  late final _is.ColumnString setId;

  late final _is.ColumnString instructionData;

  late final _is.ColumnString setData;

  late final _is.ColumnString response;

  late final _is.ColumnUuid workflowInstanceId;

  late final _is.ColumnInt sequenceNumber;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  late final _is.ColumnUuid claimedBy;

  late final _is.ColumnDateTime timerStartedAt;

  late final _is.ColumnString operatorSignature;

  late final _is.ColumnString witnessSignature;

  late final _is.ColumnUuid witnessUserId;

  late final _is.ColumnString approvalSignatures;

  @override
  List<_is.Column> get columns => [
    id,
    usageId,
    instructionId,
    sourceInstructionId,
    occurrenceIndex,
    occurrenceTotal,
    availableAt,
    warningAt,
    dueAt,
    deviationReason,
    setId,
    instructionData,
    setData,
    response,
    workflowInstanceId,
    sequenceNumber,
    status,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
    claimedBy,
    timerStartedAt,
    operatorSignature,
    witnessSignature,
    witnessUserId,
    approvalSignatures,
  ];
}

class ElogChecklistUsageInstructionsInclude extends _is.IncludeObject {
  ElogChecklistUsageInstructionsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogChecklistUsageInstructions.t;
}

class ElogChecklistUsageInstructionsIncludeList extends _is.IncludeList {
  ElogChecklistUsageInstructionsIncludeList._({
    _is.WhereExpressionBuilder<ElogChecklistUsageInstructionsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogChecklistUsageInstructions.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogChecklistUsageInstructions.t;
}

class ElogChecklistUsageInstructionsRepository {
  const ElogChecklistUsageInstructionsRepository._();

  /// Returns a list of [ElogChecklistUsageInstructions]s matching the given query parameters.
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
  Future<List<ElogChecklistUsageInstructions>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogChecklistUsageInstructionsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogChecklistUsageInstructionsTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsageInstructionsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogChecklistUsageInstructions>(
      where: where?.call(ElogChecklistUsageInstructions.t),
      orderBy: orderBy?.call(ElogChecklistUsageInstructions.t),
      orderByList: orderByList?.call(ElogChecklistUsageInstructions.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogChecklistUsageInstructions] matching the given query parameters.
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
  Future<ElogChecklistUsageInstructions?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogChecklistUsageInstructionsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogChecklistUsageInstructionsTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsageInstructionsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogChecklistUsageInstructions>(
      where: where?.call(ElogChecklistUsageInstructions.t),
      orderBy: orderBy?.call(ElogChecklistUsageInstructions.t),
      orderByList: orderByList?.call(ElogChecklistUsageInstructions.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogChecklistUsageInstructions] by its [id] or null if no such row exists.
  Future<ElogChecklistUsageInstructions?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogChecklistUsageInstructions>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogChecklistUsageInstructions]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogChecklistUsageInstructions]s will have their `id` fields set.
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
  Future<List<ElogChecklistUsageInstructions>> insert(
    _is.DatabaseSession session,
    List<ElogChecklistUsageInstructions> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogChecklistUsageInstructions>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogChecklistUsageInstructions] and returns the inserted row.
  ///
  /// The returned [ElogChecklistUsageInstructions] will have its `id` field set.
  Future<ElogChecklistUsageInstructions> insertRow(
    _is.DatabaseSession session,
    ElogChecklistUsageInstructions row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogChecklistUsageInstructions>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogChecklistUsageInstructions]s in the list and returns the resulting rows.
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
  /// The returned [ElogChecklistUsageInstructions]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogChecklistUsageInstructions>> upsert(
    _is.DatabaseSession session,
    List<ElogChecklistUsageInstructions> rows, {
    required _is.ColumnSelections<ElogChecklistUsageInstructionsTable>
    conflictColumns,
    _is.ColumnSelections<ElogChecklistUsageInstructionsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogChecklistUsageInstructionsTable>?
    updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogChecklistUsageInstructions>(
      rows,
      conflictColumns: conflictColumns(ElogChecklistUsageInstructions.t),
      updateColumns: updateColumns?.call(ElogChecklistUsageInstructions.t),
      updateWhere: updateWhere?.call(ElogChecklistUsageInstructions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogChecklistUsageInstructions] and returns the resulting row.
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
  /// The returned [ElogChecklistUsageInstructions] will have its `id` field set.
  Future<ElogChecklistUsageInstructions?> upsertRow(
    _is.DatabaseSession session,
    ElogChecklistUsageInstructions row, {
    required _is.ColumnSelections<ElogChecklistUsageInstructionsTable>
    conflictColumns,
    _is.ColumnSelections<ElogChecklistUsageInstructionsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogChecklistUsageInstructionsTable>?
    updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogChecklistUsageInstructions>(
      row,
      conflictColumns: conflictColumns(ElogChecklistUsageInstructions.t),
      updateColumns: updateColumns?.call(ElogChecklistUsageInstructions.t),
      updateWhere: updateWhere?.call(ElogChecklistUsageInstructions.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogChecklistUsageInstructions]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogChecklistUsageInstructions>> update(
    _is.DatabaseSession session,
    List<ElogChecklistUsageInstructions> rows, {
    _is.ColumnSelections<ElogChecklistUsageInstructionsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogChecklistUsageInstructions>(
      rows,
      columns: columns?.call(ElogChecklistUsageInstructions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogChecklistUsageInstructions]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogChecklistUsageInstructions> updateRow(
    _is.DatabaseSession session,
    ElogChecklistUsageInstructions row, {
    _is.ColumnSelections<ElogChecklistUsageInstructionsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogChecklistUsageInstructions>(
      row,
      columns: columns?.call(ElogChecklistUsageInstructions.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogChecklistUsageInstructions] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogChecklistUsageInstructions?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<
      ElogChecklistUsageInstructionsUpdateTable
    >
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogChecklistUsageInstructions>(
      id,
      columnValues: columnValues(ElogChecklistUsageInstructions.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogChecklistUsageInstructions]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogChecklistUsageInstructions>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<
      ElogChecklistUsageInstructionsUpdateTable
    >
    columnValues,
    required _is.WhereExpressionBuilder<ElogChecklistUsageInstructionsTable>
    where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogChecklistUsageInstructionsTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsageInstructionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogChecklistUsageInstructions>(
      columnValues: columnValues(ElogChecklistUsageInstructions.t.updateTable),
      where: where(ElogChecklistUsageInstructions.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogChecklistUsageInstructions.t),
      orderByList: orderByList?.call(ElogChecklistUsageInstructions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogChecklistUsageInstructions]s in the list and returns the deleted rows.
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
  Future<List<ElogChecklistUsageInstructions>> delete(
    _is.DatabaseSession session,
    List<ElogChecklistUsageInstructions> rows, {
    _is.OrderByBuilder<ElogChecklistUsageInstructionsTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsageInstructionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogChecklistUsageInstructions>(
      rows,
      orderBy: orderBy?.call(ElogChecklistUsageInstructions.t),
      orderByList: orderByList?.call(ElogChecklistUsageInstructions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogChecklistUsageInstructions].
  Future<ElogChecklistUsageInstructions> deleteRow(
    _is.DatabaseSession session,
    ElogChecklistUsageInstructions row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogChecklistUsageInstructions>(
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
  Future<List<ElogChecklistUsageInstructions>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogChecklistUsageInstructionsTable>
    where,
    _is.OrderByBuilder<ElogChecklistUsageInstructionsTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsageInstructionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogChecklistUsageInstructions>(
      where: where(ElogChecklistUsageInstructions.t),
      orderBy: orderBy?.call(ElogChecklistUsageInstructions.t),
      orderByList: orderByList?.call(ElogChecklistUsageInstructions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogChecklistUsageInstructionsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogChecklistUsageInstructions>(
      where: where?.call(ElogChecklistUsageInstructions.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogChecklistUsageInstructions] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogChecklistUsageInstructionsTable>
    where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogChecklistUsageInstructions>(
      where: where(ElogChecklistUsageInstructions.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
