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

abstract class ElogNotificationGroupStates
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogNotificationGroupStates._({
    this.id,
    required this.userId,
    required this.groupKey,
    required this.notificationId,
    required this.latestOccurrenceKey,
    required this.occurrenceCount,
    required this.firstOccurredAt,
    required this.lastOccurredAt,
  });

  factory ElogNotificationGroupStates({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String groupKey,
    required _is.UuidValue notificationId,
    required String latestOccurrenceKey,
    required int occurrenceCount,
    required DateTime firstOccurredAt,
    required DateTime lastOccurredAt,
  }) = _ElogNotificationGroupStatesImpl;

  factory ElogNotificationGroupStates.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogNotificationGroupStates(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      groupKey: jsonSerialization['groupKey'] as String,
      notificationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['notificationId'],
      ),
      latestOccurrenceKey: jsonSerialization['latestOccurrenceKey'] as String,
      occurrenceCount: jsonSerialization['occurrenceCount'] as int,
      firstOccurredAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['firstOccurredAt'],
      ),
      lastOccurredAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['lastOccurredAt'],
      ),
    );
  }

  static final t = ElogNotificationGroupStatesTable();

  static const db = ElogNotificationGroupStatesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue userId;

  String groupKey;

  _is.UuidValue notificationId;

  String latestOccurrenceKey;

  int occurrenceCount;

  DateTime firstOccurredAt;

  DateTime lastOccurredAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogNotificationGroupStates]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogNotificationGroupStates copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    String? groupKey,
    _is.UuidValue? notificationId,
    String? latestOccurrenceKey,
    int? occurrenceCount,
    DateTime? firstOccurredAt,
    DateTime? lastOccurredAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogNotificationGroupStates',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'groupKey': groupKey,
      'notificationId': notificationId.toJson(),
      'latestOccurrenceKey': latestOccurrenceKey,
      'occurrenceCount': occurrenceCount,
      'firstOccurredAt': firstOccurredAt.toJson(),
      'lastOccurredAt': lastOccurredAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogNotificationGroupStates',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'groupKey': groupKey,
      'notificationId': notificationId.toJson(),
      'latestOccurrenceKey': latestOccurrenceKey,
      'occurrenceCount': occurrenceCount,
      'firstOccurredAt': firstOccurredAt.toJson(),
      'lastOccurredAt': lastOccurredAt.toJson(),
    };
  }

  static ElogNotificationGroupStatesInclude include() {
    return ElogNotificationGroupStatesInclude._();
  }

  static ElogNotificationGroupStatesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogNotificationGroupStatesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogNotificationGroupStatesTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationGroupStatesTable>? orderByList,
    ElogNotificationGroupStatesInclude? include,
  }) {
    return ElogNotificationGroupStatesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogNotificationGroupStates.t),
      orderByList: orderByList?.call(ElogNotificationGroupStates.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogNotificationGroupStatesImpl extends ElogNotificationGroupStates {
  _ElogNotificationGroupStatesImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String groupKey,
    required _is.UuidValue notificationId,
    required String latestOccurrenceKey,
    required int occurrenceCount,
    required DateTime firstOccurredAt,
    required DateTime lastOccurredAt,
  }) : super._(
         id: id,
         userId: userId,
         groupKey: groupKey,
         notificationId: notificationId,
         latestOccurrenceKey: latestOccurrenceKey,
         occurrenceCount: occurrenceCount,
         firstOccurredAt: firstOccurredAt,
         lastOccurredAt: lastOccurredAt,
       );

  /// Returns a shallow copy of this [ElogNotificationGroupStates]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogNotificationGroupStates copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    String? groupKey,
    _is.UuidValue? notificationId,
    String? latestOccurrenceKey,
    int? occurrenceCount,
    DateTime? firstOccurredAt,
    DateTime? lastOccurredAt,
  }) {
    return ElogNotificationGroupStates(
      id: id is _is.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      groupKey: groupKey ?? this.groupKey,
      notificationId: notificationId ?? this.notificationId,
      latestOccurrenceKey: latestOccurrenceKey ?? this.latestOccurrenceKey,
      occurrenceCount: occurrenceCount ?? this.occurrenceCount,
      firstOccurredAt: firstOccurredAt ?? this.firstOccurredAt,
      lastOccurredAt: lastOccurredAt ?? this.lastOccurredAt,
    );
  }
}

