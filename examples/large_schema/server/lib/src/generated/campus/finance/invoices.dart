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
abstract class CampusInvoice
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusInvoice._({
    this.id,
    required this.studentId,
    this.termId,
    required this.number,
    required this.currency,
    required this.issuedAt,
    required this.dueAt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusInvoice({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    _is.UuidValue? termId,
    required String number,
    required String currency,
    required DateTime issuedAt,
    required DateTime dueAt,
    required String status,
    DateTime? createdAt,
  }) = _CampusInvoiceImpl;

  factory CampusInvoice.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusInvoice(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      termId: jsonSerialization['termId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['termId']),
      number: jsonSerialization['number'] as String,
      currency: jsonSerialization['currency'] as String,
      issuedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['issuedAt'],
      ),
      dueAt: _is.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
      status: jsonSerialization['status'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusInvoiceTable();

  static const db = CampusInvoiceRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  _is.UuidValue? termId;

  String number;

  String currency;

  DateTime issuedAt;

  DateTime dueAt;

  String status;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusInvoice]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusInvoice copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    _is.UuidValue? termId,
    String? number,
    String? currency,
    DateTime? issuedAt,
    DateTime? dueAt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusInvoice',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      if (termId != null) 'termId': termId?.toJson(),
      'number': number,
      'currency': currency,
      'issuedAt': issuedAt.toJson(),
      'dueAt': dueAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusInvoice',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      if (termId != null) 'termId': termId?.toJson(),
      'number': number,
      'currency': currency,
      'issuedAt': issuedAt.toJson(),
      'dueAt': dueAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusInvoiceInclude include() {
    return CampusInvoiceInclude._();
  }

  static CampusInvoiceIncludeList includeList({
    _is.WhereExpressionBuilder<CampusInvoiceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusInvoiceTable>? orderBy,
    _is.OrderByListBuilder<CampusInvoiceTable>? orderByList,
    CampusInvoiceInclude? include,
  }) {
    return CampusInvoiceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusInvoice.t),
      orderByList: orderByList?.call(CampusInvoice.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusInvoiceImpl extends CampusInvoice {
  _CampusInvoiceImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    _is.UuidValue? termId,
    required String number,
    required String currency,
    required DateTime issuedAt,
    required DateTime dueAt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         termId: termId,
         number: number,
         currency: currency,
         issuedAt: issuedAt,
         dueAt: dueAt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusInvoice]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusInvoice copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    Object? termId = _Undefined,
    String? number,
    String? currency,
    DateTime? issuedAt,
    DateTime? dueAt,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusInvoice(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      termId: termId is _is.UuidValue? ? termId : this.termId,
      number: number ?? this.number,
      currency: currency ?? this.currency,
      issuedAt: issuedAt ?? this.issuedAt,
      dueAt: dueAt ?? this.dueAt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusInvoiceUpdateTable extends _is.UpdateTable<CampusInvoiceTable> {
  CampusInvoiceUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> termId(_is.UuidValue? value) =>
      _is.ColumnValue(
        table.termId,
        value,
      );

  _is.ColumnValue<String, String> number(String value) => _is.ColumnValue(
    table.number,
    value,
  );

  _is.ColumnValue<String, String> currency(String value) => _is.ColumnValue(
    table.currency,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> issuedAt(DateTime value) =>
      _is.ColumnValue(
        table.issuedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> dueAt(DateTime value) => _is.ColumnValue(
    table.dueAt,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusInvoiceTable extends _is.Table<_is.UuidValue?> {
  CampusInvoiceTable({super.tableRelation})
    : super(tableName: 'campus_invoices') {
    updateTable = CampusInvoiceUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    termId = _is.ColumnUuid(
      'termId',
      this,
    );
    number = _is.ColumnString(
      'number',
      this,
    );
    currency = _is.ColumnString(
      'currency',
      this,
    );
    issuedAt = _is.ColumnDateTime(
      'issuedAt',
      this,
    );
    dueAt = _is.ColumnDateTime(
      'dueAt',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusInvoiceUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid termId;

  late final _is.ColumnString number;

  late final _is.ColumnString currency;

  late final _is.ColumnDateTime issuedAt;

  late final _is.ColumnDateTime dueAt;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    termId,
    number,
    currency,
    issuedAt,
    dueAt,
    status,
    createdAt,
  ];
}

class CampusInvoiceInclude extends _is.IncludeObject {
  CampusInvoiceInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusInvoice.t;
}

class CampusInvoiceIncludeList extends _is.IncludeList {
  CampusInvoiceIncludeList._({
    _is.WhereExpressionBuilder<CampusInvoiceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusInvoice.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusInvoice.t;
}

class CampusInvoiceRepository {
  const CampusInvoiceRepository._();

  /// Returns a list of [CampusInvoice]s matching the given query parameters.
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
  Future<List<CampusInvoice>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusInvoiceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusInvoiceTable>? orderBy,
    _is.OrderByListBuilder<CampusInvoiceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusInvoice>(
      where: where?.call(CampusInvoice.t),
      orderBy: orderBy?.call(CampusInvoice.t),
      orderByList: orderByList?.call(CampusInvoice.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusInvoice] matching the given query parameters.
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
  Future<CampusInvoice?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusInvoiceTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusInvoiceTable>? orderBy,
    _is.OrderByListBuilder<CampusInvoiceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusInvoice>(
      where: where?.call(CampusInvoice.t),
      orderBy: orderBy?.call(CampusInvoice.t),
      orderByList: orderByList?.call(CampusInvoice.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusInvoice] by its [id] or null if no such row exists.
  Future<CampusInvoice?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusInvoice>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusInvoice]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusInvoice]s will have their `id` fields set.
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
  Future<List<CampusInvoice>> insert(
    _is.DatabaseSession session,
    List<CampusInvoice> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusInvoice>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusInvoice] and returns the inserted row.
  ///
  /// The returned [CampusInvoice] will have its `id` field set.
  Future<CampusInvoice> insertRow(
    _is.DatabaseSession session,
    CampusInvoice row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusInvoice>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusInvoice]s in the list and returns the resulting rows.
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
  /// The returned [CampusInvoice]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusInvoice>> upsert(
    _is.DatabaseSession session,
    List<CampusInvoice> rows, {
    required _is.ColumnSelections<CampusInvoiceTable> conflictColumns,
    _is.ColumnSelections<CampusInvoiceTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusInvoiceTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusInvoice>(
      rows,
      conflictColumns: conflictColumns(CampusInvoice.t),
      updateColumns: updateColumns?.call(CampusInvoice.t),
      updateWhere: updateWhere?.call(CampusInvoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusInvoice] and returns the resulting row.
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
  /// The returned [CampusInvoice] will have its `id` field set.
  Future<CampusInvoice?> upsertRow(
    _is.DatabaseSession session,
    CampusInvoice row, {
    required _is.ColumnSelections<CampusInvoiceTable> conflictColumns,
    _is.ColumnSelections<CampusInvoiceTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusInvoiceTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusInvoice>(
      row,
      conflictColumns: conflictColumns(CampusInvoice.t),
      updateColumns: updateColumns?.call(CampusInvoice.t),
      updateWhere: updateWhere?.call(CampusInvoice.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusInvoice]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusInvoice>> update(
    _is.DatabaseSession session,
    List<CampusInvoice> rows, {
    _is.ColumnSelections<CampusInvoiceTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusInvoice>(
      rows,
      columns: columns?.call(CampusInvoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusInvoice]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusInvoice> updateRow(
    _is.DatabaseSession session,
    CampusInvoice row, {
    _is.ColumnSelections<CampusInvoiceTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusInvoice>(
      row,
      columns: columns?.call(CampusInvoice.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusInvoice] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusInvoice?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusInvoiceUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusInvoice>(
      id,
      columnValues: columnValues(CampusInvoice.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusInvoice]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusInvoice>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusInvoiceUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusInvoiceTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusInvoiceTable>? orderBy,
    _is.OrderByListBuilder<CampusInvoiceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusInvoice>(
      columnValues: columnValues(CampusInvoice.t.updateTable),
      where: where(CampusInvoice.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusInvoice.t),
      orderByList: orderByList?.call(CampusInvoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusInvoice]s in the list and returns the deleted rows.
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
  Future<List<CampusInvoice>> delete(
    _is.DatabaseSession session,
    List<CampusInvoice> rows, {
    _is.OrderByBuilder<CampusInvoiceTable>? orderBy,
    _is.OrderByListBuilder<CampusInvoiceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusInvoice>(
      rows,
      orderBy: orderBy?.call(CampusInvoice.t),
      orderByList: orderByList?.call(CampusInvoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusInvoice].
  Future<CampusInvoice> deleteRow(
    _is.DatabaseSession session,
    CampusInvoice row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusInvoice>(
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
  Future<List<CampusInvoice>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusInvoiceTable> where,
    _is.OrderByBuilder<CampusInvoiceTable>? orderBy,
    _is.OrderByListBuilder<CampusInvoiceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusInvoice>(
      where: where(CampusInvoice.t),
      orderBy: orderBy?.call(CampusInvoice.t),
      orderByList: orderByList?.call(CampusInvoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusInvoiceTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusInvoice>(
      where: where?.call(CampusInvoice.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusInvoice] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusInvoiceTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusInvoice>(
      where: where(CampusInvoice.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
