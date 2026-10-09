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

abstract class ElogPdAllocationCursors
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPdAllocationCursors._({
    this.id,
    required this.punchSetId,
    required this.lastOrdinal,
  });

  factory ElogPdAllocationCursors({
    _is.UuidValue? id,
    required _is.UuidValue punchSetId,
    required int lastOrdinal,
  }) = _ElogPdAllocationCursorsImpl;

  factory ElogPdAllocationCursors.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPdAllocationCursors(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      punchSetId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['punchSetId'],
      ),
      lastOrdinal: jsonSerialization['lastOrdinal'] as int,
    );
  }

  static final t = ElogPdAllocationCursorsTable();

  static const db = ElogPdAllocationCursorsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue punchSetId;

  int lastOrdinal;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPdAllocationCursors]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPdAllocationCursors copyWith({
    _is.UuidValue? id,
    _is.UuidValue? punchSetId,
    int? lastOrdinal,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdAllocationCursors',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'lastOrdinal': lastOrdinal,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdAllocationCursors',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'lastOrdinal': lastOrdinal,
    };
  }

  static ElogPdAllocationCursorsInclude include() {
    return ElogPdAllocationCursorsInclude._();
  }

  static ElogPdAllocationCursorsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPdAllocationCursorsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdAllocationCursorsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAllocationCursorsTable>? orderByList,
    ElogPdAllocationCursorsInclude? include,
  }) {
    return ElogPdAllocationCursorsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdAllocationCursors.t),
      orderByList: orderByList?.call(ElogPdAllocationCursors.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdAllocationCursorsImpl extends ElogPdAllocationCursors {
  _ElogPdAllocationCursorsImpl({
    _is.UuidValue? id,
    required _is.UuidValue punchSetId,
    required int lastOrdinal,
  }) : super._(
         id: id,
         punchSetId: punchSetId,
         lastOrdinal: lastOrdinal,
       );

  /// Returns a shallow copy of this [ElogPdAllocationCursors]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPdAllocationCursors copyWith({
    Object? id = _Undefined,
    _is.UuidValue? punchSetId,
    int? lastOrdinal,
  }) {
    return ElogPdAllocationCursors(
      id: id is _is.UuidValue? ? id : this.id,
      punchSetId: punchSetId ?? this.punchSetId,
      lastOrdinal: lastOrdinal ?? this.lastOrdinal,
    );
  }
}

class ElogPdAllocationCursorsUpdateTable
    extends _is.UpdateTable<ElogPdAllocationCursorsTable> {
  ElogPdAllocationCursorsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> punchSetId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.punchSetId,
    value,
  );

  _is.ColumnValue<int, int> lastOrdinal(int value) => _is.ColumnValue(
    table.lastOrdinal,
    value,
  );
}

class ElogPdAllocationCursorsTable extends _is.Table<_is.UuidValue?> {
  ElogPdAllocationCursorsTable({super.tableRelation})
    : super(tableName: 'elog_pd_allocation_cursors') {
    updateTable = ElogPdAllocationCursorsUpdateTable(this);
    punchSetId = _is.ColumnUuid(
      'punchSetId',
      this,
    );
    lastOrdinal = _is.ColumnInt(
      'lastOrdinal',
      this,
    );
  }

  late final ElogPdAllocationCursorsUpdateTable updateTable;

  late final _is.ColumnUuid punchSetId;

  late final _is.ColumnInt lastOrdinal;

  @override
  List<_is.Column> get columns => [
    id,
    punchSetId,
    lastOrdinal,
  ];
}

class ElogPdAllocationCursorsInclude extends _is.IncludeObject {
  ElogPdAllocationCursorsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdAllocationCursors.t;
}

