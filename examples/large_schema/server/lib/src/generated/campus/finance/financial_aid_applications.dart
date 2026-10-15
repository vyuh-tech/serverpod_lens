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
abstract class CampusFinancialAidApplication
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusFinancialAidApplication._({
    this.id,
    required this.studentId,
    required this.academicYearId,
    required this.requestedMinor,
    required this.reason,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusFinancialAidApplication({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue academicYearId,
    required int requestedMinor,
    required String reason,
    required String status,
    DateTime? createdAt,
  }) = _CampusFinancialAidApplicationImpl;

  factory CampusFinancialAidApplication.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusFinancialAidApplication(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      academicYearId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['academicYearId'],
      ),
      requestedMinor: jsonSerialization['requestedMinor'] as int,
      reason: jsonSerialization['reason'] as String,
      status: jsonSerialization['status'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusFinancialAidApplicationTable();

  static const db = CampusFinancialAidApplicationRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  _is.UuidValue academicYearId;

  int requestedMinor;

  String reason;

  String status;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusFinancialAidApplication]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusFinancialAidApplication copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    _is.UuidValue? academicYearId,
    int? requestedMinor,
    String? reason,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusFinancialAidApplication',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'requestedMinor': requestedMinor,
      'reason': reason,
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusFinancialAidApplication',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'requestedMinor': requestedMinor,
      'reason': reason,
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusFinancialAidApplicationInclude include() {
    return CampusFinancialAidApplicationInclude._();
  }

  static CampusFinancialAidApplicationIncludeList includeList({
    _is.WhereExpressionBuilder<CampusFinancialAidApplicationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFinancialAidApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusFinancialAidApplicationTable>? orderByList,
    CampusFinancialAidApplicationInclude? include,
  }) {
    return CampusFinancialAidApplicationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFinancialAidApplication.t),
      orderByList: orderByList?.call(CampusFinancialAidApplication.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusFinancialAidApplicationImpl extends CampusFinancialAidApplication {
  _CampusFinancialAidApplicationImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue academicYearId,
    required int requestedMinor,
    required String reason,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         academicYearId: academicYearId,
         requestedMinor: requestedMinor,
         reason: reason,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusFinancialAidApplication]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusFinancialAidApplication copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    _is.UuidValue? academicYearId,
    int? requestedMinor,
    String? reason,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusFinancialAidApplication(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      academicYearId: academicYearId ?? this.academicYearId,
      requestedMinor: requestedMinor ?? this.requestedMinor,
      reason: reason ?? this.reason,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusFinancialAidApplicationUpdateTable
    extends _is.UpdateTable<CampusFinancialAidApplicationTable> {
  CampusFinancialAidApplicationUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> academicYearId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.academicYearId,
    value,
  );

  _is.ColumnValue<int, int> requestedMinor(int value) => _is.ColumnValue(
    table.requestedMinor,
    value,
  );

  _is.ColumnValue<String, String> reason(String value) => _is.ColumnValue(
    table.reason,
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

class CampusFinancialAidApplicationTable extends _is.Table<_is.UuidValue?> {
  CampusFinancialAidApplicationTable({super.tableRelation})
    : super(tableName: 'campus_financial_aid_applications') {
    updateTable = CampusFinancialAidApplicationUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    academicYearId = _is.ColumnUuid(
      'academicYearId',
      this,
    );
    requestedMinor = _is.ColumnInt(
      'requestedMinor',
      this,
    );
    reason = _is.ColumnString(
      'reason',
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

  late final CampusFinancialAidApplicationUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid academicYearId;

  late final _is.ColumnInt requestedMinor;

  late final _is.ColumnString reason;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    academicYearId,
    requestedMinor,
    reason,
    status,
    createdAt,
  ];
}

class CampusFinancialAidApplicationInclude extends _is.IncludeObject {
  CampusFinancialAidApplicationInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFinancialAidApplication.t;
}

class CampusFinancialAidApplicationIncludeList extends _is.IncludeList {
  CampusFinancialAidApplicationIncludeList._({
    _is.WhereExpressionBuilder<CampusFinancialAidApplicationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusFinancialAidApplication.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFinancialAidApplication.t;
}

class CampusFinancialAidApplicationRepository {
  const CampusFinancialAidApplicationRepository._();

  /// Returns a list of [CampusFinancialAidApplication]s matching the given query parameters.
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
  Future<List<CampusFinancialAidApplication>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFinancialAidApplicationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFinancialAidApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusFinancialAidApplicationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusFinancialAidApplication>(
      where: where?.call(CampusFinancialAidApplication.t),
      orderBy: orderBy?.call(CampusFinancialAidApplication.t),
      orderByList: orderByList?.call(CampusFinancialAidApplication.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusFinancialAidApplication] matching the given query parameters.
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
  Future<CampusFinancialAidApplication?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFinancialAidApplicationTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusFinancialAidApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusFinancialAidApplicationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusFinancialAidApplication>(
      where: where?.call(CampusFinancialAidApplication.t),
      orderBy: orderBy?.call(CampusFinancialAidApplication.t),
      orderByList: orderByList?.call(CampusFinancialAidApplication.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusFinancialAidApplication] by its [id] or null if no such row exists.
  Future<CampusFinancialAidApplication?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusFinancialAidApplication>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusFinancialAidApplication]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusFinancialAidApplication]s will have their `id` fields set.
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
  Future<List<CampusFinancialAidApplication>> insert(
    _is.DatabaseSession session,
    List<CampusFinancialAidApplication> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusFinancialAidApplication>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusFinancialAidApplication] and returns the inserted row.
  ///
  /// The returned [CampusFinancialAidApplication] will have its `id` field set.
  Future<CampusFinancialAidApplication> insertRow(
    _is.DatabaseSession session,
    CampusFinancialAidApplication row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusFinancialAidApplication>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusFinancialAidApplication]s in the list and returns the resulting rows.
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
  /// The returned [CampusFinancialAidApplication]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFinancialAidApplication>> upsert(
    _is.DatabaseSession session,
    List<CampusFinancialAidApplication> rows, {
    required _is.ColumnSelections<CampusFinancialAidApplicationTable>
    conflictColumns,
    _is.ColumnSelections<CampusFinancialAidApplicationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFinancialAidApplicationTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusFinancialAidApplication>(
      rows,
      conflictColumns: conflictColumns(CampusFinancialAidApplication.t),
      updateColumns: updateColumns?.call(CampusFinancialAidApplication.t),
      updateWhere: updateWhere?.call(CampusFinancialAidApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusFinancialAidApplication] and returns the resulting row.
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
  /// The returned [CampusFinancialAidApplication] will have its `id` field set.
  Future<CampusFinancialAidApplication?> upsertRow(
    _is.DatabaseSession session,
    CampusFinancialAidApplication row, {
    required _is.ColumnSelections<CampusFinancialAidApplicationTable>
    conflictColumns,
    _is.ColumnSelections<CampusFinancialAidApplicationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFinancialAidApplicationTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusFinancialAidApplication>(
      row,
      conflictColumns: conflictColumns(CampusFinancialAidApplication.t),
      updateColumns: updateColumns?.call(CampusFinancialAidApplication.t),
      updateWhere: updateWhere?.call(CampusFinancialAidApplication.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFinancialAidApplication]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFinancialAidApplication>> update(
    _is.DatabaseSession session,
    List<CampusFinancialAidApplication> rows, {
    _is.ColumnSelections<CampusFinancialAidApplicationTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusFinancialAidApplication>(
      rows,
      columns: columns?.call(CampusFinancialAidApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusFinancialAidApplication]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusFinancialAidApplication> updateRow(
    _is.DatabaseSession session,
    CampusFinancialAidApplication row, {
    _is.ColumnSelections<CampusFinancialAidApplicationTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusFinancialAidApplication>(
      row,
      columns: columns?.call(CampusFinancialAidApplication.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusFinancialAidApplication] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusFinancialAidApplication?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<
      CampusFinancialAidApplicationUpdateTable
    >
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusFinancialAidApplication>(
      id,
      columnValues: columnValues(CampusFinancialAidApplication.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFinancialAidApplication]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFinancialAidApplication>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<
      CampusFinancialAidApplicationUpdateTable
    >
    columnValues,
    required _is.WhereExpressionBuilder<CampusFinancialAidApplicationTable>
    where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFinancialAidApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusFinancialAidApplicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusFinancialAidApplication>(
      columnValues: columnValues(CampusFinancialAidApplication.t.updateTable),
      where: where(CampusFinancialAidApplication.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFinancialAidApplication.t),
      orderByList: orderByList?.call(CampusFinancialAidApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusFinancialAidApplication]s in the list and returns the deleted rows.
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
  Future<List<CampusFinancialAidApplication>> delete(
    _is.DatabaseSession session,
    List<CampusFinancialAidApplication> rows, {
    _is.OrderByBuilder<CampusFinancialAidApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusFinancialAidApplicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusFinancialAidApplication>(
      rows,
      orderBy: orderBy?.call(CampusFinancialAidApplication.t),
      orderByList: orderByList?.call(CampusFinancialAidApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusFinancialAidApplication].
  Future<CampusFinancialAidApplication> deleteRow(
    _is.DatabaseSession session,
    CampusFinancialAidApplication row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusFinancialAidApplication>(
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
  Future<List<CampusFinancialAidApplication>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFinancialAidApplicationTable>
    where,
    _is.OrderByBuilder<CampusFinancialAidApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusFinancialAidApplicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusFinancialAidApplication>(
      where: where(CampusFinancialAidApplication.t),
      orderBy: orderBy?.call(CampusFinancialAidApplication.t),
      orderByList: orderByList?.call(CampusFinancialAidApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFinancialAidApplicationTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusFinancialAidApplication>(
      where: where?.call(CampusFinancialAidApplication.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusFinancialAidApplication] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFinancialAidApplicationTable>
    where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusFinancialAidApplication>(
      where: where(CampusFinancialAidApplication.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
