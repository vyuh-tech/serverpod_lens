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
abstract class CampusAttendanceRecord
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusAttendanceRecord._({
    this.id,
    required this.sessionId,
    required this.enrolmentId,
    required this.status,
    this.checkedInAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAttendanceRecord({
    _is.UuidValue? id,
    required _is.UuidValue sessionId,
    required _is.UuidValue enrolmentId,
    required String status,
    DateTime? checkedInAt,
    DateTime? createdAt,
  }) = _CampusAttendanceRecordImpl;

  factory CampusAttendanceRecord.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusAttendanceRecord(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sessionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['sessionId'],
      ),
      enrolmentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['enrolmentId'],
      ),
      status: jsonSerialization['status'] as String,
      checkedInAt: jsonSerialization['checkedInAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['checkedInAt'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusAttendanceRecordTable();

  static const db = CampusAttendanceRecordRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue sessionId;

  _is.UuidValue enrolmentId;

  String status;

  DateTime? checkedInAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusAttendanceRecord]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusAttendanceRecord copyWith({
    _is.UuidValue? id,
    _is.UuidValue? sessionId,
    _is.UuidValue? enrolmentId,
    String? status,
    DateTime? checkedInAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAttendanceRecord',
      if (id != null) 'id': id?.toJson(),
      'sessionId': sessionId.toJson(),
      'enrolmentId': enrolmentId.toJson(),
      'status': status,
      if (checkedInAt != null) 'checkedInAt': checkedInAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAttendanceRecord',
      if (id != null) 'id': id?.toJson(),
      'sessionId': sessionId.toJson(),
      'enrolmentId': enrolmentId.toJson(),
      'status': status,
      if (checkedInAt != null) 'checkedInAt': checkedInAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusAttendanceRecordInclude include() {
    return CampusAttendanceRecordInclude._();
  }

  static CampusAttendanceRecordIncludeList includeList({
    _is.WhereExpressionBuilder<CampusAttendanceRecordTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAttendanceRecordTable>? orderBy,
    _is.OrderByListBuilder<CampusAttendanceRecordTable>? orderByList,
    CampusAttendanceRecordInclude? include,
  }) {
    return CampusAttendanceRecordIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAttendanceRecord.t),
      orderByList: orderByList?.call(CampusAttendanceRecord.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAttendanceRecordImpl extends CampusAttendanceRecord {
  _CampusAttendanceRecordImpl({
    _is.UuidValue? id,
    required _is.UuidValue sessionId,
    required _is.UuidValue enrolmentId,
    required String status,
    DateTime? checkedInAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sessionId: sessionId,
         enrolmentId: enrolmentId,
         status: status,
         checkedInAt: checkedInAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAttendanceRecord]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusAttendanceRecord copyWith({
    Object? id = _Undefined,
    _is.UuidValue? sessionId,
    _is.UuidValue? enrolmentId,
    String? status,
    Object? checkedInAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusAttendanceRecord(
      id: id is _is.UuidValue? ? id : this.id,
      sessionId: sessionId ?? this.sessionId,
      enrolmentId: enrolmentId ?? this.enrolmentId,
      status: status ?? this.status,
      checkedInAt: checkedInAt is DateTime? ? checkedInAt : this.checkedInAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusAttendanceRecordUpdateTable
    extends _is.UpdateTable<CampusAttendanceRecordTable> {
  CampusAttendanceRecordUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> sessionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.sessionId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> enrolmentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.enrolmentId,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> checkedInAt(DateTime? value) =>
      _is.ColumnValue(
        table.checkedInAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusAttendanceRecordTable extends _is.Table<_is.UuidValue?> {
  CampusAttendanceRecordTable({super.tableRelation})
    : super(tableName: 'campus_attendance_records') {
    updateTable = CampusAttendanceRecordUpdateTable(this);
    sessionId = _is.ColumnUuid(
      'sessionId',
      this,
    );
    enrolmentId = _is.ColumnUuid(
      'enrolmentId',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    checkedInAt = _is.ColumnDateTime(
      'checkedInAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusAttendanceRecordUpdateTable updateTable;

  late final _is.ColumnUuid sessionId;

  late final _is.ColumnUuid enrolmentId;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime checkedInAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    sessionId,
    enrolmentId,
    status,
    checkedInAt,
    createdAt,
  ];
}

class CampusAttendanceRecordInclude extends _is.IncludeObject {
  CampusAttendanceRecordInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAttendanceRecord.t;
}

class CampusAttendanceRecordIncludeList extends _is.IncludeList {
  CampusAttendanceRecordIncludeList._({
    _is.WhereExpressionBuilder<CampusAttendanceRecordTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusAttendanceRecord.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAttendanceRecord.t;
}

class CampusAttendanceRecordRepository {
  const CampusAttendanceRecordRepository._();

  /// Returns a list of [CampusAttendanceRecord]s matching the given query parameters.
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
  Future<List<CampusAttendanceRecord>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAttendanceRecordTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAttendanceRecordTable>? orderBy,
    _is.OrderByListBuilder<CampusAttendanceRecordTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusAttendanceRecord>(
      where: where?.call(CampusAttendanceRecord.t),
      orderBy: orderBy?.call(CampusAttendanceRecord.t),
      orderByList: orderByList?.call(CampusAttendanceRecord.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusAttendanceRecord] matching the given query parameters.
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
  Future<CampusAttendanceRecord?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAttendanceRecordTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusAttendanceRecordTable>? orderBy,
    _is.OrderByListBuilder<CampusAttendanceRecordTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusAttendanceRecord>(
      where: where?.call(CampusAttendanceRecord.t),
      orderBy: orderBy?.call(CampusAttendanceRecord.t),
      orderByList: orderByList?.call(CampusAttendanceRecord.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusAttendanceRecord] by its [id] or null if no such row exists.
  Future<CampusAttendanceRecord?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusAttendanceRecord>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusAttendanceRecord]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusAttendanceRecord]s will have their `id` fields set.
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
  Future<List<CampusAttendanceRecord>> insert(
    _is.DatabaseSession session,
    List<CampusAttendanceRecord> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusAttendanceRecord>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusAttendanceRecord] and returns the inserted row.
  ///
  /// The returned [CampusAttendanceRecord] will have its `id` field set.
  Future<CampusAttendanceRecord> insertRow(
    _is.DatabaseSession session,
    CampusAttendanceRecord row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusAttendanceRecord>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusAttendanceRecord]s in the list and returns the resulting rows.
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
  /// The returned [CampusAttendanceRecord]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAttendanceRecord>> upsert(
    _is.DatabaseSession session,
    List<CampusAttendanceRecord> rows, {
    required _is.ColumnSelections<CampusAttendanceRecordTable> conflictColumns,
    _is.ColumnSelections<CampusAttendanceRecordTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAttendanceRecordTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusAttendanceRecord>(
      rows,
      conflictColumns: conflictColumns(CampusAttendanceRecord.t),
      updateColumns: updateColumns?.call(CampusAttendanceRecord.t),
      updateWhere: updateWhere?.call(CampusAttendanceRecord.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusAttendanceRecord] and returns the resulting row.
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
  /// The returned [CampusAttendanceRecord] will have its `id` field set.
  Future<CampusAttendanceRecord?> upsertRow(
    _is.DatabaseSession session,
    CampusAttendanceRecord row, {
    required _is.ColumnSelections<CampusAttendanceRecordTable> conflictColumns,
    _is.ColumnSelections<CampusAttendanceRecordTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAttendanceRecordTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusAttendanceRecord>(
      row,
      conflictColumns: conflictColumns(CampusAttendanceRecord.t),
      updateColumns: updateColumns?.call(CampusAttendanceRecord.t),
      updateWhere: updateWhere?.call(CampusAttendanceRecord.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAttendanceRecord]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAttendanceRecord>> update(
    _is.DatabaseSession session,
    List<CampusAttendanceRecord> rows, {
    _is.ColumnSelections<CampusAttendanceRecordTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusAttendanceRecord>(
      rows,
      columns: columns?.call(CampusAttendanceRecord.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusAttendanceRecord]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusAttendanceRecord> updateRow(
    _is.DatabaseSession session,
    CampusAttendanceRecord row, {
    _is.ColumnSelections<CampusAttendanceRecordTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusAttendanceRecord>(
      row,
      columns: columns?.call(CampusAttendanceRecord.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusAttendanceRecord] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusAttendanceRecord?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusAttendanceRecordUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusAttendanceRecord>(
      id,
      columnValues: columnValues(CampusAttendanceRecord.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAttendanceRecord]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAttendanceRecord>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusAttendanceRecordUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusAttendanceRecordTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAttendanceRecordTable>? orderBy,
    _is.OrderByListBuilder<CampusAttendanceRecordTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusAttendanceRecord>(
      columnValues: columnValues(CampusAttendanceRecord.t.updateTable),
      where: where(CampusAttendanceRecord.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAttendanceRecord.t),
      orderByList: orderByList?.call(CampusAttendanceRecord.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusAttendanceRecord]s in the list and returns the deleted rows.
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
  Future<List<CampusAttendanceRecord>> delete(
    _is.DatabaseSession session,
    List<CampusAttendanceRecord> rows, {
    _is.OrderByBuilder<CampusAttendanceRecordTable>? orderBy,
    _is.OrderByListBuilder<CampusAttendanceRecordTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusAttendanceRecord>(
      rows,
      orderBy: orderBy?.call(CampusAttendanceRecord.t),
      orderByList: orderByList?.call(CampusAttendanceRecord.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusAttendanceRecord].
  Future<CampusAttendanceRecord> deleteRow(
    _is.DatabaseSession session,
    CampusAttendanceRecord row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusAttendanceRecord>(
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
  Future<List<CampusAttendanceRecord>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAttendanceRecordTable> where,
    _is.OrderByBuilder<CampusAttendanceRecordTable>? orderBy,
    _is.OrderByListBuilder<CampusAttendanceRecordTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusAttendanceRecord>(
      where: where(CampusAttendanceRecord.t),
      orderBy: orderBy?.call(CampusAttendanceRecord.t),
      orderByList: orderByList?.call(CampusAttendanceRecord.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAttendanceRecordTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusAttendanceRecord>(
      where: where?.call(CampusAttendanceRecord.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusAttendanceRecord] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAttendanceRecordTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusAttendanceRecord>(
      where: where(CampusAttendanceRecord.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
