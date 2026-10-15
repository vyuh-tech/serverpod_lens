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
abstract class CampusAttendanceSession
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusAttendanceSession._({
    this.id,
    required this.sectionId,
    this.meetingId,
    required this.heldAt,
    this.topic,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAttendanceSession({
    _is.UuidValue? id,
    required _is.UuidValue sectionId,
    _is.UuidValue? meetingId,
    required DateTime heldAt,
    String? topic,
    DateTime? createdAt,
  }) = _CampusAttendanceSessionImpl;

  factory CampusAttendanceSession.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusAttendanceSession(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sectionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      meetingId: jsonSerialization['meetingId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['meetingId']),
      heldAt: _is.DateTimeJsonExtension.fromJson(jsonSerialization['heldAt']),
      topic: jsonSerialization['topic'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusAttendanceSessionTable();

  static const db = CampusAttendanceSessionRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue sectionId;

  _is.UuidValue? meetingId;

  DateTime heldAt;

  String? topic;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusAttendanceSession]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusAttendanceSession copyWith({
    _is.UuidValue? id,
    _is.UuidValue? sectionId,
    _is.UuidValue? meetingId,
    DateTime? heldAt,
    String? topic,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAttendanceSession',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      if (meetingId != null) 'meetingId': meetingId?.toJson(),
      'heldAt': heldAt.toJson(),
      if (topic != null) 'topic': topic,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAttendanceSession',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      if (meetingId != null) 'meetingId': meetingId?.toJson(),
      'heldAt': heldAt.toJson(),
      if (topic != null) 'topic': topic,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusAttendanceSessionInclude include() {
    return CampusAttendanceSessionInclude._();
  }

  static CampusAttendanceSessionIncludeList includeList({
    _is.WhereExpressionBuilder<CampusAttendanceSessionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAttendanceSessionTable>? orderBy,
    _is.OrderByListBuilder<CampusAttendanceSessionTable>? orderByList,
    CampusAttendanceSessionInclude? include,
  }) {
    return CampusAttendanceSessionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAttendanceSession.t),
      orderByList: orderByList?.call(CampusAttendanceSession.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAttendanceSessionImpl extends CampusAttendanceSession {
  _CampusAttendanceSessionImpl({
    _is.UuidValue? id,
    required _is.UuidValue sectionId,
    _is.UuidValue? meetingId,
    required DateTime heldAt,
    String? topic,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sectionId: sectionId,
         meetingId: meetingId,
         heldAt: heldAt,
         topic: topic,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAttendanceSession]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusAttendanceSession copyWith({
    Object? id = _Undefined,
    _is.UuidValue? sectionId,
    Object? meetingId = _Undefined,
    DateTime? heldAt,
    Object? topic = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusAttendanceSession(
      id: id is _is.UuidValue? ? id : this.id,
      sectionId: sectionId ?? this.sectionId,
      meetingId: meetingId is _is.UuidValue? ? meetingId : this.meetingId,
      heldAt: heldAt ?? this.heldAt,
      topic: topic is String? ? topic : this.topic,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusAttendanceSessionUpdateTable
    extends _is.UpdateTable<CampusAttendanceSessionTable> {
  CampusAttendanceSessionUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> sectionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.sectionId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> meetingId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.meetingId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> heldAt(DateTime value) => _is.ColumnValue(
    table.heldAt,
    value,
  );

  _is.ColumnValue<String, String> topic(String? value) => _is.ColumnValue(
    table.topic,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusAttendanceSessionTable extends _is.Table<_is.UuidValue?> {
  CampusAttendanceSessionTable({super.tableRelation})
    : super(tableName: 'campus_attendance_sessions') {
    updateTable = CampusAttendanceSessionUpdateTable(this);
    sectionId = _is.ColumnUuid(
      'sectionId',
      this,
    );
    meetingId = _is.ColumnUuid(
      'meetingId',
      this,
    );
    heldAt = _is.ColumnDateTime(
      'heldAt',
      this,
    );
    topic = _is.ColumnString(
      'topic',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusAttendanceSessionUpdateTable updateTable;

  late final _is.ColumnUuid sectionId;

  late final _is.ColumnUuid meetingId;

  late final _is.ColumnDateTime heldAt;

  late final _is.ColumnString topic;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    sectionId,
    meetingId,
    heldAt,
    topic,
    createdAt,
  ];
}

class CampusAttendanceSessionInclude extends _is.IncludeObject {
  CampusAttendanceSessionInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAttendanceSession.t;
}

class CampusAttendanceSessionIncludeList extends _is.IncludeList {
  CampusAttendanceSessionIncludeList._({
    _is.WhereExpressionBuilder<CampusAttendanceSessionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusAttendanceSession.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAttendanceSession.t;
}

class CampusAttendanceSessionRepository {
  const CampusAttendanceSessionRepository._();

  /// Returns a list of [CampusAttendanceSession]s matching the given query parameters.
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
  Future<List<CampusAttendanceSession>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAttendanceSessionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAttendanceSessionTable>? orderBy,
    _is.OrderByListBuilder<CampusAttendanceSessionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusAttendanceSession>(
      where: where?.call(CampusAttendanceSession.t),
      orderBy: orderBy?.call(CampusAttendanceSession.t),
      orderByList: orderByList?.call(CampusAttendanceSession.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusAttendanceSession] matching the given query parameters.
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
  Future<CampusAttendanceSession?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAttendanceSessionTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusAttendanceSessionTable>? orderBy,
    _is.OrderByListBuilder<CampusAttendanceSessionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusAttendanceSession>(
      where: where?.call(CampusAttendanceSession.t),
      orderBy: orderBy?.call(CampusAttendanceSession.t),
      orderByList: orderByList?.call(CampusAttendanceSession.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusAttendanceSession] by its [id] or null if no such row exists.
  Future<CampusAttendanceSession?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusAttendanceSession>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusAttendanceSession]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusAttendanceSession]s will have their `id` fields set.
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
  Future<List<CampusAttendanceSession>> insert(
    _is.DatabaseSession session,
    List<CampusAttendanceSession> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusAttendanceSession>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusAttendanceSession] and returns the inserted row.
  ///
  /// The returned [CampusAttendanceSession] will have its `id` field set.
  Future<CampusAttendanceSession> insertRow(
    _is.DatabaseSession session,
    CampusAttendanceSession row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusAttendanceSession>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusAttendanceSession]s in the list and returns the resulting rows.
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
  /// The returned [CampusAttendanceSession]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAttendanceSession>> upsert(
    _is.DatabaseSession session,
    List<CampusAttendanceSession> rows, {
    required _is.ColumnSelections<CampusAttendanceSessionTable> conflictColumns,
    _is.ColumnSelections<CampusAttendanceSessionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAttendanceSessionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusAttendanceSession>(
      rows,
      conflictColumns: conflictColumns(CampusAttendanceSession.t),
      updateColumns: updateColumns?.call(CampusAttendanceSession.t),
      updateWhere: updateWhere?.call(CampusAttendanceSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusAttendanceSession] and returns the resulting row.
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
  /// The returned [CampusAttendanceSession] will have its `id` field set.
  Future<CampusAttendanceSession?> upsertRow(
    _is.DatabaseSession session,
    CampusAttendanceSession row, {
    required _is.ColumnSelections<CampusAttendanceSessionTable> conflictColumns,
    _is.ColumnSelections<CampusAttendanceSessionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAttendanceSessionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusAttendanceSession>(
      row,
      conflictColumns: conflictColumns(CampusAttendanceSession.t),
      updateColumns: updateColumns?.call(CampusAttendanceSession.t),
      updateWhere: updateWhere?.call(CampusAttendanceSession.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAttendanceSession]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAttendanceSession>> update(
    _is.DatabaseSession session,
    List<CampusAttendanceSession> rows, {
    _is.ColumnSelections<CampusAttendanceSessionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusAttendanceSession>(
      rows,
      columns: columns?.call(CampusAttendanceSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusAttendanceSession]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusAttendanceSession> updateRow(
    _is.DatabaseSession session,
    CampusAttendanceSession row, {
    _is.ColumnSelections<CampusAttendanceSessionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusAttendanceSession>(
      row,
      columns: columns?.call(CampusAttendanceSession.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusAttendanceSession] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusAttendanceSession?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusAttendanceSessionUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusAttendanceSession>(
      id,
      columnValues: columnValues(CampusAttendanceSession.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAttendanceSession]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAttendanceSession>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusAttendanceSessionUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusAttendanceSessionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAttendanceSessionTable>? orderBy,
    _is.OrderByListBuilder<CampusAttendanceSessionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusAttendanceSession>(
      columnValues: columnValues(CampusAttendanceSession.t.updateTable),
      where: where(CampusAttendanceSession.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAttendanceSession.t),
      orderByList: orderByList?.call(CampusAttendanceSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusAttendanceSession]s in the list and returns the deleted rows.
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
  Future<List<CampusAttendanceSession>> delete(
    _is.DatabaseSession session,
    List<CampusAttendanceSession> rows, {
    _is.OrderByBuilder<CampusAttendanceSessionTable>? orderBy,
    _is.OrderByListBuilder<CampusAttendanceSessionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusAttendanceSession>(
      rows,
      orderBy: orderBy?.call(CampusAttendanceSession.t),
      orderByList: orderByList?.call(CampusAttendanceSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusAttendanceSession].
  Future<CampusAttendanceSession> deleteRow(
    _is.DatabaseSession session,
    CampusAttendanceSession row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusAttendanceSession>(
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
  Future<List<CampusAttendanceSession>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAttendanceSessionTable> where,
    _is.OrderByBuilder<CampusAttendanceSessionTable>? orderBy,
    _is.OrderByListBuilder<CampusAttendanceSessionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusAttendanceSession>(
      where: where(CampusAttendanceSession.t),
      orderBy: orderBy?.call(CampusAttendanceSession.t),
      orderByList: orderByList?.call(CampusAttendanceSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAttendanceSessionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusAttendanceSession>(
      where: where?.call(CampusAttendanceSession.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusAttendanceSession] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAttendanceSessionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusAttendanceSession>(
      where: where(CampusAttendanceSession.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
