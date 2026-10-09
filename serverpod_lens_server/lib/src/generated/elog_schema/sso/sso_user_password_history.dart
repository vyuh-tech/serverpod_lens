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

abstract class SsoUserPasswordHistory
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoUserPasswordHistory._({
    this.id,
    required this.userId,
    required this.passwordHash,
    required this.changedAt,
    this.changedBy,
    required this.changeSource,
  });

  factory SsoUserPasswordHistory({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String passwordHash,
    required DateTime changedAt,
    _is.UuidValue? changedBy,
    required String changeSource,
  }) = _SsoUserPasswordHistoryImpl;

  factory SsoUserPasswordHistory.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return SsoUserPasswordHistory(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      passwordHash: jsonSerialization['passwordHash'] as String,
      changedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['changedAt'],
      ),
      changedBy: jsonSerialization['changedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['changedBy']),
      changeSource: jsonSerialization['changeSource'] as String,
    );
  }

  static final t = SsoUserPasswordHistoryTable();

  static const db = SsoUserPasswordHistoryRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue userId;

  String passwordHash;

  DateTime changedAt;

  _is.UuidValue? changedBy;

  String changeSource;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoUserPasswordHistory]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoUserPasswordHistory copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    String? passwordHash,
    DateTime? changedAt,
    _is.UuidValue? changedBy,
    String? changeSource,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoUserPasswordHistory',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'passwordHash': passwordHash,
      'changedAt': changedAt.toJson(),
      if (changedBy != null) 'changedBy': changedBy?.toJson(),
      'changeSource': changeSource,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoUserPasswordHistory',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'passwordHash': passwordHash,
      'changedAt': changedAt.toJson(),
      if (changedBy != null) 'changedBy': changedBy?.toJson(),
      'changeSource': changeSource,
    };
  }

  static SsoUserPasswordHistoryInclude include() {
    return SsoUserPasswordHistoryInclude._();
  }

  static SsoUserPasswordHistoryIncludeList includeList({
    _is.WhereExpressionBuilder<SsoUserPasswordHistoryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserPasswordHistoryTable>? orderBy,
    _is.OrderByListBuilder<SsoUserPasswordHistoryTable>? orderByList,
    SsoUserPasswordHistoryInclude? include,
  }) {
    return SsoUserPasswordHistoryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoUserPasswordHistory.t),
      orderByList: orderByList?.call(SsoUserPasswordHistory.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoUserPasswordHistoryImpl extends SsoUserPasswordHistory {
  _SsoUserPasswordHistoryImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String passwordHash,
    required DateTime changedAt,
    _is.UuidValue? changedBy,
    required String changeSource,
  }) : super._(
         id: id,
         userId: userId,
         passwordHash: passwordHash,
         changedAt: changedAt,
         changedBy: changedBy,
         changeSource: changeSource,
       );

  /// Returns a shallow copy of this [SsoUserPasswordHistory]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoUserPasswordHistory copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    String? passwordHash,
    DateTime? changedAt,
    Object? changedBy = _Undefined,
    String? changeSource,
  }) {
    return SsoUserPasswordHistory(
      id: id is _is.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      passwordHash: passwordHash ?? this.passwordHash,
      changedAt: changedAt ?? this.changedAt,
      changedBy: changedBy is _is.UuidValue? ? changedBy : this.changedBy,
      changeSource: changeSource ?? this.changeSource,
    );
  }
}

class SsoUserPasswordHistoryUpdateTable
    extends _is.UpdateTable<SsoUserPasswordHistoryTable> {
  SsoUserPasswordHistoryUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<String, String> passwordHash(String value) => _is.ColumnValue(
    table.passwordHash,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> changedAt(DateTime value) =>
      _is.ColumnValue(
        table.changedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> changedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.changedBy,
    value,
  );

  _is.ColumnValue<String, String> changeSource(String value) => _is.ColumnValue(
    table.changeSource,
    value,
  );
}

class SsoUserPasswordHistoryTable extends _is.Table<_is.UuidValue?> {
  SsoUserPasswordHistoryTable({super.tableRelation})
    : super(tableName: 'sso_user_password_history') {
    updateTable = SsoUserPasswordHistoryUpdateTable(this);
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    passwordHash = _is.ColumnString(
      'passwordHash',
      this,
    );
    changedAt = _is.ColumnDateTime(
      'changedAt',
      this,
    );
    changedBy = _is.ColumnUuid(
      'changedBy',
      this,
    );
    changeSource = _is.ColumnString(
      'changeSource',
      this,
    );
  }

  late final SsoUserPasswordHistoryUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnString passwordHash;

  late final _is.ColumnDateTime changedAt;

  late final _is.ColumnUuid changedBy;

  late final _is.ColumnString changeSource;

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    passwordHash,
    changedAt,
    changedBy,
    changeSource,
  ];
}

class SsoUserPasswordHistoryInclude extends _is.IncludeObject {
  SsoUserPasswordHistoryInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoUserPasswordHistory.t;
}

