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

/// Fictional university fixture: finance.
abstract class CampusRefund
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusRefund._({
    this.id,
    required this.paymentId,
    this.invoiceId,
    required this.amountMinor,
    required this.reason,
    this.processedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusRefund({
    _is.UuidValue? id,
    required _is.UuidValue paymentId,
    _is.UuidValue? invoiceId,
    required int amountMinor,
    required String reason,
    DateTime? processedAt,
    DateTime? createdAt,
  }) = _CampusRefundImpl;

  factory CampusRefund.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusRefund(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      paymentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['paymentId'],
      ),
      invoiceId: jsonSerialization['invoiceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['invoiceId']),
      amountMinor: jsonSerialization['amountMinor'] as int,
      reason: jsonSerialization['reason'] as String,
      processedAt: jsonSerialization['processedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['processedAt'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusRefundTable();

  static const db = CampusRefundRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue paymentId;

  _is.UuidValue? invoiceId;

  int amountMinor;

  String reason;

  DateTime? processedAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusRefund]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusRefund copyWith({
    _is.UuidValue? id,
    _is.UuidValue? paymentId,
    _is.UuidValue? invoiceId,
    int? amountMinor,
    String? reason,
    DateTime? processedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusRefund',
      if (id != null) 'id': id?.toJson(),
      'paymentId': paymentId.toJson(),
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      'amountMinor': amountMinor,
      'reason': reason,
      if (processedAt != null) 'processedAt': processedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusRefund',
      if (id != null) 'id': id?.toJson(),
      'paymentId': paymentId.toJson(),
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      'amountMinor': amountMinor,
      'reason': reason,
      if (processedAt != null) 'processedAt': processedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusRefundInclude include() {
    return CampusRefundInclude._();
  }

  static CampusRefundIncludeList includeList({
    _is.WhereExpressionBuilder<CampusRefundTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusRefundTable>? orderBy,
    _is.OrderByListBuilder<CampusRefundTable>? orderByList,
    CampusRefundInclude? include,
  }) {
    return CampusRefundIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusRefund.t),
      orderByList: orderByList?.call(CampusRefund.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusRefundImpl extends CampusRefund {
  _CampusRefundImpl({
    _is.UuidValue? id,
    required _is.UuidValue paymentId,
    _is.UuidValue? invoiceId,
    required int amountMinor,
    required String reason,
    DateTime? processedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         paymentId: paymentId,
         invoiceId: invoiceId,
         amountMinor: amountMinor,
         reason: reason,
         processedAt: processedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusRefund]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusRefund copyWith({
    Object? id = _Undefined,
    _is.UuidValue? paymentId,
    Object? invoiceId = _Undefined,
    int? amountMinor,
    String? reason,
    Object? processedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusRefund(
      id: id is _is.UuidValue? ? id : this.id,
      paymentId: paymentId ?? this.paymentId,
      invoiceId: invoiceId is _is.UuidValue? ? invoiceId : this.invoiceId,
      amountMinor: amountMinor ?? this.amountMinor,
      reason: reason ?? this.reason,
      processedAt: processedAt is DateTime? ? processedAt : this.processedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusRefundUpdateTable extends _is.UpdateTable<CampusRefundTable> {
  CampusRefundUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> paymentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.paymentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> invoiceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.invoiceId,
    value,
  );

  _is.ColumnValue<int, int> amountMinor(int value) => _is.ColumnValue(
    table.amountMinor,
    value,
  );

  _is.ColumnValue<String, String> reason(String value) => _is.ColumnValue(
    table.reason,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> processedAt(DateTime? value) =>
      _is.ColumnValue(
        table.processedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusRefundTable extends _is.Table<_is.UuidValue?> {
  CampusRefundTable({super.tableRelation})
    : super(tableName: 'campus_refunds') {
    updateTable = CampusRefundUpdateTable(this);
    paymentId = _is.ColumnUuid(
      'paymentId',
      this,
    );
    invoiceId = _is.ColumnUuid(
      'invoiceId',
      this,
    );
    amountMinor = _is.ColumnInt(
      'amountMinor',
      this,
    );
    reason = _is.ColumnString(
      'reason',
      this,
    );
    processedAt = _is.ColumnDateTime(
      'processedAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusRefundUpdateTable updateTable;

  late final _is.ColumnUuid paymentId;

  late final _is.ColumnUuid invoiceId;

  late final _is.ColumnInt amountMinor;

  late final _is.ColumnString reason;

  late final _is.ColumnDateTime processedAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    paymentId,
    invoiceId,
    amountMinor,
    reason,
    processedAt,
    createdAt,
  ];
}

class CampusRefundInclude extends _is.IncludeObject {
  CampusRefundInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusRefund.t;
}

class CampusRefundIncludeList extends _is.IncludeList {
  CampusRefundIncludeList._({
    _is.WhereExpressionBuilder<CampusRefundTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusRefund.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusRefund.t;
}

class CampusRefundRepository {
  const CampusRefundRepository._();

  /// Returns a list of [CampusRefund]s matching the given query parameters.
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
  Future<List<CampusRefund>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusRefundTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusRefundTable>? orderBy,
    _is.OrderByListBuilder<CampusRefundTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusRefund>(
      where: where?.call(CampusRefund.t),
      orderBy: orderBy?.call(CampusRefund.t),
      orderByList: orderByList?.call(CampusRefund.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusRefund] matching the given query parameters.
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
  Future<CampusRefund?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusRefundTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusRefundTable>? orderBy,
    _is.OrderByListBuilder<CampusRefundTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusRefund>(
      where: where?.call(CampusRefund.t),
      orderBy: orderBy?.call(CampusRefund.t),
      orderByList: orderByList?.call(CampusRefund.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusRefund] by its [id] or null if no such row exists.
  Future<CampusRefund?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusRefund>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusRefund]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusRefund]s will have their `id` fields set.
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
  Future<List<CampusRefund>> insert(
    _is.DatabaseSession session,
    List<CampusRefund> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusRefund>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusRefund] and returns the inserted row.
  ///
  /// The returned [CampusRefund] will have its `id` field set.
  Future<CampusRefund> insertRow(
    _is.DatabaseSession session,
    CampusRefund row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusRefund>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusRefund]s in the list and returns the resulting rows.
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
  /// The returned [CampusRefund]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusRefund>> upsert(
    _is.DatabaseSession session,
    List<CampusRefund> rows, {
    required _is.ColumnSelections<CampusRefundTable> conflictColumns,
    _is.ColumnSelections<CampusRefundTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusRefundTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusRefund>(
      rows,
      conflictColumns: conflictColumns(CampusRefund.t),
      updateColumns: updateColumns?.call(CampusRefund.t),
      updateWhere: updateWhere?.call(CampusRefund.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusRefund] and returns the resulting row.
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
  /// The returned [CampusRefund] will have its `id` field set.
  Future<CampusRefund?> upsertRow(
    _is.DatabaseSession session,
    CampusRefund row, {
    required _is.ColumnSelections<CampusRefundTable> conflictColumns,
    _is.ColumnSelections<CampusRefundTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusRefundTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusRefund>(
      row,
      conflictColumns: conflictColumns(CampusRefund.t),
      updateColumns: updateColumns?.call(CampusRefund.t),
      updateWhere: updateWhere?.call(CampusRefund.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusRefund]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusRefund>> update(
    _is.DatabaseSession session,
    List<CampusRefund> rows, {
    _is.ColumnSelections<CampusRefundTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusRefund>(
      rows,
      columns: columns?.call(CampusRefund.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusRefund]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusRefund> updateRow(
    _is.DatabaseSession session,
    CampusRefund row, {
    _is.ColumnSelections<CampusRefundTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusRefund>(
      row,
      columns: columns?.call(CampusRefund.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusRefund] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusRefund?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusRefundUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusRefund>(
      id,
      columnValues: columnValues(CampusRefund.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusRefund]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusRefund>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusRefundUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusRefundTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusRefundTable>? orderBy,
    _is.OrderByListBuilder<CampusRefundTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusRefund>(
      columnValues: columnValues(CampusRefund.t.updateTable),
      where: where(CampusRefund.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusRefund.t),
      orderByList: orderByList?.call(CampusRefund.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusRefund]s in the list and returns the deleted rows.
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
  Future<List<CampusRefund>> delete(
    _is.DatabaseSession session,
    List<CampusRefund> rows, {
    _is.OrderByBuilder<CampusRefundTable>? orderBy,
    _is.OrderByListBuilder<CampusRefundTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusRefund>(
      rows,
      orderBy: orderBy?.call(CampusRefund.t),
      orderByList: orderByList?.call(CampusRefund.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusRefund].
  Future<CampusRefund> deleteRow(
    _is.DatabaseSession session,
    CampusRefund row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusRefund>(
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
  Future<List<CampusRefund>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusRefundTable> where,
    _is.OrderByBuilder<CampusRefundTable>? orderBy,
    _is.OrderByListBuilder<CampusRefundTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusRefund>(
      where: where(CampusRefund.t),
      orderBy: orderBy?.call(CampusRefund.t),
      orderByList: orderByList?.call(CampusRefund.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusRefundTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusRefund>(
      where: where?.call(CampusRefund.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusRefund] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusRefundTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusRefund>(
      where: where(CampusRefund.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
