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
abstract class CampusInvoiceLine
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusInvoiceLine._({
    this.id,
    required this.invoiceId,
    required this.feeTypeId,
    required this.description,
    required this.quantity,
    required this.unitAmountMinor,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusInvoiceLine({
    _is.UuidValue? id,
    required _is.UuidValue invoiceId,
    required _is.UuidValue feeTypeId,
    required String description,
    required int quantity,
    required int unitAmountMinor,
    DateTime? createdAt,
  }) = _CampusInvoiceLineImpl;

  factory CampusInvoiceLine.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusInvoiceLine(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      invoiceId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['invoiceId'],
      ),
      feeTypeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['feeTypeId'],
      ),
      description: jsonSerialization['description'] as String,
      quantity: jsonSerialization['quantity'] as int,
      unitAmountMinor: jsonSerialization['unitAmountMinor'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusInvoiceLineTable();

  static const db = CampusInvoiceLineRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue invoiceId;

  _is.UuidValue feeTypeId;

  String description;

  int quantity;

  int unitAmountMinor;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusInvoiceLine]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusInvoiceLine copyWith({
    _is.UuidValue? id,
    _is.UuidValue? invoiceId,
    _is.UuidValue? feeTypeId,
    String? description,
    int? quantity,
    int? unitAmountMinor,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusInvoiceLine',
      if (id != null) 'id': id?.toJson(),
      'invoiceId': invoiceId.toJson(),
      'feeTypeId': feeTypeId.toJson(),
      'description': description,
      'quantity': quantity,
      'unitAmountMinor': unitAmountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusInvoiceLine',
      if (id != null) 'id': id?.toJson(),
      'invoiceId': invoiceId.toJson(),
      'feeTypeId': feeTypeId.toJson(),
      'description': description,
      'quantity': quantity,
      'unitAmountMinor': unitAmountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusInvoiceLineInclude include() {
    return CampusInvoiceLineInclude._();
  }

  static CampusInvoiceLineIncludeList includeList({
    _is.WhereExpressionBuilder<CampusInvoiceLineTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusInvoiceLineTable>? orderBy,
    _is.OrderByListBuilder<CampusInvoiceLineTable>? orderByList,
    CampusInvoiceLineInclude? include,
  }) {
    return CampusInvoiceLineIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusInvoiceLine.t),
      orderByList: orderByList?.call(CampusInvoiceLine.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusInvoiceLineImpl extends CampusInvoiceLine {
  _CampusInvoiceLineImpl({
    _is.UuidValue? id,
    required _is.UuidValue invoiceId,
    required _is.UuidValue feeTypeId,
    required String description,
    required int quantity,
    required int unitAmountMinor,
    DateTime? createdAt,
  }) : super._(
         id: id,
         invoiceId: invoiceId,
         feeTypeId: feeTypeId,
         description: description,
         quantity: quantity,
         unitAmountMinor: unitAmountMinor,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusInvoiceLine]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusInvoiceLine copyWith({
    Object? id = _Undefined,
    _is.UuidValue? invoiceId,
    _is.UuidValue? feeTypeId,
    String? description,
    int? quantity,
    int? unitAmountMinor,
    DateTime? createdAt,
  }) {
    return CampusInvoiceLine(
      id: id is _is.UuidValue? ? id : this.id,
      invoiceId: invoiceId ?? this.invoiceId,
      feeTypeId: feeTypeId ?? this.feeTypeId,
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
      unitAmountMinor: unitAmountMinor ?? this.unitAmountMinor,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusInvoiceLineUpdateTable
    extends _is.UpdateTable<CampusInvoiceLineTable> {
  CampusInvoiceLineUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> invoiceId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.invoiceId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> feeTypeId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.feeTypeId,
    value,
  );

  _is.ColumnValue<String, String> description(String value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<int, int> quantity(int value) => _is.ColumnValue(
    table.quantity,
    value,
  );

  _is.ColumnValue<int, int> unitAmountMinor(int value) => _is.ColumnValue(
    table.unitAmountMinor,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusInvoiceLineTable extends _is.Table<_is.UuidValue?> {
  CampusInvoiceLineTable({super.tableRelation})
    : super(tableName: 'campus_invoice_lines') {
    updateTable = CampusInvoiceLineUpdateTable(this);
    invoiceId = _is.ColumnUuid(
      'invoiceId',
      this,
    );
    feeTypeId = _is.ColumnUuid(
      'feeTypeId',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    quantity = _is.ColumnInt(
      'quantity',
      this,
    );
    unitAmountMinor = _is.ColumnInt(
      'unitAmountMinor',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusInvoiceLineUpdateTable updateTable;

  late final _is.ColumnUuid invoiceId;

  late final _is.ColumnUuid feeTypeId;

  late final _is.ColumnString description;

  late final _is.ColumnInt quantity;

  late final _is.ColumnInt unitAmountMinor;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    invoiceId,
    feeTypeId,
    description,
    quantity,
    unitAmountMinor,
    createdAt,
  ];
}

class CampusInvoiceLineInclude extends _is.IncludeObject {
  CampusInvoiceLineInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusInvoiceLine.t;
}

class CampusInvoiceLineIncludeList extends _is.IncludeList {
  CampusInvoiceLineIncludeList._({
    _is.WhereExpressionBuilder<CampusInvoiceLineTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusInvoiceLine.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusInvoiceLine.t;
}

class CampusInvoiceLineRepository {
  const CampusInvoiceLineRepository._();

  /// Returns a list of [CampusInvoiceLine]s matching the given query parameters.
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
  Future<List<CampusInvoiceLine>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusInvoiceLineTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusInvoiceLineTable>? orderBy,
    _is.OrderByListBuilder<CampusInvoiceLineTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusInvoiceLine>(
      where: where?.call(CampusInvoiceLine.t),
      orderBy: orderBy?.call(CampusInvoiceLine.t),
      orderByList: orderByList?.call(CampusInvoiceLine.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusInvoiceLine] matching the given query parameters.
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
  Future<CampusInvoiceLine?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusInvoiceLineTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusInvoiceLineTable>? orderBy,
    _is.OrderByListBuilder<CampusInvoiceLineTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusInvoiceLine>(
      where: where?.call(CampusInvoiceLine.t),
      orderBy: orderBy?.call(CampusInvoiceLine.t),
      orderByList: orderByList?.call(CampusInvoiceLine.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusInvoiceLine] by its [id] or null if no such row exists.
  Future<CampusInvoiceLine?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusInvoiceLine>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusInvoiceLine]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusInvoiceLine]s will have their `id` fields set.
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
  Future<List<CampusInvoiceLine>> insert(
    _is.DatabaseSession session,
    List<CampusInvoiceLine> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusInvoiceLine>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusInvoiceLine] and returns the inserted row.
  ///
  /// The returned [CampusInvoiceLine] will have its `id` field set.
  Future<CampusInvoiceLine> insertRow(
    _is.DatabaseSession session,
    CampusInvoiceLine row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusInvoiceLine>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusInvoiceLine]s in the list and returns the resulting rows.
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
  /// The returned [CampusInvoiceLine]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusInvoiceLine>> upsert(
    _is.DatabaseSession session,
    List<CampusInvoiceLine> rows, {
    required _is.ColumnSelections<CampusInvoiceLineTable> conflictColumns,
    _is.ColumnSelections<CampusInvoiceLineTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusInvoiceLineTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusInvoiceLine>(
      rows,
      conflictColumns: conflictColumns(CampusInvoiceLine.t),
      updateColumns: updateColumns?.call(CampusInvoiceLine.t),
      updateWhere: updateWhere?.call(CampusInvoiceLine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusInvoiceLine] and returns the resulting row.
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
  /// The returned [CampusInvoiceLine] will have its `id` field set.
  Future<CampusInvoiceLine?> upsertRow(
    _is.DatabaseSession session,
    CampusInvoiceLine row, {
    required _is.ColumnSelections<CampusInvoiceLineTable> conflictColumns,
    _is.ColumnSelections<CampusInvoiceLineTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusInvoiceLineTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusInvoiceLine>(
      row,
      conflictColumns: conflictColumns(CampusInvoiceLine.t),
      updateColumns: updateColumns?.call(CampusInvoiceLine.t),
      updateWhere: updateWhere?.call(CampusInvoiceLine.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusInvoiceLine]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusInvoiceLine>> update(
    _is.DatabaseSession session,
    List<CampusInvoiceLine> rows, {
    _is.ColumnSelections<CampusInvoiceLineTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusInvoiceLine>(
      rows,
      columns: columns?.call(CampusInvoiceLine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusInvoiceLine]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusInvoiceLine> updateRow(
    _is.DatabaseSession session,
    CampusInvoiceLine row, {
    _is.ColumnSelections<CampusInvoiceLineTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusInvoiceLine>(
      row,
      columns: columns?.call(CampusInvoiceLine.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusInvoiceLine] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusInvoiceLine?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusInvoiceLineUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusInvoiceLine>(
      id,
      columnValues: columnValues(CampusInvoiceLine.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusInvoiceLine]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusInvoiceLine>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusInvoiceLineUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusInvoiceLineTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusInvoiceLineTable>? orderBy,
    _is.OrderByListBuilder<CampusInvoiceLineTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusInvoiceLine>(
      columnValues: columnValues(CampusInvoiceLine.t.updateTable),
      where: where(CampusInvoiceLine.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusInvoiceLine.t),
      orderByList: orderByList?.call(CampusInvoiceLine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusInvoiceLine]s in the list and returns the deleted rows.
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
  Future<List<CampusInvoiceLine>> delete(
    _is.DatabaseSession session,
    List<CampusInvoiceLine> rows, {
    _is.OrderByBuilder<CampusInvoiceLineTable>? orderBy,
    _is.OrderByListBuilder<CampusInvoiceLineTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusInvoiceLine>(
      rows,
      orderBy: orderBy?.call(CampusInvoiceLine.t),
      orderByList: orderByList?.call(CampusInvoiceLine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusInvoiceLine].
  Future<CampusInvoiceLine> deleteRow(
    _is.DatabaseSession session,
    CampusInvoiceLine row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusInvoiceLine>(
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
  Future<List<CampusInvoiceLine>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusInvoiceLineTable> where,
    _is.OrderByBuilder<CampusInvoiceLineTable>? orderBy,
    _is.OrderByListBuilder<CampusInvoiceLineTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusInvoiceLine>(
      where: where(CampusInvoiceLine.t),
      orderBy: orderBy?.call(CampusInvoiceLine.t),
      orderByList: orderByList?.call(CampusInvoiceLine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusInvoiceLineTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusInvoiceLine>(
      where: where?.call(CampusInvoiceLine.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusInvoiceLine] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusInvoiceLineTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusInvoiceLine>(
      where: where(CampusInvoiceLine.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
