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

abstract class ElogNotificationsArchive
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogNotificationsArchive._({
    this.id,
    required this.userId,
    this.companyId,
    this.siteId,
    required this.type,
    required this.title,
    this.message,
    this.resourceType,
    this.resourceId,
    this.workflowInstanceId,
    this.workflowTaskId,
    this.isRead,
    this.readAt,
    this.createdAt,
    this.metadata,
    this.groupKey,
    this.latestOccurrenceKey,
    required this.occurrenceCount,
    this.firstOccurredAt,
    this.lastOccurredAt,
    required this.archivedAt,
  });

  factory ElogNotificationsArchive({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    _is.UuidValue? companyId,
    _is.UuidValue? siteId,
    required String type,
    required String title,
    String? message,
    String? resourceType,
    _is.UuidValue? resourceId,
    _is.UuidValue? workflowInstanceId,
    _is.UuidValue? workflowTaskId,
    bool? isRead,
    DateTime? readAt,
    DateTime? createdAt,
    String? metadata,
    String? groupKey,
    String? latestOccurrenceKey,
    required int occurrenceCount,
    DateTime? firstOccurredAt,
    DateTime? lastOccurredAt,
    required DateTime archivedAt,
  }) = _ElogNotificationsArchiveImpl;

  factory ElogNotificationsArchive.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogNotificationsArchive(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      companyId: jsonSerialization['companyId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['companyId']),
      siteId: jsonSerialization['siteId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['siteId']),
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
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      metadata: jsonSerialization['metadata'] as String?,
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
      archivedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['archivedAt'],
      ),
    );
  }

  static final t = ElogNotificationsArchiveTable();

  static const db = ElogNotificationsArchiveRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue userId;

  _is.UuidValue? companyId;

  _is.UuidValue? siteId;

  String type;

  String title;

  String? message;

  String? resourceType;

  _is.UuidValue? resourceId;

  _is.UuidValue? workflowInstanceId;

  _is.UuidValue? workflowTaskId;

  bool? isRead;

  DateTime? readAt;

  DateTime? createdAt;

  String? metadata;

  String? groupKey;

  String? latestOccurrenceKey;

  int occurrenceCount;

  DateTime? firstOccurredAt;

  DateTime? lastOccurredAt;

  DateTime archivedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogNotificationsArchive]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogNotificationsArchive copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _is.UuidValue? companyId,
    _is.UuidValue? siteId,
    String? type,
    String? title,
    String? message,
    String? resourceType,
    _is.UuidValue? resourceId,
    _is.UuidValue? workflowInstanceId,
    _is.UuidValue? workflowTaskId,
    bool? isRead,
    DateTime? readAt,
    DateTime? createdAt,
    String? metadata,
    String? groupKey,
    String? latestOccurrenceKey,
    int? occurrenceCount,
    DateTime? firstOccurredAt,
    DateTime? lastOccurredAt,
    DateTime? archivedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogNotificationsArchive',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (siteId != null) 'siteId': siteId?.toJson(),
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
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (metadata != null) 'metadata': metadata,
      if (groupKey != null) 'groupKey': groupKey,
      if (latestOccurrenceKey != null)
        'latestOccurrenceKey': latestOccurrenceKey,
      'occurrenceCount': occurrenceCount,
      if (firstOccurredAt != null) 'firstOccurredAt': firstOccurredAt?.toJson(),
      if (lastOccurredAt != null) 'lastOccurredAt': lastOccurredAt?.toJson(),
      'archivedAt': archivedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogNotificationsArchive',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (siteId != null) 'siteId': siteId?.toJson(),
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
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (metadata != null) 'metadata': metadata,
      if (groupKey != null) 'groupKey': groupKey,
      if (latestOccurrenceKey != null)
        'latestOccurrenceKey': latestOccurrenceKey,
      'occurrenceCount': occurrenceCount,
      if (firstOccurredAt != null) 'firstOccurredAt': firstOccurredAt?.toJson(),
      if (lastOccurredAt != null) 'lastOccurredAt': lastOccurredAt?.toJson(),
      'archivedAt': archivedAt.toJson(),
    };
  }

  static ElogNotificationsArchiveInclude include() {
    return ElogNotificationsArchiveInclude._();
  }

  static ElogNotificationsArchiveIncludeList includeList({
    _is.WhereExpressionBuilder<ElogNotificationsArchiveTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogNotificationsArchiveTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationsArchiveTable>? orderByList,
    ElogNotificationsArchiveInclude? include,
  }) {
    return ElogNotificationsArchiveIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogNotificationsArchive.t),
      orderByList: orderByList?.call(ElogNotificationsArchive.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogNotificationsArchiveImpl extends ElogNotificationsArchive {
  _ElogNotificationsArchiveImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    _is.UuidValue? companyId,
    _is.UuidValue? siteId,
    required String type,
    required String title,
    String? message,
    String? resourceType,
    _is.UuidValue? resourceId,
    _is.UuidValue? workflowInstanceId,
    _is.UuidValue? workflowTaskId,
    bool? isRead,
    DateTime? readAt,
    DateTime? createdAt,
    String? metadata,
    String? groupKey,
    String? latestOccurrenceKey,
    required int occurrenceCount,
    DateTime? firstOccurredAt,
    DateTime? lastOccurredAt,
    required DateTime archivedAt,
  }) : super._(
         id: id,
         userId: userId,
         companyId: companyId,
         siteId: siteId,
         type: type,
         title: title,
         message: message,
         resourceType: resourceType,
         resourceId: resourceId,
         workflowInstanceId: workflowInstanceId,
         workflowTaskId: workflowTaskId,
         isRead: isRead,
         readAt: readAt,
         createdAt: createdAt,
         metadata: metadata,
         groupKey: groupKey,
         latestOccurrenceKey: latestOccurrenceKey,
         occurrenceCount: occurrenceCount,
         firstOccurredAt: firstOccurredAt,
         lastOccurredAt: lastOccurredAt,
         archivedAt: archivedAt,
       );

  /// Returns a shallow copy of this [ElogNotificationsArchive]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogNotificationsArchive copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    Object? companyId = _Undefined,
    Object? siteId = _Undefined,
    String? type,
    String? title,
    Object? message = _Undefined,
    Object? resourceType = _Undefined,
    Object? resourceId = _Undefined,
    Object? workflowInstanceId = _Undefined,
    Object? workflowTaskId = _Undefined,
    Object? isRead = _Undefined,
    Object? readAt = _Undefined,
    Object? createdAt = _Undefined,
    Object? metadata = _Undefined,
    Object? groupKey = _Undefined,
    Object? latestOccurrenceKey = _Undefined,
    int? occurrenceCount,
    Object? firstOccurredAt = _Undefined,
    Object? lastOccurredAt = _Undefined,
    DateTime? archivedAt,
  }) {
    return ElogNotificationsArchive(
      id: id is _is.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      companyId: companyId is _is.UuidValue? ? companyId : this.companyId,
      siteId: siteId is _is.UuidValue? ? siteId : this.siteId,
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
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      metadata: metadata is String? ? metadata : this.metadata,
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
      archivedAt: archivedAt ?? this.archivedAt,
    );
  }
}

