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

abstract class ElogNotifications
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogNotifications._({
    this.id,
    required this.userId,
    required this.type,
    required this.title,
    this.message,
    this.resourceType,
    this.resourceId,
    this.workflowInstanceId,
    this.workflowTaskId,
    this.isRead,
    this.readAt,
    this.groupKey,
    this.latestOccurrenceKey,
    required this.occurrenceCount,
    this.firstOccurredAt,
    this.lastOccurredAt,
    this.createdAt,
    this.metadata,
  });

  factory ElogNotifications({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String type,
    required String title,
    String? message,
    String? resourceType,
    _is.UuidValue? resourceId,
    _is.UuidValue? workflowInstanceId,
    _is.UuidValue? workflowTaskId,
    bool? isRead,
    DateTime? readAt,
    String? groupKey,
    String? latestOccurrenceKey,
    required int occurrenceCount,
    DateTime? firstOccurredAt,
    DateTime? lastOccurredAt,
    DateTime? createdAt,
    String? metadata,
  }) = _ElogNotificationsImpl;

  factory ElogNotifications.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogNotifications(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      type: jsonSerialization['type'] as String,
      title: jsonSerialization['title'] as String,
      message: jsonSerialization['message'] as String?,
      resourceType: jsonSerialization['resourceType'] as String?,
      resourceId: jsonSerialization['resourceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceId'],
            ),
      workflowInstanceId: jsonSerialization['workflowInstanceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowInstanceId'],
            ),
      workflowTaskId: jsonSerialization['workflowTaskId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowTaskId'],
            ),
      isRead: jsonSerialization['isRead'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isRead']),
      readAt: jsonSerialization['readAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['readAt']),
      groupKey: jsonSerialization['groupKey'] as String?,
      latestOccurrenceKey: jsonSerialization['latestOccurrenceKey'] as String?,
      occurrenceCount: jsonSerialization['occurrenceCount'] as int,
      firstOccurredAt: jsonSerialization['firstOccurredAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['firstOccurredAt'],
            ),
      lastOccurredAt: jsonSerialization['lastOccurredAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastOccurredAt'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      metadata: jsonSerialization['metadata'] as String?,
    );
  }

  static final t = ElogNotificationsTable();

  static const db = ElogNotificationsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue userId;

  String type;

  String title;

  String? message;

  String? resourceType;

  _is.UuidValue? resourceId;

  _is.UuidValue? workflowInstanceId;

  _is.UuidValue? workflowTaskId;

  bool? isRead;

  DateTime? readAt;

  String? groupKey;

  String? latestOccurrenceKey;

  int occurrenceCount;

  DateTime? firstOccurredAt;

  DateTime? lastOccurredAt;

  DateTime? createdAt;

  String? metadata;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogNotifications]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogNotifications copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    String? type,
    String? title,
    String? message,
    String? resourceType,
    _is.UuidValue? resourceId,
    _is.UuidValue? workflowInstanceId,
    _is.UuidValue? workflowTaskId,
    bool? isRead,
    DateTime? readAt,
    String? groupKey,
    String? latestOccurrenceKey,
    int? occurrenceCount,
    DateTime? firstOccurredAt,
    DateTime? lastOccurredAt,
    DateTime? createdAt,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogNotifications',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'type': type,
      'title': title,
      if (message != null) 'message': message,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      if (workflowTaskId != null) 'workflowTaskId': workflowTaskId?.toJson(),
      if (isRead != null) 'isRead': isRead,
      if (readAt != null) 'readAt': readAt?.toJson(),
      if (groupKey != null) 'groupKey': groupKey,
      if (latestOccurrenceKey != null)
        'latestOccurrenceKey': latestOccurrenceKey,
      'occurrenceCount': occurrenceCount,
      if (firstOccurredAt != null) 'firstOccurredAt': firstOccurredAt?.toJson(),
      if (lastOccurredAt != null) 'lastOccurredAt': lastOccurredAt?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogNotifications',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'type': type,
      'title': title,
      if (message != null) 'message': message,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      if (workflowTaskId != null) 'workflowTaskId': workflowTaskId?.toJson(),
      if (isRead != null) 'isRead': isRead,
      if (readAt != null) 'readAt': readAt?.toJson(),
      if (groupKey != null) 'groupKey': groupKey,
      if (latestOccurrenceKey != null)
        'latestOccurrenceKey': latestOccurrenceKey,
      'occurrenceCount': occurrenceCount,
      if (firstOccurredAt != null) 'firstOccurredAt': firstOccurredAt?.toJson(),
      if (lastOccurredAt != null) 'lastOccurredAt': lastOccurredAt?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (metadata != null) 'metadata': metadata,
    };
  }

  static ElogNotificationsInclude include() {
    return ElogNotificationsInclude._();
  }

  static ElogNotificationsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogNotificationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogNotificationsTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationsTable>? orderByList,
    ElogNotificationsInclude? include,
  }) {
    return ElogNotificationsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogNotifications.t),
      orderByList: orderByList?.call(ElogNotifications.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogNotificationsImpl extends ElogNotifications {
  _ElogNotificationsImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String type,
    required String title,
    String? message,
    String? resourceType,
    _is.UuidValue? resourceId,
    _is.UuidValue? workflowInstanceId,
    _is.UuidValue? workflowTaskId,
    bool? isRead,
    DateTime? readAt,
    String? groupKey,
    String? latestOccurrenceKey,
    required int occurrenceCount,
    DateTime? firstOccurredAt,
    DateTime? lastOccurredAt,
    DateTime? createdAt,
    String? metadata,
  }) : super._(
         id: id,
         userId: userId,
         type: type,
         title: title,
         message: message,
         resourceType: resourceType,
         resourceId: resourceId,
         workflowInstanceId: workflowInstanceId,
         workflowTaskId: workflowTaskId,
         isRead: isRead,
         readAt: readAt,
         groupKey: groupKey,
         latestOccurrenceKey: latestOccurrenceKey,
         occurrenceCount: occurrenceCount,
         firstOccurredAt: firstOccurredAt,
         lastOccurredAt: lastOccurredAt,
         createdAt: createdAt,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [ElogNotifications]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogNotifications copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    String? type,
    String? title,
    Object? message = _Undefined,
    Object? resourceType = _Undefined,
    Object? resourceId = _Undefined,
    Object? workflowInstanceId = _Undefined,
    Object? workflowTaskId = _Undefined,
    Object? isRead = _Undefined,
    Object? readAt = _Undefined,
    Object? groupKey = _Undefined,
    Object? latestOccurrenceKey = _Undefined,
    int? occurrenceCount,
    Object? firstOccurredAt = _Undefined,
    Object? lastOccurredAt = _Undefined,
    Object? createdAt = _Undefined,
    Object? metadata = _Undefined,
  }) {
    return ElogNotifications(
      id: id is _is.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      title: title ?? this.title,
      message: message is String? ? message : this.message,
      resourceType: resourceType is String? ? resourceType : this.resourceType,
      resourceId: resourceId is _is.UuidValue? ? resourceId : this.resourceId,
      workflowInstanceId: workflowInstanceId is _is.UuidValue?
          ? workflowInstanceId
          : this.workflowInstanceId,
      workflowTaskId: workflowTaskId is _is.UuidValue?
          ? workflowTaskId
          : this.workflowTaskId,
      isRead: isRead is bool? ? isRead : this.isRead,
      readAt: readAt is DateTime? ? readAt : this.readAt,
      groupKey: groupKey is String? ? groupKey : this.groupKey,
      latestOccurrenceKey: latestOccurrenceKey is String?
          ? latestOccurrenceKey
          : this.latestOccurrenceKey,
      occurrenceCount: occurrenceCount ?? this.occurrenceCount,
      firstOccurredAt: firstOccurredAt is DateTime?
          ? firstOccurredAt
          : this.firstOccurredAt,
      lastOccurredAt: lastOccurredAt is DateTime?
          ? lastOccurredAt
          : this.lastOccurredAt,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      metadata: metadata is String? ? metadata : this.metadata,
    );
  }
}

