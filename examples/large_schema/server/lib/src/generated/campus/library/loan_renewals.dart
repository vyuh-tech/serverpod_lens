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

/// Fictional university fixture: library.
abstract class CampusLoanRenewal
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusLoanRenewal._({
    this.id,
    required this.loanId,
    required this.previousDueAt,
    required this.nextDueAt,
    this.reason,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusLoanRenewal({
    _is.UuidValue? id,
    required _is.UuidValue loanId,
    required DateTime previousDueAt,
    required DateTime nextDueAt,
    String? reason,
    DateTime? createdAt,
  }) = _CampusLoanRenewalImpl;

  factory CampusLoanRenewal.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusLoanRenewal(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      loanId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['loanId']),
      previousDueAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['previousDueAt'],
      ),
      nextDueAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['nextDueAt'],
      ),
      reason: jsonSerialization['reason'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusLoanRenewalTable();

  static const db = CampusLoanRenewalRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue loanId;

  DateTime previousDueAt;

  DateTime nextDueAt;

  String? reason;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusLoanRenewal]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusLoanRenewal copyWith({
    _is.UuidValue? id,
    _is.UuidValue? loanId,
    DateTime? previousDueAt,
    DateTime? nextDueAt,
    String? reason,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusLoanRenewal',
      if (id != null) 'id': id?.toJson(),
      'loanId': loanId.toJson(),
      'previousDueAt': previousDueAt.toJson(),
      'nextDueAt': nextDueAt.toJson(),
      if (reason != null) 'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusLoanRenewal',
      if (id != null) 'id': id?.toJson(),
      'loanId': loanId.toJson(),
      'previousDueAt': previousDueAt.toJson(),
      'nextDueAt': nextDueAt.toJson(),
      if (reason != null) 'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusLoanRenewalInclude include() {
    return CampusLoanRenewalInclude._();
  }

  static CampusLoanRenewalIncludeList includeList({
    _is.WhereExpressionBuilder<CampusLoanRenewalTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLoanRenewalTable>? orderBy,
    _is.OrderByListBuilder<CampusLoanRenewalTable>? orderByList,
    CampusLoanRenewalInclude? include,
  }) {
    return CampusLoanRenewalIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusLoanRenewal.t),
      orderByList: orderByList?.call(CampusLoanRenewal.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusLoanRenewalImpl extends CampusLoanRenewal {
  _CampusLoanRenewalImpl({
    _is.UuidValue? id,
    required _is.UuidValue loanId,
    required DateTime previousDueAt,
    required DateTime nextDueAt,
    String? reason,
    DateTime? createdAt,
  }) : super._(
         id: id,
         loanId: loanId,
         previousDueAt: previousDueAt,
         nextDueAt: nextDueAt,
         reason: reason,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusLoanRenewal]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusLoanRenewal copyWith({
    Object? id = _Undefined,
    _is.UuidValue? loanId,
    DateTime? previousDueAt,
    DateTime? nextDueAt,
    Object? reason = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusLoanRenewal(
      id: id is _is.UuidValue? ? id : this.id,
      loanId: loanId ?? this.loanId,
      previousDueAt: previousDueAt ?? this.previousDueAt,
      nextDueAt: nextDueAt ?? this.nextDueAt,
      reason: reason is String? ? reason : this.reason,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusLoanRenewalUpdateTable
    extends _is.UpdateTable<CampusLoanRenewalTable> {
  CampusLoanRenewalUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> loanId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.loanId,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> previousDueAt(DateTime value) =>
      _is.ColumnValue(
        table.previousDueAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> nextDueAt(DateTime value) =>
      _is.ColumnValue(
        table.nextDueAt,
        value,
      );

  _is.ColumnValue<String, String> reason(String? value) => _is.ColumnValue(
    table.reason,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusLoanRenewalTable extends _is.Table<_is.UuidValue?> {
  CampusLoanRenewalTable({super.tableRelation})
    : super(tableName: 'campus_loan_renewals') {
    updateTable = CampusLoanRenewalUpdateTable(this);
    loanId = _is.ColumnUuid(
      'loanId',
      this,
    );
    previousDueAt = _is.ColumnDateTime(
      'previousDueAt',
      this,
    );
    nextDueAt = _is.ColumnDateTime(
      'nextDueAt',
      this,
    );
    reason = _is.ColumnString(
      'reason',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusLoanRenewalUpdateTable updateTable;

  late final _is.ColumnUuid loanId;

  late final _is.ColumnDateTime previousDueAt;

  late final _is.ColumnDateTime nextDueAt;

  late final _is.ColumnString reason;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    loanId,
    previousDueAt,
    nextDueAt,
    reason,
    createdAt,
  ];
}

class CampusLoanRenewalInclude extends _is.IncludeObject {
  CampusLoanRenewalInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusLoanRenewal.t;
}

class CampusLoanRenewalIncludeList extends _is.IncludeList {
  CampusLoanRenewalIncludeList._({
    _is.WhereExpressionBuilder<CampusLoanRenewalTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusLoanRenewal.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusLoanRenewal.t;
}

class CampusLoanRenewalRepository {
  const CampusLoanRenewalRepository._();

  /// Returns a list of [CampusLoanRenewal]s matching the given query parameters.
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
  Future<List<CampusLoanRenewal>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLoanRenewalTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLoanRenewalTable>? orderBy,
    _is.OrderByListBuilder<CampusLoanRenewalTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusLoanRenewal>(
      where: where?.call(CampusLoanRenewal.t),
      orderBy: orderBy?.call(CampusLoanRenewal.t),
      orderByList: orderByList?.call(CampusLoanRenewal.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusLoanRenewal] matching the given query parameters.
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
  Future<CampusLoanRenewal?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLoanRenewalTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusLoanRenewalTable>? orderBy,
    _is.OrderByListBuilder<CampusLoanRenewalTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusLoanRenewal>(
      where: where?.call(CampusLoanRenewal.t),
      orderBy: orderBy?.call(CampusLoanRenewal.t),
      orderByList: orderByList?.call(CampusLoanRenewal.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusLoanRenewal] by its [id] or null if no such row exists.
  Future<CampusLoanRenewal?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusLoanRenewal>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusLoanRenewal]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusLoanRenewal]s will have their `id` fields set.
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
  Future<List<CampusLoanRenewal>> insert(
    _is.DatabaseSession session,
    List<CampusLoanRenewal> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusLoanRenewal>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusLoanRenewal] and returns the inserted row.
  ///
  /// The returned [CampusLoanRenewal] will have its `id` field set.
  Future<CampusLoanRenewal> insertRow(
    _is.DatabaseSession session,
    CampusLoanRenewal row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusLoanRenewal>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusLoanRenewal]s in the list and returns the resulting rows.
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
  /// The returned [CampusLoanRenewal]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLoanRenewal>> upsert(
    _is.DatabaseSession session,
    List<CampusLoanRenewal> rows, {
    required _is.ColumnSelections<CampusLoanRenewalTable> conflictColumns,
    _is.ColumnSelections<CampusLoanRenewalTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusLoanRenewalTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusLoanRenewal>(
      rows,
      conflictColumns: conflictColumns(CampusLoanRenewal.t),
      updateColumns: updateColumns?.call(CampusLoanRenewal.t),
      updateWhere: updateWhere?.call(CampusLoanRenewal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusLoanRenewal] and returns the resulting row.
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
  /// The returned [CampusLoanRenewal] will have its `id` field set.
  Future<CampusLoanRenewal?> upsertRow(
    _is.DatabaseSession session,
    CampusLoanRenewal row, {
    required _is.ColumnSelections<CampusLoanRenewalTable> conflictColumns,
    _is.ColumnSelections<CampusLoanRenewalTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusLoanRenewalTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusLoanRenewal>(
      row,
      conflictColumns: conflictColumns(CampusLoanRenewal.t),
      updateColumns: updateColumns?.call(CampusLoanRenewal.t),
      updateWhere: updateWhere?.call(CampusLoanRenewal.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusLoanRenewal]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLoanRenewal>> update(
    _is.DatabaseSession session,
    List<CampusLoanRenewal> rows, {
    _is.ColumnSelections<CampusLoanRenewalTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusLoanRenewal>(
      rows,
      columns: columns?.call(CampusLoanRenewal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusLoanRenewal]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusLoanRenewal> updateRow(
    _is.DatabaseSession session,
    CampusLoanRenewal row, {
    _is.ColumnSelections<CampusLoanRenewalTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusLoanRenewal>(
      row,
      columns: columns?.call(CampusLoanRenewal.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusLoanRenewal] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusLoanRenewal?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusLoanRenewalUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusLoanRenewal>(
      id,
      columnValues: columnValues(CampusLoanRenewal.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusLoanRenewal]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLoanRenewal>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusLoanRenewalUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusLoanRenewalTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLoanRenewalTable>? orderBy,
    _is.OrderByListBuilder<CampusLoanRenewalTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusLoanRenewal>(
      columnValues: columnValues(CampusLoanRenewal.t.updateTable),
      where: where(CampusLoanRenewal.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusLoanRenewal.t),
      orderByList: orderByList?.call(CampusLoanRenewal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusLoanRenewal]s in the list and returns the deleted rows.
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
  Future<List<CampusLoanRenewal>> delete(
    _is.DatabaseSession session,
    List<CampusLoanRenewal> rows, {
    _is.OrderByBuilder<CampusLoanRenewalTable>? orderBy,
    _is.OrderByListBuilder<CampusLoanRenewalTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusLoanRenewal>(
      rows,
      orderBy: orderBy?.call(CampusLoanRenewal.t),
      orderByList: orderByList?.call(CampusLoanRenewal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusLoanRenewal].
  Future<CampusLoanRenewal> deleteRow(
    _is.DatabaseSession session,
    CampusLoanRenewal row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusLoanRenewal>(
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
  Future<List<CampusLoanRenewal>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusLoanRenewalTable> where,
    _is.OrderByBuilder<CampusLoanRenewalTable>? orderBy,
    _is.OrderByListBuilder<CampusLoanRenewalTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusLoanRenewal>(
      where: where(CampusLoanRenewal.t),
      orderBy: orderBy?.call(CampusLoanRenewal.t),
      orderByList: orderByList?.call(CampusLoanRenewal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLoanRenewalTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusLoanRenewal>(
      where: where?.call(CampusLoanRenewal.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusLoanRenewal] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusLoanRenewalTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusLoanRenewal>(
      where: where(CampusLoanRenewal.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
