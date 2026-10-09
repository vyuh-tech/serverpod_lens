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

abstract class ElogPdAllocationLines
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPdAllocationLines._({
    this.id,
    required this.allocationId,
    required this.assemblyId,
    required this.ordinal,
    required this.status,
    this.returnedOperationId,
  });

  factory ElogPdAllocationLines({
    _is.UuidValue? id,
    required _is.UuidValue allocationId,
    required _is.UuidValue assemblyId,
    required int ordinal,
    required String status,
    _is.UuidValue? returnedOperationId,
  }) = _ElogPdAllocationLinesImpl;

  factory ElogPdAllocationLines.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPdAllocationLines(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      allocationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['allocationId'],
      ),
      assemblyId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['assemblyId'],
      ),
      ordinal: jsonSerialization['ordinal'] as int,
      status: jsonSerialization['status'] as String,
      returnedOperationId: jsonSerialization['returnedOperationId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['returnedOperationId'],
            ),
    );
  }

  static final t = ElogPdAllocationLinesTable();

  static const db = ElogPdAllocationLinesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue allocationId;

  _is.UuidValue assemblyId;

  int ordinal;

  String status;

  _is.UuidValue? returnedOperationId;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPdAllocationLines]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPdAllocationLines copyWith({
    _is.UuidValue? id,
    _is.UuidValue? allocationId,
    _is.UuidValue? assemblyId,
    int? ordinal,
    String? status,
    _is.UuidValue? returnedOperationId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdAllocationLines',
      if (id != null) 'id': id?.toJson(),
      'allocationId': allocationId.toJson(),
      'assemblyId': assemblyId.toJson(),
      'ordinal': ordinal,
      'status': status,
      if (returnedOperationId != null)
        'returnedOperationId': returnedOperationId?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdAllocationLines',
      if (id != null) 'id': id?.toJson(),
      'allocationId': allocationId.toJson(),
      'assemblyId': assemblyId.toJson(),
      'ordinal': ordinal,
      'status': status,
      if (returnedOperationId != null)
        'returnedOperationId': returnedOperationId?.toJson(),
    };
  }

  static ElogPdAllocationLinesInclude include() {
    return ElogPdAllocationLinesInclude._();
  }

  static ElogPdAllocationLinesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPdAllocationLinesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdAllocationLinesTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAllocationLinesTable>? orderByList,
    ElogPdAllocationLinesInclude? include,
  }) {
    return ElogPdAllocationLinesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdAllocationLines.t),
      orderByList: orderByList?.call(ElogPdAllocationLines.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdAllocationLinesImpl extends ElogPdAllocationLines {
  _ElogPdAllocationLinesImpl({
    _is.UuidValue? id,
    required _is.UuidValue allocationId,
    required _is.UuidValue assemblyId,
    required int ordinal,
    required String status,
    _is.UuidValue? returnedOperationId,
  }) : super._(
         id: id,
         allocationId: allocationId,
         assemblyId: assemblyId,
         ordinal: ordinal,
         status: status,
         returnedOperationId: returnedOperationId,
       );

  /// Returns a shallow copy of this [ElogPdAllocationLines]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPdAllocationLines copyWith({
    Object? id = _Undefined,
    _is.UuidValue? allocationId,
    _is.UuidValue? assemblyId,
    int? ordinal,
    String? status,
    Object? returnedOperationId = _Undefined,
  }) {
    return ElogPdAllocationLines(
      id: id is _is.UuidValue? ? id : this.id,
      allocationId: allocationId ?? this.allocationId,
      assemblyId: assemblyId ?? this.assemblyId,
      ordinal: ordinal ?? this.ordinal,
      status: status ?? this.status,
      returnedOperationId: returnedOperationId is _is.UuidValue?
          ? returnedOperationId
          : this.returnedOperationId,
    );
  }
}

class ElogPdAllocationLinesUpdateTable
    extends _is.UpdateTable<ElogPdAllocationLinesTable> {
  ElogPdAllocationLinesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> allocationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.allocationId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> assemblyId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.assemblyId,
    value,
  );

  _is.ColumnValue<int, int> ordinal(int value) => _is.ColumnValue(
    table.ordinal,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> returnedOperationId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.returnedOperationId,
    value,
  );
}

