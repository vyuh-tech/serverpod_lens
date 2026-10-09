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

abstract class PublicWorkflowEvents
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  PublicWorkflowEvents._({
    this.id,
    required this.workflowInstanceId,
    required this.eventType,
    required this.timestamp,
    this.nodeId,
    this.userTaskId,
    this.tokenId,
    this.userId,
    required this.data,
    required this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PublicWorkflowEvents({
    _is.UuidValue? id,
    required _is.UuidValue workflowInstanceId,
    required String eventType,
    required DateTime timestamp,
    String? nodeId,
    _is.UuidValue? userTaskId,
    String? tokenId,
    _is.UuidValue? userId,
    required String data,
    required String metadata,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PublicWorkflowEventsImpl;

  factory PublicWorkflowEvents.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return PublicWorkflowEvents(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      workflowInstanceId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['workflowInstanceId'],
      ),
      eventType: jsonSerialization['eventType'] as String,
      timestamp: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['timestamp'],
      ),
      nodeId: jsonSerialization['nodeId'] as String?,
      userTaskId: jsonSerialization['userTaskId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['userTaskId'],
            ),
      tokenId: jsonSerialization['tokenId'] as String?,
      userId: jsonSerialization['userId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      data: jsonSerialization['data'] as String,
      metadata: jsonSerialization['metadata'] as String,
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = PublicWorkflowEventsTable();

  static const db = PublicWorkflowEventsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue workflowInstanceId;

  String eventType;

  DateTime timestamp;

  String? nodeId;

  _is.UuidValue? userTaskId;

  String? tokenId;

  _is.UuidValue? userId;

  String data;

  String metadata;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [PublicWorkflowEvents]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  PublicWorkflowEvents copyWith({
    _is.UuidValue? id,
    _is.UuidValue? workflowInstanceId,
    String? eventType,
    DateTime? timestamp,
    String? nodeId,
    _is.UuidValue? userTaskId,
    String? tokenId,
    _is.UuidValue? userId,
    String? data,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicWorkflowEvents',
      if (id != null) 'id': id?.toJson(),
      'workflowInstanceId': workflowInstanceId.toJson(),
      'eventType': eventType,
      'timestamp': timestamp.toJson(),
      if (nodeId != null) 'nodeId': nodeId,
      if (userTaskId != null) 'userTaskId': userTaskId?.toJson(),
      if (tokenId != null) 'tokenId': tokenId,
      if (userId != null) 'userId': userId?.toJson(),
      'data': data,
      'metadata': metadata,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicWorkflowEvents',
      if (id != null) 'id': id?.toJson(),
      'workflowInstanceId': workflowInstanceId.toJson(),
      'eventType': eventType,
      'timestamp': timestamp.toJson(),
      if (nodeId != null) 'nodeId': nodeId,
      if (userTaskId != null) 'userTaskId': userTaskId?.toJson(),
      if (tokenId != null) 'tokenId': tokenId,
      if (userId != null) 'userId': userId?.toJson(),
      'data': data,
      'metadata': metadata,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static PublicWorkflowEventsInclude include() {
    return PublicWorkflowEventsInclude._();
  }

  static PublicWorkflowEventsIncludeList includeList({
    _is.WhereExpressionBuilder<PublicWorkflowEventsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicWorkflowEventsTable>? orderBy,
    _is.OrderByListBuilder<PublicWorkflowEventsTable>? orderByList,
    PublicWorkflowEventsInclude? include,
  }) {
    return PublicWorkflowEventsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicWorkflowEvents.t),
      orderByList: orderByList?.call(PublicWorkflowEvents.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicWorkflowEventsImpl extends PublicWorkflowEvents {
  _PublicWorkflowEventsImpl({
    _is.UuidValue? id,
    required _is.UuidValue workflowInstanceId,
    required String eventType,
    required DateTime timestamp,
    String? nodeId,
    _is.UuidValue? userTaskId,
    String? tokenId,
    _is.UuidValue? userId,
    required String data,
    required String metadata,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         workflowInstanceId: workflowInstanceId,
         eventType: eventType,
         timestamp: timestamp,
         nodeId: nodeId,
         userTaskId: userTaskId,
         tokenId: tokenId,
         userId: userId,
         data: data,
         metadata: metadata,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [PublicWorkflowEvents]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  PublicWorkflowEvents copyWith({
    Object? id = _Undefined,
    _is.UuidValue? workflowInstanceId,
    String? eventType,
    DateTime? timestamp,
    Object? nodeId = _Undefined,
    Object? userTaskId = _Undefined,
    Object? tokenId = _Undefined,
    Object? userId = _Undefined,
    String? data,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PublicWorkflowEvents(
      id: id is _is.UuidValue? ? id : this.id,
      workflowInstanceId: workflowInstanceId ?? this.workflowInstanceId,
      eventType: eventType ?? this.eventType,
      timestamp: timestamp ?? this.timestamp,
      nodeId: nodeId is String? ? nodeId : this.nodeId,
      userTaskId: userTaskId is _is.UuidValue? ? userTaskId : this.userTaskId,
      tokenId: tokenId is String? ? tokenId : this.tokenId,
      userId: userId is _is.UuidValue? ? userId : this.userId,
      data: data ?? this.data,
      metadata: metadata ?? this.metadata,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class PublicWorkflowEventsUpdateTable
    extends _is.UpdateTable<PublicWorkflowEventsTable> {
  PublicWorkflowEventsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> workflowInstanceId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.workflowInstanceId,
    value,
  );

  _is.ColumnValue<String, String> eventType(String value) => _is.ColumnValue(
    table.eventType,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> timestamp(DateTime value) =>
      _is.ColumnValue(
        table.timestamp,
        value,
      );

  _is.ColumnValue<String, String> nodeId(String? value) => _is.ColumnValue(
    table.nodeId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userTaskId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.userTaskId,
    value,
  );

  _is.ColumnValue<String, String> tokenId(String? value) => _is.ColumnValue(
    table.tokenId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue? value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<String, String> data(String value) => _is.ColumnValue(
    table.data,
    value,
  );

  _is.ColumnValue<String, String> metadata(String value) => _is.ColumnValue(
    table.metadata,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );
}

class PublicWorkflowEventsTable extends _is.Table<_is.UuidValue?> {
  PublicWorkflowEventsTable({super.tableRelation})
    : super(tableName: 'public_workflow_events') {
    updateTable = PublicWorkflowEventsUpdateTable(this);
    workflowInstanceId = _is.ColumnUuid(
      'workflowInstanceId',
      this,
    );
    eventType = _is.ColumnString(
      'eventType',
      this,
    );
    timestamp = _is.ColumnDateTime(
      'timestamp',
      this,
    );
    nodeId = _is.ColumnString(
      'nodeId',
      this,
    );
    userTaskId = _is.ColumnUuid(
      'userTaskId',
      this,
    );
    tokenId = _is.ColumnString(
      'tokenId',
      this,
    );
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    data = _is.ColumnString(
      'data',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final PublicWorkflowEventsUpdateTable updateTable;

  late final _is.ColumnUuid workflowInstanceId;

  late final _is.ColumnString eventType;

  late final _is.ColumnDateTime timestamp;

  late final _is.ColumnString nodeId;

  late final _is.ColumnUuid userTaskId;

  late final _is.ColumnString tokenId;

  late final _is.ColumnUuid userId;

  late final _is.ColumnString data;

  late final _is.ColumnString metadata;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    workflowInstanceId,
    eventType,
    timestamp,
    nodeId,
    userTaskId,
    tokenId,
    userId,
    data,
    metadata,
    createdAt,
    updatedAt,
  ];
}

class PublicWorkflowEventsInclude extends _is.IncludeObject {
  PublicWorkflowEventsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicWorkflowEvents.t;
}

class PublicWorkflowEventsIncludeList extends _is.IncludeList {
  PublicWorkflowEventsIncludeList._({
    _is.WhereExpressionBuilder<PublicWorkflowEventsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PublicWorkflowEvents.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicWorkflowEvents.t;
}

class PublicWorkflowEventsRepository {
  const PublicWorkflowEventsRepository._();

  /// Returns a list of [PublicWorkflowEvents]s matching the given query parameters.
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
  Future<List<PublicWorkflowEvents>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicWorkflowEventsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicWorkflowEventsTable>? orderBy,
    _is.OrderByListBuilder<PublicWorkflowEventsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PublicWorkflowEvents>(
      where: where?.call(PublicWorkflowEvents.t),
      orderBy: orderBy?.call(PublicWorkflowEvents.t),
      orderByList: orderByList?.call(PublicWorkflowEvents.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PublicWorkflowEvents] matching the given query parameters.
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
  Future<PublicWorkflowEvents?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicWorkflowEventsTable>? where,
    int? offset,
    _is.OrderByBuilder<PublicWorkflowEventsTable>? orderBy,
    _is.OrderByListBuilder<PublicWorkflowEventsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PublicWorkflowEvents>(
      where: where?.call(PublicWorkflowEvents.t),
      orderBy: orderBy?.call(PublicWorkflowEvents.t),
      orderByList: orderByList?.call(PublicWorkflowEvents.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PublicWorkflowEvents] by its [id] or null if no such row exists.
  Future<PublicWorkflowEvents?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PublicWorkflowEvents>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PublicWorkflowEvents]s in the list and returns the inserted rows.
  ///
  /// The returned [PublicWorkflowEvents]s will have their `id` fields set.
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
  Future<List<PublicWorkflowEvents>> insert(
    _is.DatabaseSession session,
    List<PublicWorkflowEvents> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<PublicWorkflowEvents>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [PublicWorkflowEvents] and returns the inserted row.
  ///
  /// The returned [PublicWorkflowEvents] will have its `id` field set.
  Future<PublicWorkflowEvents> insertRow(
    _is.DatabaseSession session,
    PublicWorkflowEvents row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<PublicWorkflowEvents>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [PublicWorkflowEvents]s in the list and returns the resulting rows.
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
  /// The returned [PublicWorkflowEvents]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicWorkflowEvents>> upsert(
    _is.DatabaseSession session,
    List<PublicWorkflowEvents> rows, {
    required _is.ColumnSelections<PublicWorkflowEventsTable> conflictColumns,
    _is.ColumnSelections<PublicWorkflowEventsTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicWorkflowEventsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<PublicWorkflowEvents>(
      rows,
      conflictColumns: conflictColumns(PublicWorkflowEvents.t),
      updateColumns: updateColumns?.call(PublicWorkflowEvents.t),
      updateWhere: updateWhere?.call(PublicWorkflowEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [PublicWorkflowEvents] and returns the resulting row.
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
  /// The returned [PublicWorkflowEvents] will have its `id` field set.
  Future<PublicWorkflowEvents?> upsertRow(
    _is.DatabaseSession session,
    PublicWorkflowEvents row, {
    required _is.ColumnSelections<PublicWorkflowEventsTable> conflictColumns,
    _is.ColumnSelections<PublicWorkflowEventsTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicWorkflowEventsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<PublicWorkflowEvents>(
      row,
      conflictColumns: conflictColumns(PublicWorkflowEvents.t),
      updateColumns: updateColumns?.call(PublicWorkflowEvents.t),
      updateWhere: updateWhere?.call(PublicWorkflowEvents.t),
      transaction: transaction,
    );
  }

  /// Updates all [PublicWorkflowEvents]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicWorkflowEvents>> update(
    _is.DatabaseSession session,
    List<PublicWorkflowEvents> rows, {
    _is.ColumnSelections<PublicWorkflowEventsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<PublicWorkflowEvents>(
      rows,
      columns: columns?.call(PublicWorkflowEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [PublicWorkflowEvents]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PublicWorkflowEvents> updateRow(
    _is.DatabaseSession session,
    PublicWorkflowEvents row, {
    _is.ColumnSelections<PublicWorkflowEventsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<PublicWorkflowEvents>(
      row,
      columns: columns?.call(PublicWorkflowEvents.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PublicWorkflowEvents] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PublicWorkflowEvents?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<PublicWorkflowEventsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<PublicWorkflowEvents>(
      id,
      columnValues: columnValues(PublicWorkflowEvents.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PublicWorkflowEvents]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicWorkflowEvents>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<PublicWorkflowEventsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<PublicWorkflowEventsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicWorkflowEventsTable>? orderBy,
    _is.OrderByListBuilder<PublicWorkflowEventsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<PublicWorkflowEvents>(
      columnValues: columnValues(PublicWorkflowEvents.t.updateTable),
      where: where(PublicWorkflowEvents.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicWorkflowEvents.t),
      orderByList: orderByList?.call(PublicWorkflowEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [PublicWorkflowEvents]s in the list and returns the deleted rows.
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
  Future<List<PublicWorkflowEvents>> delete(
    _is.DatabaseSession session,
    List<PublicWorkflowEvents> rows, {
    _is.OrderByBuilder<PublicWorkflowEventsTable>? orderBy,
    _is.OrderByListBuilder<PublicWorkflowEventsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<PublicWorkflowEvents>(
      rows,
      orderBy: orderBy?.call(PublicWorkflowEvents.t),
      orderByList: orderByList?.call(PublicWorkflowEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [PublicWorkflowEvents].
  Future<PublicWorkflowEvents> deleteRow(
    _is.DatabaseSession session,
    PublicWorkflowEvents row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PublicWorkflowEvents>(
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
  Future<List<PublicWorkflowEvents>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicWorkflowEventsTable> where,
    _is.OrderByBuilder<PublicWorkflowEventsTable>? orderBy,
    _is.OrderByListBuilder<PublicWorkflowEventsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<PublicWorkflowEvents>(
      where: where(PublicWorkflowEvents.t),
      orderBy: orderBy?.call(PublicWorkflowEvents.t),
      orderByList: orderByList?.call(PublicWorkflowEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicWorkflowEventsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<PublicWorkflowEvents>(
      where: where?.call(PublicWorkflowEvents.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PublicWorkflowEvents] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicWorkflowEventsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PublicWorkflowEvents>(
      where: where(PublicWorkflowEvents.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
