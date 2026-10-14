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

abstract class SsoNotifications
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoNotifications._({
    this.id,
    required this.userId,
    required this.type,
    required this.title,
    this.message,
    this.resourceType,
    this.resourceId,
    required this.isRead,
    this.readAt,
    required this.createdAt,
    this.metadata,
  });

  factory SsoNotifications({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String type,
    required String title,
    String? message,
    String? resourceType,
    _is.UuidValue? resourceId,
    required bool isRead,
    DateTime? readAt,
    required DateTime createdAt,
    String? metadata,
  }) = _SsoNotificationsImpl;

  factory SsoNotifications.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoNotifications(
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
      isRead: _is.BoolJsonExtension.fromJson(jsonSerialization['isRead']),
      readAt: jsonSerialization['readAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['readAt']),
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      metadata: jsonSerialization['metadata'] as String?,
    );
  }

  static final t = SsoNotificationsTable();

  static const db = SsoNotificationsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue userId;

  String type;

  String title;

  String? message;

  String? resourceType;

  _is.UuidValue? resourceId;

  bool isRead;

  DateTime? readAt;

  DateTime createdAt;

  String? metadata;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoNotifications]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoNotifications copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    String? type,
    String? title,
    String? message,
    String? resourceType,
    _is.UuidValue? resourceId,
    bool? isRead,
    DateTime? readAt,
    DateTime? createdAt,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoNotifications',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'type': type,
      'title': title,
      if (message != null) 'message': message,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      'isRead': isRead,
      if (readAt != null) 'readAt': readAt?.toJson(),
      'createdAt': createdAt.toJson(),
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoNotifications',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'type': type,
      'title': title,
      if (message != null) 'message': message,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      'isRead': isRead,
      if (readAt != null) 'readAt': readAt?.toJson(),
      'createdAt': createdAt.toJson(),
      if (metadata != null) 'metadata': metadata,
    };
  }

  static SsoNotificationsInclude include() {
    return SsoNotificationsInclude._();
  }

  static SsoNotificationsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoNotificationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoNotificationsTable>? orderBy,
    _is.OrderByListBuilder<SsoNotificationsTable>? orderByList,
    SsoNotificationsInclude? include,
  }) {
    return SsoNotificationsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoNotifications.t),
      orderByList: orderByList?.call(SsoNotifications.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoNotificationsImpl extends SsoNotifications {
  _SsoNotificationsImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String type,
    required String title,
    String? message,
    String? resourceType,
    _is.UuidValue? resourceId,
    required bool isRead,
    DateTime? readAt,
    required DateTime createdAt,
    String? metadata,
  }) : super._(
         id: id,
         userId: userId,
         type: type,
         title: title,
         message: message,
         resourceType: resourceType,
         resourceId: resourceId,
         isRead: isRead,
         readAt: readAt,
         createdAt: createdAt,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [SsoNotifications]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoNotifications copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    String? type,
    String? title,
    Object? message = _Undefined,
    Object? resourceType = _Undefined,
    Object? resourceId = _Undefined,
    bool? isRead,
    Object? readAt = _Undefined,
    DateTime? createdAt,
    Object? metadata = _Undefined,
  }) {
    return SsoNotifications(
      id: id is _is.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      title: title ?? this.title,
      message: message is String? ? message : this.message,
      resourceType: resourceType is String? ? resourceType : this.resourceType,
      resourceId: resourceId is _is.UuidValue? ? resourceId : this.resourceId,
      isRead: isRead ?? this.isRead,
      readAt: readAt is DateTime? ? readAt : this.readAt,
      createdAt: createdAt ?? this.createdAt,
      metadata: metadata is String? ? metadata : this.metadata,
    );
  }
}

