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
abstract class CampusPayment
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusPayment._({
    this.id,
    required this.studentId,
    required this.reference,
    required this.amountMinor,
    required this.currency,
    required this.receivedAt,
    required this.method,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusPayment({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required String reference,
    required int amountMinor,
    required String currency,
    required DateTime receivedAt,
    required String method,
    DateTime? createdAt,
  }) = _CampusPaymentImpl;

  factory CampusPayment.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusPayment(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      reference: jsonSerialization['reference'] as String,
      amountMinor: jsonSerialization['amountMinor'] as int,
      currency: jsonSerialization['currency'] as String,
      receivedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['receivedAt'],
      ),
      method: jsonSerialization['method'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusPaymentTable();

  static const db = CampusPaymentRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  String reference;

  int amountMinor;

  String currency;

  DateTime receivedAt;

  String method;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusPayment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusPayment copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    String? reference,
    int? amountMinor,
    String? currency,
    DateTime? receivedAt,
    String? method,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusPayment',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'reference': reference,
      'amountMinor': amountMinor,
      'currency': currency,
      'receivedAt': receivedAt.toJson(),
      'method': method,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusPayment',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'reference': reference,
      'amountMinor': amountMinor,
      'currency': currency,
      'receivedAt': receivedAt.toJson(),
      'method': method,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusPaymentInclude include() {
    return CampusPaymentInclude._();
  }

  static CampusPaymentIncludeList includeList({
    _is.WhereExpressionBuilder<CampusPaymentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPaymentTable>? orderBy,
    _is.OrderByListBuilder<CampusPaymentTable>? orderByList,
    CampusPaymentInclude? include,
  }) {
    return CampusPaymentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusPayment.t),
      orderByList: orderByList?.call(CampusPayment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusPaymentImpl extends CampusPayment {
  _CampusPaymentImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required String reference,
    required int amountMinor,
    required String currency,
    required DateTime receivedAt,
    required String method,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         reference: reference,
         amountMinor: amountMinor,
         currency: currency,
         receivedAt: receivedAt,
         method: method,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusPayment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusPayment copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    String? reference,
    int? amountMinor,
    String? currency,
    DateTime? receivedAt,
    String? method,
    DateTime? createdAt,
  }) {
    return CampusPayment(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      reference: reference ?? this.reference,
      amountMinor: amountMinor ?? this.amountMinor,
      currency: currency ?? this.currency,
      receivedAt: receivedAt ?? this.receivedAt,
      method: method ?? this.method,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusPaymentUpdateTable extends _is.UpdateTable<CampusPaymentTable> {
  CampusPaymentUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<String, String> reference(String value) => _is.ColumnValue(
    table.reference,
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

  _is.ColumnValue<DateTime, DateTime> receivedAt(DateTime value) =>
      _is.ColumnValue(
        table.receivedAt,
        value,
      );

  _is.ColumnValue<String, String> method(String value) => _is.ColumnValue(
    table.method,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusPaymentTable extends _is.Table<_is.UuidValue?> {
  CampusPaymentTable({super.tableRelation})
    : super(tableName: 'campus_payments') {
    updateTable = CampusPaymentUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    reference = _is.ColumnString(
      'reference',
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
    receivedAt = _is.ColumnDateTime(
      'receivedAt',
      this,
    );
    method = _is.ColumnString(
      'method',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusPaymentUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnString reference;

  late final _is.ColumnInt amountMinor;

  late final _is.ColumnString currency;

  late final _is.ColumnDateTime receivedAt;

  late final _is.ColumnString method;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    reference,
    amountMinor,
    currency,
    receivedAt,
    method,
    createdAt,
  ];
}

class CampusPaymentInclude extends _is.IncludeObject {
  CampusPaymentInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusPayment.t;
}

class CampusPaymentIncludeList extends _is.IncludeList {
  CampusPaymentIncludeList._({
    _is.WhereExpressionBuilder<CampusPaymentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusPayment.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusPayment.t;
}

class CampusPaymentRepository {
  const CampusPaymentRepository._();

  /// Returns a list of [CampusPayment]s matching the given query parameters.
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
  Future<List<CampusPayment>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPaymentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPaymentTable>? orderBy,
    _is.OrderByListBuilder<CampusPaymentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusPayment>(
      where: where?.call(CampusPayment.t),
      orderBy: orderBy?.call(CampusPayment.t),
      orderByList: orderByList?.call(CampusPayment.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusPayment] matching the given query parameters.
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
  Future<CampusPayment?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPaymentTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusPaymentTable>? orderBy,
    _is.OrderByListBuilder<CampusPaymentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusPayment>(
      where: where?.call(CampusPayment.t),
      orderBy: orderBy?.call(CampusPayment.t),
      orderByList: orderByList?.call(CampusPayment.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusPayment] by its [id] or null if no such row exists.
  Future<CampusPayment?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusPayment>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusPayment]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusPayment]s will have their `id` fields set.
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
  Future<List<CampusPayment>> insert(
    _is.DatabaseSession session,
    List<CampusPayment> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusPayment>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusPayment] and returns the inserted row.
  ///
  /// The returned [CampusPayment] will have its `id` field set.
  Future<CampusPayment> insertRow(
    _is.DatabaseSession session,
    CampusPayment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusPayment>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusPayment]s in the list and returns the resulting rows.
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
  /// The returned [CampusPayment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPayment>> upsert(
    _is.DatabaseSession session,
    List<CampusPayment> rows, {
    required _is.ColumnSelections<CampusPaymentTable> conflictColumns,
    _is.ColumnSelections<CampusPaymentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusPaymentTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusPayment>(
      rows,
      conflictColumns: conflictColumns(CampusPayment.t),
      updateColumns: updateColumns?.call(CampusPayment.t),
      updateWhere: updateWhere?.call(CampusPayment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusPayment] and returns the resulting row.
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
  /// The returned [CampusPayment] will have its `id` field set.
  Future<CampusPayment?> upsertRow(
    _is.DatabaseSession session,
    CampusPayment row, {
    required _is.ColumnSelections<CampusPaymentTable> conflictColumns,
    _is.ColumnSelections<CampusPaymentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusPaymentTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusPayment>(
      row,
      conflictColumns: conflictColumns(CampusPayment.t),
      updateColumns: updateColumns?.call(CampusPayment.t),
      updateWhere: updateWhere?.call(CampusPayment.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusPayment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPayment>> update(
    _is.DatabaseSession session,
    List<CampusPayment> rows, {
    _is.ColumnSelections<CampusPaymentTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusPayment>(
      rows,
      columns: columns?.call(CampusPayment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusPayment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusPayment> updateRow(
    _is.DatabaseSession session,
    CampusPayment row, {
    _is.ColumnSelections<CampusPaymentTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusPayment>(
      row,
      columns: columns?.call(CampusPayment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusPayment] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusPayment?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusPaymentUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusPayment>(
      id,
      columnValues: columnValues(CampusPayment.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusPayment]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPayment>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusPaymentUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusPaymentTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPaymentTable>? orderBy,
    _is.OrderByListBuilder<CampusPaymentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusPayment>(
      columnValues: columnValues(CampusPayment.t.updateTable),
      where: where(CampusPayment.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusPayment.t),
      orderByList: orderByList?.call(CampusPayment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusPayment]s in the list and returns the deleted rows.
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
  Future<List<CampusPayment>> delete(
    _is.DatabaseSession session,
    List<CampusPayment> rows, {
    _is.OrderByBuilder<CampusPaymentTable>? orderBy,
    _is.OrderByListBuilder<CampusPaymentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusPayment>(
      rows,
      orderBy: orderBy?.call(CampusPayment.t),
      orderByList: orderByList?.call(CampusPayment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusPayment].
  Future<CampusPayment> deleteRow(
    _is.DatabaseSession session,
    CampusPayment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusPayment>(
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
  Future<List<CampusPayment>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusPaymentTable> where,
    _is.OrderByBuilder<CampusPaymentTable>? orderBy,
    _is.OrderByListBuilder<CampusPaymentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusPayment>(
      where: where(CampusPayment.t),
      orderBy: orderBy?.call(CampusPayment.t),
      orderByList: orderByList?.call(CampusPayment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPaymentTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusPayment>(
      where: where?.call(CampusPayment.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusPayment] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusPaymentTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusPayment>(
      where: where(CampusPayment.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
