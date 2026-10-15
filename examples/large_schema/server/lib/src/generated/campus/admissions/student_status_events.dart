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

/// Fictional university fixture: admissions.
abstract class CampusStudentStatusEvent
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusStudentStatusEvent._({
    this.id,
    required this.studentId,
    this.previousStatus,
    required this.nextStatus,
    required this.effectiveAt,
    this.reason,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentStatusEvent({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    String? previousStatus,
    required String nextStatus,
    required DateTime effectiveAt,
    String? reason,
    DateTime? createdAt,
  }) = _CampusStudentStatusEventImpl;

  factory CampusStudentStatusEvent.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusStudentStatusEvent(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      previousStatus: jsonSerialization['previousStatus'] as String?,
      nextStatus: jsonSerialization['nextStatus'] as String,
      effectiveAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['effectiveAt'],
      ),
      reason: jsonSerialization['reason'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusStudentStatusEventTable();

  static const db = CampusStudentStatusEventRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  String? previousStatus;

  String nextStatus;

  DateTime effectiveAt;

  String? reason;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusStudentStatusEvent]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusStudentStatusEvent copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    String? previousStatus,
    String? nextStatus,
    DateTime? effectiveAt,
    String? reason,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentStatusEvent',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      if (previousStatus != null) 'previousStatus': previousStatus,
      'nextStatus': nextStatus,
      'effectiveAt': effectiveAt.toJson(),
      if (reason != null) 'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentStatusEvent',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      if (previousStatus != null) 'previousStatus': previousStatus,
      'nextStatus': nextStatus,
      'effectiveAt': effectiveAt.toJson(),
      if (reason != null) 'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusStudentStatusEventInclude include() {
    return CampusStudentStatusEventInclude._();
  }

  static CampusStudentStatusEventIncludeList includeList({
    _is.WhereExpressionBuilder<CampusStudentStatusEventTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentStatusEventTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentStatusEventTable>? orderByList,
    CampusStudentStatusEventInclude? include,
  }) {
    return CampusStudentStatusEventIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentStatusEvent.t),
      orderByList: orderByList?.call(CampusStudentStatusEvent.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentStatusEventImpl extends CampusStudentStatusEvent {
  _CampusStudentStatusEventImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    String? previousStatus,
    required String nextStatus,
    required DateTime effectiveAt,
    String? reason,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         previousStatus: previousStatus,
         nextStatus: nextStatus,
         effectiveAt: effectiveAt,
         reason: reason,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentStatusEvent]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusStudentStatusEvent copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    Object? previousStatus = _Undefined,
    String? nextStatus,
    DateTime? effectiveAt,
    Object? reason = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusStudentStatusEvent(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      previousStatus: previousStatus is String?
          ? previousStatus
          : this.previousStatus,
      nextStatus: nextStatus ?? this.nextStatus,
      effectiveAt: effectiveAt ?? this.effectiveAt,
      reason: reason is String? ? reason : this.reason,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusStudentStatusEventUpdateTable
    extends _is.UpdateTable<CampusStudentStatusEventTable> {
  CampusStudentStatusEventUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<String, String> previousStatus(String? value) =>
      _is.ColumnValue(
        table.previousStatus,
        value,
      );

  _is.ColumnValue<String, String> nextStatus(String value) => _is.ColumnValue(
    table.nextStatus,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> effectiveAt(DateTime value) =>
      _is.ColumnValue(
        table.effectiveAt,
        value,
      );

  _is.ColumnValue<String, String> reason(String? value) => _is.ColumnValue(
    table.reason,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusStudentStatusEventTable extends _is.Table<_is.UuidValue?> {
  CampusStudentStatusEventTable({super.tableRelation})
    : super(tableName: 'campus_student_status_events') {
    updateTable = CampusStudentStatusEventUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    previousStatus = _is.ColumnString(
      'previousStatus',
      this,
    );
    nextStatus = _is.ColumnString(
      'nextStatus',
      this,
    );
    effectiveAt = _is.ColumnDateTime(
      'effectiveAt',
      this,
    );
    reason = _is.ColumnString(
      'reason',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusStudentStatusEventUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnString previousStatus;

  late final _is.ColumnString nextStatus;

  late final _is.ColumnDateTime effectiveAt;

  late final _is.ColumnString reason;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    previousStatus,
    nextStatus,
    effectiveAt,
    reason,
    createdAt,
  ];
}

class CampusStudentStatusEventInclude extends _is.IncludeObject {
  CampusStudentStatusEventInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentStatusEvent.t;
}

class CampusStudentStatusEventIncludeList extends _is.IncludeList {
  CampusStudentStatusEventIncludeList._({
    _is.WhereExpressionBuilder<CampusStudentStatusEventTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusStudentStatusEvent.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentStatusEvent.t;
}

class CampusStudentStatusEventRepository {
  const CampusStudentStatusEventRepository._();

  /// Returns a list of [CampusStudentStatusEvent]s matching the given query parameters.
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
  Future<List<CampusStudentStatusEvent>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentStatusEventTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentStatusEventTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentStatusEventTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusStudentStatusEvent>(
      where: where?.call(CampusStudentStatusEvent.t),
      orderBy: orderBy?.call(CampusStudentStatusEvent.t),
      orderByList: orderByList?.call(CampusStudentStatusEvent.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusStudentStatusEvent] matching the given query parameters.
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
  Future<CampusStudentStatusEvent?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentStatusEventTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusStudentStatusEventTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentStatusEventTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusStudentStatusEvent>(
      where: where?.call(CampusStudentStatusEvent.t),
      orderBy: orderBy?.call(CampusStudentStatusEvent.t),
      orderByList: orderByList?.call(CampusStudentStatusEvent.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusStudentStatusEvent] by its [id] or null if no such row exists.
  Future<CampusStudentStatusEvent?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusStudentStatusEvent>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusStudentStatusEvent]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusStudentStatusEvent]s will have their `id` fields set.
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
  Future<List<CampusStudentStatusEvent>> insert(
    _is.DatabaseSession session,
    List<CampusStudentStatusEvent> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusStudentStatusEvent>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusStudentStatusEvent] and returns the inserted row.
  ///
  /// The returned [CampusStudentStatusEvent] will have its `id` field set.
  Future<CampusStudentStatusEvent> insertRow(
    _is.DatabaseSession session,
    CampusStudentStatusEvent row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusStudentStatusEvent>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusStudentStatusEvent]s in the list and returns the resulting rows.
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
  /// The returned [CampusStudentStatusEvent]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentStatusEvent>> upsert(
    _is.DatabaseSession session,
    List<CampusStudentStatusEvent> rows, {
    required _is.ColumnSelections<CampusStudentStatusEventTable>
    conflictColumns,
    _is.ColumnSelections<CampusStudentStatusEventTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentStatusEventTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusStudentStatusEvent>(
      rows,
      conflictColumns: conflictColumns(CampusStudentStatusEvent.t),
      updateColumns: updateColumns?.call(CampusStudentStatusEvent.t),
      updateWhere: updateWhere?.call(CampusStudentStatusEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusStudentStatusEvent] and returns the resulting row.
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
  /// The returned [CampusStudentStatusEvent] will have its `id` field set.
  Future<CampusStudentStatusEvent?> upsertRow(
    _is.DatabaseSession session,
    CampusStudentStatusEvent row, {
    required _is.ColumnSelections<CampusStudentStatusEventTable>
    conflictColumns,
    _is.ColumnSelections<CampusStudentStatusEventTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentStatusEventTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusStudentStatusEvent>(
      row,
      conflictColumns: conflictColumns(CampusStudentStatusEvent.t),
      updateColumns: updateColumns?.call(CampusStudentStatusEvent.t),
      updateWhere: updateWhere?.call(CampusStudentStatusEvent.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentStatusEvent]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentStatusEvent>> update(
    _is.DatabaseSession session,
    List<CampusStudentStatusEvent> rows, {
    _is.ColumnSelections<CampusStudentStatusEventTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusStudentStatusEvent>(
      rows,
      columns: columns?.call(CampusStudentStatusEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusStudentStatusEvent]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusStudentStatusEvent> updateRow(
    _is.DatabaseSession session,
    CampusStudentStatusEvent row, {
    _is.ColumnSelections<CampusStudentStatusEventTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusStudentStatusEvent>(
      row,
      columns: columns?.call(CampusStudentStatusEvent.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusStudentStatusEvent] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusStudentStatusEvent?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusStudentStatusEventUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusStudentStatusEvent>(
      id,
      columnValues: columnValues(CampusStudentStatusEvent.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentStatusEvent]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentStatusEvent>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusStudentStatusEventUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusStudentStatusEventTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentStatusEventTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentStatusEventTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusStudentStatusEvent>(
      columnValues: columnValues(CampusStudentStatusEvent.t.updateTable),
      where: where(CampusStudentStatusEvent.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentStatusEvent.t),
      orderByList: orderByList?.call(CampusStudentStatusEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusStudentStatusEvent]s in the list and returns the deleted rows.
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
  Future<List<CampusStudentStatusEvent>> delete(
    _is.DatabaseSession session,
    List<CampusStudentStatusEvent> rows, {
    _is.OrderByBuilder<CampusStudentStatusEventTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentStatusEventTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusStudentStatusEvent>(
      rows,
      orderBy: orderBy?.call(CampusStudentStatusEvent.t),
      orderByList: orderByList?.call(CampusStudentStatusEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusStudentStatusEvent].
  Future<CampusStudentStatusEvent> deleteRow(
    _is.DatabaseSession session,
    CampusStudentStatusEvent row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusStudentStatusEvent>(
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
  Future<List<CampusStudentStatusEvent>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentStatusEventTable> where,
    _is.OrderByBuilder<CampusStudentStatusEventTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentStatusEventTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusStudentStatusEvent>(
      where: where(CampusStudentStatusEvent.t),
      orderBy: orderBy?.call(CampusStudentStatusEvent.t),
      orderByList: orderByList?.call(CampusStudentStatusEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentStatusEventTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusStudentStatusEvent>(
      where: where?.call(CampusStudentStatusEvent.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusStudentStatusEvent] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentStatusEventTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusStudentStatusEvent>(
      where: where(CampusStudentStatusEvent.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