class ElogNotificationGroupStatesUpdateTable
    extends _is.UpdateTable<ElogNotificationGroupStatesTable> {
  ElogNotificationGroupStatesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<String, String> groupKey(String value) => _is.ColumnValue(
    table.groupKey,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> notificationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.notificationId,
    value,
  );

  _is.ColumnValue<String, String> latestOccurrenceKey(String value) =>
      _is.ColumnValue(
        table.latestOccurrenceKey,
        value,
      );

  _is.ColumnValue<int, int> occurrenceCount(int value) => _is.ColumnValue(
    table.occurrenceCount,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> firstOccurredAt(DateTime value) =>
      _is.ColumnValue(
        table.firstOccurredAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> lastOccurredAt(DateTime value) =>
      _is.ColumnValue(
        table.lastOccurredAt,
        value,
      );
}

class ElogNotificationGroupStatesTable extends _is.Table<_is.UuidValue?> {
  ElogNotificationGroupStatesTable({super.tableRelation})
    : super(tableName: 'elog_notification_group_states') {
    updateTable = ElogNotificationGroupStatesUpdateTable(this);
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    groupKey = _is.ColumnString(
      'groupKey',
      this,
    );
    notificationId = _is.ColumnUuid(
      'notificationId',
      this,
    );
    latestOccurrenceKey = _is.ColumnString(
      'latestOccurrenceKey',
      this,
    );
    occurrenceCount = _is.ColumnInt(
      'occurrenceCount',
      this,
    );
    firstOccurredAt = _is.ColumnDateTime(
      'firstOccurredAt',
      this,
    );
    lastOccurredAt = _is.ColumnDateTime(
      'lastOccurredAt',
      this,
    );
  }

  late final ElogNotificationGroupStatesUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnString groupKey;

  late final _is.ColumnUuid notificationId;

  late final _is.ColumnString latestOccurrenceKey;

  late final _is.ColumnInt occurrenceCount;

  late final _is.ColumnDateTime firstOccurredAt;

  late final _is.ColumnDateTime lastOccurredAt;

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    groupKey,
    notificationId,
    latestOccurrenceKey,
    occurrenceCount,
    firstOccurredAt,
    lastOccurredAt,
  ];
}

class ElogNotificationGroupStatesInclude extends _is.IncludeObject {
  ElogNotificationGroupStatesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogNotificationGroupStates.t;
}

class ElogNotificationGroupStatesIncludeList extends _is.IncludeList {
  ElogNotificationGroupStatesIncludeList._({
    _is.WhereExpressionBuilder<ElogNotificationGroupStatesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogNotificationGroupStates.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogNotificationGroupStates.t;
}

class ElogNotificationGroupStatesRepository {
  const ElogNotificationGroupStatesRepository._();

  /// Returns a list of [ElogNotificationGroupStates]s matching the given query parameters.
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
  Future<List<ElogNotificationGroupStates>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogNotificationGroupStatesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogNotificationGroupStatesTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationGroupStatesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogNotificationGroupStates>(
      where: where?.call(ElogNotificationGroupStates.t),
      orderBy: orderBy?.call(ElogNotificationGroupStates.t),
      orderByList: orderByList?.call(ElogNotificationGroupStates.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogNotificationGroupStates] matching the given query parameters.
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
  Future<ElogNotificationGroupStates?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogNotificationGroupStatesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogNotificationGroupStatesTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationGroupStatesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogNotificationGroupStates>(
      where: where?.call(ElogNotificationGroupStates.t),
      orderBy: orderBy?.call(ElogNotificationGroupStates.t),
      orderByList: orderByList?.call(ElogNotificationGroupStates.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogNotificationGroupStates] by its [id] or null if no such row exists.
  Future<ElogNotificationGroupStates?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogNotificationGroupStates>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogNotificationGroupStates]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogNotificationGroupStates]s will have their `id` fields set.
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
  Future<List<ElogNotificationGroupStates>> insert(
    _is.DatabaseSession session,
    List<ElogNotificationGroupStates> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogNotificationGroupStates>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogNotificationGroupStates] and returns the inserted row.
  ///
  /// The returned [ElogNotificationGroupStates] will have its `id` field set.
  Future<ElogNotificationGroupStates> insertRow(
    _is.DatabaseSession session,
    ElogNotificationGroupStates row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogNotificationGroupStates>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogNotificationGroupStates]s in the list and returns the resulting rows.
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
  /// The returned [ElogNotificationGroupStates]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogNotificationGroupStates>> upsert(
    _is.DatabaseSession session,
    List<ElogNotificationGroupStates> rows, {
    required _is.ColumnSelections<ElogNotificationGroupStatesTable>
    conflictColumns,
    _is.ColumnSelections<ElogNotificationGroupStatesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogNotificationGroupStatesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogNotificationGroupStates>(
      rows,
      conflictColumns: conflictColumns(ElogNotificationGroupStates.t),
      updateColumns: updateColumns?.call(ElogNotificationGroupStates.t),
      updateWhere: updateWhere?.call(ElogNotificationGroupStates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogNotificationGroupStates] and returns the resulting row.
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
  /// The returned [ElogNotificationGroupStates] will have its `id` field set.
  Future<ElogNotificationGroupStates?> upsertRow(
    _is.DatabaseSession session,
    ElogNotificationGroupStates row, {
    required _is.ColumnSelections<ElogNotificationGroupStatesTable>
    conflictColumns,
    _is.ColumnSelections<ElogNotificationGroupStatesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogNotificationGroupStatesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogNotificationGroupStates>(
      row,
      conflictColumns: conflictColumns(ElogNotificationGroupStates.t),
      updateColumns: updateColumns?.call(ElogNotificationGroupStates.t),
      updateWhere: updateWhere?.call(ElogNotificationGroupStates.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogNotificationGroupStates]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogNotificationGroupStates>> update(
    _is.DatabaseSession session,
    List<ElogNotificationGroupStates> rows, {
    _is.ColumnSelections<ElogNotificationGroupStatesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogNotificationGroupStates>(
      rows,
      columns: columns?.call(ElogNotificationGroupStates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogNotificationGroupStates]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogNotificationGroupStates> updateRow(
    _is.DatabaseSession session,
    ElogNotificationGroupStates row, {
    _is.ColumnSelections<ElogNotificationGroupStatesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogNotificationGroupStates>(
      row,
      columns: columns?.call(ElogNotificationGroupStates.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogNotificationGroupStates] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogNotificationGroupStates?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogNotificationGroupStatesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogNotificationGroupStates>(
      id,
      columnValues: columnValues(ElogNotificationGroupStates.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogNotificationGroupStates]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogNotificationGroupStates>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogNotificationGroupStatesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogNotificationGroupStatesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogNotificationGroupStatesTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationGroupStatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogNotificationGroupStates>(
      columnValues: columnValues(ElogNotificationGroupStates.t.updateTable),
      where: where(ElogNotificationGroupStates.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogNotificationGroupStates.t),
      orderByList: orderByList?.call(ElogNotificationGroupStates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogNotificationGroupStates]s in the list and returns the deleted rows.
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
  Future<List<ElogNotificationGroupStates>> delete(
    _is.DatabaseSession session,
    List<ElogNotificationGroupStates> rows, {
    _is.OrderByBuilder<ElogNotificationGroupStatesTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationGroupStatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogNotificationGroupStates>(
      rows,
      orderBy: orderBy?.call(ElogNotificationGroupStates.t),
      orderByList: orderByList?.call(ElogNotificationGroupStates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogNotificationGroupStates].
  Future<ElogNotificationGroupStates> deleteRow(
    _is.DatabaseSession session,
    ElogNotificationGroupStates row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogNotificationGroupStates>(
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
  Future<List<ElogNotificationGroupStates>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogNotificationGroupStatesTable> where,
    _is.OrderByBuilder<ElogNotificationGroupStatesTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationGroupStatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogNotificationGroupStates>(
      where: where(ElogNotificationGroupStates.t),
      orderBy: orderBy?.call(ElogNotificationGroupStates.t),
      orderByList: orderByList?.call(ElogNotificationGroupStates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogNotificationGroupStatesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogNotificationGroupStates>(
      where: where?.call(ElogNotificationGroupStates.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogNotificationGroupStates] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogNotificationGroupStatesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogNotificationGroupStates>(
      where: where(ElogNotificationGroupStates.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
