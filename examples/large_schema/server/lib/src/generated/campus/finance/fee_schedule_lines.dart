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
abstract class CampusFeeScheduleLine
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusFeeScheduleLine._({
    this.id,
    required this.scheduleId,
    required this.feeTypeId,
    required this.amountMinor,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusFeeScheduleLine({
    _is.UuidValue? id,
    required _is.UuidValue scheduleId,
    required _is.UuidValue feeTypeId,
    required int amountMinor,
    DateTime? createdAt,
  }) = _CampusFeeScheduleLineImpl;

  factory CampusFeeScheduleLine.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusFeeScheduleLine(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      scheduleId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['scheduleId'],
      ),
      feeTypeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['feeTypeId'],
      ),
      amountMinor: jsonSerialization['amountMinor'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusFeeScheduleLineTable();

  static const db = CampusFeeScheduleLineRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue scheduleId;

  _is.UuidValue feeTypeId;

  int amountMinor;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusFeeScheduleLine]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusFeeScheduleLine copyWith({
    _is.UuidValue? id,
    _is.UuidValue? scheduleId,
    _is.UuidValue? feeTypeId,
    int? amountMinor,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusFeeScheduleLine',
      if (id != null) 'id': id?.toJson(),
      'scheduleId': scheduleId.toJson(),
      'feeTypeId': feeTypeId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusFeeScheduleLine',
      if (id != null) 'id': id?.toJson(),
      'scheduleId': scheduleId.toJson(),
      'feeTypeId': feeTypeId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusFeeScheduleLineInclude include() {
    return CampusFeeScheduleLineInclude._();
  }

  static CampusFeeScheduleLineIncludeList includeList({
    _is.WhereExpressionBuilder<CampusFeeScheduleLineTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFeeScheduleLineTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeScheduleLineTable>? orderByList,
    CampusFeeScheduleLineInclude? include,
  }) {
    return CampusFeeScheduleLineIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFeeScheduleLine.t),
      orderByList: orderByList?.call(CampusFeeScheduleLine.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusFeeScheduleLineImpl extends CampusFeeScheduleLine {
  _CampusFeeScheduleLineImpl({
    _is.UuidValue? id,
    required _is.UuidValue scheduleId,
    required _is.UuidValue feeTypeId,
    required int amountMinor,
    DateTime? createdAt,
  }) : super._(
         id: id,
         scheduleId: scheduleId,
         feeTypeId: feeTypeId,
         amountMinor: amountMinor,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusFeeScheduleLine]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusFeeScheduleLine copyWith({
    Object? id = _Undefined,
    _is.UuidValue? scheduleId,
    _is.UuidValue? feeTypeId,
    int? amountMinor,
    DateTime? createdAt,
  }) {
    return CampusFeeScheduleLine(
      id: id is _is.UuidValue? ? id : this.id,
      scheduleId: scheduleId ?? this.scheduleId,
      feeTypeId: feeTypeId ?? this.feeTypeId,
      amountMinor: amountMinor ?? this.amountMinor,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusFeeScheduleLineUpdateTable
    extends _is.UpdateTable<CampusFeeScheduleLineTable> {
  CampusFeeScheduleLineUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> scheduleId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.scheduleId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> feeTypeId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.feeTypeId,
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

class CampusFeeScheduleLineTable extends _is.Table<_is.UuidValue?> {
  CampusFeeScheduleLineTable({super.tableRelation})
    : super(tableName: 'campus_fee_schedule_lines') {
    updateTable = CampusFeeScheduleLineUpdateTable(this);
    scheduleId = _is.ColumnUuid(
      'scheduleId',
      this,
    );
    feeTypeId = _is.ColumnUuid(
      'feeTypeId',
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

  late final CampusFeeScheduleLineUpdateTable updateTable;

  late final _is.ColumnUuid scheduleId;

  late final _is.ColumnUuid feeTypeId;

  late final _is.ColumnInt amountMinor;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    scheduleId,
    feeTypeId,
    amountMinor,
    createdAt,
  ];
}

class CampusFeeScheduleLineInclude extends _is.IncludeObject {
  CampusFeeScheduleLineInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFeeScheduleLine.t;
}

class CampusFeeScheduleLineIncludeList extends _is.IncludeList {
  CampusFeeScheduleLineIncludeList._({
    _is.WhereExpressionBuilder<CampusFeeScheduleLineTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusFeeScheduleLine.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFeeScheduleLine.t;
}

class CampusFeeScheduleLineRepository {
  const CampusFeeScheduleLineRepository._();

  /// Returns a list of [CampusFeeScheduleLine]s matching the given query parameters.
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
  Future<List<CampusFeeScheduleLine>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFeeScheduleLineTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFeeScheduleLineTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeScheduleLineTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusFeeScheduleLine>(
      where: where?.call(CampusFeeScheduleLine.t),
      orderBy: orderBy?.call(CampusFeeScheduleLine.t),
      orderByList: orderByList?.call(CampusFeeScheduleLine.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusFeeScheduleLine] matching the given query parameters.
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
  Future<CampusFeeScheduleLine?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFeeScheduleLineTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusFeeScheduleLineTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeScheduleLineTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusFeeScheduleLine>(
      where: where?.call(CampusFeeScheduleLine.t),
      orderBy: orderBy?.call(CampusFeeScheduleLine.t),
      orderByList: orderByList?.call(CampusFeeScheduleLine.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusFeeScheduleLine] by its [id] or null if no such row exists.
  Future<CampusFeeScheduleLine?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusFeeScheduleLine>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusFeeScheduleLine]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusFeeScheduleLine]s will have their `id` fields set.
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
  Future<List<CampusFeeScheduleLine>> insert(
    _is.DatabaseSession session,
    List<CampusFeeScheduleLine> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusFeeScheduleLine>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusFeeScheduleLine] and returns the inserted row.
  ///
  /// The returned [CampusFeeScheduleLine] will have its `id` field set.
  Future<CampusFeeScheduleLine> insertRow(
    _is.DatabaseSession session,
    CampusFeeScheduleLine row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusFeeScheduleLine>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusFeeScheduleLine]s in the list and returns the resulting rows.
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
  /// The returned [CampusFeeScheduleLine]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFeeScheduleLine>> upsert(
    _is.DatabaseSession session,
    List<CampusFeeScheduleLine> rows, {
    required _is.ColumnSelections<CampusFeeScheduleLineTable> conflictColumns,
    _is.ColumnSelections<CampusFeeScheduleLineTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFeeScheduleLineTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusFeeScheduleLine>(
      rows,
      conflictColumns: conflictColumns(CampusFeeScheduleLine.t),
      updateColumns: updateColumns?.call(CampusFeeScheduleLine.t),
      updateWhere: updateWhere?.call(CampusFeeScheduleLine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusFeeScheduleLine] and returns the resulting row.
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
  /// The returned [CampusFeeScheduleLine] will have its `id` field set.
  Future<CampusFeeScheduleLine?> upsertRow(
    _is.DatabaseSession session,
    CampusFeeScheduleLine row, {
    required _is.ColumnSelections<CampusFeeScheduleLineTable> conflictColumns,
    _is.ColumnSelections<CampusFeeScheduleLineTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFeeScheduleLineTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusFeeScheduleLine>(
      row,
      conflictColumns: conflictColumns(CampusFeeScheduleLine.t),
      updateColumns: updateColumns?.call(CampusFeeScheduleLine.t),
      updateWhere: updateWhere?.call(CampusFeeScheduleLine.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFeeScheduleLine]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFeeScheduleLine>> update(
    _is.DatabaseSession session,
    List<CampusFeeScheduleLine> rows, {
    _is.ColumnSelections<CampusFeeScheduleLineTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusFeeScheduleLine>(
      rows,
      columns: columns?.call(CampusFeeScheduleLine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusFeeScheduleLine]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusFeeScheduleLine> updateRow(
    _is.DatabaseSession session,
    CampusFeeScheduleLine row, {
    _is.ColumnSelections<CampusFeeScheduleLineTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusFeeScheduleLine>(
      row,
      columns: columns?.call(CampusFeeScheduleLine.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusFeeScheduleLine] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusFeeScheduleLine?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusFeeScheduleLineUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusFeeScheduleLine>(
      id,
      columnValues: columnValues(CampusFeeScheduleLine.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFeeScheduleLine]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFeeScheduleLine>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusFeeScheduleLineUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusFeeScheduleLineTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFeeScheduleLineTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeScheduleLineTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusFeeScheduleLine>(
      columnValues: columnValues(CampusFeeScheduleLine.t.updateTable),
      where: where(CampusFeeScheduleLine.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFeeScheduleLine.t),
      orderByList: orderByList?.call(CampusFeeScheduleLine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusFeeScheduleLine]s in the list and returns the deleted rows.
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
  Future<List<CampusFeeScheduleLine>> delete(
    _is.DatabaseSession session,
    List<CampusFeeScheduleLine> rows, {
    _is.OrderByBuilder<CampusFeeScheduleLineTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeScheduleLineTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusFeeScheduleLine>(
      rows,
      orderBy: orderBy?.call(CampusFeeScheduleLine.t),
      orderByList: orderByList?.call(CampusFeeScheduleLine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusFeeScheduleLine].
  Future<CampusFeeScheduleLine> deleteRow(
    _is.DatabaseSession session,
    CampusFeeScheduleLine row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusFeeScheduleLine>(
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
  Future<List<CampusFeeScheduleLine>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFeeScheduleLineTable> where,
    _is.OrderByBuilder<CampusFeeScheduleLineTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeScheduleLineTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusFeeScheduleLine>(
      where: where(CampusFeeScheduleLine.t),
      orderBy: orderBy?.call(CampusFeeScheduleLine.t),
      orderByList: orderByList?.call(CampusFeeScheduleLine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFeeScheduleLineTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusFeeScheduleLine>(
      where: where?.call(CampusFeeScheduleLine.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusFeeScheduleLine] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFeeScheduleLineTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusFeeScheduleLine>(
      where: where(CampusFeeScheduleLine.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
