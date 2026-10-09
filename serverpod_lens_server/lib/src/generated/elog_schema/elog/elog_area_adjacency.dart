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

abstract class ElogAreaAdjacency
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogAreaAdjacency._({
    this.id,
    required this.areaId,
    required this.adjacentAreaId,
    this.isActive,
  });

  factory ElogAreaAdjacency({
    _is.UuidValue? id,
    required _is.UuidValue areaId,
    required _is.UuidValue adjacentAreaId,
    bool? isActive,
  }) = _ElogAreaAdjacencyImpl;

  factory ElogAreaAdjacency.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogAreaAdjacency(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      areaId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['areaId']),
      adjacentAreaId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['adjacentAreaId'],
      ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogAreaAdjacencyTable();

  static const db = ElogAreaAdjacencyRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue areaId;

  _is.UuidValue adjacentAreaId;

  bool? isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogAreaAdjacency]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogAreaAdjacency copyWith({
    _is.UuidValue? id,
    _is.UuidValue? areaId,
    _is.UuidValue? adjacentAreaId,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogAreaAdjacency',
      if (id != null) 'id': id?.toJson(),
      'areaId': areaId.toJson(),
      'adjacentAreaId': adjacentAreaId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogAreaAdjacency',
      if (id != null) 'id': id?.toJson(),
      'areaId': areaId.toJson(),
      'adjacentAreaId': adjacentAreaId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  static ElogAreaAdjacencyInclude include() {
    return ElogAreaAdjacencyInclude._();
  }

  static ElogAreaAdjacencyIncludeList includeList({
    _is.WhereExpressionBuilder<ElogAreaAdjacencyTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreaAdjacencyTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaAdjacencyTable>? orderByList,
    ElogAreaAdjacencyInclude? include,
  }) {
    return ElogAreaAdjacencyIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogAreaAdjacency.t),
      orderByList: orderByList?.call(ElogAreaAdjacency.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogAreaAdjacencyImpl extends ElogAreaAdjacency {
  _ElogAreaAdjacencyImpl({
    _is.UuidValue? id,
    required _is.UuidValue areaId,
    required _is.UuidValue adjacentAreaId,
    bool? isActive,
  }) : super._(
         id: id,
         areaId: areaId,
         adjacentAreaId: adjacentAreaId,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogAreaAdjacency]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogAreaAdjacency copyWith({
    Object? id = _Undefined,
    _is.UuidValue? areaId,
    _is.UuidValue? adjacentAreaId,
    Object? isActive = _Undefined,
  }) {
    return ElogAreaAdjacency(
      id: id is _is.UuidValue? ? id : this.id,
      areaId: areaId ?? this.areaId,
      adjacentAreaId: adjacentAreaId ?? this.adjacentAreaId,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}

class ElogAreaAdjacencyUpdateTable
    extends _is.UpdateTable<ElogAreaAdjacencyTable> {
  ElogAreaAdjacencyUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> areaId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.areaId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> adjacentAreaId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.adjacentAreaId,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogAreaAdjacencyTable extends _is.Table<_is.UuidValue?> {
  ElogAreaAdjacencyTable({super.tableRelation})
    : super(tableName: 'elog_area_adjacency') {
    updateTable = ElogAreaAdjacencyUpdateTable(this);
    areaId = _is.ColumnUuid(
      'areaId',
      this,
    );
    adjacentAreaId = _is.ColumnUuid(
      'adjacentAreaId',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogAreaAdjacencyUpdateTable updateTable;

  late final _is.ColumnUuid areaId;

  late final _is.ColumnUuid adjacentAreaId;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    areaId,
    adjacentAreaId,
    isActive,
  ];
}

class ElogAreaAdjacencyInclude extends _is.IncludeObject {
  ElogAreaAdjacencyInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogAreaAdjacency.t;
}

class ElogAreaAdjacencyIncludeList extends _is.IncludeList {
  ElogAreaAdjacencyIncludeList._({
    _is.WhereExpressionBuilder<ElogAreaAdjacencyTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogAreaAdjacency.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogAreaAdjacency.t;
}

class ElogAreaAdjacencyRepository {
  const ElogAreaAdjacencyRepository._();

  /// Returns a list of [ElogAreaAdjacency]s matching the given query parameters.
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
  Future<List<ElogAreaAdjacency>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreaAdjacencyTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreaAdjacencyTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaAdjacencyTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogAreaAdjacency>(
      where: where?.call(ElogAreaAdjacency.t),
      orderBy: orderBy?.call(ElogAreaAdjacency.t),
      orderByList: orderByList?.call(ElogAreaAdjacency.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogAreaAdjacency] matching the given query parameters.
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
  Future<ElogAreaAdjacency?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreaAdjacencyTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogAreaAdjacencyTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaAdjacencyTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogAreaAdjacency>(
      where: where?.call(ElogAreaAdjacency.t),
      orderBy: orderBy?.call(ElogAreaAdjacency.t),
      orderByList: orderByList?.call(ElogAreaAdjacency.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogAreaAdjacency] by its [id] or null if no such row exists.
  Future<ElogAreaAdjacency?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogAreaAdjacency>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogAreaAdjacency]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogAreaAdjacency]s will have their `id` fields set.
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
  Future<List<ElogAreaAdjacency>> insert(
    _is.DatabaseSession session,
    List<ElogAreaAdjacency> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogAreaAdjacency>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogAreaAdjacency] and returns the inserted row.
  ///
  /// The returned [ElogAreaAdjacency] will have its `id` field set.
  Future<ElogAreaAdjacency> insertRow(
    _is.DatabaseSession session,
    ElogAreaAdjacency row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogAreaAdjacency>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogAreaAdjacency]s in the list and returns the resulting rows.
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
  /// The returned [ElogAreaAdjacency]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreaAdjacency>> upsert(
    _is.DatabaseSession session,
    List<ElogAreaAdjacency> rows, {
    required _is.ColumnSelections<ElogAreaAdjacencyTable> conflictColumns,
    _is.ColumnSelections<ElogAreaAdjacencyTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogAreaAdjacencyTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogAreaAdjacency>(
      rows,
      conflictColumns: conflictColumns(ElogAreaAdjacency.t),
      updateColumns: updateColumns?.call(ElogAreaAdjacency.t),
      updateWhere: updateWhere?.call(ElogAreaAdjacency.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogAreaAdjacency] and returns the resulting row.
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
  /// The returned [ElogAreaAdjacency] will have its `id` field set.
  Future<ElogAreaAdjacency?> upsertRow(
    _is.DatabaseSession session,
    ElogAreaAdjacency row, {
    required _is.ColumnSelections<ElogAreaAdjacencyTable> conflictColumns,
    _is.ColumnSelections<ElogAreaAdjacencyTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogAreaAdjacencyTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogAreaAdjacency>(
      row,
      conflictColumns: conflictColumns(ElogAreaAdjacency.t),
      updateColumns: updateColumns?.call(ElogAreaAdjacency.t),
      updateWhere: updateWhere?.call(ElogAreaAdjacency.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogAreaAdjacency]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreaAdjacency>> update(
    _is.DatabaseSession session,
    List<ElogAreaAdjacency> rows, {
    _is.ColumnSelections<ElogAreaAdjacencyTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogAreaAdjacency>(
      rows,
      columns: columns?.call(ElogAreaAdjacency.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogAreaAdjacency]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogAreaAdjacency> updateRow(
    _is.DatabaseSession session,
    ElogAreaAdjacency row, {
    _is.ColumnSelections<ElogAreaAdjacencyTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogAreaAdjacency>(
      row,
      columns: columns?.call(ElogAreaAdjacency.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogAreaAdjacency] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogAreaAdjacency?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogAreaAdjacencyUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogAreaAdjacency>(
      id,
      columnValues: columnValues(ElogAreaAdjacency.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogAreaAdjacency]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreaAdjacency>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogAreaAdjacencyUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogAreaAdjacencyTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreaAdjacencyTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaAdjacencyTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogAreaAdjacency>(
      columnValues: columnValues(ElogAreaAdjacency.t.updateTable),
      where: where(ElogAreaAdjacency.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogAreaAdjacency.t),
      orderByList: orderByList?.call(ElogAreaAdjacency.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogAreaAdjacency]s in the list and returns the deleted rows.
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
  Future<List<ElogAreaAdjacency>> delete(
    _is.DatabaseSession session,
    List<ElogAreaAdjacency> rows, {
    _is.OrderByBuilder<ElogAreaAdjacencyTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaAdjacencyTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogAreaAdjacency>(
      rows,
      orderBy: orderBy?.call(ElogAreaAdjacency.t),
      orderByList: orderByList?.call(ElogAreaAdjacency.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogAreaAdjacency].
  Future<ElogAreaAdjacency> deleteRow(
    _is.DatabaseSession session,
    ElogAreaAdjacency row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogAreaAdjacency>(
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
  Future<List<ElogAreaAdjacency>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogAreaAdjacencyTable> where,
    _is.OrderByBuilder<ElogAreaAdjacencyTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaAdjacencyTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogAreaAdjacency>(
      where: where(ElogAreaAdjacency.t),
      orderBy: orderBy?.call(ElogAreaAdjacency.t),
      orderByList: orderByList?.call(ElogAreaAdjacency.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreaAdjacencyTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogAreaAdjacency>(
      where: where?.call(ElogAreaAdjacency.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogAreaAdjacency] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogAreaAdjacencyTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogAreaAdjacency>(
      where: where(ElogAreaAdjacency.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
