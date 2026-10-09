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

abstract class SsoLoginEvents
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoLoginEvents._({
    this.id,
    required this.userId,
    required this.loggedInAt,
    this.ipAddress,
    this.userAgent,
  });

  factory SsoLoginEvents({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required DateTime loggedInAt,
    String? ipAddress,
    String? userAgent,
  }) = _SsoLoginEventsImpl;

  factory SsoLoginEvents.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoLoginEvents(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      loggedInAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['loggedInAt'],
      ),
      ipAddress: jsonSerialization['ipAddress'] as String?,
      userAgent: jsonSerialization['userAgent'] as String?,
    );
  }

  static final t = SsoLoginEventsTable();

  static const db = SsoLoginEventsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue userId;

  DateTime loggedInAt;

  String? ipAddress;

  String? userAgent;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoLoginEvents]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoLoginEvents copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    DateTime? loggedInAt,
    String? ipAddress,
    String? userAgent,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoLoginEvents',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'loggedInAt': loggedInAt.toJson(),
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (userAgent != null) 'userAgent': userAgent,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoLoginEvents',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'loggedInAt': loggedInAt.toJson(),
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (userAgent != null) 'userAgent': userAgent,
    };
  }

  static SsoLoginEventsInclude include() {
    return SsoLoginEventsInclude._();
  }

  static SsoLoginEventsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoLoginEventsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoLoginEventsTable>? orderBy,
    _is.OrderByListBuilder<SsoLoginEventsTable>? orderByList,
    SsoLoginEventsInclude? include,
  }) {
    return SsoLoginEventsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoLoginEvents.t),
      orderByList: orderByList?.call(SsoLoginEvents.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoLoginEventsImpl extends SsoLoginEvents {
  _SsoLoginEventsImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required DateTime loggedInAt,
    String? ipAddress,
    String? userAgent,
  }) : super._(
         id: id,
         userId: userId,
         loggedInAt: loggedInAt,
         ipAddress: ipAddress,
         userAgent: userAgent,
       );

  /// Returns a shallow copy of this [SsoLoginEvents]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoLoginEvents copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    DateTime? loggedInAt,
    Object? ipAddress = _Undefined,
    Object? userAgent = _Undefined,
  }) {
    return SsoLoginEvents(
      id: id is _is.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      loggedInAt: loggedInAt ?? this.loggedInAt,
      ipAddress: ipAddress is String? ? ipAddress : this.ipAddress,
      userAgent: userAgent is String? ? userAgent : this.userAgent,
    );
  }
}

class SsoLoginEventsUpdateTable extends _is.UpdateTable<SsoLoginEventsTable> {
  SsoLoginEventsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> loggedInAt(DateTime value) =>
      _is.ColumnValue(
        table.loggedInAt,
        value,
      );

  _is.ColumnValue<String, String> ipAddress(String? value) => _is.ColumnValue(
    table.ipAddress,
    value,
  );

  _is.ColumnValue<String, String> userAgent(String? value) => _is.ColumnValue(
    table.userAgent,
    value,
  );
}

class SsoLoginEventsTable extends _is.Table<_is.UuidValue?> {
  SsoLoginEventsTable({super.tableRelation})
    : super(tableName: 'sso_login_events') {
    updateTable = SsoLoginEventsUpdateTable(this);
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    loggedInAt = _is.ColumnDateTime(
      'loggedInAt',
      this,
    );
    ipAddress = _is.ColumnString(
      'ipAddress',
      this,
    );
    userAgent = _is.ColumnString(
      'userAgent',
      this,
    );
  }

  late final SsoLoginEventsUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnDateTime loggedInAt;

  late final _is.ColumnString ipAddress;

  late final _is.ColumnString userAgent;

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    loggedInAt,
    ipAddress,
    userAgent,
  ];
}

class SsoLoginEventsInclude extends _is.IncludeObject {
  SsoLoginEventsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoLoginEvents.t;
}

