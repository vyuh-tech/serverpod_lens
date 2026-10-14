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

abstract class ElogPdComponentReservations
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPdComponentReservations._({
    this.id,
    required this.componentId,
    required this.operationId,
  });

  factory ElogPdComponentReservations({
    _is.UuidValue? id,
    required _is.UuidValue componentId,
    required _is.UuidValue operationId,
  }) = _ElogPdComponentReservationsImpl;

  factory ElogPdComponentReservations.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPdComponentReservations(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      componentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['componentId'],
      ),
      operationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['operationId'],
      ),
    );
  }

  static final t = ElogPdComponentReservationsTable();

  static const db = ElogPdComponentReservationsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue componentId;

  _is.UuidValue operationId;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPdComponentReservations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPdComponentReservations copyWith({
    _is.UuidValue? id,
    _is.UuidValue? componentId,
    _is.UuidValue? operationId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdComponentReservations',
      if (id != null) 'id': id?.toJson(),
      'componentId': componentId.toJson(),
      'operationId': operationId.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdComponentReservations',
      if (id != null) 'id': id?.toJson(),
      'componentId': componentId.toJson(),
      'operationId': operationId.toJson(),
    };
  }

  static ElogPdComponentReservationsInclude include() {
    return ElogPdComponentReservationsInclude._();
  }

  static ElogPdComponentReservationsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPdComponentReservationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdComponentReservationsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdComponentReservationsTable>? orderByList,
    ElogPdComponentReservationsInclude? include,
  }) {
    return ElogPdComponentReservationsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdComponentReservations.t),
      orderByList: orderByList?.call(ElogPdComponentReservations.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdComponentReservationsImpl extends ElogPdComponentReservations {
  _ElogPdComponentReservationsImpl({
    _is.UuidValue? id,
    required _is.UuidValue componentId,
    required _is.UuidValue operationId,
  }) : super._(
         id: id,
         componentId: componentId,
         operationId: operationId,
       );

  /// Returns a shallow copy of this [ElogPdComponentReservations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPdComponentReservations copyWith({
    Object? id = _Undefined,
    _is.UuidValue? componentId,
    _is.UuidValue? operationId,
  }) {
    return ElogPdComponentReservations(
      id: id is _is.UuidValue? ? id : this.id,
      componentId: componentId ?? this.componentId,
      operationId: operationId ?? this.operationId,
    );
  }
}

class ElogPdComponentReservationsUpdateTable
    extends _is.UpdateTable<ElogPdComponentReservationsTable> {
  ElogPdComponentReservationsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> componentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.componentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> operationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.operationId,
    value,
  );
}

class ElogPdComponentReservationsTable extends _is.Table<_is.UuidValue?> {
  ElogPdComponentReservationsTable({super.tableRelation})
    : super(tableName: 'elog_pd_component_reservations') {
    updateTable = ElogPdComponentReservationsUpdateTable(this);
    componentId = _is.ColumnUuid(
      'componentId',
      this,
    );
    operationId = _is.ColumnUuid(
      'operationId',
      this,
    );
  }

  late final ElogPdComponentReservationsUpdateTable updateTable;

  late final _is.ColumnUuid componentId;

  late final _is.ColumnUuid operationId;

  @override
  List<_is.Column> get columns => [
    id,
    componentId,
    operationId,
  ];
}

class ElogPdComponentReservationsInclude extends _is.IncludeObject {
  ElogPdComponentReservationsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdComponentReservations.t;
}