class ElogPdAllocationCursorsIncludeList extends _is.IncludeList {
  ElogPdAllocationCursorsIncludeList._({
    _is.WhereExpressionBuilder<ElogPdAllocationCursorsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPdAllocationCursors.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdAllocationCursors.t;
}

class ElogPdAllocationCursorsRepository {
  const ElogPdAllocationCursorsRepository._();

  /// Returns a list of [ElogPdAllocationCursors]s matching the given query parameters.
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
  Future<List<ElogPdAllocationCursors>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdAllocationCursorsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdAllocationCursorsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAllocationCursorsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPdAllocationCursors>(
      where: where?.call(ElogPdAllocationCursors.t),
      orderBy: orderBy?.call(ElogPdAllocationCursors.t),
      orderByList: orderByList?.call(ElogPdAllocationCursors.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPdAllocationCursors] matching the given query parameters.
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
  Future<ElogPdAllocationCursors?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdAllocationCursorsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPdAllocationCursorsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAllocationCursorsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPdAllocationCursors>(
      where: where?.call(ElogPdAllocationCursors.t),
      orderBy: orderBy?.call(ElogPdAllocationCursors.t),
      orderByList: orderByList?.call(ElogPdAllocationCursors.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPdAllocationCursors] by its [id] or null if no such row exists.
  Future<ElogPdAllocationCursors?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPdAllocationCursors>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPdAllocationCursors]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPdAllocationCursors]s will have their `id` fields set.
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
  Future<List<ElogPdAllocationCursors>> insert(
    _is.DatabaseSession session,
    List<ElogPdAllocationCursors> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPdAllocationCursors>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPdAllocationCursors] and returns the inserted row.
  ///
  /// The returned [ElogPdAllocationCursors] will have its `id` field set.
  Future<ElogPdAllocationCursors> insertRow(
    _is.DatabaseSession session,
    ElogPdAllocationCursors row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPdAllocationCursors>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPdAllocationCursors]s in the list and returns the resulting rows.
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
  /// The returned [ElogPdAllocationCursors]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdAllocationCursors>> upsert(
    _is.DatabaseSession session,
    List<ElogPdAllocationCursors> rows, {
    required _is.ColumnSelections<ElogPdAllocationCursorsTable> conflictColumns,
    _is.ColumnSelections<ElogPdAllocationCursorsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdAllocationCursorsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPdAllocationCursors>(
      rows,
      conflictColumns: conflictColumns(ElogPdAllocationCursors.t),
      updateColumns: updateColumns?.call(ElogPdAllocationCursors.t),
      updateWhere: updateWhere?.call(ElogPdAllocationCursors.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPdAllocationCursors] and returns the resulting row.
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
  /// The returned [ElogPdAllocationCursors] will have its `id` field set.
  Future<ElogPdAllocationCursors?> upsertRow(
    _is.DatabaseSession session,
    ElogPdAllocationCursors row, {
    required _is.ColumnSelections<ElogPdAllocationCursorsTable> conflictColumns,
    _is.ColumnSelections<ElogPdAllocationCursorsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdAllocationCursorsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPdAllocationCursors>(
      row,
      conflictColumns: conflictColumns(ElogPdAllocationCursors.t),
      updateColumns: updateColumns?.call(ElogPdAllocationCursors.t),
      updateWhere: updateWhere?.call(ElogPdAllocationCursors.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdAllocationCursors]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdAllocationCursors>> update(
    _is.DatabaseSession session,
    List<ElogPdAllocationCursors> rows, {
    _is.ColumnSelections<ElogPdAllocationCursorsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPdAllocationCursors>(
      rows,
      columns: columns?.call(ElogPdAllocationCursors.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPdAllocationCursors]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPdAllocationCursors> updateRow(
    _is.DatabaseSession session,
    ElogPdAllocationCursors row, {
    _is.ColumnSelections<ElogPdAllocationCursorsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPdAllocationCursors>(
      row,
      columns: columns?.call(ElogPdAllocationCursors.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPdAllocationCursors] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPdAllocationCursors?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPdAllocationCursorsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPdAllocationCursors>(
      id,
      columnValues: columnValues(ElogPdAllocationCursors.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdAllocationCursors]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdAllocationCursors>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPdAllocationCursorsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPdAllocationCursorsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdAllocationCursorsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAllocationCursorsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPdAllocationCursors>(
      columnValues: columnValues(ElogPdAllocationCursors.t.updateTable),
      where: where(ElogPdAllocationCursors.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdAllocationCursors.t),
      orderByList: orderByList?.call(ElogPdAllocationCursors.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPdAllocationCursors]s in the list and returns the deleted rows.
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
  Future<List<ElogPdAllocationCursors>> delete(
    _is.DatabaseSession session,
    List<ElogPdAllocationCursors> rows, {
    _is.OrderByBuilder<ElogPdAllocationCursorsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAllocationCursorsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPdAllocationCursors>(
      rows,
      orderBy: orderBy?.call(ElogPdAllocationCursors.t),
      orderByList: orderByList?.call(ElogPdAllocationCursors.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPdAllocationCursors].
  Future<ElogPdAllocationCursors> deleteRow(
    _is.DatabaseSession session,
    ElogPdAllocationCursors row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPdAllocationCursors>(
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
  Future<List<ElogPdAllocationCursors>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdAllocationCursorsTable> where,
    _is.OrderByBuilder<ElogPdAllocationCursorsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAllocationCursorsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPdAllocationCursors>(
      where: where(ElogPdAllocationCursors.t),
      orderBy: orderBy?.call(ElogPdAllocationCursors.t),
      orderByList: orderByList?.call(ElogPdAllocationCursors.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdAllocationCursorsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPdAllocationCursors>(
      where: where?.call(ElogPdAllocationCursors.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPdAllocationCursors] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdAllocationCursorsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPdAllocationCursors>(
      where: where(ElogPdAllocationCursors.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
