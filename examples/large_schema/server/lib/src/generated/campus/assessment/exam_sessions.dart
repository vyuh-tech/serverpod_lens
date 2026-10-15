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

/// Fictional university fixture: assessment.
abstract class CampusExamSession
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusExamSession._({
    this.id,
    required this.examId,
    required this.termId,
    required this.roomId,
    required this.startsAt,
    required this.capacity,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusExamSession({
    _is.UuidValue? id,
    required _is.UuidValue examId,
    required _is.UuidValue termId,
    required _is.UuidValue roomId,
    required DateTime startsAt,
    required int capacity,
    DateTime? createdAt,
  }) = _CampusExamSessionImpl;

  factory CampusExamSession.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusExamSession(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      examId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['examId']),
      termId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['termId']),
      roomId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['roomId']),
      startsAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['startsAt'],
      ),
      capacity: jsonSerialization['capacity'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusExamSessionTable();

  static const db = CampusExamSessionRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue examId;

  _is.UuidValue termId;

  _is.UuidValue roomId;

  DateTime startsAt;

  int capacity;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusExamSession]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusExamSession copyWith({
    _is.UuidValue? id,
    _is.UuidValue? examId,
    _is.UuidValue? termId,
    _is.UuidValue? roomId,
    DateTime? startsAt,
    int? capacity,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusExamSession',
      if (id != null) 'id': id?.toJson(),
      'examId': examId.toJson(),
      'termId': termId.toJson(),
      'roomId': roomId.toJson(),
      'startsAt': startsAt.toJson(),
      'capacity': capacity,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusExamSession',
      if (id != null) 'id': id?.toJson(),
      'examId': examId.toJson(),
      'termId': termId.toJson(),
      'roomId': roomId.toJson(),
      'startsAt': startsAt.toJson(),
      'capacity': capacity,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusExamSessionInclude include() {
    return CampusExamSessionInclude._();
  }

  static CampusExamSessionIncludeList includeList({
    _is.WhereExpressionBuilder<CampusExamSessionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamSessionTable>? orderBy,
    _is.OrderByListBuilder<CampusExamSessionTable>? orderByList,
    CampusExamSessionInclude? include,
  }) {
    return CampusExamSessionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusExamSession.t),
      orderByList: orderByList?.call(CampusExamSession.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusExamSessionImpl extends CampusExamSession {
  _CampusExamSessionImpl({
    _is.UuidValue? id,
    required _is.UuidValue examId,
    required _is.UuidValue termId,
    required _is.UuidValue roomId,
    required DateTime startsAt,
    required int capacity,
    DateTime? createdAt,
  }) : super._(
         id: id,
         examId: examId,
         termId: termId,
         roomId: roomId,
         startsAt: startsAt,
         capacity: capacity,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusExamSession]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusExamSession copyWith({
    Object? id = _Undefined,
    _is.UuidValue? examId,
    _is.UuidValue? termId,
    _is.UuidValue? roomId,
    DateTime? startsAt,
    int? capacity,
    DateTime? createdAt,
  }) {
    return CampusExamSession(
      id: id is _is.UuidValue? ? id : this.id,
      examId: examId ?? this.examId,
      termId: termId ?? this.termId,
      roomId: roomId ?? this.roomId,
      startsAt: startsAt ?? this.startsAt,
      capacity: capacity ?? this.capacity,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusExamSessionUpdateTable
    extends _is.UpdateTable<CampusExamSessionTable> {
  CampusExamSessionUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> examId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.examId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> termId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.termId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> roomId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.roomId,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> startsAt(DateTime value) =>
      _is.ColumnValue(
        table.startsAt,
        value,
      );

  _is.ColumnValue<int, int> capacity(int value) => _is.ColumnValue(
    table.capacity,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusExamSessionTable extends _is.Table<_is.UuidValue?> {
  CampusExamSessionTable({super.tableRelation})
    : super(tableName: 'campus_exam_sessions') {
    updateTable = CampusExamSessionUpdateTable(this);
    examId = _is.ColumnUuid(
      'examId',
      this,
    );
    termId = _is.ColumnUuid(
      'termId',
      this,
    );
    roomId = _is.ColumnUuid(
      'roomId',
      this,
    );
    startsAt = _is.ColumnDateTime(
      'startsAt',
      this,
    );
    capacity = _is.ColumnInt(
      'capacity',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusExamSessionUpdateTable updateTable;

  late final _is.ColumnUuid examId;

  late final _is.ColumnUuid termId;

  late final _is.ColumnUuid roomId;

  late final _is.ColumnDateTime startsAt;

  late final _is.ColumnInt capacity;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    examId,
    termId,
    roomId,
    startsAt,
    capacity,
    createdAt,
  ];
}

class CampusExamSessionInclude extends _is.IncludeObject {
  CampusExamSessionInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusExamSession.t;
}

class CampusExamSessionIncludeList extends _is.IncludeList {
  CampusExamSessionIncludeList._({
    _is.WhereExpressionBuilder<CampusExamSessionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusExamSession.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusExamSession.t;
}

class CampusExamSessionRepository {
  const CampusExamSessionRepository._();

  /// Returns a list of [CampusExamSession]s matching the given query parameters.
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
  Future<List<CampusExamSession>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamSessionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamSessionTable>? orderBy,
    _is.OrderByListBuilder<CampusExamSessionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusExamSession>(
      where: where?.call(CampusExamSession.t),
      orderBy: orderBy?.call(CampusExamSession.t),
      orderByList: orderByList?.call(CampusExamSession.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusExamSession] matching the given query parameters.
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
  Future<CampusExamSession?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamSessionTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusExamSessionTable>? orderBy,
    _is.OrderByListBuilder<CampusExamSessionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusExamSession>(
      where: where?.call(CampusExamSession.t),
      orderBy: orderBy?.call(CampusExamSession.t),
      orderByList: orderByList?.call(CampusExamSession.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusExamSession] by its [id] or null if no such row exists.
  Future<CampusExamSession?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusExamSession>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusExamSession]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusExamSession]s will have their `id` fields set.
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
  Future<List<CampusExamSession>> insert(
    _is.DatabaseSession session,
    List<CampusExamSession> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusExamSession>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusExamSession] and returns the inserted row.
  ///
  /// The returned [CampusExamSession] will have its `id` field set.
  Future<CampusExamSession> insertRow(
    _is.DatabaseSession session,
    CampusExamSession row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusExamSession>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusExamSession]s in the list and returns the resulting rows.
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
  /// The returned [CampusExamSession]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExamSession>> upsert(
    _is.DatabaseSession session,
    List<CampusExamSession> rows, {
    required _is.ColumnSelections<CampusExamSessionTable> conflictColumns,
    _is.ColumnSelections<CampusExamSessionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusExamSessionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusExamSession>(
      rows,
      conflictColumns: conflictColumns(CampusExamSession.t),
      updateColumns: updateColumns?.call(CampusExamSession.t),
      updateWhere: updateWhere?.call(CampusExamSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusExamSession] and returns the resulting row.
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
  /// The returned [CampusExamSession] will have its `id` field set.
  Future<CampusExamSession?> upsertRow(
    _is.DatabaseSession session,
    CampusExamSession row, {
    required _is.ColumnSelections<CampusExamSessionTable> conflictColumns,
    _is.ColumnSelections<CampusExamSessionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusExamSessionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusExamSession>(
      row,
      conflictColumns: conflictColumns(CampusExamSession.t),
      updateColumns: updateColumns?.call(CampusExamSession.t),
      updateWhere: updateWhere?.call(CampusExamSession.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusExamSession]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExamSession>> update(
    _is.DatabaseSession session,
    List<CampusExamSession> rows, {
    _is.ColumnSelections<CampusExamSessionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusExamSession>(
      rows,
      columns: columns?.call(CampusExamSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusExamSession]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusExamSession> updateRow(
    _is.DatabaseSession session,
    CampusExamSession row, {
    _is.ColumnSelections<CampusExamSessionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusExamSession>(
      row,
      columns: columns?.call(CampusExamSession.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusExamSession] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusExamSession?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusExamSessionUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusExamSession>(
      id,
      columnValues: columnValues(CampusExamSession.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusExamSession]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExamSession>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusExamSessionUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusExamSessionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamSessionTable>? orderBy,
    _is.OrderByListBuilder<CampusExamSessionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusExamSession>(
      columnValues: columnValues(CampusExamSession.t.updateTable),
      where: where(CampusExamSession.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusExamSession.t),
      orderByList: orderByList?.call(CampusExamSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusExamSession]s in the list and returns the deleted rows.
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
  Future<List<CampusExamSession>> delete(
    _is.DatabaseSession session,
    List<CampusExamSession> rows, {
    _is.OrderByBuilder<CampusExamSessionTable>? orderBy,
    _is.OrderByListBuilder<CampusExamSessionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusExamSession>(
      rows,
      orderBy: orderBy?.call(CampusExamSession.t),
      orderByList: orderByList?.call(CampusExamSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusExamSession].
  Future<CampusExamSession> deleteRow(
    _is.DatabaseSession session,
    CampusExamSession row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusExamSession>(
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
  Future<List<CampusExamSession>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusExamSessionTable> where,
    _is.OrderByBuilder<CampusExamSessionTable>? orderBy,
    _is.OrderByListBuilder<CampusExamSessionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusExamSession>(
      where: where(CampusExamSession.t),
      orderBy: orderBy?.call(CampusExamSession.t),
      orderByList: orderByList?.call(CampusExamSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamSessionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusExamSession>(
      where: where?.call(CampusExamSession.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusExamSession] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusExamSessionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusExamSession>(
      where: where(CampusExamSession.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
