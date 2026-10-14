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

abstract class ElogResourceUsages
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogResourceUsages._({
    this.id,
    required this.resourceType,
    required this.resourceId,
    this.operatingAreaId,
    required this.startedBy,
    this.stoppedBy,
    required this.status,
    required this.startedAt,
    this.stoppedAt,
    this.productId,
    this.batchId,
    this.batchDisposition,
    this.campaignBatchNumber,
    this.campaignBatchLimit,
  });

  factory ElogResourceUsages({
    _is.UuidValue? id,
    required String resourceType,
    required _is.UuidValue resourceId,
    _is.UuidValue? operatingAreaId,
    required _is.UuidValue startedBy,
    _is.UuidValue? stoppedBy,
    required String status,
    required DateTime startedAt,
    DateTime? stoppedAt,
    _is.UuidValue? productId,
    _is.UuidValue? batchId,
    String? batchDisposition,
    int? campaignBatchNumber,
    int? campaignBatchLimit,
  }) = _ElogResourceUsagesImpl;

  factory ElogResourceUsages.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogResourceUsages(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      resourceType: jsonSerialization['resourceType'] as String,
      resourceId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['resourceId'],
      ),
      operatingAreaId: jsonSerialization['operatingAreaId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['operatingAreaId'],
            ),
      startedBy: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['startedBy'],
      ),
      stoppedBy: jsonSerialization['stoppedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['stoppedBy']),
      status: jsonSerialization['status'] as String,
      startedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['startedAt'],
      ),
      stoppedAt: jsonSerialization['stoppedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['stoppedAt']),
      productId: jsonSerialization['productId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['productId']),
      batchId: jsonSerialization['batchId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['batchId']),
      batchDisposition: jsonSerialization['batchDisposition'] as String?,
      campaignBatchNumber: jsonSerialization['campaignBatchNumber'] as int?,
      campaignBatchLimit: jsonSerialization['campaignBatchLimit'] as int?,
    );
  }

  static final t = ElogResourceUsagesTable();

  static const db = ElogResourceUsagesRepository._();

  @override
  _is.UuidValue? id;

  String resourceType;

  _is.UuidValue resourceId;

  _is.UuidValue? operatingAreaId;

  _is.UuidValue startedBy;

  _is.UuidValue? stoppedBy;

  String status;

  DateTime startedAt;

  DateTime? stoppedAt;

  _is.UuidValue? productId;

  _is.UuidValue? batchId;

  String? batchDisposition;

  int? campaignBatchNumber;

  int? campaignBatchLimit;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogResourceUsages]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogResourceUsages copyWith({
    _is.UuidValue? id,
    String? resourceType,
    _is.UuidValue? resourceId,
    _is.UuidValue? operatingAreaId,
    _is.UuidValue? startedBy,
    _is.UuidValue? stoppedBy,
    String? status,
    DateTime? startedAt,
    DateTime? stoppedAt,
    _is.UuidValue? productId,
    _is.UuidValue? batchId,
    String? batchDisposition,
    int? campaignBatchNumber,
    int? campaignBatchLimit,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogResourceUsages',
      if (id != null) 'id': id?.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      if (operatingAreaId != null) 'operatingAreaId': operatingAreaId?.toJson(),
      'startedBy': startedBy.toJson(),
      if (stoppedBy != null) 'stoppedBy': stoppedBy?.toJson(),
      'status': status,
      'startedAt': startedAt.toJson(),
      if (stoppedAt != null) 'stoppedAt': stoppedAt?.toJson(),
      if (productId != null) 'productId': productId?.toJson(),
      if (batchId != null) 'batchId': batchId?.toJson(),
      if (batchDisposition != null) 'batchDisposition': batchDisposition,
      if (campaignBatchNumber != null)
        'campaignBatchNumber': campaignBatchNumber,
      if (campaignBatchLimit != null) 'campaignBatchLimit': campaignBatchLimit,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogResourceUsages',
      if (id != null) 'id': id?.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      if (operatingAreaId != null) 'operatingAreaId': operatingAreaId?.toJson(),
      'startedBy': startedBy.toJson(),
      if (stoppedBy != null) 'stoppedBy': stoppedBy?.toJson(),
      'status': status,
      'startedAt': startedAt.toJson(),
      if (stoppedAt != null) 'stoppedAt': stoppedAt?.toJson(),
      if (productId != null) 'productId': productId?.toJson(),
      if (batchId != null) 'batchId': batchId?.toJson(),
      if (batchDisposition != null) 'batchDisposition': batchDisposition,
      if (campaignBatchNumber != null)
        'campaignBatchNumber': campaignBatchNumber,
      if (campaignBatchLimit != null) 'campaignBatchLimit': campaignBatchLimit,
    };
  }

  static ElogResourceUsagesInclude include() {
    return ElogResourceUsagesInclude._();
  }

  static ElogResourceUsagesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogResourceUsagesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceUsagesTable>? orderByList,
    ElogResourceUsagesInclude? include,
  }) {
    return ElogResourceUsagesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogResourceUsages.t),
      orderByList: orderByList?.call(ElogResourceUsages.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogResourceUsagesImpl extends ElogResourceUsages {
  _ElogResourceUsagesImpl({
    _is.UuidValue? id,
    required String resourceType,
    required _is.UuidValue resourceId,
    _is.UuidValue? operatingAreaId,
    required _is.UuidValue startedBy,
    _is.UuidValue? stoppedBy,
    required String status,
    required DateTime startedAt,
    DateTime? stoppedAt,
    _is.UuidValue? productId,
    _is.UuidValue? batchId,
    String? batchDisposition,
    int? campaignBatchNumber,
    int? campaignBatchLimit,
  }) : super._(
         id: id,
         resourceType: resourceType,
         resourceId: resourceId,
         operatingAreaId: operatingAreaId,
         startedBy: startedBy,
         stoppedBy: stoppedBy,
         status: status,
         startedAt: startedAt,
         stoppedAt: stoppedAt,
         productId: productId,
         batchId: batchId,
         batchDisposition: batchDisposition,
         campaignBatchNumber: campaignBatchNumber,
         campaignBatchLimit: campaignBatchLimit,
       );

  /// Returns a shallow copy of this [ElogResourceUsages]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogResourceUsages copyWith({
    Object? id = _Undefined,
    String? resourceType,
    _is.UuidValue? resourceId,
    Object? operatingAreaId = _Undefined,
    _is.UuidValue? startedBy,
    Object? stoppedBy = _Undefined,
    String? status,
    DateTime? startedAt,
    Object? stoppedAt = _Undefined,
    Object? productId = _Undefined,
    Object? batchId = _Undefined,
    Object? batchDisposition = _Undefined,
    Object? campaignBatchNumber = _Undefined,
    Object? campaignBatchLimit = _Undefined,
  }) {
    return ElogResourceUsages(
      id: id is _is.UuidValue? ? id : this.id,
      resourceType: resourceType ?? this.resourceType,
      resourceId: resourceId ?? this.resourceId,
      operatingAreaId: operatingAreaId is _is.UuidValue?
          ? operatingAreaId
          : this.operatingAreaId,
      startedBy: startedBy ?? this.startedBy,
      stoppedBy: stoppedBy is _is.UuidValue? ? stoppedBy : this.stoppedBy,
      status: status ?? this.status,
      startedAt: startedAt ?? this.startedAt,
      stoppedAt: stoppedAt is DateTime? ? stoppedAt : this.stoppedAt,
      productId: productId is _is.UuidValue? ? productId : this.productId,
      batchId: batchId is _is.UuidValue? ? batchId : this.batchId,
      batchDisposition: batchDisposition is String?
          ? batchDisposition
          : this.batchDisposition,
      campaignBatchNumber: campaignBatchNumber is int?
          ? campaignBatchNumber
          : this.campaignBatchNumber,
      campaignBatchLimit: campaignBatchLimit is int?
          ? campaignBatchLimit
          : this.campaignBatchLimit,
    );
  }
}

