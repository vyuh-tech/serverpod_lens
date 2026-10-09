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

abstract class ElogPdOperations
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPdOperations._({
    this.id,
    required this.punchSetId,
    required this.triggerType,
    required this.triggerData,
    required this.sourceState,
    required this.behaviorConfig,
    required this.designSnapshot,
    required this.policy,
    required this.status,
    this.signatureId,
    this.witnessSignatureId,
    required this.submittedBy,
    required this.submittedAt,
    this.decidedBy,
    this.decidedAt,
    this.workflowInstanceId,
    this.companyId,
    this.siteId,
  });

  factory ElogPdOperations({
    _is.UuidValue? id,
    required _is.UuidValue punchSetId,
    required String triggerType,
    required String triggerData,
    required String sourceState,
    required String behaviorConfig,
    required String designSnapshot,
    required String policy,
    required String status,
    _is.UuidValue? signatureId,
    _is.UuidValue? witnessSignatureId,
    required _is.UuidValue submittedBy,
    required DateTime submittedAt,
    _is.UuidValue? decidedBy,
    DateTime? decidedAt,
    _is.UuidValue? workflowInstanceId,
    _is.UuidValue? companyId,
    _is.UuidValue? siteId,
  }) = _ElogPdOperationsImpl;

  factory ElogPdOperations.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPdOperations(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      punchSetId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['punchSetId'],
      ),
      triggerType: jsonSerialization['triggerType'] as String,
      triggerData: jsonSerialization['triggerData'] as String,
      sourceState: jsonSerialization['sourceState'] as String,
      behaviorConfig: jsonSerialization['behaviorConfig'] as String,
      designSnapshot: jsonSerialization['designSnapshot'] as String,
      policy: jsonSerialization['policy'] as String,
      status: jsonSerialization['status'] as String,
      signatureId: jsonSerialization['signatureId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['signatureId'],
            ),
      witnessSignatureId: jsonSerialization['witnessSignatureId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['witnessSignatureId'],
            ),
      submittedBy: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['submittedBy'],
      ),
      submittedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['submittedAt'],
      ),
      decidedBy: jsonSerialization['decidedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['decidedBy']),
      decidedAt: jsonSerialization['decidedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['decidedAt']),
      workflowInstanceId: jsonSerialization['workflowInstanceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowInstanceId'],
            ),
      companyId: jsonSerialization['companyId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['companyId']),
      siteId: jsonSerialization['siteId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['siteId']),
    );
  }

  static final t = ElogPdOperationsTable();

  static const db = ElogPdOperationsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue punchSetId;

  String triggerType;

  String triggerData;

  String sourceState;

  String behaviorConfig;

  String designSnapshot;

  String policy;

  String status;

  _is.UuidValue? signatureId;

  _is.UuidValue? witnessSignatureId;

  _is.UuidValue submittedBy;

  DateTime submittedAt;

  _is.UuidValue? decidedBy;

  DateTime? decidedAt;

  _is.UuidValue? workflowInstanceId;

  _is.UuidValue? companyId;

  _is.UuidValue? siteId;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPdOperations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPdOperations copyWith({
    _is.UuidValue? id,
    _is.UuidValue? punchSetId,
    String? triggerType,
    String? triggerData,
    String? sourceState,
    String? behaviorConfig,
    String? designSnapshot,
    String? policy,
    String? status,
    _is.UuidValue? signatureId,
    _is.UuidValue? witnessSignatureId,
    _is.UuidValue? submittedBy,
    DateTime? submittedAt,
    _is.UuidValue? decidedBy,
    DateTime? decidedAt,
    _is.UuidValue? workflowInstanceId,
    _is.UuidValue? companyId,
    _is.UuidValue? siteId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdOperations',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'triggerType': triggerType,
      'triggerData': triggerData,
      'sourceState': sourceState,
      'behaviorConfig': behaviorConfig,
      'designSnapshot': designSnapshot,
      'policy': policy,
      'status': status,
      if (signatureId != null) 'signatureId': signatureId?.toJson(),
      if (witnessSignatureId != null)
        'witnessSignatureId': witnessSignatureId?.toJson(),
      'submittedBy': submittedBy.toJson(),
      'submittedAt': submittedAt.toJson(),
      if (decidedBy != null) 'decidedBy': decidedBy?.toJson(),
      if (decidedAt != null) 'decidedAt': decidedAt?.toJson(),
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (siteId != null) 'siteId': siteId?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdOperations',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'triggerType': triggerType,
      'triggerData': triggerData,
      'sourceState': sourceState,
      'behaviorConfig': behaviorConfig,
      'designSnapshot': designSnapshot,
      'policy': policy,
      'status': status,
      if (signatureId != null) 'signatureId': signatureId?.toJson(),
      if (witnessSignatureId != null)
        'witnessSignatureId': witnessSignatureId?.toJson(),
      'submittedBy': submittedBy.toJson(),
      'submittedAt': submittedAt.toJson(),
      if (decidedBy != null) 'decidedBy': decidedBy?.toJson(),
      if (decidedAt != null) 'decidedAt': decidedAt?.toJson(),
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (siteId != null) 'siteId': siteId?.toJson(),
    };
  }

  static ElogPdOperationsInclude include() {
    return ElogPdOperationsInclude._();
  }

  static ElogPdOperationsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPdOperationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdOperationsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdOperationsTable>? orderByList,
    ElogPdOperationsInclude? include,
  }) {
    return ElogPdOperationsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdOperations.t),
      orderByList: orderByList?.call(ElogPdOperations.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdOperationsImpl extends ElogPdOperations {
  _ElogPdOperationsImpl({
    _is.UuidValue? id,
    required _is.UuidValue punchSetId,
    required String triggerType,
    required String triggerData,
    required String sourceState,
    required String behaviorConfig,
    required String designSnapshot,
    required String policy,
    required String status,
    _is.UuidValue? signatureId,
    _is.UuidValue? witnessSignatureId,
    required _is.UuidValue submittedBy,
    required DateTime submittedAt,
    _is.UuidValue? decidedBy,
    DateTime? decidedAt,
    _is.UuidValue? workflowInstanceId,
    _is.UuidValue? companyId,
    _is.UuidValue? siteId,
  }) : super._(
         id: id,
         punchSetId: punchSetId,
         triggerType: triggerType,
         triggerData: triggerData,
         sourceState: sourceState,
         behaviorConfig: behaviorConfig,
         designSnapshot: designSnapshot,
         policy: policy,
         status: status,
         signatureId: signatureId,
         witnessSignatureId: witnessSignatureId,
         submittedBy: submittedBy,
         submittedAt: submittedAt,
         decidedBy: decidedBy,
         decidedAt: decidedAt,
         workflowInstanceId: workflowInstanceId,
         companyId: companyId,
         siteId: siteId,
       );

  /// Returns a shallow copy of this [ElogPdOperations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPdOperations copyWith({
    Object? id = _Undefined,
    _is.UuidValue? punchSetId,
    String? triggerType,
    String? triggerData,
    String? sourceState,
    String? behaviorConfig,
    String? designSnapshot,
    String? policy,
    String? status,
    Object? signatureId = _Undefined,
    Object? witnessSignatureId = _Undefined,
    _is.UuidValue? submittedBy,
    DateTime? submittedAt,
    Object? decidedBy = _Undefined,
    Object? decidedAt = _Undefined,
    Object? workflowInstanceId = _Undefined,
    Object? companyId = _Undefined,
    Object? siteId = _Undefined,
  }) {
    return ElogPdOperations(
      id: id is _is.UuidValue? ? id : this.id,
      punchSetId: punchSetId ?? this.punchSetId,
      triggerType: triggerType ?? this.triggerType,
      triggerData: triggerData ?? this.triggerData,
      sourceState: sourceState ?? this.sourceState,
      behaviorConfig: behaviorConfig ?? this.behaviorConfig,
      designSnapshot: designSnapshot ?? this.designSnapshot,
      policy: policy ?? this.policy,
      status: status ?? this.status,
      signatureId: signatureId is _is.UuidValue?
          ? signatureId
          : this.signatureId,
      witnessSignatureId: witnessSignatureId is _is.UuidValue?
          ? witnessSignatureId
          : this.witnessSignatureId,
      submittedBy: submittedBy ?? this.submittedBy,
      submittedAt: submittedAt ?? this.submittedAt,
      decidedBy: decidedBy is _is.UuidValue? ? decidedBy : this.decidedBy,
      decidedAt: decidedAt is DateTime? ? decidedAt : this.decidedAt,
      workflowInstanceId: workflowInstanceId is _is.UuidValue?
          ? workflowInstanceId
          : this.workflowInstanceId,
      companyId: companyId is _is.UuidValue? ? companyId : this.companyId,
      siteId: siteId is _is.UuidValue? ? siteId : this.siteId,
    );
  }
}