class ElogPdComponentReservationsIncludeList extends _is.IncludeList {
  ElogPdComponentReservationsIncludeList._({
    _is.WhereExpressionBuilder<ElogPdComponentReservationsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPdComponentReservations.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdComponentReservations.t;
}

class ElogPdComponentReservationsRepository {
  const ElogPdComponentReservationsRepository._();

  /// Returns a list of [ElogPdComponentReservations]s matching the given query parameters.
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
  Future<List<ElogPdComponentReservations>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdComponentReservationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdComponentReservationsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdComponentReservationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPdComponentReservations>(
      where: where?.call(ElogPdComponentReservations.t),
      orderBy: orderBy?.call(ElogPdComponentReservations.t),
      orderByList: orderByList?.call(ElogPdComponentReservations.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPdComponentReservations] matching the given query parameters.
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
  Future<ElogPdComponentReservations?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdComponentReservationsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPdComponentReservationsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdComponentReservationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPdComponentReservations>(
      where: where?.call(ElogPdComponentReservations.t),
      orderBy: orderBy?.call(ElogPdComponentReservations.t),
      orderByList: orderByList?.call(ElogPdComponentReservations.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPdComponentReservations] by its [id] or null if no such row exists.
  Future<ElogPdComponentReservations?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPdComponentReservations>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPdComponentReservations]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPdComponentReservations]s will have their `id` fields set.
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
  Future<List<ElogPdComponentReservations>> insert(
    _is.DatabaseSession session,
    List<ElogPdComponentReservations> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPdComponentReservations>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPdComponentReservations] and returns the inserted row.
  ///
  /// The returned [ElogPdComponentReservations] will have its `id` field set.
  Future<ElogPdComponentReservations> insertRow(
    _is.DatabaseSession session,
    ElogPdComponentReservations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPdComponentReservations>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPdComponentReservations]s in the list and returns the resulting rows.
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
  /// The returned [ElogPdComponentReservations]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdComponentReservations>> upsert(
    _is.DatabaseSession session,
    List<ElogPdComponentReservations> rows, {
    required _is.ColumnSelections<ElogPdComponentReservationsTable>
    conflictColumns,
    _is.ColumnSelections<ElogPdComponentReservationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdComponentReservationsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPdComponentReservations>(
      rows,
      conflictColumns: conflictColumns(ElogPdComponentReservations.t),
      updateColumns: updateColumns?.call(ElogPdComponentReservations.t),
      updateWhere: updateWhere?.call(ElogPdComponentReservations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPdComponentReservations] and returns the resulting row.
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
  /// The returned [ElogPdComponentReservations] will have its `id` field set.
  Future<ElogPdComponentReservations?> upsertRow(
    _is.DatabaseSession session,
    ElogPdComponentReservations row, {
    required _is.ColumnSelections<ElogPdComponentReservationsTable>
    conflictColumns,
    _is.ColumnSelections<ElogPdComponentReservationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdComponentReservationsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPdComponentReservations>(
      row,
      conflictColumns: conflictColumns(ElogPdComponentReservations.t),
      updateColumns: updateColumns?.call(ElogPdComponentReservations.t),
      updateWhere: updateWhere?.call(ElogPdComponentReservations.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdComponentReservations]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdComponentReservations>> update(
    _is.DatabaseSession session,
    List<ElogPdComponentReservations> rows, {
    _is.ColumnSelections<ElogPdComponentReservationsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPdComponentReservations>(
      rows,
      columns: columns?.call(ElogPdComponentReservations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPdComponentReservations]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPdComponentReservations> updateRow(
    _is.DatabaseSession session,
    ElogPdComponentReservations row, {
    _is.ColumnSelections<ElogPdComponentReservationsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPdComponentReservations>(
      row,
      columns: columns?.call(ElogPdComponentReservations.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPdComponentReservations] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPdComponentReservations?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPdComponentReservationsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPdComponentReservations>(
      id,
      columnValues: columnValues(ElogPdComponentReservations.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdComponentReservations]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdComponentReservations>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPdComponentReservationsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPdComponentReservationsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdComponentReservationsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdComponentReservationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPdComponentReservations>(
      columnValues: columnValues(ElogPdComponentReservations.t.updateTable),
      where: where(ElogPdComponentReservations.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdComponentReservations.t),
      orderByList: orderByList?.call(ElogPdComponentReservations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPdComponentReservations]s in the list and returns the deleted rows.
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
  Future<List<ElogPdComponentReservations>> delete(
    _is.DatabaseSession session,
    List<ElogPdComponentReservations> rows, {
    _is.OrderByBuilder<ElogPdComponentReservationsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdComponentReservationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPdComponentReservations>(
      rows,
      orderBy: orderBy?.call(ElogPdComponentReservations.t),
      orderByList: orderByList?.call(ElogPdComponentReservations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPdComponentReservations].
  Future<ElogPdComponentReservations> deleteRow(
    _is.DatabaseSession session,
    ElogPdComponentReservations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPdComponentReservations>(
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
  Future<List<ElogPdComponentReservations>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdComponentReservationsTable> where,
    _is.OrderByBuilder<ElogPdComponentReservationsTable>? orderBy,
    _is.OrderByListBuilder<ElogPdComponentReservationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPdComponentReservations>(
      where: where(ElogPdComponentReservations.t),
      orderBy: orderBy?.call(ElogPdComponentReservations.t),
      orderByList: orderByList?.call(ElogPdComponentReservations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdComponentReservationsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPdComponentReservations>(
      where: where?.call(ElogPdComponentReservations.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPdComponentReservations] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdComponentReservationsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPdComponentReservations>(
      where: where(ElogPdComponentReservations.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
