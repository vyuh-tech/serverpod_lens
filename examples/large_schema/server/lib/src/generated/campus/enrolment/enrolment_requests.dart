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

/// Fictional university fixture: enrolment.
abstract class CampusEnrolmentRequest
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusEnrolmentRequest._({
    this.id,
    required this.studentId,
    required this.sectionId,
    required this.requestedAt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusEnrolmentRequest({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue sectionId,
    required DateTime requestedAt,
    required String status,
    DateTime? createdAt,
  }) = _CampusEnrolmentRequestImpl;

  factory CampusEnrolmentRequest.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusEnrolmentRequest(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      sectionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      requestedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['requestedAt'],
      ),
      status: jsonSerialization['status'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusEnrolmentRequestTable();

  static const db = CampusEnrolmentRequestRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  _is.UuidValue sectionId;

  DateTime requestedAt;

  String status;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusEnrolmentRequest]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusEnrolmentRequest copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    _is.UuidValue? sectionId,
    DateTime? requestedAt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusEnrolmentRequest',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'sectionId': sectionId.toJson(),
      'requestedAt': requestedAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusEnrolmentRequest',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'sectionId': sectionId.toJson(),
      'requestedAt': requestedAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusEnrolmentRequestInclude include() {
    return CampusEnrolmentRequestInclude._();
  }

  static CampusEnrolmentRequestIncludeList includeList({
    _is.WhereExpressionBuilder<CampusEnrolmentRequestTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusEnrolmentRequestTable>? orderBy,
    _is.OrderByListBuilder<CampusEnrolmentRequestTable>? orderByList,
    CampusEnrolmentRequestInclude? include,
  }) {
    return CampusEnrolmentRequestIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusEnrolmentRequest.t),
      orderByList: orderByList?.call(CampusEnrolmentRequest.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusEnrolmentRequestImpl extends CampusEnrolmentRequest {
  _CampusEnrolmentRequestImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue sectionId,
    required DateTime requestedAt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         sectionId: sectionId,
         requestedAt: requestedAt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusEnrolmentRequest]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusEnrolmentRequest copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    _is.UuidValue? sectionId,
    DateTime? requestedAt,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusEnrolmentRequest(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      sectionId: sectionId ?? this.sectionId,
      requestedAt: requestedAt ?? this.requestedAt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusEnrolmentRequestUpdateTable
    extends _is.UpdateTable<CampusEnrolmentRequestTable> {
  CampusEnrolmentRequestUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> sectionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.sectionId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> requestedAt(DateTime value) =>
      _is.ColumnValue(
        table.requestedAt,
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

class CampusEnrolmentRequestTable extends _is.Table<_is.UuidValue?> {
  CampusEnrolmentRequestTable({super.tableRelation})
    : super(tableName: 'campus_enrolment_requests') {
    updateTable = CampusEnrolmentRequestUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    sectionId = _is.ColumnUuid(
      'sectionId',
      this,
    );
    requestedAt = _is.ColumnDateTime(
      'requestedAt',
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

  late final CampusEnrolmentRequestUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid sectionId;

  late final _is.ColumnDateTime requestedAt;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    sectionId,
    requestedAt,
    status,
    createdAt,
  ];
}

class CampusEnrolmentRequestInclude extends _is.IncludeObject {
  CampusEnrolmentRequestInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusEnrolmentRequest.t;
}

class CampusEnrolmentRequestIncludeList extends _is.IncludeList {
  CampusEnrolmentRequestIncludeList._({
    _is.WhereExpressionBuilder<CampusEnrolmentRequestTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusEnrolmentRequest.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusEnrolmentRequest.t;
}

class CampusEnrolmentRequestRepository {
  const CampusEnrolmentRequestRepository._();

  /// Returns a list of [CampusEnrolmentRequest]s matching the given query parameters.
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
  Future<List<CampusEnrolmentRequest>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusEnrolmentRequestTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusEnrolmentRequestTable>? orderBy,
    _is.OrderByListBuilder<CampusEnrolmentRequestTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusEnrolmentRequest>(
      where: where?.call(CampusEnrolmentRequest.t),
      orderBy: orderBy?.call(CampusEnrolmentRequest.t),
      orderByList: orderByList?.call(CampusEnrolmentRequest.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusEnrolmentRequest] matching the given query parameters.
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
  Future<CampusEnrolmentRequest?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusEnrolmentRequestTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusEnrolmentRequestTable>? orderBy,
    _is.OrderByListBuilder<CampusEnrolmentRequestTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusEnrolmentRequest>(
      where: where?.call(CampusEnrolmentRequest.t),
      orderBy: orderBy?.call(CampusEnrolmentRequest.t),
      orderByList: orderByList?.call(CampusEnrolmentRequest.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusEnrolmentRequest] by its [id] or null if no such row exists.
  Future<CampusEnrolmentRequest?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusEnrolmentRequest>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusEnrolmentRequest]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusEnrolmentRequest]s will have their `id` fields set.
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
  Future<List<CampusEnrolmentRequest>> insert(
    _is.DatabaseSession session,
    List<CampusEnrolmentRequest> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusEnrolmentRequest>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusEnrolmentRequest] and returns the inserted row.
  ///
  /// The returned [CampusEnrolmentRequest] will have its `id` field set.
  Future<CampusEnrolmentRequest> insertRow(
    _is.DatabaseSession session,
    CampusEnrolmentRequest row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusEnrolmentRequest>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusEnrolmentRequest]s in the list and returns the resulting rows.
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
  /// The returned [CampusEnrolmentRequest]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusEnrolmentRequest>> upsert(
    _is.DatabaseSession session,
    List<CampusEnrolmentRequest> rows, {
    required _is.ColumnSelections<CampusEnrolmentRequestTable> conflictColumns,
    _is.ColumnSelections<CampusEnrolmentRequestTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusEnrolmentRequestTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusEnrolmentRequest>(
      rows,
      conflictColumns: conflictColumns(CampusEnrolmentRequest.t),
      updateColumns: updateColumns?.call(CampusEnrolmentRequest.t),
      updateWhere: updateWhere?.call(CampusEnrolmentRequest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusEnrolmentRequest] and returns the resulting row.
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
  /// The returned [CampusEnrolmentRequest] will have its `id` field set.
  Future<CampusEnrolmentRequest?> upsertRow(
    _is.DatabaseSession session,
    CampusEnrolmentRequest row, {
    required _is.ColumnSelections<CampusEnrolmentRequestTable> conflictColumns,
    _is.ColumnSelections<CampusEnrolmentRequestTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusEnrolmentRequestTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusEnrolmentRequest>(
      row,
      conflictColumns: conflictColumns(CampusEnrolmentRequest.t),
      updateColumns: updateColumns?.call(CampusEnrolmentRequest.t),
      updateWhere: updateWhere?.call(CampusEnrolmentRequest.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusEnrolmentRequest]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusEnrolmentRequest>> update(
    _is.DatabaseSession session,
    List<CampusEnrolmentRequest> rows, {
    _is.ColumnSelections<CampusEnrolmentRequestTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusEnrolmentRequest>(
      rows,
      columns: columns?.call(CampusEnrolmentRequest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusEnrolmentRequest]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusEnrolmentRequest> updateRow(
    _is.DatabaseSession session,
    CampusEnrolmentRequest row, {
    _is.ColumnSelections<CampusEnrolmentRequestTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusEnrolmentRequest>(
      row,
      columns: columns?.call(CampusEnrolmentRequest.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusEnrolmentRequest] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusEnrolmentRequest?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusEnrolmentRequestUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusEnrolmentRequest>(
      id,
      columnValues: columnValues(CampusEnrolmentRequest.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusEnrolmentRequest]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusEnrolmentRequest>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusEnrolmentRequestUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusEnrolmentRequestTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusEnrolmentRequestTable>? orderBy,
    _is.OrderByListBuilder<CampusEnrolmentRequestTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusEnrolmentRequest>(
      columnValues: columnValues(CampusEnrolmentRequest.t.updateTable),
      where: where(CampusEnrolmentRequest.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusEnrolmentRequest.t),
      orderByList: orderByList?.call(CampusEnrolmentRequest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusEnrolmentRequest]s in the list and returns the deleted rows.
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
  Future<List<CampusEnrolmentRequest>> delete(
    _is.DatabaseSession session,
    List<CampusEnrolmentRequest> rows, {
    _is.OrderByBuilder<CampusEnrolmentRequestTable>? orderBy,
    _is.OrderByListBuilder<CampusEnrolmentRequestTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusEnrolmentRequest>(
      rows,
      orderBy: orderBy?.call(CampusEnrolmentRequest.t),
      orderByList: orderByList?.call(CampusEnrolmentRequest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusEnrolmentRequest].
  Future<CampusEnrolmentRequest> deleteRow(
    _is.DatabaseSession session,
    CampusEnrolmentRequest row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusEnrolmentRequest>(
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
  Future<List<CampusEnrolmentRequest>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusEnrolmentRequestTable> where,
    _is.OrderByBuilder<CampusEnrolmentRequestTable>? orderBy,
    _is.OrderByListBuilder<CampusEnrolmentRequestTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusEnrolmentRequest>(
      where: where(CampusEnrolmentRequest.t),
      orderBy: orderBy?.call(CampusEnrolmentRequest.t),
      orderByList: orderByList?.call(CampusEnrolmentRequest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusEnrolmentRequestTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusEnrolmentRequest>(
      where: where?.call(CampusEnrolmentRequest.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusEnrolmentRequest] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusEnrolmentRequestTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusEnrolmentRequest>(
      where: where(CampusEnrolmentRequest.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