class ElogNotificationsArchiveUpdateTable
    extends _is.UpdateTable<ElogNotificationsArchiveTable> {
  ElogNotificationsArchiveUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.companyId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> siteId(_is.UuidValue? value) =>
      _is.ColumnValue(
        table.siteId,
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

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<String, String> metadata(String? value) => _is.ColumnValue(
    table.metadata,
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

  _is.ColumnValue<DateTime, DateTime> archivedAt(DateTime value) =>
      _is.ColumnValue(
        table.archivedAt,
        value,
      );
}

class ElogNotificationsArchiveTable extends _is.Table<_is.UuidValue?> {
  ElogNotificationsArchiveTable({super.tableRelation})
    : super(tableName: 'elog_notifications_archive') {
    updateTable = ElogNotificationsArchiveUpdateTable(this);
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    companyId = _is.ColumnUuid(
      'companyId',
      this,
    );
    siteId = _is.ColumnUuid(
      'siteId',
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
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
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
    archivedAt = _is.ColumnDateTime(
      'archivedAt',
      this,
    );
  }

  late final ElogNotificationsArchiveUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnUuid companyId;

  late final _is.ColumnUuid siteId;

  late final _is.ColumnString type;

  late final _is.ColumnString title;

  late final _is.ColumnString message;

  late final _is.ColumnString resourceType;

  late final _is.ColumnUuid resourceId;

  late final _is.ColumnUuid workflowInstanceId;

  late final _is.ColumnUuid workflowTaskId;

  late final _is.ColumnBool isRead;

  late final _is.ColumnDateTime readAt;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnString metadata;

  late final _is.ColumnString groupKey;

  late final _is.ColumnString latestOccurrenceKey;

  late final _is.ColumnInt occurrenceCount;

  late final _is.ColumnDateTime firstOccurredAt;

  late final _is.ColumnDateTime lastOccurredAt;

  late final _is.ColumnDateTime archivedAt;

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    companyId,
    siteId,
    type,
    title,
    message,
    resourceType,
    resourceId,
    workflowInstanceId,
    workflowTaskId,
    isRead,
    readAt,
    createdAt,
    metadata,
    groupKey,
    latestOccurrenceKey,
    occurrenceCount,
    firstOccurredAt,
    lastOccurredAt,
    archivedAt,
  ];
}

class ElogNotificationsArchiveInclude extends _is.IncludeObject {
  ElogNotificationsArchiveInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogNotificationsArchive.t;
}

class ElogNotificationsArchiveIncludeList extends _is.IncludeList {
  ElogNotificationsArchiveIncludeList._({
    _is.WhereExpressionBuilder<ElogNotificationsArchiveTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogNotificationsArchive.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogNotificationsArchive.t;
}

class ElogNotificationsArchiveRepository {
  const ElogNotificationsArchiveRepository._();

  /// Returns a list of [ElogNotificationsArchive]s matching the given query parameters.
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
  Future<List<ElogNotificationsArchive>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogNotificationsArchiveTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogNotificationsArchiveTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationsArchiveTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogNotificationsArchive>(
      where: where?.call(ElogNotificationsArchive.t),
      orderBy: orderBy?.call(ElogNotificationsArchive.t),
      orderByList: orderByList?.call(ElogNotificationsArchive.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogNotificationsArchive] matching the given query parameters.
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
  Future<ElogNotificationsArchive?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogNotificationsArchiveTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogNotificationsArchiveTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationsArchiveTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogNotificationsArchive>(
      where: where?.call(ElogNotificationsArchive.t),
      orderBy: orderBy?.call(ElogNotificationsArchive.t),
      orderByList: orderByList?.call(ElogNotificationsArchive.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogNotificationsArchive] by its [id] or null if no such row exists.
  Future<ElogNotificationsArchive?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogNotificationsArchive>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogNotificationsArchive]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogNotificationsArchive]s will have their `id` fields set.
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
  Future<List<ElogNotificationsArchive>> insert(
    _is.DatabaseSession session,
    List<ElogNotificationsArchive> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogNotificationsArchive>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogNotificationsArchive] and returns the inserted row.
  ///
  /// The returned [ElogNotificationsArchive] will have its `id` field set.
  Future<ElogNotificationsArchive> insertRow(
    _is.DatabaseSession session,
    ElogNotificationsArchive row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogNotificationsArchive>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogNotificationsArchive]s in the list and returns the resulting rows.
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
  /// The returned [ElogNotificationsArchive]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogNotificationsArchive>> upsert(
    _is.DatabaseSession session,
    List<ElogNotificationsArchive> rows, {
    required _is.ColumnSelections<ElogNotificationsArchiveTable>
    conflictColumns,
    _is.ColumnSelections<ElogNotificationsArchiveTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogNotificationsArchiveTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogNotificationsArchive>(
      rows,
      conflictColumns: conflictColumns(ElogNotificationsArchive.t),
      updateColumns: updateColumns?.call(ElogNotificationsArchive.t),
      updateWhere: updateWhere?.call(ElogNotificationsArchive.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogNotificationsArchive] and returns the resulting row.
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
  /// The returned [ElogNotificationsArchive] will have its `id` field set.
  Future<ElogNotificationsArchive?> upsertRow(
    _is.DatabaseSession session,
    ElogNotificationsArchive row, {
    required _is.ColumnSelections<ElogNotificationsArchiveTable>
    conflictColumns,
    _is.ColumnSelections<ElogNotificationsArchiveTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogNotificationsArchiveTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogNotificationsArchive>(
      row,
      conflictColumns: conflictColumns(ElogNotificationsArchive.t),
      updateColumns: updateColumns?.call(ElogNotificationsArchive.t),
      updateWhere: updateWhere?.call(ElogNotificationsArchive.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogNotificationsArchive]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogNotificationsArchive>> update(
    _is.DatabaseSession session,
    List<ElogNotificationsArchive> rows, {
    _is.ColumnSelections<ElogNotificationsArchiveTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogNotificationsArchive>(
      rows,
      columns: columns?.call(ElogNotificationsArchive.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogNotificationsArchive]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogNotificationsArchive> updateRow(
    _is.DatabaseSession session,
    ElogNotificationsArchive row, {
    _is.ColumnSelections<ElogNotificationsArchiveTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogNotificationsArchive>(
      row,
      columns: columns?.call(ElogNotificationsArchive.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogNotificationsArchive] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogNotificationsArchive?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogNotificationsArchiveUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogNotificationsArchive>(
      id,
      columnValues: columnValues(ElogNotificationsArchive.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogNotificationsArchive]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogNotificationsArchive>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogNotificationsArchiveUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogNotificationsArchiveTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogNotificationsArchiveTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationsArchiveTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogNotificationsArchive>(
      columnValues: columnValues(ElogNotificationsArchive.t.updateTable),
      where: where(ElogNotificationsArchive.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogNotificationsArchive.t),
      orderByList: orderByList?.call(ElogNotificationsArchive.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogNotificationsArchive]s in the list and returns the deleted rows.
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
  Future<List<ElogNotificationsArchive>> delete(
    _is.DatabaseSession session,
    List<ElogNotificationsArchive> rows, {
    _is.OrderByBuilder<ElogNotificationsArchiveTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationsArchiveTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogNotificationsArchive>(
      rows,
      orderBy: orderBy?.call(ElogNotificationsArchive.t),
      orderByList: orderByList?.call(ElogNotificationsArchive.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogNotificationsArchive].
  Future<ElogNotificationsArchive> deleteRow(
    _is.DatabaseSession session,
    ElogNotificationsArchive row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogNotificationsArchive>(
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
  Future<List<ElogNotificationsArchive>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogNotificationsArchiveTable> where,
    _is.OrderByBuilder<ElogNotificationsArchiveTable>? orderBy,
    _is.OrderByListBuilder<ElogNotificationsArchiveTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogNotificationsArchive>(
      where: where(ElogNotificationsArchive.t),
      orderBy: orderBy?.call(ElogNotificationsArchive.t),
      orderByList: orderByList?.call(ElogNotificationsArchive.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogNotificationsArchiveTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogNotificationsArchive>(
      where: where?.call(ElogNotificationsArchive.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogNotificationsArchive] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogNotificationsArchiveTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogNotificationsArchive>(
      where: where(ElogNotificationsArchive.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
