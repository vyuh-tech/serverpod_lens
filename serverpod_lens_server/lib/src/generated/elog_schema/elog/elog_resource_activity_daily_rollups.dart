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

abstract class ElogResourceActivityDailyRollups
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogResourceActivityDailyRollups._({
    this.id,
    required this.resourceType,
    required this.resourceId,
    required this.activityType,
    required this.bucketDate,
    required this.activityCount,
    this.firstActivityAt,
    this.lastActivityAt,
    required this.updatedAt,
  });

  factory ElogResourceActivityDailyRollups({
    _is.UuidValue? id,
    required String resourceType,
    required _is.UuidValue resourceId,
    required String activityType,
    required DateTime bucketDate,
    required BigInt activityCount,
    DateTime? firstActivityAt,
    DateTime? lastActivityAt,
    required DateTime updatedAt,
  }) = _ElogResourceActivityDailyRollupsImpl;

  factory ElogResourceActivityDailyRollups.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogResourceActivityDailyRollups(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      resourceType: jsonSerialization['resourceType'] as String,
      resourceId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['resourceId'],
      ),
      activityType: jsonSerialization['activityType'] as String,
      bucketDate: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['bucketDate'],
      ),
      activityCount: _is.BigIntJsonExtension.fromJson(
        jsonSerialization['activityCount'],
      ),
      firstActivityAt: jsonSerialization['firstActivityAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['firstActivityAt'],
            ),
      lastActivityAt: jsonSerialization['lastActivityAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastActivityAt'],
            ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = ElogResourceActivityDailyRollupsTable();

  static const db = ElogResourceActivityDailyRollupsRepository._();

  @override
  _is.UuidValue? id;

  String resourceType;

  _is.UuidValue resourceId;

  String activityType;

  DateTime bucketDate;

  BigInt activityCount;

  DateTime? firstActivityAt;

  DateTime? lastActivityAt;

  DateTime updatedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogResourceActivityDailyRollups]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogResourceActivityDailyRollups copyWith({
    _is.UuidValue? id,
    String? resourceType,
    _is.UuidValue? resourceId,
    String? activityType,
    DateTime? bucketDate,
    BigInt? activityCount,
    DateTime? firstActivityAt,
    DateTime? lastActivityAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogResourceActivityDailyRollups',
      if (id != null) 'id': id?.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      'activityType': activityType,
      'bucketDate': bucketDate.toJson(),
      'activityCount': activityCount.toJson(),
      if (firstActivityAt != null) 'firstActivityAt': firstActivityAt?.toJson(),
      if (lastActivityAt != null) 'lastActivityAt': lastActivityAt?.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogResourceActivityDailyRollups',
      if (id != null) 'id': id?.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      'activityType': activityType,
      'bucketDate': bucketDate.toJson(),
      'activityCount': activityCount.toJson(),
      if (firstActivityAt != null) 'firstActivityAt': firstActivityAt?.toJson(),
      if (lastActivityAt != null) 'lastActivityAt': lastActivityAt?.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static ElogResourceActivityDailyRollupsInclude include() {
    return ElogResourceActivityDailyRollupsInclude._();
  }

  static ElogResourceActivityDailyRollupsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogResourceActivityDailyRollupsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceActivityDailyRollupsTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceActivityDailyRollupsTable>? orderByList,
    ElogResourceActivityDailyRollupsInclude? include,
  }) {
    return ElogResourceActivityDailyRollupsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogResourceActivityDailyRollups.t),
      orderByList: orderByList?.call(ElogResourceActivityDailyRollups.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogResourceActivityDailyRollupsImpl
    extends ElogResourceActivityDailyRollups {
  _ElogResourceActivityDailyRollupsImpl({
    _is.UuidValue? id,
    required String resourceType,
    required _is.UuidValue resourceId,
    required String activityType,
    required DateTime bucketDate,
    required BigInt activityCount,
    DateTime? firstActivityAt,
    DateTime? lastActivityAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         resourceType: resourceType,
         resourceId: resourceId,
         activityType: activityType,
         bucketDate: bucketDate,
         activityCount: activityCount,
         firstActivityAt: firstActivityAt,
         lastActivityAt: lastActivityAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [ElogResourceActivityDailyRollups]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogResourceActivityDailyRollups copyWith({
    Object? id = _Undefined,
    String? resourceType,
    _is.UuidValue? resourceId,
    String? activityType,
    DateTime? bucketDate,
    BigInt? activityCount,
    Object? firstActivityAt = _Undefined,
    Object? lastActivityAt = _Undefined,
    DateTime? updatedAt,
  }) {
    return ElogResourceActivityDailyRollups(
      id: id is _is.UuidValue? ? id : this.id,
      resourceType: resourceType ?? this.resourceType,
      resourceId: resourceId ?? this.resourceId,
      activityType: activityType ?? this.activityType,
      bucketDate: bucketDate ?? this.bucketDate,
      activityCount: activityCount ?? this.activityCount,
      firstActivityAt: firstActivityAt is DateTime?
          ? firstActivityAt
          : this.firstActivityAt,
      lastActivityAt: lastActivityAt is DateTime?
          ? lastActivityAt
          : this.lastActivityAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class ElogResourceActivityDailyRollupsUpdateTable
    extends _is.UpdateTable<ElogResourceActivityDailyRollupsTable> {
  ElogResourceActivityDailyRollupsUpdateTable(super.table);

  _is.ColumnValue<String, String> resourceType(String value) => _is.ColumnValue(
    table.resourceType,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> resourceId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.resourceId,
    value,
  );

  _is.ColumnValue<String, String> activityType(String value) => _is.ColumnValue(
    table.activityType,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> bucketDate(DateTime value) =>
      _is.ColumnValue(
        table.bucketDate,
        value,
      );

  _is.ColumnValue<BigInt, BigInt> activityCount(BigInt value) =>
      _is.ColumnValue(
        table.activityCount,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> firstActivityAt(DateTime? value) =>
      _is.ColumnValue(
        table.firstActivityAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> lastActivityAt(DateTime? value) =>
      _is.ColumnValue(
        table.lastActivityAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );
}

class ElogResourceActivityDailyRollupsTable extends _is.Table<_is.UuidValue?> {
  ElogResourceActivityDailyRollupsTable({super.tableRelation})
    : super(tableName: 'elog_resource_activity_daily_rollups') {
    updateTable = ElogResourceActivityDailyRollupsUpdateTable(this);
    resourceType = _is.ColumnString(
      'resourceType',
      this,
    );
    resourceId = _is.ColumnUuid(
      'resourceId',
      this,
    );
    activityType = _is.ColumnString(
      'activityType',
      this,
    );
    bucketDate = _is.ColumnDateTime(
      'bucketDate',
      this,
    );
    activityCount = _is.ColumnBigInt(
      'activityCount',
      this,
    );
    firstActivityAt = _is.ColumnDateTime(
      'firstActivityAt',
      this,
    );
    lastActivityAt = _is.ColumnDateTime(
      'lastActivityAt',
      this,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final ElogResourceActivityDailyRollupsUpdateTable updateTable;

  late final _is.ColumnString resourceType;

  late final _is.ColumnUuid resourceId;

  late final _is.ColumnString activityType;

  late final _is.ColumnDateTime bucketDate;

  late final _is.ColumnBigInt activityCount;

  late final _is.ColumnDateTime firstActivityAt;

  late final _is.ColumnDateTime lastActivityAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    resourceType,
    resourceId,
    activityType,
    bucketDate,
    activityCount,
    firstActivityAt,
    lastActivityAt,
    updatedAt,
  ];
}

class ElogResourceActivityDailyRollupsInclude extends _is.IncludeObject {
  ElogResourceActivityDailyRollupsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogResourceActivityDailyRollups.t;
}

class ElogResourceActivityDailyRollupsIncludeList extends _is.IncludeList {
  ElogResourceActivityDailyRollupsIncludeList._({
    _is.WhereExpressionBuilder<ElogResourceActivityDailyRollupsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogResourceActivityDailyRollups.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogResourceActivityDailyRollups.t;
}

class ElogResourceActivityDailyRollupsRepository {
  const ElogResourceActivityDailyRollupsRepository._();

  /// Returns a list of [ElogResourceActivityDailyRollups]s matching the given query parameters.
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
  Future<List<ElogResourceActivityDailyRollups>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceActivityDailyRollupsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceActivityDailyRollupsTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceActivityDailyRollupsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogResourceActivityDailyRollups>(
      where: where?.call(ElogResourceActivityDailyRollups.t),
      orderBy: orderBy?.call(ElogResourceActivityDailyRollups.t),
      orderByList: orderByList?.call(ElogResourceActivityDailyRollups.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogResourceActivityDailyRollups] matching the given query parameters.
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
  Future<ElogResourceActivityDailyRollups?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceActivityDailyRollupsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogResourceActivityDailyRollupsTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceActivityDailyRollupsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogResourceActivityDailyRollups>(
      where: where?.call(ElogResourceActivityDailyRollups.t),
      orderBy: orderBy?.call(ElogResourceActivityDailyRollups.t),
      orderByList: orderByList?.call(ElogResourceActivityDailyRollups.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogResourceActivityDailyRollups] by its [id] or null if no such row exists.
  Future<ElogResourceActivityDailyRollups?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogResourceActivityDailyRollups>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogResourceActivityDailyRollups]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogResourceActivityDailyRollups]s will have their `id` fields set.
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
  Future<List<ElogResourceActivityDailyRollups>> insert(
    _is.DatabaseSession session,
    List<ElogResourceActivityDailyRollups> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogResourceActivityDailyRollups>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogResourceActivityDailyRollups] and returns the inserted row.
  ///
  /// The returned [ElogResourceActivityDailyRollups] will have its `id` field set.
  Future<ElogResourceActivityDailyRollups> insertRow(
    _is.DatabaseSession session,
    ElogResourceActivityDailyRollups row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogResourceActivityDailyRollups>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogResourceActivityDailyRollups]s in the list and returns the resulting rows.
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
  /// The returned [ElogResourceActivityDailyRollups]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceActivityDailyRollups>> upsert(
    _is.DatabaseSession session,
    List<ElogResourceActivityDailyRollups> rows, {
    required _is.ColumnSelections<ElogResourceActivityDailyRollupsTable>
    conflictColumns,
    _is.ColumnSelections<ElogResourceActivityDailyRollupsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogResourceActivityDailyRollupsTable>?
    updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogResourceActivityDailyRollups>(
      rows,
      conflictColumns: conflictColumns(ElogResourceActivityDailyRollups.t),
      updateColumns: updateColumns?.call(ElogResourceActivityDailyRollups.t),
      updateWhere: updateWhere?.call(ElogResourceActivityDailyRollups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogResourceActivityDailyRollups] and returns the resulting row.
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
  /// The returned [ElogResourceActivityDailyRollups] will have its `id` field set.
  Future<ElogResourceActivityDailyRollups?> upsertRow(
    _is.DatabaseSession session,
    ElogResourceActivityDailyRollups row, {
    required _is.ColumnSelections<ElogResourceActivityDailyRollupsTable>
    conflictColumns,
    _is.ColumnSelections<ElogResourceActivityDailyRollupsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogResourceActivityDailyRollupsTable>?
    updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogResourceActivityDailyRollups>(
      row,
      conflictColumns: conflictColumns(ElogResourceActivityDailyRollups.t),
      updateColumns: updateColumns?.call(ElogResourceActivityDailyRollups.t),
      updateWhere: updateWhere?.call(ElogResourceActivityDailyRollups.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogResourceActivityDailyRollups]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceActivityDailyRollups>> update(
    _is.DatabaseSession session,
    List<ElogResourceActivityDailyRollups> rows, {
    _is.ColumnSelections<ElogResourceActivityDailyRollupsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogResourceActivityDailyRollups>(
      rows,
      columns: columns?.call(ElogResourceActivityDailyRollups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogResourceActivityDailyRollups]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogResourceActivityDailyRollups> updateRow(
    _is.DatabaseSession session,
    ElogResourceActivityDailyRollups row, {
    _is.ColumnSelections<ElogResourceActivityDailyRollupsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogResourceActivityDailyRollups>(
      row,
      columns: columns?.call(ElogResourceActivityDailyRollups.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogResourceActivityDailyRollups] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogResourceActivityDailyRollups?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<
      ElogResourceActivityDailyRollupsUpdateTable
    >
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogResourceActivityDailyRollups>(
      id,
      columnValues: columnValues(
        ElogResourceActivityDailyRollups.t.updateTable,
      ),
      transaction: transaction,
    );
  }

  /// Updates all [ElogResourceActivityDailyRollups]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceActivityDailyRollups>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<
      ElogResourceActivityDailyRollupsUpdateTable
    >
    columnValues,
    required _is.WhereExpressionBuilder<ElogResourceActivityDailyRollupsTable>
    where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceActivityDailyRollupsTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceActivityDailyRollupsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogResourceActivityDailyRollups>(
      columnValues: columnValues(
        ElogResourceActivityDailyRollups.t.updateTable,
      ),
      where: where(ElogResourceActivityDailyRollups.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogResourceActivityDailyRollups.t),
      orderByList: orderByList?.call(ElogResourceActivityDailyRollups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogResourceActivityDailyRollups]s in the list and returns the deleted rows.
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
  Future<List<ElogResourceActivityDailyRollups>> delete(
    _is.DatabaseSession session,
    List<ElogResourceActivityDailyRollups> rows, {
    _is.OrderByBuilder<ElogResourceActivityDailyRollupsTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceActivityDailyRollupsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogResourceActivityDailyRollups>(
      rows,
      orderBy: orderBy?.call(ElogResourceActivityDailyRollups.t),
      orderByList: orderByList?.call(ElogResourceActivityDailyRollups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogResourceActivityDailyRollups].
  Future<ElogResourceActivityDailyRollups> deleteRow(
    _is.DatabaseSession session,
    ElogResourceActivityDailyRollups row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogResourceActivityDailyRollups>(
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
  Future<List<ElogResourceActivityDailyRollups>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogResourceActivityDailyRollupsTable>
    where,
    _is.OrderByBuilder<ElogResourceActivityDailyRollupsTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceActivityDailyRollupsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogResourceActivityDailyRollups>(
      where: where(ElogResourceActivityDailyRollups.t),
      orderBy: orderBy?.call(ElogResourceActivityDailyRollups.t),
      orderByList: orderByList?.call(ElogResourceActivityDailyRollups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceActivityDailyRollupsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogResourceActivityDailyRollups>(
      where: where?.call(ElogResourceActivityDailyRollups.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogResourceActivityDailyRollups] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogResourceActivityDailyRollupsTable>
    where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogResourceActivityDailyRollups>(
      where: where(ElogResourceActivityDailyRollups.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