class SsoNotificationsUpdateTable
    extends _is.UpdateTable<SsoNotificationsTable> {
  SsoNotificationsUpdateTable(super.table);

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

  _is.ColumnValue<bool, bool> isRead(bool value) => _is.ColumnValue(
    table.isRead,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> readAt(DateTime? value) =>
      _is.ColumnValue(
        table.readAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<String, String> metadata(String? value) => _is.ColumnValue(
    table.metadata,
    value,
  );
}

class SsoNotificationsTable extends _is.Table<_is.UuidValue?> {
  SsoNotificationsTable({super.tableRelation})
    : super(tableName: 'sso_notifications') {
    updateTable = SsoNotificationsUpdateTable(this);
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
  }

  late final SsoNotificationsUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnString type;

  late final _is.ColumnString title;

  late final _is.ColumnString message;

  late final _is.ColumnString resourceType;

  late final _is.ColumnUuid resourceId;

  late final _is.ColumnBool isRead;

  late final _is.ColumnDateTime readAt;

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
    isRead,
    readAt,
    createdAt,
    metadata,
  ];
}

class SsoNotificationsInclude extends _is.IncludeObject {
  SsoNotificationsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoNotifications.t;
}

class SsoNotificationsIncludeList extends _is.IncludeList {
  SsoNotificationsIncludeList._({
    _is.WhereExpressionBuilder<SsoNotificationsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoNotifications.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoNotifications.t;
}

class SsoNotificationsRepository {
  const SsoNotificationsRepository._();

  /// Returns a list of [SsoNotifications]s matching the given query parameters.
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
  Future<List<SsoNotifications>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoNotificationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoNotificationsTable>? orderBy,
    _is.OrderByListBuilder<SsoNotificationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoNotifications>(
      where: where?.call(SsoNotifications.t),
      orderBy: orderBy?.call(SsoNotifications.t),
      orderByList: orderByList?.call(SsoNotifications.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoNotifications] matching the given query parameters.
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
  Future<SsoNotifications?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoNotificationsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoNotificationsTable>? orderBy,
    _is.OrderByListBuilder<SsoNotificationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoNotifications>(
      where: where?.call(SsoNotifications.t),
      orderBy: orderBy?.call(SsoNotifications.t),
      orderByList: orderByList?.call(SsoNotifications.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoNotifications] by its [id] or null if no such row exists.
  Future<SsoNotifications?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoNotifications>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoNotifications]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoNotifications]s will have their `id` fields set.
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
  Future<List<SsoNotifications>> insert(
    _is.DatabaseSession session,
    List<SsoNotifications> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoNotifications>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoNotifications] and returns the inserted row.
  ///
  /// The returned [SsoNotifications] will have its `id` field set.
  Future<SsoNotifications> insertRow(
    _is.DatabaseSession session,
    SsoNotifications row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoNotifications>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoNotifications]s in the list and returns the resulting rows.
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
  /// The returned [SsoNotifications]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoNotifications>> upsert(
    _is.DatabaseSession session,
    List<SsoNotifications> rows, {
    required _is.ColumnSelections<SsoNotificationsTable> conflictColumns,
    _is.ColumnSelections<SsoNotificationsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoNotificationsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoNotifications>(
      rows,
      conflictColumns: conflictColumns(SsoNotifications.t),
      updateColumns: updateColumns?.call(SsoNotifications.t),
      updateWhere: updateWhere?.call(SsoNotifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoNotifications] and returns the resulting row.
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
  /// The returned [SsoNotifications] will have its `id` field set.
  Future<SsoNotifications?> upsertRow(
    _is.DatabaseSession session,
    SsoNotifications row, {
    required _is.ColumnSelections<SsoNotificationsTable> conflictColumns,
    _is.ColumnSelections<SsoNotificationsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoNotificationsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoNotifications>(
      row,
      conflictColumns: conflictColumns(SsoNotifications.t),
      updateColumns: updateColumns?.call(SsoNotifications.t),
      updateWhere: updateWhere?.call(SsoNotifications.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoNotifications]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoNotifications>> update(
    _is.DatabaseSession session,
    List<SsoNotifications> rows, {
    _is.ColumnSelections<SsoNotificationsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoNotifications>(
      rows,
      columns: columns?.call(SsoNotifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoNotifications]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoNotifications> updateRow(
    _is.DatabaseSession session,
    SsoNotifications row, {
    _is.ColumnSelections<SsoNotificationsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoNotifications>(
      row,
      columns: columns?.call(SsoNotifications.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoNotifications] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoNotifications?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoNotificationsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoNotifications>(
      id,
      columnValues: columnValues(SsoNotifications.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoNotifications]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoNotifications>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoNotificationsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoNotificationsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoNotificationsTable>? orderBy,
    _is.OrderByListBuilder<SsoNotificationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoNotifications>(
      columnValues: columnValues(SsoNotifications.t.updateTable),
      where: where(SsoNotifications.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoNotifications.t),
      orderByList: orderByList?.call(SsoNotifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoNotifications]s in the list and returns the deleted rows.
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
  Future<List<SsoNotifications>> delete(
    _is.DatabaseSession session,
    List<SsoNotifications> rows, {
    _is.OrderByBuilder<SsoNotificationsTable>? orderBy,
    _is.OrderByListBuilder<SsoNotificationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoNotifications>(
      rows,
      orderBy: orderBy?.call(SsoNotifications.t),
      orderByList: orderByList?.call(SsoNotifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoNotifications].
  Future<SsoNotifications> deleteRow(
    _is.DatabaseSession session,
    SsoNotifications row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoNotifications>(
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
  Future<List<SsoNotifications>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoNotificationsTable> where,
    _is.OrderByBuilder<SsoNotificationsTable>? orderBy,
    _is.OrderByListBuilder<SsoNotificationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoNotifications>(
      where: where(SsoNotifications.t),
      orderBy: orderBy?.call(SsoNotifications.t),
      orderByList: orderByList?.call(SsoNotifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoNotificationsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoNotifications>(
      where: where?.call(SsoNotifications.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoNotifications] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoNotificationsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoNotifications>(
      where: where(SsoNotifications.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
