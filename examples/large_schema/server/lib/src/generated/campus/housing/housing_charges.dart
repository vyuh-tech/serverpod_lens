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
abstract class CampusHousingCharge
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusHousingCharge._({
    this.id,
    required this.contractId,
    required this.feeTypeId,
    this.invoiceLineId,
    required this.amountMinor,
    required this.currency,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingCharge({
    _is.UuidValue? id,
    required _is.UuidValue contractId,
    required _is.UuidValue feeTypeId,
    _is.UuidValue? invoiceLineId,
    required int amountMinor,
    required String currency,
    DateTime? createdAt,
  }) = _CampusHousingChargeImpl;

  factory CampusHousingCharge.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusHousingCharge(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      contractId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['contractId'],
      ),
      feeTypeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['feeTypeId'],
      ),
      invoiceLineId: jsonSerialization['invoiceLineId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['invoiceLineId'],
            ),
      amountMinor: jsonSerialization['amountMinor'] as int,
      currency: jsonSerialization['currency'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusHousingChargeTable();

  static const db = CampusHousingChargeRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue contractId;

  _is.UuidValue feeTypeId;

  _is.UuidValue? invoiceLineId;

  int amountMinor;

  String currency;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusHousingCharge]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusHousingCharge copyWith({
    _is.UuidValue? id,
    _is.UuidValue? contractId,
    _is.UuidValue? feeTypeId,
    _is.UuidValue? invoiceLineId,
    int? amountMinor,
    String? currency,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingCharge',
      if (id != null) 'id': id?.toJson(),
      'contractId': contractId.toJson(),
      'feeTypeId': feeTypeId.toJson(),
      if (invoiceLineId != null) 'invoiceLineId': invoiceLineId?.toJson(),
      'amountMinor': amountMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingCharge',
      if (id != null) 'id': id?.toJson(),
      'contractId': contractId.toJson(),
      'feeTypeId': feeTypeId.toJson(),
      if (invoiceLineId != null) 'invoiceLineId': invoiceLineId?.toJson(),
      'amountMinor': amountMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusHousingChargeInclude include() {
    return CampusHousingChargeInclude._();
  }

  static CampusHousingChargeIncludeList includeList({
    _is.WhereExpressionBuilder<CampusHousingChargeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingChargeTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingChargeTable>? orderByList,
    CampusHousingChargeInclude? include,
  }) {
    return CampusHousingChargeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingCharge.t),
      orderByList: orderByList?.call(CampusHousingCharge.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingChargeImpl extends CampusHousingCharge {
  _CampusHousingChargeImpl({
    _is.UuidValue? id,
    required _is.UuidValue contractId,
    required _is.UuidValue feeTypeId,
    _is.UuidValue? invoiceLineId,
    required int amountMinor,
    required String currency,
    DateTime? createdAt,
  }) : super._(
         id: id,
         contractId: contractId,
         feeTypeId: feeTypeId,
         invoiceLineId: invoiceLineId,
         amountMinor: amountMinor,
         currency: currency,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingCharge]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusHousingCharge copyWith({
    Object? id = _Undefined,
    _is.UuidValue? contractId,
    _is.UuidValue? feeTypeId,
    Object? invoiceLineId = _Undefined,
    int? amountMinor,
    String? currency,
    DateTime? createdAt,
  }) {
    return CampusHousingCharge(
      id: id is _is.UuidValue? ? id : this.id,
      contractId: contractId ?? this.contractId,
      feeTypeId: feeTypeId ?? this.feeTypeId,
      invoiceLineId: invoiceLineId is _is.UuidValue?
          ? invoiceLineId
          : this.invoiceLineId,
      amountMinor: amountMinor ?? this.amountMinor,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusHousingChargeUpdateTable
    extends _is.UpdateTable<CampusHousingChargeTable> {
  CampusHousingChargeUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> contractId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.contractId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> feeTypeId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.feeTypeId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> invoiceLineId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.invoiceLineId,
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

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusHousingChargeTable extends _is.Table<_is.UuidValue?> {
  CampusHousingChargeTable({super.tableRelation})
    : super(tableName: 'campus_housing_charges') {
    updateTable = CampusHousingChargeUpdateTable(this);
    contractId = _is.ColumnUuid(
      'contractId',
      this,
    );
    feeTypeId = _is.ColumnUuid(
      'feeTypeId',
      this,
    );
    invoiceLineId = _is.ColumnUuid(
      'invoiceLineId',
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
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusHousingChargeUpdateTable updateTable;

  late final _is.ColumnUuid contractId;

  late final _is.ColumnUuid feeTypeId;

  late final _is.ColumnUuid invoiceLineId;

  late final _is.ColumnInt amountMinor;

  late final _is.ColumnString currency;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    contractId,
    feeTypeId,
    invoiceLineId,
    amountMinor,
    currency,
    createdAt,
  ];
}

class CampusHousingChargeInclude extends _is.IncludeObject {
  CampusHousingChargeInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingCharge.t;
}

class CampusHousingChargeIncludeList extends _is.IncludeList {
  CampusHousingChargeIncludeList._({
    _is.WhereExpressionBuilder<CampusHousingChargeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusHousingCharge.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingCharge.t;
}

class CampusHousingChargeRepository {
  const CampusHousingChargeRepository._();

  /// Returns a list of [CampusHousingCharge]s matching the given query parameters.
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
  Future<List<CampusHousingCharge>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingChargeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingChargeTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingChargeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusHousingCharge>(
      where: where?.call(CampusHousingCharge.t),
      orderBy: orderBy?.call(CampusHousingCharge.t),
      orderByList: orderByList?.call(CampusHousingCharge.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusHousingCharge] matching the given query parameters.
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
  Future<CampusHousingCharge?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingChargeTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusHousingChargeTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingChargeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusHousingCharge>(
      where: where?.call(CampusHousingCharge.t),
      orderBy: orderBy?.call(CampusHousingCharge.t),
      orderByList: orderByList?.call(CampusHousingCharge.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusHousingCharge] by its [id] or null if no such row exists.
  Future<CampusHousingCharge?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusHousingCharge>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusHousingCharge]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusHousingCharge]s will have their `id` fields set.
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
  Future<List<CampusHousingCharge>> insert(
    _is.DatabaseSession session,
    List<CampusHousingCharge> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusHousingCharge>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusHousingCharge] and returns the inserted row.
  ///
  /// The returned [CampusHousingCharge] will have its `id` field set.
  Future<CampusHousingCharge> insertRow(
    _is.DatabaseSession session,
    CampusHousingCharge row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusHousingCharge>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusHousingCharge]s in the list and returns the resulting rows.
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
  /// The returned [CampusHousingCharge]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingCharge>> upsert(
    _is.DatabaseSession session,
    List<CampusHousingCharge> rows, {
    required _is.ColumnSelections<CampusHousingChargeTable> conflictColumns,
    _is.ColumnSelections<CampusHousingChargeTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingChargeTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusHousingCharge>(
      rows,
      conflictColumns: conflictColumns(CampusHousingCharge.t),
      updateColumns: updateColumns?.call(CampusHousingCharge.t),
      updateWhere: updateWhere?.call(CampusHousingCharge.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusHousingCharge] and returns the resulting row.
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
  /// The returned [CampusHousingCharge] will have its `id` field set.
  Future<CampusHousingCharge?> upsertRow(
    _is.DatabaseSession session,
    CampusHousingCharge row, {
    required _is.ColumnSelections<CampusHousingChargeTable> conflictColumns,
    _is.ColumnSelections<CampusHousingChargeTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingChargeTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusHousingCharge>(
      row,
      conflictColumns: conflictColumns(CampusHousingCharge.t),
      updateColumns: updateColumns?.call(CampusHousingCharge.t),
      updateWhere: updateWhere?.call(CampusHousingCharge.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingCharge]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingCharge>> update(
    _is.DatabaseSession session,
    List<CampusHousingCharge> rows, {
    _is.ColumnSelections<CampusHousingChargeTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusHousingCharge>(
      rows,
      columns: columns?.call(CampusHousingCharge.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusHousingCharge]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusHousingCharge> updateRow(
    _is.DatabaseSession session,
    CampusHousingCharge row, {
    _is.ColumnSelections<CampusHousingChargeTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusHousingCharge>(
      row,
      columns: columns?.call(CampusHousingCharge.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusHousingCharge] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusHousingCharge?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusHousingChargeUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusHousingCharge>(
      id,
      columnValues: columnValues(CampusHousingCharge.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingCharge]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingCharge>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusHousingChargeUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusHousingChargeTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingChargeTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingChargeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusHousingCharge>(
      columnValues: columnValues(CampusHousingCharge.t.updateTable),
      where: where(CampusHousingCharge.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingCharge.t),
      orderByList: orderByList?.call(CampusHousingCharge.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusHousingCharge]s in the list and returns the deleted rows.
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
  Future<List<CampusHousingCharge>> delete(
    _is.DatabaseSession session,
    List<CampusHousingCharge> rows, {
    _is.OrderByBuilder<CampusHousingChargeTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingChargeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusHousingCharge>(
      rows,
      orderBy: orderBy?.call(CampusHousingCharge.t),
      orderByList: orderByList?.call(CampusHousingCharge.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusHousingCharge].
  Future<CampusHousingCharge> deleteRow(
    _is.DatabaseSession session,
    CampusHousingCharge row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusHousingCharge>(
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
  Future<List<CampusHousingCharge>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingChargeTable> where,
    _is.OrderByBuilder<CampusHousingChargeTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingChargeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusHousingCharge>(
      where: where(CampusHousingCharge.t),
      orderBy: orderBy?.call(CampusHousingCharge.t),
      orderByList: orderByList?.call(CampusHousingCharge.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingChargeTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusHousingCharge>(
      where: where?.call(CampusHousingCharge.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusHousingCharge] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingChargeTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusHousingCharge>(
      where: where(CampusHousingCharge.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
