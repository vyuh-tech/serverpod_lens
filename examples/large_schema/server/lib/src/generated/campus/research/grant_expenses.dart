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

/// Fictional university fixture: research.
abstract class CampusGrantExpense
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusGrantExpense._({
    this.id,
    required this.budgetId,
    this.invoiceId,
    required this.description,
    required this.amountMinor,
    required this.spentAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGrantExpense({
    _is.UuidValue? id,
    required _is.UuidValue budgetId,
    _is.UuidValue? invoiceId,
    required String description,
    required int amountMinor,
    required DateTime spentAt,
    DateTime? createdAt,
  }) = _CampusGrantExpenseImpl;

  factory CampusGrantExpense.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusGrantExpense(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      budgetId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['budgetId'],
      ),
      invoiceId: jsonSerialization['invoiceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['invoiceId']),
      description: jsonSerialization['description'] as String,
      amountMinor: jsonSerialization['amountMinor'] as int,
      spentAt: _is.DateTimeJsonExtension.fromJson(jsonSerialization['spentAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusGrantExpenseTable();

  static const db = CampusGrantExpenseRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue budgetId;

  _is.UuidValue? invoiceId;

  String description;

  int amountMinor;

  DateTime spentAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusGrantExpense]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusGrantExpense copyWith({
    _is.UuidValue? id,
    _is.UuidValue? budgetId,
    _is.UuidValue? invoiceId,
    String? description,
    int? amountMinor,
    DateTime? spentAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGrantExpense',
      if (id != null) 'id': id?.toJson(),
      'budgetId': budgetId.toJson(),
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      'description': description,
      'amountMinor': amountMinor,
      'spentAt': spentAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGrantExpense',
      if (id != null) 'id': id?.toJson(),
      'budgetId': budgetId.toJson(),
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      'description': description,
      'amountMinor': amountMinor,
      'spentAt': spentAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusGrantExpenseInclude include() {
    return CampusGrantExpenseInclude._();
  }

  static CampusGrantExpenseIncludeList includeList({
    _is.WhereExpressionBuilder<CampusGrantExpenseTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGrantExpenseTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantExpenseTable>? orderByList,
    CampusGrantExpenseInclude? include,
  }) {
    return CampusGrantExpenseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGrantExpense.t),
      orderByList: orderByList?.call(CampusGrantExpense.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGrantExpenseImpl extends CampusGrantExpense {
  _CampusGrantExpenseImpl({
    _is.UuidValue? id,
    required _is.UuidValue budgetId,
    _is.UuidValue? invoiceId,
    required String description,
    required int amountMinor,
    required DateTime spentAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         budgetId: budgetId,
         invoiceId: invoiceId,
         description: description,
         amountMinor: amountMinor,
         spentAt: spentAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGrantExpense]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusGrantExpense copyWith({
    Object? id = _Undefined,
    _is.UuidValue? budgetId,
    Object? invoiceId = _Undefined,
    String? description,
    int? amountMinor,
    DateTime? spentAt,
    DateTime? createdAt,
  }) {
    return CampusGrantExpense(
      id: id is _is.UuidValue? ? id : this.id,
      budgetId: budgetId ?? this.budgetId,
      invoiceId: invoiceId is _is.UuidValue? ? invoiceId : this.invoiceId,
      description: description ?? this.description,
      amountMinor: amountMinor ?? this.amountMinor,
      spentAt: spentAt ?? this.spentAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusGrantExpenseUpdateTable
    extends _is.UpdateTable<CampusGrantExpenseTable> {
  CampusGrantExpenseUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> budgetId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.budgetId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> invoiceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.invoiceId,
    value,
  );

  _is.ColumnValue<String, String> description(String value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<int, int> amountMinor(int value) => _is.ColumnValue(
    table.amountMinor,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> spentAt(DateTime value) =>
      _is.ColumnValue(
        table.spentAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusGrantExpenseTable extends _is.Table<_is.UuidValue?> {
  CampusGrantExpenseTable({super.tableRelation})
    : super(tableName: 'campus_grant_expenses') {
    updateTable = CampusGrantExpenseUpdateTable(this);
    budgetId = _is.ColumnUuid(
      'budgetId',
      this,
    );
    invoiceId = _is.ColumnUuid(
      'invoiceId',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    amountMinor = _is.ColumnInt(
      'amountMinor',
      this,
    );
    spentAt = _is.ColumnDateTime(
      'spentAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusGrantExpenseUpdateTable updateTable;

  late final _is.ColumnUuid budgetId;

  late final _is.ColumnUuid invoiceId;

  late final _is.ColumnString description;

  late final _is.ColumnInt amountMinor;

  late final _is.ColumnDateTime spentAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    budgetId,
    invoiceId,
    description,
    amountMinor,
    spentAt,
    createdAt,
  ];
}

class CampusGrantExpenseInclude extends _is.IncludeObject {
  CampusGrantExpenseInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGrantExpense.t;
}

class CampusGrantExpenseIncludeList extends _is.IncludeList {
  CampusGrantExpenseIncludeList._({
    _is.WhereExpressionBuilder<CampusGrantExpenseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusGrantExpense.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGrantExpense.t;
}

class CampusGrantExpenseRepository {
  const CampusGrantExpenseRepository._();

  /// Returns a list of [CampusGrantExpense]s matching the given query parameters.
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
  Future<List<CampusGrantExpense>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGrantExpenseTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGrantExpenseTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantExpenseTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusGrantExpense>(
      where: where?.call(CampusGrantExpense.t),
      orderBy: orderBy?.call(CampusGrantExpense.t),
      orderByList: orderByList?.call(CampusGrantExpense.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusGrantExpense] matching the given query parameters.
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
  Future<CampusGrantExpense?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGrantExpenseTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusGrantExpenseTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantExpenseTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusGrantExpense>(
      where: where?.call(CampusGrantExpense.t),
      orderBy: orderBy?.call(CampusGrantExpense.t),
      orderByList: orderByList?.call(CampusGrantExpense.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusGrantExpense] by its [id] or null if no such row exists.
  Future<CampusGrantExpense?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusGrantExpense>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusGrantExpense]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusGrantExpense]s will have their `id` fields set.
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
  Future<List<CampusGrantExpense>> insert(
    _is.DatabaseSession session,
    List<CampusGrantExpense> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusGrantExpense>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusGrantExpense] and returns the inserted row.
  ///
  /// The returned [CampusGrantExpense] will have its `id` field set.
  Future<CampusGrantExpense> insertRow(
    _is.DatabaseSession session,
    CampusGrantExpense row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusGrantExpense>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusGrantExpense]s in the list and returns the resulting rows.
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
  /// The returned [CampusGrantExpense]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGrantExpense>> upsert(
    _is.DatabaseSession session,
    List<CampusGrantExpense> rows, {
    required _is.ColumnSelections<CampusGrantExpenseTable> conflictColumns,
    _is.ColumnSelections<CampusGrantExpenseTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGrantExpenseTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusGrantExpense>(
      rows,
      conflictColumns: conflictColumns(CampusGrantExpense.t),
      updateColumns: updateColumns?.call(CampusGrantExpense.t),
      updateWhere: updateWhere?.call(CampusGrantExpense.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusGrantExpense] and returns the resulting row.
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
  /// The returned [CampusGrantExpense] will have its `id` field set.
  Future<CampusGrantExpense?> upsertRow(
    _is.DatabaseSession session,
    CampusGrantExpense row, {
    required _is.ColumnSelections<CampusGrantExpenseTable> conflictColumns,
    _is.ColumnSelections<CampusGrantExpenseTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGrantExpenseTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusGrantExpense>(
      row,
      conflictColumns: conflictColumns(CampusGrantExpense.t),
      updateColumns: updateColumns?.call(CampusGrantExpense.t),
      updateWhere: updateWhere?.call(CampusGrantExpense.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGrantExpense]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGrantExpense>> update(
    _is.DatabaseSession session,
    List<CampusGrantExpense> rows, {
    _is.ColumnSelections<CampusGrantExpenseTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusGrantExpense>(
      rows,
      columns: columns?.call(CampusGrantExpense.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusGrantExpense]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusGrantExpense> updateRow(
    _is.DatabaseSession session,
    CampusGrantExpense row, {
    _is.ColumnSelections<CampusGrantExpenseTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusGrantExpense>(
      row,
      columns: columns?.call(CampusGrantExpense.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusGrantExpense] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusGrantExpense?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusGrantExpenseUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusGrantExpense>(
      id,
      columnValues: columnValues(CampusGrantExpense.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGrantExpense]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGrantExpense>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusGrantExpenseUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusGrantExpenseTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGrantExpenseTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantExpenseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusGrantExpense>(
      columnValues: columnValues(CampusGrantExpense.t.updateTable),
      where: where(CampusGrantExpense.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGrantExpense.t),
      orderByList: orderByList?.call(CampusGrantExpense.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusGrantExpense]s in the list and returns the deleted rows.
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
  Future<List<CampusGrantExpense>> delete(
    _is.DatabaseSession session,
    List<CampusGrantExpense> rows, {
    _is.OrderByBuilder<CampusGrantExpenseTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantExpenseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusGrantExpense>(
      rows,
      orderBy: orderBy?.call(CampusGrantExpense.t),
      orderByList: orderByList?.call(CampusGrantExpense.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusGrantExpense].
  Future<CampusGrantExpense> deleteRow(
    _is.DatabaseSession session,
    CampusGrantExpense row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusGrantExpense>(
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
  Future<List<CampusGrantExpense>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGrantExpenseTable> where,
    _is.OrderByBuilder<CampusGrantExpenseTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantExpenseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusGrantExpense>(
      where: where(CampusGrantExpense.t),
      orderBy: orderBy?.call(CampusGrantExpense.t),
      orderByList: orderByList?.call(CampusGrantExpense.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGrantExpenseTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusGrantExpense>(
      where: where?.call(CampusGrantExpense.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusGrantExpense] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGrantExpenseTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusGrantExpense>(
      where: where(CampusGrantExpense.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
