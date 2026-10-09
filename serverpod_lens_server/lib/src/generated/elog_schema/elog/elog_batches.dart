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

abstract class ElogBatches
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogBatches._({
    this.id,
    required this.batchNumber,
    required this.productId,
    required this.batchSize,
    required this.batchSizeUnitId,
    this.isActive,
  });

  factory ElogBatches({
    _is.UuidValue? id,
    required String batchNumber,
    required _is.UuidValue productId,
    required int batchSize,
    required _is.UuidValue batchSizeUnitId,
    bool? isActive,
  }) = _ElogBatchesImpl;

  factory ElogBatches.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogBatches(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      batchNumber: jsonSerialization['batchNumber'] as String,
      productId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['productId'],
      ),
      batchSize: jsonSerialization['batchSize'] as int,
      batchSizeUnitId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['batchSizeUnitId'],
      ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogBatchesTable();

  static const db = ElogBatchesRepository._();

  @override
  _is.UuidValue? id;

  String batchNumber;

  _is.UuidValue productId;

  int batchSize;

  _is.UuidValue batchSizeUnitId;

  bool? isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogBatches]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogBatches copyWith({
    _is.UuidValue? id,
    String? batchNumber,
    _is.UuidValue? productId,
    int? batchSize,
    _is.UuidValue? batchSizeUnitId,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogBatches',
      if (id != null) 'id': id?.toJson(),
      'batchNumber': batchNumber,
      'productId': productId.toJson(),
      'batchSize': batchSize,
      'batchSizeUnitId': batchSizeUnitId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogBatches',
      if (id != null) 'id': id?.toJson(),
      'batchNumber': batchNumber,
      'productId': productId.toJson(),
      'batchSize': batchSize,
      'batchSizeUnitId': batchSizeUnitId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  static ElogBatchesInclude include() {
    return ElogBatchesInclude._();
  }

  static ElogBatchesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogBatchesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogBatchesTable>? orderBy,
    _is.OrderByListBuilder<ElogBatchesTable>? orderByList,
    ElogBatchesInclude? include,
  }) {
    return ElogBatchesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogBatches.t),
      orderByList: orderByList?.call(ElogBatches.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogBatchesImpl extends ElogBatches {
  _ElogBatchesImpl({
    _is.UuidValue? id,
    required String batchNumber,
    required _is.UuidValue productId,
    required int batchSize,
    required _is.UuidValue batchSizeUnitId,
    bool? isActive,
  }) : super._(
         id: id,
         batchNumber: batchNumber,
         productId: productId,
         batchSize: batchSize,
         batchSizeUnitId: batchSizeUnitId,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogBatches]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogBatches copyWith({
    Object? id = _Undefined,
    String? batchNumber,
    _is.UuidValue? productId,
    int? batchSize,
    _is.UuidValue? batchSizeUnitId,
    Object? isActive = _Undefined,
  }) {
    return ElogBatches(
      id: id is _is.UuidValue? ? id : this.id,
      batchNumber: batchNumber ?? this.batchNumber,
      productId: productId ?? this.productId,
      batchSize: batchSize ?? this.batchSize,
      batchSizeUnitId: batchSizeUnitId ?? this.batchSizeUnitId,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}

class ElogBatchesUpdateTable extends _is.UpdateTable<ElogBatchesTable> {
  ElogBatchesUpdateTable(super.table);

  _is.ColumnValue<String, String> batchNumber(String value) => _is.ColumnValue(
    table.batchNumber,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> productId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.productId,
    value,
  );

  _is.ColumnValue<int, int> batchSize(int value) => _is.ColumnValue(
    table.batchSize,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> batchSizeUnitId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.batchSizeUnitId,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogBatchesTable extends _is.Table<_is.UuidValue?> {
  ElogBatchesTable({super.tableRelation}) : super(tableName: 'elog_batches') {
    updateTable = ElogBatchesUpdateTable(this);
    batchNumber = _is.ColumnString(
      'batchNumber',
      this,
    );
    productId = _is.ColumnUuid(
      'productId',
      this,
    );
    batchSize = _is.ColumnInt(
      'batchSize',
      this,
    );
    batchSizeUnitId = _is.ColumnUuid(
      'batchSizeUnitId',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogBatchesUpdateTable updateTable;

  late final _is.ColumnString batchNumber;

  late final _is.ColumnUuid productId;

  late final _is.ColumnInt batchSize;

  late final _is.ColumnUuid batchSizeUnitId;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    batchNumber,
    productId,
    batchSize,
    batchSizeUnitId,
    isActive,
  ];
}

class ElogBatchesInclude extends _is.IncludeObject {
  ElogBatchesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogBatches.t;
}

class ElogBatchesIncludeList extends _is.IncludeList {
  ElogBatchesIncludeList._({
    _is.WhereExpressionBuilder<ElogBatchesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogBatches.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogBatches.t;
}

class ElogBatchesRepository {
  const ElogBatchesRepository._();

  /// Returns a list of [ElogBatches]s matching the given query parameters.
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
  Future<List<ElogBatches>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogBatchesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogBatchesTable>? orderBy,
    _is.OrderByListBuilder<ElogBatchesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogBatches>(
      where: where?.call(ElogBatches.t),
      orderBy: orderBy?.call(ElogBatches.t),
      orderByList: orderByList?.call(ElogBatches.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogBatches] matching the given query parameters.
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
  Future<ElogBatches?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogBatchesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogBatchesTable>? orderBy,
    _is.OrderByListBuilder<ElogBatchesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogBatches>(
      where: where?.call(ElogBatches.t),
      orderBy: orderBy?.call(ElogBatches.t),
      orderByList: orderByList?.call(ElogBatches.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogBatches] by its [id] or null if no such row exists.
  Future<ElogBatches?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogBatches>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogBatches]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogBatches]s will have their `id` fields set.
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
  Future<List<ElogBatches>> insert(
    _is.DatabaseSession session,
    List<ElogBatches> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogBatches>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogBatches] and returns the inserted row.
  ///
  /// The returned [ElogBatches] will have its `id` field set.
  Future<ElogBatches> insertRow(
    _is.DatabaseSession session,
    ElogBatches row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogBatches>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogBatches]s in the list and returns the resulting rows.
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
  /// The returned [ElogBatches]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogBatches>> upsert(
    _is.DatabaseSession session,
    List<ElogBatches> rows, {
    required _is.ColumnSelections<ElogBatchesTable> conflictColumns,
    _is.ColumnSelections<ElogBatchesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogBatchesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogBatches>(
      rows,
      conflictColumns: conflictColumns(ElogBatches.t),
      updateColumns: updateColumns?.call(ElogBatches.t),
      updateWhere: updateWhere?.call(ElogBatches.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogBatches] and returns the resulting row.
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
  /// The returned [ElogBatches] will have its `id` field set.
  Future<ElogBatches?> upsertRow(
    _is.DatabaseSession session,
    ElogBatches row, {
    required _is.ColumnSelections<ElogBatchesTable> conflictColumns,
    _is.ColumnSelections<ElogBatchesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogBatchesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogBatches>(
      row,
      conflictColumns: conflictColumns(ElogBatches.t),
      updateColumns: updateColumns?.call(ElogBatches.t),
      updateWhere: updateWhere?.call(ElogBatches.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogBatches]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogBatches>> update(
    _is.DatabaseSession session,
    List<ElogBatches> rows, {
    _is.ColumnSelections<ElogBatchesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogBatches>(
      rows,
      columns: columns?.call(ElogBatches.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogBatches]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogBatches> updateRow(
    _is.DatabaseSession session,
    ElogBatches row, {
    _is.ColumnSelections<ElogBatchesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogBatches>(
      row,
      columns: columns?.call(ElogBatches.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogBatches] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogBatches?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogBatchesUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogBatches>(
      id,
      columnValues: columnValues(ElogBatches.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogBatches]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogBatches>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogBatchesUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogBatchesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogBatchesTable>? orderBy,
    _is.OrderByListBuilder<ElogBatchesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogBatches>(
      columnValues: columnValues(ElogBatches.t.updateTable),
      where: where(ElogBatches.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogBatches.t),
      orderByList: orderByList?.call(ElogBatches.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogBatches]s in the list and returns the deleted rows.
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
  Future<List<ElogBatches>> delete(
    _is.DatabaseSession session,
    List<ElogBatches> rows, {
    _is.OrderByBuilder<ElogBatchesTable>? orderBy,
    _is.OrderByListBuilder<ElogBatchesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogBatches>(
      rows,
      orderBy: orderBy?.call(ElogBatches.t),
      orderByList: orderByList?.call(ElogBatches.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogBatches].
  Future<ElogBatches> deleteRow(
    _is.DatabaseSession session,
    ElogBatches row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogBatches>(
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
  Future<List<ElogBatches>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogBatchesTable> where,
    _is.OrderByBuilder<ElogBatchesTable>? orderBy,
    _is.OrderByListBuilder<ElogBatchesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogBatches>(
      where: where(ElogBatches.t),
      orderBy: orderBy?.call(ElogBatches.t),
      orderByList: orderByList?.call(ElogBatches.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogBatchesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogBatches>(
      where: where?.call(ElogBatches.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogBatches] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogBatchesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogBatches>(
      where: where(ElogBatches.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
