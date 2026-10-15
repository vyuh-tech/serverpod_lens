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

/// Fictional university fixture: housing.
abstract class CampusHousingAllocation
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusHousingAllocation._({
    this.id,
    required this.housingApplicationId,
    required this.bedId,
    required this.startsAt,
    required this.endsAt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingAllocation({
    _is.UuidValue? id,
    required _is.UuidValue housingApplicationId,
    required _is.UuidValue bedId,
    required DateTime startsAt,
    required DateTime endsAt,
    required String status,
    DateTime? createdAt,
  }) = _CampusHousingAllocationImpl;

  factory CampusHousingAllocation.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusHousingAllocation(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      housingApplicationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['housingApplicationId'],
      ),
      bedId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['bedId']),
      startsAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['startsAt'],
      ),
      endsAt: _is.DateTimeJsonExtension.fromJson(jsonSerialization['endsAt']),
      status: jsonSerialization['status'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusHousingAllocationTable();

  static const db = CampusHousingAllocationRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue housingApplicationId;

  _is.UuidValue bedId;

  DateTime startsAt;

  DateTime endsAt;

  String status;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusHousingAllocation]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusHousingAllocation copyWith({
    _is.UuidValue? id,
    _is.UuidValue? housingApplicationId,
    _is.UuidValue? bedId,
    DateTime? startsAt,
    DateTime? endsAt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingAllocation',
      if (id != null) 'id': id?.toJson(),
      'housingApplicationId': housingApplicationId.toJson(),
      'bedId': bedId.toJson(),
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingAllocation',
      if (id != null) 'id': id?.toJson(),
      'housingApplicationId': housingApplicationId.toJson(),
      'bedId': bedId.toJson(),
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusHousingAllocationInclude include() {
    return CampusHousingAllocationInclude._();
  }

  static CampusHousingAllocationIncludeList includeList({
    _is.WhereExpressionBuilder<CampusHousingAllocationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingAllocationTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingAllocationTable>? orderByList,
    CampusHousingAllocationInclude? include,
  }) {
    return CampusHousingAllocationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingAllocation.t),
      orderByList: orderByList?.call(CampusHousingAllocation.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingAllocationImpl extends CampusHousingAllocation {
  _CampusHousingAllocationImpl({
    _is.UuidValue? id,
    required _is.UuidValue housingApplicationId,
    required _is.UuidValue bedId,
    required DateTime startsAt,
    required DateTime endsAt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         housingApplicationId: housingApplicationId,
         bedId: bedId,
         startsAt: startsAt,
         endsAt: endsAt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingAllocation]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusHousingAllocation copyWith({
    Object? id = _Undefined,
    _is.UuidValue? housingApplicationId,
    _is.UuidValue? bedId,
    DateTime? startsAt,
    DateTime? endsAt,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusHousingAllocation(
      id: id is _is.UuidValue? ? id : this.id,
      housingApplicationId: housingApplicationId ?? this.housingApplicationId,
      bedId: bedId ?? this.bedId,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt ?? this.endsAt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusHousingAllocationUpdateTable
    extends _is.UpdateTable<CampusHousingAllocationTable> {
  CampusHousingAllocationUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> housingApplicationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.housingApplicationId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> bedId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.bedId,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> startsAt(DateTime value) =>
      _is.ColumnValue(
        table.startsAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> endsAt(DateTime value) => _is.ColumnValue(
    table.endsAt,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusHousingAllocationTable extends _is.Table<_is.UuidValue?> {
  CampusHousingAllocationTable({super.tableRelation})
    : super(tableName: 'campus_housing_allocations') {
    updateTable = CampusHousingAllocationUpdateTable(this);
    housingApplicationId = _is.ColumnUuid(
      'housingApplicationId',
      this,
    );
    bedId = _is.ColumnUuid(
      'bedId',
      this,
    );
    startsAt = _is.ColumnDateTime(
      'startsAt',
      this,
    );
    endsAt = _is.ColumnDateTime(
      'endsAt',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusHousingAllocationUpdateTable updateTable;

  late final _is.ColumnUuid housingApplicationId;

  late final _is.ColumnUuid bedId;

  late final _is.ColumnDateTime startsAt;

  late final _is.ColumnDateTime endsAt;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    housingApplicationId,
    bedId,
    startsAt,
    endsAt,
    status,
    createdAt,
  ];
}

class CampusHousingAllocationInclude extends _is.IncludeObject {
  CampusHousingAllocationInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingAllocation.t;
}

class CampusHousingAllocationIncludeList extends _is.IncludeList {
  CampusHousingAllocationIncludeList._({
    _is.WhereExpressionBuilder<CampusHousingAllocationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusHousingAllocation.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingAllocation.t;
}

class CampusHousingAllocationRepository {
  const CampusHousingAllocationRepository._();

  /// Returns a list of [CampusHousingAllocation]s matching the given query parameters.
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
  Future<List<CampusHousingAllocation>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingAllocationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingAllocationTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingAllocationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusHousingAllocation>(
      where: where?.call(CampusHousingAllocation.t),
      orderBy: orderBy?.call(CampusHousingAllocation.t),
      orderByList: orderByList?.call(CampusHousingAllocation.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusHousingAllocation] matching the given query parameters.
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
  Future<CampusHousingAllocation?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingAllocationTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusHousingAllocationTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingAllocationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusHousingAllocation>(
      where: where?.call(CampusHousingAllocation.t),
      orderBy: orderBy?.call(CampusHousingAllocation.t),
      orderByList: orderByList?.call(CampusHousingAllocation.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusHousingAllocation] by its [id] or null if no such row exists.
  Future<CampusHousingAllocation?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusHousingAllocation>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusHousingAllocation]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusHousingAllocation]s will have their `id` fields set.
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
  Future<List<CampusHousingAllocation>> insert(
    _is.DatabaseSession session,
    List<CampusHousingAllocation> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusHousingAllocation>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusHousingAllocation] and returns the inserted row.
  ///
  /// The returned [CampusHousingAllocation] will have its `id` field set.
  Future<CampusHousingAllocation> insertRow(
    _is.DatabaseSession session,
    CampusHousingAllocation row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusHousingAllocation>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusHousingAllocation]s in the list and returns the resulting rows.
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
  /// The returned [CampusHousingAllocation]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingAllocation>> upsert(
    _is.DatabaseSession session,
    List<CampusHousingAllocation> rows, {
    required _is.ColumnSelections<CampusHousingAllocationTable> conflictColumns,
    _is.ColumnSelections<CampusHousingAllocationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingAllocationTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusHousingAllocation>(
      rows,
      conflictColumns: conflictColumns(CampusHousingAllocation.t),
      updateColumns: updateColumns?.call(CampusHousingAllocation.t),
      updateWhere: updateWhere?.call(CampusHousingAllocation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusHousingAllocation] and returns the resulting row.
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
  /// The returned [CampusHousingAllocation] will have its `id` field set.
  Future<CampusHousingAllocation?> upsertRow(
    _is.DatabaseSession session,
    CampusHousingAllocation row, {
    required _is.ColumnSelections<CampusHousingAllocationTable> conflictColumns,
    _is.ColumnSelections<CampusHousingAllocationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingAllocationTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusHousingAllocation>(
      row,
      conflictColumns: conflictColumns(CampusHousingAllocation.t),
      updateColumns: updateColumns?.call(CampusHousingAllocation.t),
      updateWhere: updateWhere?.call(CampusHousingAllocation.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingAllocation]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingAllocation>> update(
    _is.DatabaseSession session,
    List<CampusHousingAllocation> rows, {
    _is.ColumnSelections<CampusHousingAllocationTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusHousingAllocation>(
      rows,
      columns: columns?.call(CampusHousingAllocation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusHousingAllocation]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusHousingAllocation> updateRow(
    _is.DatabaseSession session,
    CampusHousingAllocation row, {
    _is.ColumnSelections<CampusHousingAllocationTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusHousingAllocation>(
      row,
      columns: columns?.call(CampusHousingAllocation.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusHousingAllocation] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusHousingAllocation?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusHousingAllocationUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusHousingAllocation>(
      id,
      columnValues: columnValues(CampusHousingAllocation.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingAllocation]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingAllocation>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusHousingAllocationUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusHousingAllocationTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingAllocationTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingAllocationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusHousingAllocation>(
      columnValues: columnValues(CampusHousingAllocation.t.updateTable),
      where: where(CampusHousingAllocation.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingAllocation.t),
      orderByList: orderByList?.call(CampusHousingAllocation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusHousingAllocation]s in the list and returns the deleted rows.
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
  Future<List<CampusHousingAllocation>> delete(
    _is.DatabaseSession session,
    List<CampusHousingAllocation> rows, {
    _is.OrderByBuilder<CampusHousingAllocationTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingAllocationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusHousingAllocation>(
      rows,
      orderBy: orderBy?.call(CampusHousingAllocation.t),
      orderByList: orderByList?.call(CampusHousingAllocation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusHousingAllocation].
  Future<CampusHousingAllocation> deleteRow(
    _is.DatabaseSession session,
    CampusHousingAllocation row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusHousingAllocation>(
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
  Future<List<CampusHousingAllocation>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingAllocationTable> where,
    _is.OrderByBuilder<CampusHousingAllocationTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingAllocationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusHousingAllocation>(
      where: where(CampusHousingAllocation.t),
      orderBy: orderBy?.call(CampusHousingAllocation.t),
      orderByList: orderByList?.call(CampusHousingAllocation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingAllocationTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusHousingAllocation>(
      where: where?.call(CampusHousingAllocation.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusHousingAllocation] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingAllocationTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusHousingAllocation>(
      where: where(CampusHousingAllocation.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