class ElogPdAllocationLinesTable extends _is.Table<_is.UuidValue?> {
  ElogPdAllocationLinesTable({super.tableRelation})
    : super(tableName: 'elog_pd_allocation_lines') {
    updateTable = ElogPdAllocationLinesUpdateTable(this);
    allocationId = _is.ColumnUuid(
      'allocationId',
      this,
    );
    assemblyId = _is.ColumnUuid(
      'assemblyId',
      this,
    );
    ordinal = _is.ColumnInt(
      'ordinal',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    returnedOperationId = _is.ColumnUuid(
      'returnedOperationId',
      this,
    );
  }

  late final ElogPdAllocationLinesUpdateTable updateTable;

  late final _is.ColumnUuid allocationId;

  late final _is.ColumnUuid assemblyId;

  late final _is.ColumnInt ordinal;

  late final _is.ColumnString status;

  late final _is.ColumnUuid returnedOperationId;

  @override
  List<_is.Column> get columns => [
    id,
    allocationId,
    assemblyId,
    ordinal,
    status,
    returnedOperationId,
  ];
}

class ElogPdAllocationLinesInclude extends _is.IncludeObject {
  ElogPdAllocationLinesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdAllocationLines.t;
}

class ElogPdAllocationLinesIncludeList extends _is.IncludeList {
  ElogPdAllocationLinesIncludeList._({
    _is.WhereExpressionBuilder<ElogPdAllocationLinesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPdAllocationLines.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdAllocationLines.t;
}

class ElogPdAllocationLinesRepository {
  const ElogPdAllocationLinesRepository._();

  /// Returns a list of [ElogPdAllocationLines]s matching the given query parameters.
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
  Future<List<ElogPdAllocationLines>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdAllocationLinesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdAllocationLinesTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAllocationLinesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPdAllocationLines>(
      where: where?.call(ElogPdAllocationLines.t),
      orderBy: orderBy?.call(ElogPdAllocationLines.t),
      orderByList: orderByList?.call(ElogPdAllocationLines.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPdAllocationLines] matching the given query parameters.
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
  Future<ElogPdAllocationLines?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdAllocationLinesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPdAllocationLinesTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAllocationLinesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPdAllocationLines>(
      where: where?.call(ElogPdAllocationLines.t),
      orderBy: orderBy?.call(ElogPdAllocationLines.t),
      orderByList: orderByList?.call(ElogPdAllocationLines.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPdAllocationLines] by its [id] or null if no such row exists.
  Future<ElogPdAllocationLines?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPdAllocationLines>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPdAllocationLines]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPdAllocationLines]s will have their `id` fields set.
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
  Future<List<ElogPdAllocationLines>> insert(
    _is.DatabaseSession session,
    List<ElogPdAllocationLines> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPdAllocationLines>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPdAllocationLines] and returns the inserted row.
  ///
  /// The returned [ElogPdAllocationLines] will have its `id` field set.
  Future<ElogPdAllocationLines> insertRow(
    _is.DatabaseSession session,
    ElogPdAllocationLines row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPdAllocationLines>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPdAllocationLines]s in the list and returns the resulting rows.
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
  /// The returned [ElogPdAllocationLines]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdAllocationLines>> upsert(
    _is.DatabaseSession session,
    List<ElogPdAllocationLines> rows, {
    required _is.ColumnSelections<ElogPdAllocationLinesTable> conflictColumns,
    _is.ColumnSelections<ElogPdAllocationLinesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdAllocationLinesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPdAllocationLines>(
      rows,
      conflictColumns: conflictColumns(ElogPdAllocationLines.t),
      updateColumns: updateColumns?.call(ElogPdAllocationLines.t),
      updateWhere: updateWhere?.call(ElogPdAllocationLines.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPdAllocationLines] and returns the resulting row.
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
  /// The returned [ElogPdAllocationLines] will have its `id` field set.
  Future<ElogPdAllocationLines?> upsertRow(
    _is.DatabaseSession session,
    ElogPdAllocationLines row, {
    required _is.ColumnSelections<ElogPdAllocationLinesTable> conflictColumns,
    _is.ColumnSelections<ElogPdAllocationLinesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdAllocationLinesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPdAllocationLines>(
      row,
      conflictColumns: conflictColumns(ElogPdAllocationLines.t),
      updateColumns: updateColumns?.call(ElogPdAllocationLines.t),
      updateWhere: updateWhere?.call(ElogPdAllocationLines.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdAllocationLines]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdAllocationLines>> update(
    _is.DatabaseSession session,
    List<ElogPdAllocationLines> rows, {
    _is.ColumnSelections<ElogPdAllocationLinesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPdAllocationLines>(
      rows,
      columns: columns?.call(ElogPdAllocationLines.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPdAllocationLines]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPdAllocationLines> updateRow(
    _is.DatabaseSession session,
    ElogPdAllocationLines row, {
    _is.ColumnSelections<ElogPdAllocationLinesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPdAllocationLines>(
      row,
      columns: columns?.call(ElogPdAllocationLines.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPdAllocationLines] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPdAllocationLines?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPdAllocationLinesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPdAllocationLines>(
      id,
      columnValues: columnValues(ElogPdAllocationLines.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdAllocationLines]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdAllocationLines>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPdAllocationLinesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPdAllocationLinesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdAllocationLinesTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAllocationLinesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPdAllocationLines>(
      columnValues: columnValues(ElogPdAllocationLines.t.updateTable),
      where: where(ElogPdAllocationLines.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdAllocationLines.t),
      orderByList: orderByList?.call(ElogPdAllocationLines.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPdAllocationLines]s in the list and returns the deleted rows.
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
  Future<List<ElogPdAllocationLines>> delete(
    _is.DatabaseSession session,
    List<ElogPdAllocationLines> rows, {
    _is.OrderByBuilder<ElogPdAllocationLinesTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAllocationLinesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPdAllocationLines>(
      rows,
      orderBy: orderBy?.call(ElogPdAllocationLines.t),
      orderByList: orderByList?.call(ElogPdAllocationLines.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPdAllocationLines].
  Future<ElogPdAllocationLines> deleteRow(
    _is.DatabaseSession session,
    ElogPdAllocationLines row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPdAllocationLines>(
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
  Future<List<ElogPdAllocationLines>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdAllocationLinesTable> where,
    _is.OrderByBuilder<ElogPdAllocationLinesTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAllocationLinesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPdAllocationLines>(
      where: where(ElogPdAllocationLines.t),
      orderBy: orderBy?.call(ElogPdAllocationLines.t),
      orderByList: orderByList?.call(ElogPdAllocationLines.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdAllocationLinesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPdAllocationLines>(
      where: where?.call(ElogPdAllocationLines.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPdAllocationLines] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdAllocationLinesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPdAllocationLines>(
      where: where(ElogPdAllocationLines.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
