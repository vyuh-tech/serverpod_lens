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

abstract class ElogPdUsageLedger
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPdUsageLedger._({
    this.id,
    required this.operationId,
    required this.assemblyId,
    required this.componentId,
    required this.quantity,
    required this.unit,
    required this.attribution,
    required this.createdAt,
  });

  factory ElogPdUsageLedger({
    _is.UuidValue? id,
    required _is.UuidValue operationId,
    required _is.UuidValue assemblyId,
    required _is.UuidValue componentId,
    required BigInt quantity,
    required String unit,
    required String attribution,
    required DateTime createdAt,
  }) = _ElogPdUsageLedgerImpl;

  factory ElogPdUsageLedger.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPdUsageLedger(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      operationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['operationId'],
      ),
      assemblyId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['assemblyId'],
      ),
      componentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['componentId'],
      ),
      quantity: _is.BigIntJsonExtension.fromJson(jsonSerialization['quantity']),
      unit: jsonSerialization['unit'] as String,
      attribution: jsonSerialization['attribution'] as String,
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  static final t = ElogPdUsageLedgerTable();

  static const db = ElogPdUsageLedgerRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue operationId;

  _is.UuidValue assemblyId;

  _is.UuidValue componentId;

  BigInt quantity;

  String unit;

  String attribution;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPdUsageLedger]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPdUsageLedger copyWith({
    _is.UuidValue? id,
    _is.UuidValue? operationId,
    _is.UuidValue? assemblyId,
    _is.UuidValue? componentId,
    BigInt? quantity,
    String? unit,
    String? attribution,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdUsageLedger',
      if (id != null) 'id': id?.toJson(),
      'operationId': operationId.toJson(),
      'assemblyId': assemblyId.toJson(),
      'componentId': componentId.toJson(),
      'quantity': quantity.toJson(),
      'unit': unit,
      'attribution': attribution,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdUsageLedger',
      if (id != null) 'id': id?.toJson(),
      'operationId': operationId.toJson(),
      'assemblyId': assemblyId.toJson(),
      'componentId': componentId.toJson(),
      'quantity': quantity.toJson(),
      'unit': unit,
      'attribution': attribution,
      'createdAt': createdAt.toJson(),
    };
  }

  static ElogPdUsageLedgerInclude include() {
    return ElogPdUsageLedgerInclude._();
  }

  static ElogPdUsageLedgerIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPdUsageLedgerTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdUsageLedgerTable>? orderBy,
    _is.OrderByListBuilder<ElogPdUsageLedgerTable>? orderByList,
    ElogPdUsageLedgerInclude? include,
  }) {
    return ElogPdUsageLedgerIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdUsageLedger.t),
      orderByList: orderByList?.call(ElogPdUsageLedger.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdUsageLedgerImpl extends ElogPdUsageLedger {
  _ElogPdUsageLedgerImpl({
    _is.UuidValue? id,
    required _is.UuidValue operationId,
    required _is.UuidValue assemblyId,
    required _is.UuidValue componentId,
    required BigInt quantity,
    required String unit,
    required String attribution,
    required DateTime createdAt,
  }) : super._(
         id: id,
         operationId: operationId,
         assemblyId: assemblyId,
         componentId: componentId,
         quantity: quantity,
         unit: unit,
         attribution: attribution,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [ElogPdUsageLedger]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPdUsageLedger copyWith({
    Object? id = _Undefined,
    _is.UuidValue? operationId,
    _is.UuidValue? assemblyId,
    _is.UuidValue? componentId,
    BigInt? quantity,
    String? unit,
    String? attribution,
    DateTime? createdAt,
  }) {
    return ElogPdUsageLedger(
      id: id is _is.UuidValue? ? id : this.id,
      operationId: operationId ?? this.operationId,
      assemblyId: assemblyId ?? this.assemblyId,
      componentId: componentId ?? this.componentId,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      attribution: attribution ?? this.attribution,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class ElogPdUsageLedgerUpdateTable
    extends _is.UpdateTable<ElogPdUsageLedgerTable> {
  ElogPdUsageLedgerUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> operationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.operationId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> assemblyId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.assemblyId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> componentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.componentId,
    value,
  );

  _is.ColumnValue<BigInt, BigInt> quantity(BigInt value) => _is.ColumnValue(
    table.quantity,
    value,
  );

  _is.ColumnValue<String, String> unit(String value) => _is.ColumnValue(
    table.unit,
    value,
  );

  _is.ColumnValue<String, String> attribution(String value) => _is.ColumnValue(
    table.attribution,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class ElogPdUsageLedgerTable extends _is.Table<_is.UuidValue?> {
  ElogPdUsageLedgerTable({super.tableRelation})
    : super(tableName: 'elog_pd_usage_ledger') {
    updateTable = ElogPdUsageLedgerUpdateTable(this);
    operationId = _is.ColumnUuid(
      'operationId',
      this,
    );
    assemblyId = _is.ColumnUuid(
      'assemblyId',
      this,
    );
    componentId = _is.ColumnUuid(
      'componentId',
      this,
    );
    quantity = _is.ColumnBigInt(
      'quantity',
      this,
    );
    unit = _is.ColumnString(
      'unit',
      this,
    );
    attribution = _is.ColumnString(
      'attribution',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final ElogPdUsageLedgerUpdateTable updateTable;

  late final _is.ColumnUuid operationId;

  late final _is.ColumnUuid assemblyId;

  late final _is.ColumnUuid componentId;

  late final _is.ColumnBigInt quantity;

  late final _is.ColumnString unit;

  late final _is.ColumnString attribution;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    operationId,
    assemblyId,
    componentId,
    quantity,
    unit,
    attribution,
    createdAt,
  ];
}

class ElogPdUsageLedgerInclude extends _is.IncludeObject {
  ElogPdUsageLedgerInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdUsageLedger.t;
}

class ElogPdUsageLedgerIncludeList extends _is.IncludeList {
  ElogPdUsageLedgerIncludeList._({
    _is.WhereExpressionBuilder<ElogPdUsageLedgerTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPdUsageLedger.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdUsageLedger.t;
}

class ElogPdUsageLedgerRepository {
  const ElogPdUsageLedgerRepository._();

  /// Returns a list of [ElogPdUsageLedger]s matching the given query parameters.
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
  Future<List<ElogPdUsageLedger>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdUsageLedgerTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdUsageLedgerTable>? orderBy,
    _is.OrderByListBuilder<ElogPdUsageLedgerTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPdUsageLedger>(
      where: where?.call(ElogPdUsageLedger.t),
      orderBy: orderBy?.call(ElogPdUsageLedger.t),
      orderByList: orderByList?.call(ElogPdUsageLedger.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPdUsageLedger] matching the given query parameters.
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
  Future<ElogPdUsageLedger?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdUsageLedgerTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPdUsageLedgerTable>? orderBy,
    _is.OrderByListBuilder<ElogPdUsageLedgerTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPdUsageLedger>(
      where: where?.call(ElogPdUsageLedger.t),
      orderBy: orderBy?.call(ElogPdUsageLedger.t),
      orderByList: orderByList?.call(ElogPdUsageLedger.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPdUsageLedger] by its [id] or null if no such row exists.
  Future<ElogPdUsageLedger?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPdUsageLedger>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPdUsageLedger]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPdUsageLedger]s will have their `id` fields set.
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
  Future<List<ElogPdUsageLedger>> insert(
    _is.DatabaseSession session,
    List<ElogPdUsageLedger> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPdUsageLedger>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPdUsageLedger] and returns the inserted row.
  ///
  /// The returned [ElogPdUsageLedger] will have its `id` field set.
  Future<ElogPdUsageLedger> insertRow(
    _is.DatabaseSession session,
    ElogPdUsageLedger row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPdUsageLedger>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPdUsageLedger]s in the list and returns the resulting rows.
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
  /// The returned [ElogPdUsageLedger]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdUsageLedger>> upsert(
    _is.DatabaseSession session,
    List<ElogPdUsageLedger> rows, {
    required _is.ColumnSelections<ElogPdUsageLedgerTable> conflictColumns,
    _is.ColumnSelections<ElogPdUsageLedgerTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdUsageLedgerTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPdUsageLedger>(
      rows,
      conflictColumns: conflictColumns(ElogPdUsageLedger.t),
      updateColumns: updateColumns?.call(ElogPdUsageLedger.t),
      updateWhere: updateWhere?.call(ElogPdUsageLedger.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPdUsageLedger] and returns the resulting row.
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
  /// The returned [ElogPdUsageLedger] will have its `id` field set.
  Future<ElogPdUsageLedger?> upsertRow(
    _is.DatabaseSession session,
    ElogPdUsageLedger row, {
    required _is.ColumnSelections<ElogPdUsageLedgerTable> conflictColumns,
    _is.ColumnSelections<ElogPdUsageLedgerTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdUsageLedgerTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPdUsageLedger>(
      row,
      conflictColumns: conflictColumns(ElogPdUsageLedger.t),
      updateColumns: updateColumns?.call(ElogPdUsageLedger.t),
      updateWhere: updateWhere?.call(ElogPdUsageLedger.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdUsageLedger]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdUsageLedger>> update(
    _is.DatabaseSession session,
    List<ElogPdUsageLedger> rows, {
    _is.ColumnSelections<ElogPdUsageLedgerTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPdUsageLedger>(
      rows,
      columns: columns?.call(ElogPdUsageLedger.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPdUsageLedger]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPdUsageLedger> updateRow(
    _is.DatabaseSession session,
    ElogPdUsageLedger row, {
    _is.ColumnSelections<ElogPdUsageLedgerTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPdUsageLedger>(
      row,
      columns: columns?.call(ElogPdUsageLedger.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPdUsageLedger] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPdUsageLedger?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPdUsageLedgerUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPdUsageLedger>(
      id,
      columnValues: columnValues(ElogPdUsageLedger.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdUsageLedger]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdUsageLedger>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPdUsageLedgerUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPdUsageLedgerTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdUsageLedgerTable>? orderBy,
    _is.OrderByListBuilder<ElogPdUsageLedgerTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPdUsageLedger>(
      columnValues: columnValues(ElogPdUsageLedger.t.updateTable),
      where: where(ElogPdUsageLedger.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdUsageLedger.t),
      orderByList: orderByList?.call(ElogPdUsageLedger.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPdUsageLedger]s in the list and returns the deleted rows.
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
  Future<List<ElogPdUsageLedger>> delete(
    _is.DatabaseSession session,
    List<ElogPdUsageLedger> rows, {
    _is.OrderByBuilder<ElogPdUsageLedgerTable>? orderBy,
    _is.OrderByListBuilder<ElogPdUsageLedgerTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPdUsageLedger>(
      rows,
      orderBy: orderBy?.call(ElogPdUsageLedger.t),
      orderByList: orderByList?.call(ElogPdUsageLedger.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPdUsageLedger].
  Future<ElogPdUsageLedger> deleteRow(
    _is.DatabaseSession session,
    ElogPdUsageLedger row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPdUsageLedger>(
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
  Future<List<ElogPdUsageLedger>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdUsageLedgerTable> where,
    _is.OrderByBuilder<ElogPdUsageLedgerTable>? orderBy,
    _is.OrderByListBuilder<ElogPdUsageLedgerTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPdUsageLedger>(
      where: where(ElogPdUsageLedger.t),
      orderBy: orderBy?.call(ElogPdUsageLedger.t),
      orderByList: orderByList?.call(ElogPdUsageLedger.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdUsageLedgerTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPdUsageLedger>(
      where: where?.call(ElogPdUsageLedger.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPdUsageLedger] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdUsageLedgerTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPdUsageLedger>(
      where: where(ElogPdUsageLedger.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
