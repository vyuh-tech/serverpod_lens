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
abstract class CampusLoan
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusLoan._({
    this.id,
    required this.copyId,
    required this.studentId,
    required this.borrowedAt,
    required this.dueAt,
    this.returnedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusLoan({
    _is.UuidValue? id,
    required _is.UuidValue copyId,
    required _is.UuidValue studentId,
    required DateTime borrowedAt,
    required DateTime dueAt,
    DateTime? returnedAt,
    DateTime? createdAt,
  }) = _CampusLoanImpl;

  factory CampusLoan.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusLoan(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      copyId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['copyId']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      borrowedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['borrowedAt'],
      ),
      dueAt: _is.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
      returnedAt: jsonSerialization['returnedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['returnedAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusLoanTable();

  static const db = CampusLoanRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue copyId;

  _is.UuidValue studentId;

  DateTime borrowedAt;

  DateTime dueAt;

  DateTime? returnedAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusLoan]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusLoan copyWith({
    _is.UuidValue? id,
    _is.UuidValue? copyId,
    _is.UuidValue? studentId,
    DateTime? borrowedAt,
    DateTime? dueAt,
    DateTime? returnedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusLoan',
      if (id != null) 'id': id?.toJson(),
      'copyId': copyId.toJson(),
      'studentId': studentId.toJson(),
      'borrowedAt': borrowedAt.toJson(),
      'dueAt': dueAt.toJson(),
      if (returnedAt != null) 'returnedAt': returnedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusLoan',
      if (id != null) 'id': id?.toJson(),
      'copyId': copyId.toJson(),
      'studentId': studentId.toJson(),
      'borrowedAt': borrowedAt.toJson(),
      'dueAt': dueAt.toJson(),
      if (returnedAt != null) 'returnedAt': returnedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusLoanInclude include() {
    return CampusLoanInclude._();
  }

  static CampusLoanIncludeList includeList({
    _is.WhereExpressionBuilder<CampusLoanTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLoanTable>? orderBy,
    _is.OrderByListBuilder<CampusLoanTable>? orderByList,
    CampusLoanInclude? include,
  }) {
    return CampusLoanIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusLoan.t),
      orderByList: orderByList?.call(CampusLoan.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusLoanImpl extends CampusLoan {
  _CampusLoanImpl({
    _is.UuidValue? id,
    required _is.UuidValue copyId,
    required _is.UuidValue studentId,
    required DateTime borrowedAt,
    required DateTime dueAt,
    DateTime? returnedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         copyId: copyId,
         studentId: studentId,
         borrowedAt: borrowedAt,
         dueAt: dueAt,
         returnedAt: returnedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusLoan]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusLoan copyWith({
    Object? id = _Undefined,
    _is.UuidValue? copyId,
    _is.UuidValue? studentId,
    DateTime? borrowedAt,
    DateTime? dueAt,
    Object? returnedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusLoan(
      id: id is _is.UuidValue? ? id : this.id,
      copyId: copyId ?? this.copyId,
      studentId: studentId ?? this.studentId,
      borrowedAt: borrowedAt ?? this.borrowedAt,
      dueAt: dueAt ?? this.dueAt,
      returnedAt: returnedAt is DateTime? ? returnedAt : this.returnedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusLoanUpdateTable extends _is.UpdateTable<CampusLoanTable> {
  CampusLoanUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> copyId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.copyId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> borrowedAt(DateTime value) =>
      _is.ColumnValue(
        table.borrowedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> dueAt(DateTime value) => _is.ColumnValue(
    table.dueAt,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> returnedAt(DateTime? value) =>
      _is.ColumnValue(
        table.returnedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusLoanTable extends _is.Table<_is.UuidValue?> {
  CampusLoanTable({super.tableRelation}) : super(tableName: 'campus_loans') {
    updateTable = CampusLoanUpdateTable(this);
    copyId = _is.ColumnUuid(
      'copyId',
      this,
    );
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    borrowedAt = _is.ColumnDateTime(
      'borrowedAt',
      this,
    );
    dueAt = _is.ColumnDateTime(
      'dueAt',
      this,
    );
    returnedAt = _is.ColumnDateTime(
      'returnedAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusLoanUpdateTable updateTable;

  late final _is.ColumnUuid copyId;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnDateTime borrowedAt;

  late final _is.ColumnDateTime dueAt;

  late final _is.ColumnDateTime returnedAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    copyId,
    studentId,
    borrowedAt,
    dueAt,
    returnedAt,
    createdAt,
  ];
}

class CampusLoanInclude extends _is.IncludeObject {
  CampusLoanInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusLoan.t;
}

class CampusLoanIncludeList extends _is.IncludeList {
  CampusLoanIncludeList._({
    _is.WhereExpressionBuilder<CampusLoanTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusLoan.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusLoan.t;
}

class CampusLoanRepository {
  const CampusLoanRepository._();

  /// Returns a list of [CampusLoan]s matching the given query parameters.
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
  Future<List<CampusLoan>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLoanTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLoanTable>? orderBy,
    _is.OrderByListBuilder<CampusLoanTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusLoan>(
      where: where?.call(CampusLoan.t),
      orderBy: orderBy?.call(CampusLoan.t),
      orderByList: orderByList?.call(CampusLoan.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusLoan] matching the given query parameters.
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
  Future<CampusLoan?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLoanTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusLoanTable>? orderBy,
    _is.OrderByListBuilder<CampusLoanTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusLoan>(
      where: where?.call(CampusLoan.t),
      orderBy: orderBy?.call(CampusLoan.t),
      orderByList: orderByList?.call(CampusLoan.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusLoan] by its [id] or null if no such row exists.
  Future<CampusLoan?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusLoan>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusLoan]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusLoan]s will have their `id` fields set.
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
  Future<List<CampusLoan>> insert(
    _is.DatabaseSession session,
    List<CampusLoan> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusLoan>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusLoan] and returns the inserted row.
  ///
  /// The returned [CampusLoan] will have its `id` field set.
  Future<CampusLoan> insertRow(
    _is.DatabaseSession session,
    CampusLoan row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusLoan>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusLoan]s in the list and returns the resulting rows.
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
  /// The returned [CampusLoan]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLoan>> upsert(
    _is.DatabaseSession session,
    List<CampusLoan> rows, {
    required _is.ColumnSelections<CampusLoanTable> conflictColumns,
    _is.ColumnSelections<CampusLoanTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusLoanTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusLoan>(
      rows,
      conflictColumns: conflictColumns(CampusLoan.t),
      updateColumns: updateColumns?.call(CampusLoan.t),
      updateWhere: updateWhere?.call(CampusLoan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusLoan] and returns the resulting row.
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
  /// The returned [CampusLoan] will have its `id` field set.
  Future<CampusLoan?> upsertRow(
    _is.DatabaseSession session,
    CampusLoan row, {
    required _is.ColumnSelections<CampusLoanTable> conflictColumns,
    _is.ColumnSelections<CampusLoanTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusLoanTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusLoan>(
      row,
      conflictColumns: conflictColumns(CampusLoan.t),
      updateColumns: updateColumns?.call(CampusLoan.t),
      updateWhere: updateWhere?.call(CampusLoan.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusLoan]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLoan>> update(
    _is.DatabaseSession session,
    List<CampusLoan> rows, {
    _is.ColumnSelections<CampusLoanTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusLoan>(
      rows,
      columns: columns?.call(CampusLoan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusLoan]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusLoan> updateRow(
    _is.DatabaseSession session,
    CampusLoan row, {
    _is.ColumnSelections<CampusLoanTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusLoan>(
      row,
      columns: columns?.call(CampusLoan.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusLoan] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusLoan?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusLoanUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusLoan>(
      id,
      columnValues: columnValues(CampusLoan.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusLoan]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLoan>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusLoanUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusLoanTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLoanTable>? orderBy,
    _is.OrderByListBuilder<CampusLoanTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusLoan>(
      columnValues: columnValues(CampusLoan.t.updateTable),
      where: where(CampusLoan.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusLoan.t),
      orderByList: orderByList?.call(CampusLoan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusLoan]s in the list and returns the deleted rows.
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
  Future<List<CampusLoan>> delete(
    _is.DatabaseSession session,
    List<CampusLoan> rows, {
    _is.OrderByBuilder<CampusLoanTable>? orderBy,
    _is.OrderByListBuilder<CampusLoanTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusLoan>(
      rows,
      orderBy: orderBy?.call(CampusLoan.t),
      orderByList: orderByList?.call(CampusLoan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusLoan].
  Future<CampusLoan> deleteRow(
    _is.DatabaseSession session,
    CampusLoan row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusLoan>(
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
  Future<List<CampusLoan>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusLoanTable> where,
    _is.OrderByBuilder<CampusLoanTable>? orderBy,
    _is.OrderByListBuilder<CampusLoanTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusLoan>(
      where: where(CampusLoan.t),
      orderBy: orderBy?.call(CampusLoan.t),
      orderByList: orderByList?.call(CampusLoan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLoanTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusLoan>(
      where: where?.call(CampusLoan.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusLoan] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusLoanTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusLoan>(
      where: where(CampusLoan.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