class ElogNotificationsUpdateTable
    extends _is.UpdateTable<ElogNotificationsTable> {
  ElogNotificationsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<String, String> type(String value) => _is.ColumnValue(
    table.type,
    value,
  );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<String, String> message(String? value) => _is.ColumnValue(
    table.message,
    value,
  );

  _is.ColumnValue<String, String> resourceType(String? value) =>
      _is.ColumnValue(
        table.resourceType,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> resourceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.resourceId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> workflowInstanceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.workflowInstanceId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> workflowTaskId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.workflowTaskId,
    value,
  );

  _is.ColumnValue<bool, bool> isRead(bool? value) => _is.ColumnValue(
    table.isRead,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> readAt(DateTime? value) =>
      _is.ColumnValue(
        table.readAt,
        value,
      );

  _is.ColumnValue<String, String> groupKey(String? value) => _is.ColumnValue(
    table.groupKey,
    value,
  );

  _is.ColumnValue<String, String> latestOccurrenceKey(String? value) =>
      _is.ColumnValue(
        table.latestOccurrenceKey,
        value,
      );

  _is.ColumnValue<int, int> occurrenceCount(int value) => _is.ColumnValue(
    table.occurrenceCount,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> firstOccurredAt(DateTime? value) =>
      _is.ColumnValue(
        table.firstOccurredAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> lastOccurredAt(DateTime? value) =>
      _is.ColumnValue(
        table.lastOccurredAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<String, String> metadata(String? value) => _is.ColumnValue(
    table.metadata,
    value,
  );
}

class ElogNotificationsTable extends _is.Table<_is.UuidValue?> {
  ElogNotificationsTable({super.tableRelation})
    : super(tableName: 'elog_notifications') {
    updateTable = ElogNotificationsUpdateTable(this);
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    type = _is.ColumnString(
      'type',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    message = _is.ColumnString(
      'message',
      this,
    );
    resourceType = _is.ColumnString(
      'resourceType',
      this,
    );
    resourceId = _is.ColumnUuid(
      'resourceId',
      this,
    );
    workflowInstanceId = _is.ColumnUuid(
      'workflowInstanceId',
      this,
    );
    workflowTaskId = _is.ColumnUuid(
      'workflowTaskId',
      this,
    );
    isRead = _is.ColumnBool(
      'isRead',
      this,
    );
    readAt = _is.ColumnDateTime(
      'readAt',
      this,
    );
    groupKey = _is.ColumnString(
      'groupKey',
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
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
      this,
    );
  }

  late final ElogNotificationsUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnString type;

  late final _is.ColumnString title;

  late final _is.ColumnString message;

  late final _is.ColumnString resourceType;

  late final _is.ColumnUuid resourceId;

  late final _is.ColumnUuid workflowInstanceId;

  late final _is.ColumnUuid workflowTaskId;

  late final _is.ColumnBool isRead;

  late final _is.ColumnDateTime readAt;

  late final _is.ColumnString groupKey;

  late final _is.ColumnString latestOccurrenceKey;

  late final _is.ColumnInt occurrenceCount;

  late final _is.ColumnDateTime firstOccurredAt;

  late final _is.ColumnDateTime lastOccurredAt;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnString metadata;

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    type,
    title,
    message,
    resourceType,
    resourceId,
    workflowInstanceId,
    workflowTaskId,
    isRead,
    readAt,
    groupKey,
    latestOccurrenceKey,
    occurrenceCount,
    firstOccurredAt,
    lastOccurredAt,
    createdAt,
    metadata,
  ];
}

class ElogNotificationsInclude extends _is.IncludeObject {
  ElogNotificationsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogNotifications.t;
}

class ElogNotificationsIncludeList extends _is.IncludeList {
  ElogNotificationsIncludeList._({
    _is.WhereExpressionBuilder<ElogNotificationsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogNotifications.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogNotifications.t;
}

class ElogNotificationsRepository {
  const ElogNotificationsRepository._();

  /// Returns a list of [ElogNotifications]s matching the given query parameters.
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
  Future<List<ElogNotifications>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogNotificationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogNotificationsTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogNotifications>(
      where: where?.call(ElogNotifications.t),
      orderBy: orderBy?.call(ElogNotifications.t),
      orderByList: orderByList?.call(ElogNotifications.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogNotifications] matching the given query parameters.
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
  Future<ElogNotifications?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogNotificationsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogNotificationsTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogNotifications>(
      where: where?.call(ElogNotifications.t),
      orderBy: orderBy?.call(ElogNotifications.t),
      orderByList: orderByList?.call(ElogNotifications.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogNotifications] by its [id] or null if no such row exists.
  Future<ElogNotifications?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogNotifications>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogNotifications]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogNotifications]s will have their `id` fields set.
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
  Future<List<ElogNotifications>> insert(
    _is.DatabaseSession session,
    List<ElogNotifications> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogNotifications>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogNotifications] and returns the inserted row.
  ///
  /// The returned [ElogNotifications] will have its `id` field set.
  Future<ElogNotifications> insertRow(
    _is.DatabaseSession session,
    ElogNotifications row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogNotifications>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogNotifications]s in the list and returns the resulting rows.
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
  /// The returned [ElogNotifications]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogNotifications>> upsert(
    _is.DatabaseSession session,
    List<ElogNotifications> rows, {
    required _is.ColumnSelections<ElogNotificationsTable> conflictColumns,
    _is.ColumnSelections<ElogNotificationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogNotificationsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogNotifications>(
      rows,
      conflictColumns: conflictColumns(ElogNotifications.t),
      updateColumns: updateColumns?.call(ElogNotifications.t),
      updateWhere: updateWhere?.call(ElogNotifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogNotifications] and returns the resulting row.
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
  /// The returned [ElogNotifications] will have its `id` field set.
  Future<ElogNotifications?> upsertRow(
    _is.DatabaseSession session,
    ElogNotifications row, {
    required _is.ColumnSelections<ElogNotificationsTable> conflictColumns,
    _is.ColumnSelections<ElogNotificationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogNotificationsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogNotifications>(
      row,
      conflictColumns: conflictColumns(ElogNotifications.t),
      updateColumns: updateColumns?.call(ElogNotifications.t),
      updateWhere: updateWhere?.call(ElogNotifications.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogNotifications]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogNotifications>> update(
    _is.DatabaseSession session,
    List<ElogNotifications> rows, {
    _is.ColumnSelections<ElogNotificationsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogNotifications>(
      rows,
      columns: columns?.call(ElogNotifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogNotifications]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogNotifications> updateRow(
    _is.DatabaseSession session,
    ElogNotifications row, {
    _is.ColumnSelections<ElogNotificationsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogNotifications>(
      row,
      columns: columns?.call(ElogNotifications.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogNotifications] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogNotifications?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogNotificationsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogNotifications>(
      id,
      columnValues: columnValues(ElogNotifications.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogNotifications]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogNotifications>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogNotificationsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogNotificationsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogNotificationsTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogNotifications>(
      columnValues: columnValues(ElogNotifications.t.updateTable),
      where: where(ElogNotifications.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogNotifications.t),
      orderByList: orderByList?.call(ElogNotifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogNotifications]s in the list and returns the deleted rows.
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
  Future<List<ElogNotifications>> delete(
    _is.DatabaseSession session,
    List<ElogNotifications> rows, {
    _is.OrderByBuilder<ElogNotificationsTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogNotifications>(
      rows,
      orderBy: orderBy?.call(ElogNotifications.t),
      orderByList: orderByList?.call(ElogNotifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogNotifications].
  Future<ElogNotifications> deleteRow(
    _is.DatabaseSession session,
    ElogNotifications row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogNotifications>(
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
  Future<List<ElogNotifications>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogNotificationsTable> where,
    _is.OrderByBuilder<ElogNotificationsTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogNotifications>(
      where: where(ElogNotifications.t),
      orderBy: orderBy?.call(ElogNotifications.t),
      orderByList: orderByList?.call(ElogNotifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogNotificationsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogNotifications>(
      where: where?.call(ElogNotifications.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogNotifications] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogNotificationsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogNotifications>(
      where: where(ElogNotifications.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