class ElogResourceUsagesUpdateTable
    extends _is.UpdateTable<ElogResourceUsagesTable> {
  ElogResourceUsagesUpdateTable(super.table);

  _is.ColumnValue<String, String> resourceType(String value) => _is.ColumnValue(
    table.resourceType,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> resourceId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.resourceId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> operatingAreaId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.operatingAreaId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> startedBy(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.startedBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> stoppedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.stoppedBy,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> startedAt(DateTime value) =>
      _is.ColumnValue(
        table.startedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> stoppedAt(DateTime? value) =>
      _is.ColumnValue(
        table.stoppedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> productId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.productId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> batchId(_is.UuidValue? value) =>
      _is.ColumnValue(
        table.batchId,
        value,
      );

  _is.ColumnValue<String, String> batchDisposition(String? value) =>
      _is.ColumnValue(
        table.batchDisposition,
        value,
      );

  _is.ColumnValue<int, int> campaignBatchNumber(int? value) => _is.ColumnValue(
    table.campaignBatchNumber,
    value,
  );

  _is.ColumnValue<int, int> campaignBatchLimit(int? value) => _is.ColumnValue(
    table.campaignBatchLimit,
    value,
  );
}

class ElogResourceUsagesTable extends _is.Table<_is.UuidValue?> {
  ElogResourceUsagesTable({super.tableRelation})
    : super(tableName: 'elog_resource_usages') {
    updateTable = ElogResourceUsagesUpdateTable(this);
    resourceType = _is.ColumnString(
      'resourceType',
      this,
    );
    resourceId = _is.ColumnUuid(
      'resourceId',
      this,
    );
    operatingAreaId = _is.ColumnUuid(
      'operatingAreaId',
      this,
    );
    startedBy = _is.ColumnUuid(
      'startedBy',
      this,
    );
    stoppedBy = _is.ColumnUuid(
      'stoppedBy',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    startedAt = _is.ColumnDateTime(
      'startedAt',
      this,
    );
    stoppedAt = _is.ColumnDateTime(
      'stoppedAt',
      this,
    );
    productId = _is.ColumnUuid(
      'productId',
      this,
    );
    batchId = _is.ColumnUuid(
      'batchId',
      this,
    );
    batchDisposition = _is.ColumnString(
      'batchDisposition',
      this,
    );
    campaignBatchNumber = _is.ColumnInt(
      'campaignBatchNumber',
      this,
    );
    campaignBatchLimit = _is.ColumnInt(
      'campaignBatchLimit',
      this,
    );
  }

  late final ElogResourceUsagesUpdateTable updateTable;

  late final _is.ColumnString resourceType;

  late final _is.ColumnUuid resourceId;

  late final _is.ColumnUuid operatingAreaId;

  late final _is.ColumnUuid startedBy;

  late final _is.ColumnUuid stoppedBy;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime startedAt;

  late final _is.ColumnDateTime stoppedAt;

  late final _is.ColumnUuid productId;

  late final _is.ColumnUuid batchId;

  late final _is.ColumnString batchDisposition;

  late final _is.ColumnInt campaignBatchNumber;

  late final _is.ColumnInt campaignBatchLimit;

  @override
  List<_is.Column> get columns => [
    id,
    resourceType,
    resourceId,
    operatingAreaId,
    startedBy,
    stoppedBy,
    status,
    startedAt,
    stoppedAt,
    productId,
    batchId,
    batchDisposition,
    campaignBatchNumber,
    campaignBatchLimit,
  ];
}

class ElogResourceUsagesInclude extends _is.IncludeObject {
  ElogResourceUsagesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogResourceUsages.t;
}

class ElogResourceUsagesIncludeList extends _is.IncludeList {
  ElogResourceUsagesIncludeList._({
    _is.WhereExpressionBuilder<ElogResourceUsagesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogResourceUsages.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogResourceUsages.t;
}

class ElogResourceUsagesRepository {
  const ElogResourceUsagesRepository._();

  /// Returns a list of [ElogResourceUsages]s matching the given query parameters.
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
  Future<List<ElogResourceUsages>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceUsagesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceUsagesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogResourceUsages>(
      where: where?.call(ElogResourceUsages.t),
      orderBy: orderBy?.call(ElogResourceUsages.t),
      orderByList: orderByList?.call(ElogResourceUsages.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogResourceUsages] matching the given query parameters.
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
  Future<ElogResourceUsages?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceUsagesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogResourceUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceUsagesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogResourceUsages>(
      where: where?.call(ElogResourceUsages.t),
      orderBy: orderBy?.call(ElogResourceUsages.t),
      orderByList: orderByList?.call(ElogResourceUsages.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogResourceUsages] by its [id] or null if no such row exists.
  Future<ElogResourceUsages?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogResourceUsages>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogResourceUsages]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogResourceUsages]s will have their `id` fields set.
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
  Future<List<ElogResourceUsages>> insert(
    _is.DatabaseSession session,
    List<ElogResourceUsages> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogResourceUsages>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogResourceUsages] and returns the inserted row.
  ///
  /// The returned [ElogResourceUsages] will have its `id` field set.
  Future<ElogResourceUsages> insertRow(
    _is.DatabaseSession session,
    ElogResourceUsages row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogResourceUsages>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogResourceUsages]s in the list and returns the resulting rows.
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
  /// The returned [ElogResourceUsages]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceUsages>> upsert(
    _is.DatabaseSession session,
    List<ElogResourceUsages> rows, {
    required _is.ColumnSelections<ElogResourceUsagesTable> conflictColumns,
    _is.ColumnSelections<ElogResourceUsagesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogResourceUsagesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogResourceUsages>(
      rows,
      conflictColumns: conflictColumns(ElogResourceUsages.t),
      updateColumns: updateColumns?.call(ElogResourceUsages.t),
      updateWhere: updateWhere?.call(ElogResourceUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogResourceUsages] and returns the resulting row.
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
  /// The returned [ElogResourceUsages] will have its `id` field set.
  Future<ElogResourceUsages?> upsertRow(
    _is.DatabaseSession session,
    ElogResourceUsages row, {
    required _is.ColumnSelections<ElogResourceUsagesTable> conflictColumns,
    _is.ColumnSelections<ElogResourceUsagesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogResourceUsagesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogResourceUsages>(
      row,
      conflictColumns: conflictColumns(ElogResourceUsages.t),
      updateColumns: updateColumns?.call(ElogResourceUsages.t),
      updateWhere: updateWhere?.call(ElogResourceUsages.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogResourceUsages]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceUsages>> update(
    _is.DatabaseSession session,
    List<ElogResourceUsages> rows, {
    _is.ColumnSelections<ElogResourceUsagesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogResourceUsages>(
      rows,
      columns: columns?.call(ElogResourceUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogResourceUsages]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogResourceUsages> updateRow(
    _is.DatabaseSession session,
    ElogResourceUsages row, {
    _is.ColumnSelections<ElogResourceUsagesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogResourceUsages>(
      row,
      columns: columns?.call(ElogResourceUsages.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogResourceUsages] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogResourceUsages?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogResourceUsagesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogResourceUsages>(
      id,
      columnValues: columnValues(ElogResourceUsages.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogResourceUsages]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceUsages>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogResourceUsagesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogResourceUsagesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceUsagesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogResourceUsages>(
      columnValues: columnValues(ElogResourceUsages.t.updateTable),
      where: where(ElogResourceUsages.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogResourceUsages.t),
      orderByList: orderByList?.call(ElogResourceUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogResourceUsages]s in the list and returns the deleted rows.
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
  Future<List<ElogResourceUsages>> delete(
    _is.DatabaseSession session,
    List<ElogResourceUsages> rows, {
    _is.OrderByBuilder<ElogResourceUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceUsagesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogResourceUsages>(
      rows,
      orderBy: orderBy?.call(ElogResourceUsages.t),
      orderByList: orderByList?.call(ElogResourceUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogResourceUsages].
  Future<ElogResourceUsages> deleteRow(
    _is.DatabaseSession session,
    ElogResourceUsages row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogResourceUsages>(
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
  Future<List<ElogResourceUsages>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogResourceUsagesTable> where,
    _is.OrderByBuilder<ElogResourceUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceUsagesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogResourceUsages>(
      where: where(ElogResourceUsages.t),
      orderBy: orderBy?.call(ElogResourceUsages.t),
      orderByList: orderByList?.call(ElogResourceUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceUsagesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogResourceUsages>(
      where: where?.call(ElogResourceUsages.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogResourceUsages] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogResourceUsagesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogResourceUsages>(
      where: where(ElogResourceUsages.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
