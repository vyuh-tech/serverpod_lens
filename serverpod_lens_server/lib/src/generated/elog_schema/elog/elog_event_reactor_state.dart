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

abstract class ElogEventReactorState
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogEventReactorState._({
    this.id,
    required this.pk,
    required this.lastProcessedEventNumber,
    this.lastProcessedAt,
    required this.totalEventsProcessed,
    required this.totalErrors,
    required this.updatedAt,
  });

  factory ElogEventReactorState({
    _is.UuidValue? id,
    required bool pk,
    required BigInt lastProcessedEventNumber,
    DateTime? lastProcessedAt,
    required BigInt totalEventsProcessed,
    required BigInt totalErrors,
    required DateTime updatedAt,
  }) = _ElogEventReactorStateImpl;

  factory ElogEventReactorState.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogEventReactorState(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      pk: _is.BoolJsonExtension.fromJson(jsonSerialization['pk']),
      lastProcessedEventNumber: _is.BigIntJsonExtension.fromJson(
        jsonSerialization['lastProcessedEventNumber'],
      ),
      lastProcessedAt: jsonSerialization['lastProcessedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastProcessedAt'],
            ),
      totalEventsProcessed: _is.BigIntJsonExtension.fromJson(
        jsonSerialization['totalEventsProcessed'],
      ),
      totalErrors: _is.BigIntJsonExtension.fromJson(
        jsonSerialization['totalErrors'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = ElogEventReactorStateTable();

  static const db = ElogEventReactorStateRepository._();

  @override
  _is.UuidValue? id;

  bool pk;

  BigInt lastProcessedEventNumber;

  DateTime? lastProcessedAt;

  BigInt totalEventsProcessed;

  BigInt totalErrors;

  DateTime updatedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogEventReactorState]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogEventReactorState copyWith({
    _is.UuidValue? id,
    bool? pk,
    BigInt? lastProcessedEventNumber,
    DateTime? lastProcessedAt,
    BigInt? totalEventsProcessed,
    BigInt? totalErrors,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogEventReactorState',
      if (id != null) 'id': id?.toJson(),
      'pk': pk,
      'lastProcessedEventNumber': lastProcessedEventNumber.toJson(),
      if (lastProcessedAt != null) 'lastProcessedAt': lastProcessedAt?.toJson(),
      'totalEventsProcessed': totalEventsProcessed.toJson(),
      'totalErrors': totalErrors.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogEventReactorState',
      if (id != null) 'id': id?.toJson(),
      'pk': pk,
      'lastProcessedEventNumber': lastProcessedEventNumber.toJson(),
      if (lastProcessedAt != null) 'lastProcessedAt': lastProcessedAt?.toJson(),
      'totalEventsProcessed': totalEventsProcessed.toJson(),
      'totalErrors': totalErrors.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static ElogEventReactorStateInclude include() {
    return ElogEventReactorStateInclude._();
  }

  static ElogEventReactorStateIncludeList includeList({
    _is.WhereExpressionBuilder<ElogEventReactorStateTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEventReactorStateTable>? orderBy,
    _is.OrderByListBuilder<ElogEventReactorStateTable>? orderByList,
    ElogEventReactorStateInclude? include,
  }) {
    return ElogEventReactorStateIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEventReactorState.t),
      orderByList: orderByList?.call(ElogEventReactorState.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogEventReactorStateImpl extends ElogEventReactorState {
  _ElogEventReactorStateImpl({
    _is.UuidValue? id,
    required bool pk,
    required BigInt lastProcessedEventNumber,
    DateTime? lastProcessedAt,
    required BigInt totalEventsProcessed,
    required BigInt totalErrors,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         pk: pk,
         lastProcessedEventNumber: lastProcessedEventNumber,
         lastProcessedAt: lastProcessedAt,
         totalEventsProcessed: totalEventsProcessed,
         totalErrors: totalErrors,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [ElogEventReactorState]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogEventReactorState copyWith({
    Object? id = _Undefined,
    bool? pk,
    BigInt? lastProcessedEventNumber,
    Object? lastProcessedAt = _Undefined,
    BigInt? totalEventsProcessed,
    BigInt? totalErrors,
    DateTime? updatedAt,
  }) {
    return ElogEventReactorState(
      id: id is _is.UuidValue? ? id : this.id,
      pk: pk ?? this.pk,
      lastProcessedEventNumber:
          lastProcessedEventNumber ?? this.lastProcessedEventNumber,
      lastProcessedAt: lastProcessedAt is DateTime?
          ? lastProcessedAt
          : this.lastProcessedAt,
      totalEventsProcessed: totalEventsProcessed ?? this.totalEventsProcessed,
      totalErrors: totalErrors ?? this.totalErrors,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class ElogEventReactorStateUpdateTable
    extends _is.UpdateTable<ElogEventReactorStateTable> {
  ElogEventReactorStateUpdateTable(super.table);

  _is.ColumnValue<bool, bool> pk(bool value) => _is.ColumnValue(
    table.pk,
    value,
  );

  _is.ColumnValue<BigInt, BigInt> lastProcessedEventNumber(BigInt value) =>
      _is.ColumnValue(
        table.lastProcessedEventNumber,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> lastProcessedAt(DateTime? value) =>
      _is.ColumnValue(
        table.lastProcessedAt,
        value,
      );

  _is.ColumnValue<BigInt, BigInt> totalEventsProcessed(BigInt value) =>
      _is.ColumnValue(
        table.totalEventsProcessed,
        value,
      );

  _is.ColumnValue<BigInt, BigInt> totalErrors(BigInt value) => _is.ColumnValue(
    table.totalErrors,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );
}

class ElogEventReactorStateTable extends _is.Table<_is.UuidValue?> {
  ElogEventReactorStateTable({super.tableRelation})
    : super(tableName: 'elog_event_reactor_state') {
    updateTable = ElogEventReactorStateUpdateTable(this);
    pk = _is.ColumnBool(
      'pk',
      this,
    );
    lastProcessedEventNumber = _is.ColumnBigInt(
      'lastProcessedEventNumber',
      this,
    );
    lastProcessedAt = _is.ColumnDateTime(
      'lastProcessedAt',
      this,
    );
    totalEventsProcessed = _is.ColumnBigInt(
      'totalEventsProcessed',
      this,
    );
    totalErrors = _is.ColumnBigInt(
      'totalErrors',
      this,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final ElogEventReactorStateUpdateTable updateTable;

  late final _is.ColumnBool pk;

  late final _is.ColumnBigInt lastProcessedEventNumber;

  late final _is.ColumnDateTime lastProcessedAt;

  late final _is.ColumnBigInt totalEventsProcessed;

  late final _is.ColumnBigInt totalErrors;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    pk,
    lastProcessedEventNumber,
    lastProcessedAt,
    totalEventsProcessed,
    totalErrors,
    updatedAt,
  ];
}

class ElogEventReactorStateInclude extends _is.IncludeObject {
  ElogEventReactorStateInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEventReactorState.t;
}

class ElogEventReactorStateIncludeList extends _is.IncludeList {
  ElogEventReactorStateIncludeList._({
    _is.WhereExpressionBuilder<ElogEventReactorStateTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogEventReactorState.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEventReactorState.t;
}

class ElogEventReactorStateRepository {
  const ElogEventReactorStateRepository._();

  /// Returns a list of [ElogEventReactorState]s matching the given query parameters.
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
  Future<List<ElogEventReactorState>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEventReactorStateTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEventReactorStateTable>? orderBy,
    _is.OrderByListBuilder<ElogEventReactorStateTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogEventReactorState>(
      where: where?.call(ElogEventReactorState.t),
      orderBy: orderBy?.call(ElogEventReactorState.t),
      orderByList: orderByList?.call(ElogEventReactorState.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogEventReactorState] matching the given query parameters.
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
  Future<ElogEventReactorState?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEventReactorStateTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogEventReactorStateTable>? orderBy,
    _is.OrderByListBuilder<ElogEventReactorStateTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogEventReactorState>(
      where: where?.call(ElogEventReactorState.t),
      orderBy: orderBy?.call(ElogEventReactorState.t),
      orderByList: orderByList?.call(ElogEventReactorState.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogEventReactorState] by its [id] or null if no such row exists.
  Future<ElogEventReactorState?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogEventReactorState>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogEventReactorState]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogEventReactorState]s will have their `id` fields set.
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
  Future<List<ElogEventReactorState>> insert(
    _is.DatabaseSession session,
    List<ElogEventReactorState> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogEventReactorState>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogEventReactorState] and returns the inserted row.
  ///
  /// The returned [ElogEventReactorState] will have its `id` field set.
  Future<ElogEventReactorState> insertRow(
    _is.DatabaseSession session,
    ElogEventReactorState row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogEventReactorState>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogEventReactorState]s in the list and returns the resulting rows.
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
  /// The returned [ElogEventReactorState]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEventReactorState>> upsert(
    _is.DatabaseSession session,
    List<ElogEventReactorState> rows, {
    required _is.ColumnSelections<ElogEventReactorStateTable> conflictColumns,
    _is.ColumnSelections<ElogEventReactorStateTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEventReactorStateTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogEventReactorState>(
      rows,
      conflictColumns: conflictColumns(ElogEventReactorState.t),
      updateColumns: updateColumns?.call(ElogEventReactorState.t),
      updateWhere: updateWhere?.call(ElogEventReactorState.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogEventReactorState] and returns the resulting row.
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
  /// The returned [ElogEventReactorState] will have its `id` field set.
  Future<ElogEventReactorState?> upsertRow(
    _is.DatabaseSession session,
    ElogEventReactorState row, {
    required _is.ColumnSelections<ElogEventReactorStateTable> conflictColumns,
    _is.ColumnSelections<ElogEventReactorStateTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEventReactorStateTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogEventReactorState>(
      row,
      conflictColumns: conflictColumns(ElogEventReactorState.t),
      updateColumns: updateColumns?.call(ElogEventReactorState.t),
      updateWhere: updateWhere?.call(ElogEventReactorState.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEventReactorState]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEventReactorState>> update(
    _is.DatabaseSession session,
    List<ElogEventReactorState> rows, {
    _is.ColumnSelections<ElogEventReactorStateTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogEventReactorState>(
      rows,
      columns: columns?.call(ElogEventReactorState.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogEventReactorState]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogEventReactorState> updateRow(
    _is.DatabaseSession session,
    ElogEventReactorState row, {
    _is.ColumnSelections<ElogEventReactorStateTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogEventReactorState>(
      row,
      columns: columns?.call(ElogEventReactorState.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogEventReactorState] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogEventReactorState?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogEventReactorStateUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogEventReactorState>(
      id,
      columnValues: columnValues(ElogEventReactorState.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEventReactorState]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEventReactorState>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogEventReactorStateUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogEventReactorStateTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEventReactorStateTable>? orderBy,
    _is.OrderByListBuilder<ElogEventReactorStateTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogEventReactorState>(
      columnValues: columnValues(ElogEventReactorState.t.updateTable),
      where: where(ElogEventReactorState.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEventReactorState.t),
      orderByList: orderByList?.call(ElogEventReactorState.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogEventReactorState]s in the list and returns the deleted rows.
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
  Future<List<ElogEventReactorState>> delete(
    _is.DatabaseSession session,
    List<ElogEventReactorState> rows, {
    _is.OrderByBuilder<ElogEventReactorStateTable>? orderBy,
    _is.OrderByListBuilder<ElogEventReactorStateTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogEventReactorState>(
      rows,
      orderBy: orderBy?.call(ElogEventReactorState.t),
      orderByList: orderByList?.call(ElogEventReactorState.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogEventReactorState].
  Future<ElogEventReactorState> deleteRow(
    _is.DatabaseSession session,
    ElogEventReactorState row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogEventReactorState>(
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
  Future<List<ElogEventReactorState>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEventReactorStateTable> where,
    _is.OrderByBuilder<ElogEventReactorStateTable>? orderBy,
    _is.OrderByListBuilder<ElogEventReactorStateTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogEventReactorState>(
      where: where(ElogEventReactorState.t),
      orderBy: orderBy?.call(ElogEventReactorState.t),
      orderByList: orderByList?.call(ElogEventReactorState.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEventReactorStateTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogEventReactorState>(
      where: where?.call(ElogEventReactorState.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogEventReactorState] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEventReactorStateTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogEventReactorState>(
      where: where(ElogEventReactorState.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
