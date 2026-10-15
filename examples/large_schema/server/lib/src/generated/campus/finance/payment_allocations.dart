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
abstract class CampusPaymentAllocation
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusPaymentAllocation._({
    this.id,
    required this.paymentId,
    required this.invoiceId,
    required this.amountMinor,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusPaymentAllocation({
    _is.UuidValue? id,
    required _is.UuidValue paymentId,
    required _is.UuidValue invoiceId,
    required int amountMinor,
    DateTime? createdAt,
  }) = _CampusPaymentAllocationImpl;

  factory CampusPaymentAllocation.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusPaymentAllocation(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      paymentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['paymentId'],
      ),
      invoiceId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['invoiceId'],
      ),
      amountMinor: jsonSerialization['amountMinor'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusPaymentAllocationTable();

  static const db = CampusPaymentAllocationRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue paymentId;

  _is.UuidValue invoiceId;

  int amountMinor;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusPaymentAllocation]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusPaymentAllocation copyWith({
    _is.UuidValue? id,
    _is.UuidValue? paymentId,
    _is.UuidValue? invoiceId,
    int? amountMinor,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusPaymentAllocation',
      if (id != null) 'id': id?.toJson(),
      'paymentId': paymentId.toJson(),
      'invoiceId': invoiceId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusPaymentAllocation',
      if (id != null) 'id': id?.toJson(),
      'paymentId': paymentId.toJson(),
      'invoiceId': invoiceId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusPaymentAllocationInclude include() {
    return CampusPaymentAllocationInclude._();
  }

  static CampusPaymentAllocationIncludeList includeList({
    _is.WhereExpressionBuilder<CampusPaymentAllocationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPaymentAllocationTable>? orderBy,
    _is.OrderByListBuilder<CampusPaymentAllocationTable>? orderByList,
    CampusPaymentAllocationInclude? include,
  }) {
    return CampusPaymentAllocationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusPaymentAllocation.t),
      orderByList: orderByList?.call(CampusPaymentAllocation.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusPaymentAllocationImpl extends CampusPaymentAllocation {
  _CampusPaymentAllocationImpl({
    _is.UuidValue? id,
    required _is.UuidValue paymentId,
    required _is.UuidValue invoiceId,
    required int amountMinor,
    DateTime? createdAt,
  }) : super._(
         id: id,
         paymentId: paymentId,
         invoiceId: invoiceId,
         amountMinor: amountMinor,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusPaymentAllocation]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusPaymentAllocation copyWith({
    Object? id = _Undefined,
    _is.UuidValue? paymentId,
    _is.UuidValue? invoiceId,
    int? amountMinor,
    DateTime? createdAt,
  }) {
    return CampusPaymentAllocation(
      id: id is _is.UuidValue? ? id : this.id,
      paymentId: paymentId ?? this.paymentId,
      invoiceId: invoiceId ?? this.invoiceId,
      amountMinor: amountMinor ?? this.amountMinor,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusPaymentAllocationUpdateTable
    extends _is.UpdateTable<CampusPaymentAllocationTable> {
  CampusPaymentAllocationUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> paymentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.paymentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> invoiceId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.invoiceId,
    value,
  );

  _is.ColumnValue<int, int> amountMinor(int value) => _is.ColumnValue(
    table.amountMinor,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusPaymentAllocationTable extends _is.Table<_is.UuidValue?> {
  CampusPaymentAllocationTable({super.tableRelation})
    : super(tableName: 'campus_payment_allocations') {
    updateTable = CampusPaymentAllocationUpdateTable(this);
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
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusPaymentAllocationUpdateTable updateTable;

  late final _is.ColumnUuid paymentId;

  late final _is.ColumnUuid invoiceId;

  late final _is.ColumnInt amountMinor;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    paymentId,
    invoiceId,
    amountMinor,
    createdAt,
  ];
}

class CampusPaymentAllocationInclude extends _is.IncludeObject {
  CampusPaymentAllocationInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusPaymentAllocation.t;
}

class CampusPaymentAllocationIncludeList extends _is.IncludeList {
  CampusPaymentAllocationIncludeList._({
    _is.WhereExpressionBuilder<CampusPaymentAllocationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusPaymentAllocation.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusPaymentAllocation.t;
}

class CampusPaymentAllocationRepository {
  const CampusPaymentAllocationRepository._();

  /// Returns a list of [CampusPaymentAllocation]s matching the given query parameters.
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
  Future<List<CampusPaymentAllocation>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPaymentAllocationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPaymentAllocationTable>? orderBy,
    _is.OrderByListBuilder<CampusPaymentAllocationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusPaymentAllocation>(
      where: where?.call(CampusPaymentAllocation.t),
      orderBy: orderBy?.call(CampusPaymentAllocation.t),
      orderByList: orderByList?.call(CampusPaymentAllocation.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusPaymentAllocation] matching the given query parameters.
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
  Future<CampusPaymentAllocation?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPaymentAllocationTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusPaymentAllocationTable>? orderBy,
    _is.OrderByListBuilder<CampusPaymentAllocationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusPaymentAllocation>(
      where: where?.call(CampusPaymentAllocation.t),
      orderBy: orderBy?.call(CampusPaymentAllocation.t),
      orderByList: orderByList?.call(CampusPaymentAllocation.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusPaymentAllocation] by its [id] or null if no such row exists.
  Future<CampusPaymentAllocation?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusPaymentAllocation>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusPaymentAllocation]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusPaymentAllocation]s will have their `id` fields set.
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
  Future<List<CampusPaymentAllocation>> insert(
    _is.DatabaseSession session,
    List<CampusPaymentAllocation> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusPaymentAllocation>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusPaymentAllocation] and returns the inserted row.
  ///
  /// The returned [CampusPaymentAllocation] will have its `id` field set.
  Future<CampusPaymentAllocation> insertRow(
    _is.DatabaseSession session,
    CampusPaymentAllocation row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusPaymentAllocation>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusPaymentAllocation]s in the list and returns the resulting rows.
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
  /// The returned [CampusPaymentAllocation]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPaymentAllocation>> upsert(
    _is.DatabaseSession session,
    List<CampusPaymentAllocation> rows, {
    required _is.ColumnSelections<CampusPaymentAllocationTable> conflictColumns,
    _is.ColumnSelections<CampusPaymentAllocationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusPaymentAllocationTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusPaymentAllocation>(
      rows,
      conflictColumns: conflictColumns(CampusPaymentAllocation.t),
      updateColumns: updateColumns?.call(CampusPaymentAllocation.t),
      updateWhere: updateWhere?.call(CampusPaymentAllocation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusPaymentAllocation] and returns the resulting row.
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
  /// The returned [CampusPaymentAllocation] will have its `id` field set.
  Future<CampusPaymentAllocation?> upsertRow(
    _is.DatabaseSession session,
    CampusPaymentAllocation row, {
    required _is.ColumnSelections<CampusPaymentAllocationTable> conflictColumns,
    _is.ColumnSelections<CampusPaymentAllocationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusPaymentAllocationTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusPaymentAllocation>(
      row,
      conflictColumns: conflictColumns(CampusPaymentAllocation.t),
      updateColumns: updateColumns?.call(CampusPaymentAllocation.t),
      updateWhere: updateWhere?.call(CampusPaymentAllocation.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusPaymentAllocation]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPaymentAllocation>> update(
    _is.DatabaseSession session,
    List<CampusPaymentAllocation> rows, {
    _is.ColumnSelections<CampusPaymentAllocationTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusPaymentAllocation>(
      rows,
      columns: columns?.call(CampusPaymentAllocation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusPaymentAllocation]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusPaymentAllocation> updateRow(
    _is.DatabaseSession session,
    CampusPaymentAllocation row, {
    _is.ColumnSelections<CampusPaymentAllocationTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusPaymentAllocation>(
      row,
      columns: columns?.call(CampusPaymentAllocation.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusPaymentAllocation] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusPaymentAllocation?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusPaymentAllocationUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusPaymentAllocation>(
      id,
      columnValues: columnValues(CampusPaymentAllocation.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusPaymentAllocation]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPaymentAllocation>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusPaymentAllocationUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusPaymentAllocationTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPaymentAllocationTable>? orderBy,
    _is.OrderByListBuilder<CampusPaymentAllocationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusPaymentAllocation>(
      columnValues: columnValues(CampusPaymentAllocation.t.updateTable),
      where: where(CampusPaymentAllocation.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusPaymentAllocation.t),
      orderByList: orderByList?.call(CampusPaymentAllocation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusPaymentAllocation]s in the list and returns the deleted rows.
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
  Future<List<CampusPaymentAllocation>> delete(
    _is.DatabaseSession session,
    List<CampusPaymentAllocation> rows, {
    _is.OrderByBuilder<CampusPaymentAllocationTable>? orderBy,
    _is.OrderByListBuilder<CampusPaymentAllocationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusPaymentAllocation>(
      rows,
      orderBy: orderBy?.call(CampusPaymentAllocation.t),
      orderByList: orderByList?.call(CampusPaymentAllocation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusPaymentAllocation].
  Future<CampusPaymentAllocation> deleteRow(
    _is.DatabaseSession session,
    CampusPaymentAllocation row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusPaymentAllocation>(
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
  Future<List<CampusPaymentAllocation>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusPaymentAllocationTable> where,
    _is.OrderByBuilder<CampusPaymentAllocationTable>? orderBy,
    _is.OrderByListBuilder<CampusPaymentAllocationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusPaymentAllocation>(
      where: where(CampusPaymentAllocation.t),
      orderBy: orderBy?.call(CampusPaymentAllocation.t),
      orderByList: orderByList?.call(CampusPaymentAllocation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPaymentAllocationTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusPaymentAllocation>(
      where: where?.call(CampusPaymentAllocation.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusPaymentAllocation] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusPaymentAllocationTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusPaymentAllocation>(
      where: where(CampusPaymentAllocation.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
