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
abstract class CampusFeeSchedule
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusFeeSchedule._({
    this.id,
    required this.programmeId,
    required this.academicYearId,
    required this.currency,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusFeeSchedule({
    _is.UuidValue? id,
    required _is.UuidValue programmeId,
    required _is.UuidValue academicYearId,
    required String currency,
    DateTime? createdAt,
  }) = _CampusFeeScheduleImpl;

  factory CampusFeeSchedule.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusFeeSchedule(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      programmeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeId'],
      ),
      academicYearId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['academicYearId'],
      ),
      currency: jsonSerialization['currency'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusFeeScheduleTable();

  static const db = CampusFeeScheduleRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue programmeId;

  _is.UuidValue academicYearId;

  String currency;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusFeeSchedule]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusFeeSchedule copyWith({
    _is.UuidValue? id,
    _is.UuidValue? programmeId,
    _is.UuidValue? academicYearId,
    String? currency,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusFeeSchedule',
      if (id != null) 'id': id?.toJson(),
      'programmeId': programmeId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusFeeSchedule',
      if (id != null) 'id': id?.toJson(),
      'programmeId': programmeId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusFeeScheduleInclude include() {
    return CampusFeeScheduleInclude._();
  }

  static CampusFeeScheduleIncludeList includeList({
    _is.WhereExpressionBuilder<CampusFeeScheduleTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFeeScheduleTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeScheduleTable>? orderByList,
    CampusFeeScheduleInclude? include,
  }) {
    return CampusFeeScheduleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFeeSchedule.t),
      orderByList: orderByList?.call(CampusFeeSchedule.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusFeeScheduleImpl extends CampusFeeSchedule {
  _CampusFeeScheduleImpl({
    _is.UuidValue? id,
    required _is.UuidValue programmeId,
    required _is.UuidValue academicYearId,
    required String currency,
    DateTime? createdAt,
  }) : super._(
         id: id,
         programmeId: programmeId,
         academicYearId: academicYearId,
         currency: currency,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusFeeSchedule]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusFeeSchedule copyWith({
    Object? id = _Undefined,
    _is.UuidValue? programmeId,
    _is.UuidValue? academicYearId,
    String? currency,
    DateTime? createdAt,
  }) {
    return CampusFeeSchedule(
      id: id is _is.UuidValue? ? id : this.id,
      programmeId: programmeId ?? this.programmeId,
      academicYearId: academicYearId ?? this.academicYearId,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusFeeScheduleUpdateTable
    extends _is.UpdateTable<CampusFeeScheduleTable> {
  CampusFeeScheduleUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> programmeId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.programmeId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> academicYearId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.academicYearId,
    value,
  );

  _is.ColumnValue<String, String> currency(String value) => _is.ColumnValue(
    table.currency,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusFeeScheduleTable extends _is.Table<_is.UuidValue?> {
  CampusFeeScheduleTable({super.tableRelation})
    : super(tableName: 'campus_fee_schedules') {
    updateTable = CampusFeeScheduleUpdateTable(this);
    programmeId = _is.ColumnUuid(
      'programmeId',
      this,
    );
    academicYearId = _is.ColumnUuid(
      'academicYearId',
      this,
    );
    currency = _is.ColumnString(
      'currency',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusFeeScheduleUpdateTable updateTable;

  late final _is.ColumnUuid programmeId;

  late final _is.ColumnUuid academicYearId;

  late final _is.ColumnString currency;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    programmeId,
    academicYearId,
    currency,
    createdAt,
  ];
}

class CampusFeeScheduleInclude extends _is.IncludeObject {
  CampusFeeScheduleInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFeeSchedule.t;
}

class CampusFeeScheduleIncludeList extends _is.IncludeList {
  CampusFeeScheduleIncludeList._({
    _is.WhereExpressionBuilder<CampusFeeScheduleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusFeeSchedule.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFeeSchedule.t;
}

class CampusFeeScheduleRepository {
  const CampusFeeScheduleRepository._();

  /// Returns a list of [CampusFeeSchedule]s matching the given query parameters.
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
  Future<List<CampusFeeSchedule>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFeeScheduleTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFeeScheduleTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeScheduleTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusFeeSchedule>(
      where: where?.call(CampusFeeSchedule.t),
      orderBy: orderBy?.call(CampusFeeSchedule.t),
      orderByList: orderByList?.call(CampusFeeSchedule.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusFeeSchedule] matching the given query parameters.
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
  Future<CampusFeeSchedule?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFeeScheduleTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusFeeScheduleTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeScheduleTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusFeeSchedule>(
      where: where?.call(CampusFeeSchedule.t),
      orderBy: orderBy?.call(CampusFeeSchedule.t),
      orderByList: orderByList?.call(CampusFeeSchedule.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusFeeSchedule] by its [id] or null if no such row exists.
  Future<CampusFeeSchedule?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusFeeSchedule>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusFeeSchedule]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusFeeSchedule]s will have their `id` fields set.
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
  Future<List<CampusFeeSchedule>> insert(
    _is.DatabaseSession session,
    List<CampusFeeSchedule> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusFeeSchedule>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusFeeSchedule] and returns the inserted row.
  ///
  /// The returned [CampusFeeSchedule] will have its `id` field set.
  Future<CampusFeeSchedule> insertRow(
    _is.DatabaseSession session,
    CampusFeeSchedule row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusFeeSchedule>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusFeeSchedule]s in the list and returns the resulting rows.
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
  /// The returned [CampusFeeSchedule]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFeeSchedule>> upsert(
    _is.DatabaseSession session,
    List<CampusFeeSchedule> rows, {
    required _is.ColumnSelections<CampusFeeScheduleTable> conflictColumns,
    _is.ColumnSelections<CampusFeeScheduleTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFeeScheduleTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusFeeSchedule>(
      rows,
      conflictColumns: conflictColumns(CampusFeeSchedule.t),
      updateColumns: updateColumns?.call(CampusFeeSchedule.t),
      updateWhere: updateWhere?.call(CampusFeeSchedule.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusFeeSchedule] and returns the resulting row.
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
  /// The returned [CampusFeeSchedule] will have its `id` field set.
  Future<CampusFeeSchedule?> upsertRow(
    _is.DatabaseSession session,
    CampusFeeSchedule row, {
    required _is.ColumnSelections<CampusFeeScheduleTable> conflictColumns,
    _is.ColumnSelections<CampusFeeScheduleTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFeeScheduleTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusFeeSchedule>(
      row,
      conflictColumns: conflictColumns(CampusFeeSchedule.t),
      updateColumns: updateColumns?.call(CampusFeeSchedule.t),
      updateWhere: updateWhere?.call(CampusFeeSchedule.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFeeSchedule]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFeeSchedule>> update(
    _is.DatabaseSession session,
    List<CampusFeeSchedule> rows, {
    _is.ColumnSelections<CampusFeeScheduleTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusFeeSchedule>(
      rows,
      columns: columns?.call(CampusFeeSchedule.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusFeeSchedule]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusFeeSchedule> updateRow(
    _is.DatabaseSession session,
    CampusFeeSchedule row, {
    _is.ColumnSelections<CampusFeeScheduleTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusFeeSchedule>(
      row,
      columns: columns?.call(CampusFeeSchedule.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusFeeSchedule] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusFeeSchedule?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusFeeScheduleUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusFeeSchedule>(
      id,
      columnValues: columnValues(CampusFeeSchedule.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFeeSchedule]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFeeSchedule>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusFeeScheduleUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusFeeScheduleTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFeeScheduleTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeScheduleTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusFeeSchedule>(
      columnValues: columnValues(CampusFeeSchedule.t.updateTable),
      where: where(CampusFeeSchedule.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFeeSchedule.t),
      orderByList: orderByList?.call(CampusFeeSchedule.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusFeeSchedule]s in the list and returns the deleted rows.
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
  Future<List<CampusFeeSchedule>> delete(
    _is.DatabaseSession session,
    List<CampusFeeSchedule> rows, {
    _is.OrderByBuilder<CampusFeeScheduleTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeScheduleTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusFeeSchedule>(
      rows,
      orderBy: orderBy?.call(CampusFeeSchedule.t),
      orderByList: orderByList?.call(CampusFeeSchedule.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusFeeSchedule].
  Future<CampusFeeSchedule> deleteRow(
    _is.DatabaseSession session,
    CampusFeeSchedule row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusFeeSchedule>(
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
  Future<List<CampusFeeSchedule>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFeeScheduleTable> where,
    _is.OrderByBuilder<CampusFeeScheduleTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeScheduleTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusFeeSchedule>(
      where: where(CampusFeeSchedule.t),
      orderBy: orderBy?.call(CampusFeeSchedule.t),
      orderByList: orderByList?.call(CampusFeeSchedule.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFeeScheduleTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusFeeSchedule>(
      where: where?.call(CampusFeeSchedule.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusFeeSchedule] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFeeScheduleTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusFeeSchedule>(
      where: where(CampusFeeSchedule.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