class SsoUserPasswordHistoryIncludeList extends _is.IncludeList {
  SsoUserPasswordHistoryIncludeList._({
    _is.WhereExpressionBuilder<SsoUserPasswordHistoryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoUserPasswordHistory.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoUserPasswordHistory.t;
}

class SsoUserPasswordHistoryRepository {
  const SsoUserPasswordHistoryRepository._();

  /// Returns a list of [SsoUserPasswordHistory]s matching the given query parameters.
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
  Future<List<SsoUserPasswordHistory>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserPasswordHistoryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserPasswordHistoryTable>? orderBy,
    _is.OrderByListBuilder<SsoUserPasswordHistoryTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoUserPasswordHistory>(
      where: where?.call(SsoUserPasswordHistory.t),
      orderBy: orderBy?.call(SsoUserPasswordHistory.t),
      orderByList: orderByList?.call(SsoUserPasswordHistory.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoUserPasswordHistory] matching the given query parameters.
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
  Future<SsoUserPasswordHistory?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserPasswordHistoryTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoUserPasswordHistoryTable>? orderBy,
    _is.OrderByListBuilder<SsoUserPasswordHistoryTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoUserPasswordHistory>(
      where: where?.call(SsoUserPasswordHistory.t),
      orderBy: orderBy?.call(SsoUserPasswordHistory.t),
      orderByList: orderByList?.call(SsoUserPasswordHistory.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoUserPasswordHistory] by its [id] or null if no such row exists.
  Future<SsoUserPasswordHistory?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoUserPasswordHistory>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoUserPasswordHistory]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoUserPasswordHistory]s will have their `id` fields set.
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
  Future<List<SsoUserPasswordHistory>> insert(
    _is.DatabaseSession session,
    List<SsoUserPasswordHistory> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoUserPasswordHistory>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoUserPasswordHistory] and returns the inserted row.
  ///
  /// The returned [SsoUserPasswordHistory] will have its `id` field set.
  Future<SsoUserPasswordHistory> insertRow(
    _is.DatabaseSession session,
    SsoUserPasswordHistory row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoUserPasswordHistory>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoUserPasswordHistory]s in the list and returns the resulting rows.
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
  /// The returned [SsoUserPasswordHistory]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserPasswordHistory>> upsert(
    _is.DatabaseSession session,
    List<SsoUserPasswordHistory> rows, {
    required _is.ColumnSelections<SsoUserPasswordHistoryTable> conflictColumns,
    _is.ColumnSelections<SsoUserPasswordHistoryTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoUserPasswordHistoryTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoUserPasswordHistory>(
      rows,
      conflictColumns: conflictColumns(SsoUserPasswordHistory.t),
      updateColumns: updateColumns?.call(SsoUserPasswordHistory.t),
      updateWhere: updateWhere?.call(SsoUserPasswordHistory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoUserPasswordHistory] and returns the resulting row.
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
  /// The returned [SsoUserPasswordHistory] will have its `id` field set.
  Future<SsoUserPasswordHistory?> upsertRow(
    _is.DatabaseSession session,
    SsoUserPasswordHistory row, {
    required _is.ColumnSelections<SsoUserPasswordHistoryTable> conflictColumns,
    _is.ColumnSelections<SsoUserPasswordHistoryTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoUserPasswordHistoryTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoUserPasswordHistory>(
      row,
      conflictColumns: conflictColumns(SsoUserPasswordHistory.t),
      updateColumns: updateColumns?.call(SsoUserPasswordHistory.t),
      updateWhere: updateWhere?.call(SsoUserPasswordHistory.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoUserPasswordHistory]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserPasswordHistory>> update(
    _is.DatabaseSession session,
    List<SsoUserPasswordHistory> rows, {
    _is.ColumnSelections<SsoUserPasswordHistoryTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoUserPasswordHistory>(
      rows,
      columns: columns?.call(SsoUserPasswordHistory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoUserPasswordHistory]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoUserPasswordHistory> updateRow(
    _is.DatabaseSession session,
    SsoUserPasswordHistory row, {
    _is.ColumnSelections<SsoUserPasswordHistoryTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoUserPasswordHistory>(
      row,
      columns: columns?.call(SsoUserPasswordHistory.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoUserPasswordHistory] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoUserPasswordHistory?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoUserPasswordHistoryUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoUserPasswordHistory>(
      id,
      columnValues: columnValues(SsoUserPasswordHistory.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoUserPasswordHistory]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserPasswordHistory>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoUserPasswordHistoryUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoUserPasswordHistoryTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserPasswordHistoryTable>? orderBy,
    _is.OrderByListBuilder<SsoUserPasswordHistoryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoUserPasswordHistory>(
      columnValues: columnValues(SsoUserPasswordHistory.t.updateTable),
      where: where(SsoUserPasswordHistory.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoUserPasswordHistory.t),
      orderByList: orderByList?.call(SsoUserPasswordHistory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoUserPasswordHistory]s in the list and returns the deleted rows.
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
  Future<List<SsoUserPasswordHistory>> delete(
    _is.DatabaseSession session,
    List<SsoUserPasswordHistory> rows, {
    _is.OrderByBuilder<SsoUserPasswordHistoryTable>? orderBy,
    _is.OrderByListBuilder<SsoUserPasswordHistoryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoUserPasswordHistory>(
      rows,
      orderBy: orderBy?.call(SsoUserPasswordHistory.t),
      orderByList: orderByList?.call(SsoUserPasswordHistory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoUserPasswordHistory].
  Future<SsoUserPasswordHistory> deleteRow(
    _is.DatabaseSession session,
    SsoUserPasswordHistory row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoUserPasswordHistory>(
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
  Future<List<SsoUserPasswordHistory>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoUserPasswordHistoryTable> where,
    _is.OrderByBuilder<SsoUserPasswordHistoryTable>? orderBy,
    _is.OrderByListBuilder<SsoUserPasswordHistoryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoUserPasswordHistory>(
      where: where(SsoUserPasswordHistory.t),
      orderBy: orderBy?.call(SsoUserPasswordHistory.t),
      orderByList: orderByList?.call(SsoUserPasswordHistory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserPasswordHistoryTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoUserPasswordHistory>(
      where: where?.call(SsoUserPasswordHistory.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoUserPasswordHistory] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoUserPasswordHistoryTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoUserPasswordHistory>(
      where: where(SsoUserPasswordHistory.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
