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

/// Fictional university fixture: library.
abstract class CampusFine
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusFine._({
    this.id,
    required this.loanId,
    required this.amountMinor,
    required this.currency,
    this.invoiceLineId,
    required this.waived,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusFine({
    _is.UuidValue? id,
    required _is.UuidValue loanId,
    required int amountMinor,
    required String currency,
    _is.UuidValue? invoiceLineId,
    required bool waived,
    DateTime? createdAt,
  }) = _CampusFineImpl;

  factory CampusFine.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusFine(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      loanId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['loanId']),
      amountMinor: jsonSerialization['amountMinor'] as int,
      currency: jsonSerialization['currency'] as String,
      invoiceLineId: jsonSerialization['invoiceLineId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['invoiceLineId'],
            ),
      waived: _is.BoolJsonExtension.fromJson(jsonSerialization['waived']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusFineTable();

  static const db = CampusFineRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue loanId;

  int amountMinor;

  String currency;

  _is.UuidValue? invoiceLineId;

  bool waived;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusFine]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusFine copyWith({
    _is.UuidValue? id,
    _is.UuidValue? loanId,
    int? amountMinor,
    String? currency,
    _is.UuidValue? invoiceLineId,
    bool? waived,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusFine',
      if (id != null) 'id': id?.toJson(),
      'loanId': loanId.toJson(),
      'amountMinor': amountMinor,
      'currency': currency,
      if (invoiceLineId != null) 'invoiceLineId': invoiceLineId?.toJson(),
      'waived': waived,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusFine',
      if (id != null) 'id': id?.toJson(),
      'loanId': loanId.toJson(),
      'amountMinor': amountMinor,
      'currency': currency,
      if (invoiceLineId != null) 'invoiceLineId': invoiceLineId?.toJson(),
      'waived': waived,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusFineInclude include() {
    return CampusFineInclude._();
  }

  static CampusFineIncludeList includeList({
    _is.WhereExpressionBuilder<CampusFineTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFineTable>? orderBy,
    _is.OrderByListBuilder<CampusFineTable>? orderByList,
    CampusFineInclude? include,
  }) {
    return CampusFineIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFine.t),
      orderByList: orderByList?.call(CampusFine.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusFineImpl extends CampusFine {
  _CampusFineImpl({
    _is.UuidValue? id,
    required _is.UuidValue loanId,
    required int amountMinor,
    required String currency,
    _is.UuidValue? invoiceLineId,
    required bool waived,
    DateTime? createdAt,
  }) : super._(
         id: id,
         loanId: loanId,
         amountMinor: amountMinor,
         currency: currency,
         invoiceLineId: invoiceLineId,
         waived: waived,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusFine]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusFine copyWith({
    Object? id = _Undefined,
    _is.UuidValue? loanId,
    int? amountMinor,
    String? currency,
    Object? invoiceLineId = _Undefined,
    bool? waived,
    DateTime? createdAt,
  }) {
    return CampusFine(
      id: id is _is.UuidValue? ? id : this.id,
      loanId: loanId ?? this.loanId,
      amountMinor: amountMinor ?? this.amountMinor,
      currency: currency ?? this.currency,
      invoiceLineId: invoiceLineId is _is.UuidValue?
          ? invoiceLineId
          : this.invoiceLineId,
      waived: waived ?? this.waived,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusFineUpdateTable extends _is.UpdateTable<CampusFineTable> {
  CampusFineUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> loanId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.loanId,
        value,
      );

  _is.ColumnValue<int, int> amountMinor(int value) => _is.ColumnValue(
    table.amountMinor,
    value,
  );

  _is.ColumnValue<String, String> currency(String value) => _is.ColumnValue(
    table.currency,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> invoiceLineId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.invoiceLineId,
    value,
  );

  _is.ColumnValue<bool, bool> waived(bool value) => _is.ColumnValue(
    table.waived,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusFineTable extends _is.Table<_is.UuidValue?> {
  CampusFineTable({super.tableRelation}) : super(tableName: 'campus_fines') {
    updateTable = CampusFineUpdateTable(this);
    loanId = _is.ColumnUuid(
      'loanId',
      this,
    );
    amountMinor = _is.ColumnInt(
      'amountMinor',
      this,
    );
    currency = _is.ColumnString(
      'currency',
      this,
    );
    invoiceLineId = _is.ColumnUuid(
      'invoiceLineId',
      this,
    );
    waived = _is.ColumnBool(
      'waived',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusFineUpdateTable updateTable;

  late final _is.ColumnUuid loanId;

  late final _is.ColumnInt amountMinor;

  late final _is.ColumnString currency;

  late final _is.ColumnUuid invoiceLineId;

  late final _is.ColumnBool waived;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    loanId,
    amountMinor,
    currency,
    invoiceLineId,
    waived,
    createdAt,
  ];
}

class CampusFineInclude extends _is.IncludeObject {
  CampusFineInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFine.t;
}

class CampusFineIncludeList extends _is.IncludeList {
  CampusFineIncludeList._({
    _is.WhereExpressionBuilder<CampusFineTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusFine.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFine.t;
}

class CampusFineRepository {
  const CampusFineRepository._();

  /// Returns a list of [CampusFine]s matching the given query parameters.
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
  Future<List<CampusFine>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFineTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFineTable>? orderBy,
    _is.OrderByListBuilder<CampusFineTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusFine>(
      where: where?.call(CampusFine.t),
      orderBy: orderBy?.call(CampusFine.t),
      orderByList: orderByList?.call(CampusFine.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusFine] matching the given query parameters.
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
  Future<CampusFine?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFineTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusFineTable>? orderBy,
    _is.OrderByListBuilder<CampusFineTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusFine>(
      where: where?.call(CampusFine.t),
      orderBy: orderBy?.call(CampusFine.t),
      orderByList: orderByList?.call(CampusFine.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusFine] by its [id] or null if no such row exists.
  Future<CampusFine?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusFine>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusFine]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusFine]s will have their `id` fields set.
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
  Future<List<CampusFine>> insert(
    _is.DatabaseSession session,
    List<CampusFine> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusFine>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusFine] and returns the inserted row.
  ///
  /// The returned [CampusFine] will have its `id` field set.
  Future<CampusFine> insertRow(
    _is.DatabaseSession session,
    CampusFine row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusFine>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusFine]s in the list and returns the resulting rows.
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
  /// The returned [CampusFine]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFine>> upsert(
    _is.DatabaseSession session,
    List<CampusFine> rows, {
    required _is.ColumnSelections<CampusFineTable> conflictColumns,
    _is.ColumnSelections<CampusFineTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFineTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusFine>(
      rows,
      conflictColumns: conflictColumns(CampusFine.t),
      updateColumns: updateColumns?.call(CampusFine.t),
      updateWhere: updateWhere?.call(CampusFine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusFine] and returns the resulting row.
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
  /// The returned [CampusFine] will have its `id` field set.
  Future<CampusFine?> upsertRow(
    _is.DatabaseSession session,
    CampusFine row, {
    required _is.ColumnSelections<CampusFineTable> conflictColumns,
    _is.ColumnSelections<CampusFineTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFineTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusFine>(
      row,
      conflictColumns: conflictColumns(CampusFine.t),
      updateColumns: updateColumns?.call(CampusFine.t),
      updateWhere: updateWhere?.call(CampusFine.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFine]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFine>> update(
    _is.DatabaseSession session,
    List<CampusFine> rows, {
    _is.ColumnSelections<CampusFineTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusFine>(
      rows,
      columns: columns?.call(CampusFine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusFine]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusFine> updateRow(
    _is.DatabaseSession session,
    CampusFine row, {
    _is.ColumnSelections<CampusFineTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusFine>(
      row,
      columns: columns?.call(CampusFine.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusFine] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusFine?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusFineUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusFine>(
      id,
      columnValues: columnValues(CampusFine.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFine]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFine>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusFineUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusFineTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFineTable>? orderBy,
    _is.OrderByListBuilder<CampusFineTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusFine>(
      columnValues: columnValues(CampusFine.t.updateTable),
      where: where(CampusFine.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFine.t),
      orderByList: orderByList?.call(CampusFine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusFine]s in the list and returns the deleted rows.
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
  Future<List<CampusFine>> delete(
    _is.DatabaseSession session,
    List<CampusFine> rows, {
    _is.OrderByBuilder<CampusFineTable>? orderBy,
    _is.OrderByListBuilder<CampusFineTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusFine>(
      rows,
      orderBy: orderBy?.call(CampusFine.t),
      orderByList: orderByList?.call(CampusFine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusFine].
  Future<CampusFine> deleteRow(
    _is.DatabaseSession session,
    CampusFine row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusFine>(
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
  Future<List<CampusFine>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFineTable> where,
    _is.OrderByBuilder<CampusFineTable>? orderBy,
    _is.OrderByListBuilder<CampusFineTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusFine>(
      where: where(CampusFine.t),
      orderBy: orderBy?.call(CampusFine.t),
      orderByList: orderByList?.call(CampusFine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFineTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusFine>(
      where: where?.call(CampusFine.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusFine] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFineTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusFine>(
      where: where(CampusFine.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