class SsoLoginEventsIncludeList extends _is.IncludeList {
  SsoLoginEventsIncludeList._({
    _is.WhereExpressionBuilder<SsoLoginEventsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoLoginEvents.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoLoginEvents.t;
}

class SsoLoginEventsRepository {
  const SsoLoginEventsRepository._();

  /// Returns a list of [SsoLoginEvents]s matching the given query parameters.
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
  Future<List<SsoLoginEvents>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoLoginEventsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoLoginEventsTable>? orderBy,
    _is.OrderByListBuilder<SsoLoginEventsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoLoginEvents>(
      where: where?.call(SsoLoginEvents.t),
      orderBy: orderBy?.call(SsoLoginEvents.t),
      orderByList: orderByList?.call(SsoLoginEvents.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoLoginEvents] matching the given query parameters.
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
  Future<SsoLoginEvents?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoLoginEventsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoLoginEventsTable>? orderBy,
    _is.OrderByListBuilder<SsoLoginEventsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoLoginEvents>(
      where: where?.call(SsoLoginEvents.t),
      orderBy: orderBy?.call(SsoLoginEvents.t),
      orderByList: orderByList?.call(SsoLoginEvents.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoLoginEvents] by its [id] or null if no such row exists.
  Future<SsoLoginEvents?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoLoginEvents>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoLoginEvents]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoLoginEvents]s will have their `id` fields set.
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
  Future<List<SsoLoginEvents>> insert(
    _is.DatabaseSession session,
    List<SsoLoginEvents> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoLoginEvents>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoLoginEvents] and returns the inserted row.
  ///
  /// The returned [SsoLoginEvents] will have its `id` field set.
  Future<SsoLoginEvents> insertRow(
    _is.DatabaseSession session,
    SsoLoginEvents row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoLoginEvents>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoLoginEvents]s in the list and returns the resulting rows.
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
  /// The returned [SsoLoginEvents]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoLoginEvents>> upsert(
    _is.DatabaseSession session,
    List<SsoLoginEvents> rows, {
    required _is.ColumnSelections<SsoLoginEventsTable> conflictColumns,
    _is.ColumnSelections<SsoLoginEventsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoLoginEventsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoLoginEvents>(
      rows,
      conflictColumns: conflictColumns(SsoLoginEvents.t),
      updateColumns: updateColumns?.call(SsoLoginEvents.t),
      updateWhere: updateWhere?.call(SsoLoginEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoLoginEvents] and returns the resulting row.
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
  /// The returned [SsoLoginEvents] will have its `id` field set.
  Future<SsoLoginEvents?> upsertRow(
    _is.DatabaseSession session,
    SsoLoginEvents row, {
    required _is.ColumnSelections<SsoLoginEventsTable> conflictColumns,
    _is.ColumnSelections<SsoLoginEventsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoLoginEventsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoLoginEvents>(
      row,
      conflictColumns: conflictColumns(SsoLoginEvents.t),
      updateColumns: updateColumns?.call(SsoLoginEvents.t),
      updateWhere: updateWhere?.call(SsoLoginEvents.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoLoginEvents]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoLoginEvents>> update(
    _is.DatabaseSession session,
    List<SsoLoginEvents> rows, {
    _is.ColumnSelections<SsoLoginEventsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoLoginEvents>(
      rows,
      columns: columns?.call(SsoLoginEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoLoginEvents]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoLoginEvents> updateRow(
    _is.DatabaseSession session,
    SsoLoginEvents row, {
    _is.ColumnSelections<SsoLoginEventsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoLoginEvents>(
      row,
      columns: columns?.call(SsoLoginEvents.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoLoginEvents] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoLoginEvents?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoLoginEventsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoLoginEvents>(
      id,
      columnValues: columnValues(SsoLoginEvents.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoLoginEvents]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoLoginEvents>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoLoginEventsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<SsoLoginEventsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoLoginEventsTable>? orderBy,
    _is.OrderByListBuilder<SsoLoginEventsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoLoginEvents>(
      columnValues: columnValues(SsoLoginEvents.t.updateTable),
      where: where(SsoLoginEvents.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoLoginEvents.t),
      orderByList: orderByList?.call(SsoLoginEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoLoginEvents]s in the list and returns the deleted rows.
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
  Future<List<SsoLoginEvents>> delete(
    _is.DatabaseSession session,
    List<SsoLoginEvents> rows, {
    _is.OrderByBuilder<SsoLoginEventsTable>? orderBy,
    _is.OrderByListBuilder<SsoLoginEventsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoLoginEvents>(
      rows,
      orderBy: orderBy?.call(SsoLoginEvents.t),
      orderByList: orderByList?.call(SsoLoginEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoLoginEvents].
  Future<SsoLoginEvents> deleteRow(
    _is.DatabaseSession session,
    SsoLoginEvents row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoLoginEvents>(
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
  Future<List<SsoLoginEvents>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoLoginEventsTable> where,
    _is.OrderByBuilder<SsoLoginEventsTable>? orderBy,
    _is.OrderByListBuilder<SsoLoginEventsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoLoginEvents>(
      where: where(SsoLoginEvents.t),
      orderBy: orderBy?.call(SsoLoginEvents.t),
      orderByList: orderByList?.call(SsoLoginEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoLoginEventsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoLoginEvents>(
      where: where?.call(SsoLoginEvents.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoLoginEvents] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoLoginEventsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoLoginEvents>(
      where: where(SsoLoginEvents.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