class ElogPdOperationsUpdateTable
    extends _is.UpdateTable<ElogPdOperationsTable> {
  ElogPdOperationsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> punchSetId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.punchSetId,
    value,
  );

  _is.ColumnValue<String, String> triggerType(String value) => _is.ColumnValue(
    table.triggerType,
    value,
  );

  _is.ColumnValue<String, String> triggerData(String value) => _is.ColumnValue(
    table.triggerData,
    value,
  );

  _is.ColumnValue<String, String> sourceState(String value) => _is.ColumnValue(
    table.sourceState,
    value,
  );

  _is.ColumnValue<String, String> behaviorConfig(String value) =>
      _is.ColumnValue(
        table.behaviorConfig,
        value,
      );

  _is.ColumnValue<String, String> designSnapshot(String value) =>
      _is.ColumnValue(
        table.designSnapshot,
        value,
      );

  _is.ColumnValue<String, String> policy(String value) => _is.ColumnValue(
    table.policy,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> signatureId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.signatureId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> witnessSignatureId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.witnessSignatureId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> submittedBy(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.submittedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> submittedAt(DateTime value) =>
      _is.ColumnValue(
        table.submittedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> decidedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.decidedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> decidedAt(DateTime? value) =>
      _is.ColumnValue(
        table.decidedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> workflowInstanceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.workflowInstanceId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.companyId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> siteId(_is.UuidValue? value) =>
      _is.ColumnValue(
        table.siteId,
        value,
      );
}

class ElogPdOperationsTable extends _is.Table<_is.UuidValue?> {
  ElogPdOperationsTable({super.tableRelation})
    : super(tableName: 'elog_pd_operations') {
    updateTable = ElogPdOperationsUpdateTable(this);
    punchSetId = _is.ColumnUuid(
      'punchSetId',
      this,
    );
    triggerType = _is.ColumnString(
      'triggerType',
      this,
    );
    triggerData = _is.ColumnString(
      'triggerData',
      this,
    );
    sourceState = _is.ColumnString(
      'sourceState',
      this,
    );
    behaviorConfig = _is.ColumnString(
      'behaviorConfig',
      this,
    );
    designSnapshot = _is.ColumnString(
      'designSnapshot',
      this,
    );
    policy = _is.ColumnString(
      'policy',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    signatureId = _is.ColumnUuid(
      'signatureId',
      this,
    );
    witnessSignatureId = _is.ColumnUuid(
      'witnessSignatureId',
      this,
    );
    submittedBy = _is.ColumnUuid(
      'submittedBy',
      this,
    );
    submittedAt = _is.ColumnDateTime(
      'submittedAt',
      this,
    );
    decidedBy = _is.ColumnUuid(
      'decidedBy',
      this,
    );
    decidedAt = _is.ColumnDateTime(
      'decidedAt',
      this,
    );
    workflowInstanceId = _is.ColumnUuid(
      'workflowInstanceId',
      this,
    );
    companyId = _is.ColumnUuid(
      'companyId',
      this,
    );
    siteId = _is.ColumnUuid(
      'siteId',
      this,
    );
  }

  late final ElogPdOperationsUpdateTable updateTable;

  late final _is.ColumnUuid punchSetId;

  late final _is.ColumnString triggerType;

  late final _is.ColumnString triggerData;

  late final _is.ColumnString sourceState;

  late final _is.ColumnString behaviorConfig;

  late final _is.ColumnString designSnapshot;

  late final _is.ColumnString policy;

  late final _is.ColumnString status;

  late final _is.ColumnUuid signatureId;

  late final _is.ColumnUuid witnessSignatureId;

  late final _is.ColumnUuid submittedBy;

  late final _is.ColumnDateTime submittedAt;

  late final _is.ColumnUuid decidedBy;

  late final _is.ColumnDateTime decidedAt;

  late final _is.ColumnUuid workflowInstanceId;

  late final _is.ColumnUuid companyId;

  late final _is.ColumnUuid siteId;

  @override
  List<_is.Column> get columns => [
    id,
    punchSetId,
    triggerType,
    triggerData,
    sourceState,
    behaviorConfig,
    designSnapshot,
    policy,
    status,
    signatureId,
    witnessSignatureId,
    submittedBy,
    submittedAt,
    decidedBy,
    decidedAt,
    workflowInstanceId,
    companyId,
    siteId,
  ];
}

class ElogPdOperationsInclude extends _is.IncludeObject {
  ElogPdOperationsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdOperations.t;
}

class ElogPdOperationsIncludeList extends _is.IncludeList {
  ElogPdOperationsIncludeList._({
    _is.WhereExpressionBuilder<ElogPdOperationsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPdOperations.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdOperations.t;
}

class ElogPdOperationsRepository {
  const ElogPdOperationsRepository._();

  /// Returns a list of [ElogPdOperations]s matching the given query parameters.
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
  Future<List<ElogPdOperations>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdOperationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdOperationsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdOperationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPdOperations>(
      where: where?.call(ElogPdOperations.t),
      orderBy: orderBy?.call(ElogPdOperations.t),
      orderByList: orderByList?.call(ElogPdOperations.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPdOperations] matching the given query parameters.
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
  Future<ElogPdOperations?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdOperationsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPdOperationsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdOperationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPdOperations>(
      where: where?.call(ElogPdOperations.t),
      orderBy: orderBy?.call(ElogPdOperations.t),
      orderByList: orderByList?.call(ElogPdOperations.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPdOperations] by its [id] or null if no such row exists.
  Future<ElogPdOperations?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPdOperations>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPdOperations]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPdOperations]s will have their `id` fields set.
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
  Future<List<ElogPdOperations>> insert(
    _is.DatabaseSession session,
    List<ElogPdOperations> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPdOperations>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPdOperations] and returns the inserted row.
  ///
  /// The returned [ElogPdOperations] will have its `id` field set.
  Future<ElogPdOperations> insertRow(
    _is.DatabaseSession session,
    ElogPdOperations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPdOperations>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPdOperations]s in the list and returns the resulting rows.
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
  /// The returned [ElogPdOperations]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdOperations>> upsert(
    _is.DatabaseSession session,
    List<ElogPdOperations> rows, {
    required _is.ColumnSelections<ElogPdOperationsTable> conflictColumns,
    _is.ColumnSelections<ElogPdOperationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdOperationsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPdOperations>(
      rows,
      conflictColumns: conflictColumns(ElogPdOperations.t),
      updateColumns: updateColumns?.call(ElogPdOperations.t),
      updateWhere: updateWhere?.call(ElogPdOperations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPdOperations] and returns the resulting row.
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
  /// The returned [ElogPdOperations] will have its `id` field set.
  Future<ElogPdOperations?> upsertRow(
    _is.DatabaseSession session,
    ElogPdOperations row, {
    required _is.ColumnSelections<ElogPdOperationsTable> conflictColumns,
    _is.ColumnSelections<ElogPdOperationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdOperationsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPdOperations>(
      row,
      conflictColumns: conflictColumns(ElogPdOperations.t),
      updateColumns: updateColumns?.call(ElogPdOperations.t),
      updateWhere: updateWhere?.call(ElogPdOperations.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdOperations]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdOperations>> update(
    _is.DatabaseSession session,
    List<ElogPdOperations> rows, {
    _is.ColumnSelections<ElogPdOperationsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPdOperations>(
      rows,
      columns: columns?.call(ElogPdOperations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPdOperations]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPdOperations> updateRow(
    _is.DatabaseSession session,
    ElogPdOperations row, {
    _is.ColumnSelections<ElogPdOperationsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPdOperations>(
      row,
      columns: columns?.call(ElogPdOperations.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPdOperations] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPdOperations?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPdOperationsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPdOperations>(
      id,
      columnValues: columnValues(ElogPdOperations.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdOperations]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdOperations>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPdOperationsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPdOperationsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdOperationsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdOperationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPdOperations>(
      columnValues: columnValues(ElogPdOperations.t.updateTable),
      where: where(ElogPdOperations.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdOperations.t),
      orderByList: orderByList?.call(ElogPdOperations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPdOperations]s in the list and returns the deleted rows.
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
  Future<List<ElogPdOperations>> delete(
    _is.DatabaseSession session,
    List<ElogPdOperations> rows, {
    _is.OrderByBuilder<ElogPdOperationsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdOperationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPdOperations>(
      rows,
      orderBy: orderBy?.call(ElogPdOperations.t),
      orderByList: orderByList?.call(ElogPdOperations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPdOperations].
  Future<ElogPdOperations> deleteRow(
    _is.DatabaseSession session,
    ElogPdOperations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPdOperations>(
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
  Future<List<ElogPdOperations>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdOperationsTable> where,
    _is.OrderByBuilder<ElogPdOperationsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdOperationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPdOperations>(
      where: where(ElogPdOperations.t),
      orderBy: orderBy?.call(ElogPdOperations.t),
      orderByList: orderByList?.call(ElogPdOperations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdOperationsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPdOperations>(
      where: where?.call(ElogPdOperations.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPdOperations] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdOperationsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPdOperations>(
      where: where(ElogPdOperations.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
