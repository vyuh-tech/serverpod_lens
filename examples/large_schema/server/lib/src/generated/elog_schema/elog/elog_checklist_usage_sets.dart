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

abstract class ElogChecklistUsageSets
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogChecklistUsageSets._({
    this.id,
    required this.usageId,
    required this.setId,
    required this.setData,
    this.governanceSnapshot,
    required this.status,
    this.submittedAt,
    this.submittedBy,
    this.completedAt,
    this.completedBy,
    this.workflowInstanceId,
    this.operatorSignature,
    this.witnessSignature,
    this.witnessUserId,
    required this.approvalSignatures,
    this.rejectionReason,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogChecklistUsageSets({
    _is.UuidValue? id,
    required _is.UuidValue usageId,
    required String setId,
    required String setData,
    String? governanceSnapshot,
    required String status,
    DateTime? submittedAt,
    _is.UuidValue? submittedBy,
    DateTime? completedAt,
    _is.UuidValue? completedBy,
    _is.UuidValue? workflowInstanceId,
    String? operatorSignature,
    String? witnessSignature,
    _is.UuidValue? witnessUserId,
    required String approvalSignatures,
    String? rejectionReason,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _ElogChecklistUsageSetsImpl;

  factory ElogChecklistUsageSets.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogChecklistUsageSets(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      usageId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['usageId'],
      ),
      setId: jsonSerialization['setId'] as String,
      setData: jsonSerialization['setData'] as String,
      governanceSnapshot: jsonSerialization['governanceSnapshot'] as String?,
      status: jsonSerialization['status'] as String,
      submittedAt: jsonSerialization['submittedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['submittedAt'],
            ),
      submittedBy: jsonSerialization['submittedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['submittedBy'],
            ),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      completedBy: jsonSerialization['completedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['completedBy'],
            ),
      workflowInstanceId: jsonSerialization['workflowInstanceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowInstanceId'],
            ),
      operatorSignature: jsonSerialization['operatorSignature'] as String?,
      witnessSignature: jsonSerialization['witnessSignature'] as String?,
      witnessUserId: jsonSerialization['witnessUserId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['witnessUserId'],
            ),
      approvalSignatures: jsonSerialization['approvalSignatures'] as String,
      rejectionReason: jsonSerialization['rejectionReason'] as String?,
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
    );
  }

  static final t = ElogChecklistUsageSetsTable();

  static const db = ElogChecklistUsageSetsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue usageId;

  String setId;

  String setData;

  String? governanceSnapshot;

  String status;

  DateTime? submittedAt;

  _is.UuidValue? submittedBy;

  DateTime? completedAt;

  _is.UuidValue? completedBy;

  _is.UuidValue? workflowInstanceId;

  String? operatorSignature;

  String? witnessSignature;

  _is.UuidValue? witnessUserId;

  String approvalSignatures;

  String? rejectionReason;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogChecklistUsageSets]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogChecklistUsageSets copyWith({
    _is.UuidValue? id,
    _is.UuidValue? usageId,
    String? setId,
    String? setData,
    String? governanceSnapshot,
    String? status,
    DateTime? submittedAt,
    _is.UuidValue? submittedBy,
    DateTime? completedAt,
    _is.UuidValue? completedBy,
    _is.UuidValue? workflowInstanceId,
    String? operatorSignature,
    String? witnessSignature,
    _is.UuidValue? witnessUserId,
    String? approvalSignatures,
    String? rejectionReason,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogChecklistUsageSets',
      if (id != null) 'id': id?.toJson(),
      'usageId': usageId.toJson(),
      'setId': setId,
      'setData': setData,
      if (governanceSnapshot != null) 'governanceSnapshot': governanceSnapshot,
      'status': status,
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
      if (submittedBy != null) 'submittedBy': submittedBy?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      if (operatorSignature != null) 'operatorSignature': operatorSignature,
      if (witnessSignature != null) 'witnessSignature': witnessSignature,
      if (witnessUserId != null) 'witnessUserId': witnessUserId?.toJson(),
      'approvalSignatures': approvalSignatures,
      if (rejectionReason != null) 'rejectionReason': rejectionReason,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogChecklistUsageSets',
      if (id != null) 'id': id?.toJson(),
      'usageId': usageId.toJson(),
      'setId': setId,
      'setData': setData,
      if (governanceSnapshot != null) 'governanceSnapshot': governanceSnapshot,
      'status': status,
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
      if (submittedBy != null) 'submittedBy': submittedBy?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      if (operatorSignature != null) 'operatorSignature': operatorSignature,
      if (witnessSignature != null) 'witnessSignature': witnessSignature,
      if (witnessUserId != null) 'witnessUserId': witnessUserId?.toJson(),
      'approvalSignatures': approvalSignatures,
      if (rejectionReason != null) 'rejectionReason': rejectionReason,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static ElogChecklistUsageSetsInclude include() {
    return ElogChecklistUsageSetsInclude._();
  }

  static ElogChecklistUsageSetsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogChecklistUsageSetsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogChecklistUsageSetsTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsageSetsTable>? orderByList,
    ElogChecklistUsageSetsInclude? include,
  }) {
    return ElogChecklistUsageSetsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogChecklistUsageSets.t),
      orderByList: orderByList?.call(ElogChecklistUsageSets.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogChecklistUsageSetsImpl extends ElogChecklistUsageSets {
  _ElogChecklistUsageSetsImpl({
    _is.UuidValue? id,
    required _is.UuidValue usageId,
    required String setId,
    required String setData,
    String? governanceSnapshot,
    required String status,
    DateTime? submittedAt,
    _is.UuidValue? submittedBy,
    DateTime? completedAt,
    _is.UuidValue? completedBy,
    _is.UuidValue? workflowInstanceId,
    String? operatorSignature,
    String? witnessSignature,
    _is.UuidValue? witnessUserId,
    required String approvalSignatures,
    String? rejectionReason,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) : super._(
         id: id,
         usageId: usageId,
         setId: setId,
         setData: setData,
         governanceSnapshot: governanceSnapshot,
         status: status,
         submittedAt: submittedAt,
         submittedBy: submittedBy,
         completedAt: completedAt,
         completedBy: completedBy,
         workflowInstanceId: workflowInstanceId,
         operatorSignature: operatorSignature,
         witnessSignature: witnessSignature,
         witnessUserId: witnessUserId,
         approvalSignatures: approvalSignatures,
         rejectionReason: rejectionReason,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogChecklistUsageSets]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogChecklistUsageSets copyWith({
    Object? id = _Undefined,
    _is.UuidValue? usageId,
    String? setId,
    String? setData,
    Object? governanceSnapshot = _Undefined,
    String? status,
    Object? submittedAt = _Undefined,
    Object? submittedBy = _Undefined,
    Object? completedAt = _Undefined,
    Object? completedBy = _Undefined,
    Object? workflowInstanceId = _Undefined,
    Object? operatorSignature = _Undefined,
    Object? witnessSignature = _Undefined,
    Object? witnessUserId = _Undefined,
    String? approvalSignatures,
    Object? rejectionReason = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogChecklistUsageSets(
      id: id is _is.UuidValue? ? id : this.id,
      usageId: usageId ?? this.usageId,
      setId: setId ?? this.setId,
      setData: setData ?? this.setData,
      governanceSnapshot: governanceSnapshot is String?
          ? governanceSnapshot
          : this.governanceSnapshot,
      status: status ?? this.status,
      submittedAt: submittedAt is DateTime? ? submittedAt : this.submittedAt,
      submittedBy: submittedBy is _is.UuidValue?
          ? submittedBy
          : this.submittedBy,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      completedBy: completedBy is _is.UuidValue?
          ? completedBy
          : this.completedBy,
      workflowInstanceId: workflowInstanceId is _is.UuidValue?
          ? workflowInstanceId
          : this.workflowInstanceId,
      operatorSignature: operatorSignature is String?
          ? operatorSignature
          : this.operatorSignature,
      witnessSignature: witnessSignature is String?
          ? witnessSignature
          : this.witnessSignature,
      witnessUserId: witnessUserId is _is.UuidValue?
          ? witnessUserId
          : this.witnessUserId,
      approvalSignatures: approvalSignatures ?? this.approvalSignatures,
      rejectionReason: rejectionReason is String?
          ? rejectionReason
          : this.rejectionReason,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class ElogChecklistUsageSetsUpdateTable
    extends _is.UpdateTable<ElogChecklistUsageSetsTable> {
  ElogChecklistUsageSetsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> usageId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.usageId,
        value,
      );

  _is.ColumnValue<String, String> setId(String value) => _is.ColumnValue(
    table.setId,
    value,
  );

  _is.ColumnValue<String, String> setData(String value) => _is.ColumnValue(
    table.setData,
    value,
  );

  _is.ColumnValue<String, String> governanceSnapshot(String? value) =>
      _is.ColumnValue(
        table.governanceSnapshot,
        value,
      );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> submittedAt(DateTime? value) =>
      _is.ColumnValue(
        table.submittedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> submittedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.submittedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> completedAt(DateTime? value) =>
      _is.ColumnValue(
        table.completedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> completedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.completedBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> workflowInstanceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.workflowInstanceId,
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

  _is.ColumnValue<String, String> approvalSignatures(String value) =>
      _is.ColumnValue(
        table.approvalSignatures,
        value,
      );

  _is.ColumnValue<String, String> rejectionReason(String? value) =>
      _is.ColumnValue(
        table.rejectionReason,
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
}

class ElogChecklistUsageSetsTable extends _is.Table<_is.UuidValue?> {
  ElogChecklistUsageSetsTable({super.tableRelation})
    : super(tableName: 'elog_checklist_usage_sets') {
    updateTable = ElogChecklistUsageSetsUpdateTable(this);
    usageId = _is.ColumnUuid(
      'usageId',
      this,
    );
    setId = _is.ColumnString(
      'setId',
      this,
    );
    setData = _is.ColumnString(
      'setData',
      this,
    );
    governanceSnapshot = _is.ColumnString(
      'governanceSnapshot',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    submittedAt = _is.ColumnDateTime(
      'submittedAt',
      this,
    );
    submittedBy = _is.ColumnUuid(
      'submittedBy',
      this,
    );
    completedAt = _is.ColumnDateTime(
      'completedAt',
      this,
    );
    completedBy = _is.ColumnUuid(
      'completedBy',
      this,
    );
    workflowInstanceId = _is.ColumnUuid(
      'workflowInstanceId',
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
    rejectionReason = _is.ColumnString(
      'rejectionReason',
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
  }

  late final ElogChecklistUsageSetsUpdateTable updateTable;

  late final _is.ColumnUuid usageId;

  late final _is.ColumnString setId;

  late final _is.ColumnString setData;

  late final _is.ColumnString governanceSnapshot;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime submittedAt;

  late final _is.ColumnUuid submittedBy;

  late final _is.ColumnDateTime completedAt;

  late final _is.ColumnUuid completedBy;

  late final _is.ColumnUuid workflowInstanceId;

  late final _is.ColumnString operatorSignature;

  late final _is.ColumnString witnessSignature;

  late final _is.ColumnUuid witnessUserId;

  late final _is.ColumnString approvalSignatures;

  late final _is.ColumnString rejectionReason;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    usageId,
    setId,
    setData,
    governanceSnapshot,
    status,
    submittedAt,
    submittedBy,
    completedAt,
    completedBy,
    workflowInstanceId,
    operatorSignature,
    witnessSignature,
    witnessUserId,
    approvalSignatures,
    rejectionReason,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class ElogChecklistUsageSetsInclude extends _is.IncludeObject {
  ElogChecklistUsageSetsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogChecklistUsageSets.t;
}

class ElogChecklistUsageSetsIncludeList extends _is.IncludeList {
  ElogChecklistUsageSetsIncludeList._({
    _is.WhereExpressionBuilder<ElogChecklistUsageSetsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogChecklistUsageSets.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogChecklistUsageSets.t;
}

class ElogChecklistUsageSetsRepository {
  const ElogChecklistUsageSetsRepository._();

  /// Returns a list of [ElogChecklistUsageSets]s matching the given query parameters.
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
  Future<List<ElogChecklistUsageSets>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogChecklistUsageSetsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogChecklistUsageSetsTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsageSetsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogChecklistUsageSets>(
      where: where?.call(ElogChecklistUsageSets.t),
      orderBy: orderBy?.call(ElogChecklistUsageSets.t),
      orderByList: orderByList?.call(ElogChecklistUsageSets.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogChecklistUsageSets] matching the given query parameters.
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
  Future<ElogChecklistUsageSets?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogChecklistUsageSetsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogChecklistUsageSetsTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsageSetsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogChecklistUsageSets>(
      where: where?.call(ElogChecklistUsageSets.t),
      orderBy: orderBy?.call(ElogChecklistUsageSets.t),
      orderByList: orderByList?.call(ElogChecklistUsageSets.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogChecklistUsageSets] by its [id] or null if no such row exists.
  Future<ElogChecklistUsageSets?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogChecklistUsageSets>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogChecklistUsageSets]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogChecklistUsageSets]s will have their `id` fields set.
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
  Future<List<ElogChecklistUsageSets>> insert(
    _is.DatabaseSession session,
    List<ElogChecklistUsageSets> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogChecklistUsageSets>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogChecklistUsageSets] and returns the inserted row.
  ///
  /// The returned [ElogChecklistUsageSets] will have its `id` field set.
  Future<ElogChecklistUsageSets> insertRow(
    _is.DatabaseSession session,
    ElogChecklistUsageSets row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogChecklistUsageSets>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogChecklistUsageSets]s in the list and returns the resulting rows.
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
  /// The returned [ElogChecklistUsageSets]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogChecklistUsageSets>> upsert(
    _is.DatabaseSession session,
    List<ElogChecklistUsageSets> rows, {
    required _is.ColumnSelections<ElogChecklistUsageSetsTable> conflictColumns,
    _is.ColumnSelections<ElogChecklistUsageSetsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogChecklistUsageSetsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogChecklistUsageSets>(
      rows,
      conflictColumns: conflictColumns(ElogChecklistUsageSets.t),
      updateColumns: updateColumns?.call(ElogChecklistUsageSets.t),
      updateWhere: updateWhere?.call(ElogChecklistUsageSets.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogChecklistUsageSets] and returns the resulting row.
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
  /// The returned [ElogChecklistUsageSets] will have its `id` field set.
  Future<ElogChecklistUsageSets?> upsertRow(
    _is.DatabaseSession session,
    ElogChecklistUsageSets row, {
    required _is.ColumnSelections<ElogChecklistUsageSetsTable> conflictColumns,
    _is.ColumnSelections<ElogChecklistUsageSetsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogChecklistUsageSetsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogChecklistUsageSets>(
      row,
      conflictColumns: conflictColumns(ElogChecklistUsageSets.t),
      updateColumns: updateColumns?.call(ElogChecklistUsageSets.t),
      updateWhere: updateWhere?.call(ElogChecklistUsageSets.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogChecklistUsageSets]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogChecklistUsageSets>> update(
    _is.DatabaseSession session,
    List<ElogChecklistUsageSets> rows, {
    _is.ColumnSelections<ElogChecklistUsageSetsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogChecklistUsageSets>(
      rows,
      columns: columns?.call(ElogChecklistUsageSets.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogChecklistUsageSets]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogChecklistUsageSets> updateRow(
    _is.DatabaseSession session,
    ElogChecklistUsageSets row, {
    _is.ColumnSelections<ElogChecklistUsageSetsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogChecklistUsageSets>(
      row,
      columns: columns?.call(ElogChecklistUsageSets.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogChecklistUsageSets] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogChecklistUsageSets?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogChecklistUsageSetsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogChecklistUsageSets>(
      id,
      columnValues: columnValues(ElogChecklistUsageSets.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogChecklistUsageSets]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogChecklistUsageSets>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogChecklistUsageSetsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogChecklistUsageSetsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogChecklistUsageSetsTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsageSetsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogChecklistUsageSets>(
      columnValues: columnValues(ElogChecklistUsageSets.t.updateTable),
      where: where(ElogChecklistUsageSets.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogChecklistUsageSets.t),
      orderByList: orderByList?.call(ElogChecklistUsageSets.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogChecklistUsageSets]s in the list and returns the deleted rows.
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
  Future<List<ElogChecklistUsageSets>> delete(
    _is.DatabaseSession session,
    List<ElogChecklistUsageSets> rows, {
    _is.OrderByBuilder<ElogChecklistUsageSetsTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsageSetsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogChecklistUsageSets>(
      rows,
      orderBy: orderBy?.call(ElogChecklistUsageSets.t),
      orderByList: orderByList?.call(ElogChecklistUsageSets.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogChecklistUsageSets].
  Future<ElogChecklistUsageSets> deleteRow(
    _is.DatabaseSession session,
    ElogChecklistUsageSets row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogChecklistUsageSets>(
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
  Future<List<ElogChecklistUsageSets>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogChecklistUsageSetsTable> where,
    _is.OrderByBuilder<ElogChecklistUsageSetsTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsageSetsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogChecklistUsageSets>(
      where: where(ElogChecklistUsageSets.t),
      orderBy: orderBy?.call(ElogChecklistUsageSets.t),
      orderByList: orderByList?.call(ElogChecklistUsageSets.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogChecklistUsageSetsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogChecklistUsageSets>(
      where: where?.call(ElogChecklistUsageSets.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogChecklistUsageSets] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogChecklistUsageSetsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogChecklistUsageSets>(
      where: where(ElogChecklistUsageSets.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
