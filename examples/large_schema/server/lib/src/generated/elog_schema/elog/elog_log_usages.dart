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

abstract class ElogLogUsages
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogLogUsages._({
    this.id,
    required this.logTemplateId,
    this.title,
    required this.data,
    required this.status,
    this.resourceType,
    this.resourceId,
    this.logTemplateVersionNumber,
    this.lockedBy,
    this.lockedAt,
  });

  factory ElogLogUsages({
    _is.UuidValue? id,
    required _is.UuidValue logTemplateId,
    String? title,
    required String data,
    required String status,
    String? resourceType,
    _is.UuidValue? resourceId,
    int? logTemplateVersionNumber,
    _is.UuidValue? lockedBy,
    DateTime? lockedAt,
  }) = _ElogLogUsagesImpl;

  factory ElogLogUsages.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogLogUsages(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      logTemplateId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['logTemplateId'],
      ),
      title: jsonSerialization['title'] as String?,
      data: jsonSerialization['data'] as String,
      status: jsonSerialization['status'] as String,
      resourceType: jsonSerialization['resourceType'] as String?,
      resourceId: jsonSerialization['resourceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceId'],
            ),
      logTemplateVersionNumber:
          jsonSerialization['logTemplateVersionNumber'] as int?,
      lockedBy: jsonSerialization['lockedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['lockedBy']),
      lockedAt: jsonSerialization['lockedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['lockedAt']),
    );
  }

  static final t = ElogLogUsagesTable();

  static const db = ElogLogUsagesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue logTemplateId;

  String? title;

  String data;

  String status;

  String? resourceType;

  _is.UuidValue? resourceId;

  int? logTemplateVersionNumber;

  _is.UuidValue? lockedBy;

  DateTime? lockedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogLogUsages]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogLogUsages copyWith({
    _is.UuidValue? id,
    _is.UuidValue? logTemplateId,
    String? title,
    String? data,
    String? status,
    String? resourceType,
    _is.UuidValue? resourceId,
    int? logTemplateVersionNumber,
    _is.UuidValue? lockedBy,
    DateTime? lockedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogLogUsages',
      if (id != null) 'id': id?.toJson(),
      'logTemplateId': logTemplateId.toJson(),
      if (title != null) 'title': title,
      'data': data,
      'status': status,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (logTemplateVersionNumber != null)
        'logTemplateVersionNumber': logTemplateVersionNumber,
      if (lockedBy != null) 'lockedBy': lockedBy?.toJson(),
      if (lockedAt != null) 'lockedAt': lockedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogLogUsages',
      if (id != null) 'id': id?.toJson(),
      'logTemplateId': logTemplateId.toJson(),
      if (title != null) 'title': title,
      'data': data,
      'status': status,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (logTemplateVersionNumber != null)
        'logTemplateVersionNumber': logTemplateVersionNumber,
      if (lockedBy != null) 'lockedBy': lockedBy?.toJson(),
      if (lockedAt != null) 'lockedAt': lockedAt?.toJson(),
    };
  }

  static ElogLogUsagesInclude include() {
    return ElogLogUsagesInclude._();
  }

  static ElogLogUsagesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogLogUsagesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogLogUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogLogUsagesTable>? orderByList,
    ElogLogUsagesInclude? include,
  }) {
    return ElogLogUsagesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogLogUsages.t),
      orderByList: orderByList?.call(ElogLogUsages.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogLogUsagesImpl extends ElogLogUsages {
  _ElogLogUsagesImpl({
    _is.UuidValue? id,
    required _is.UuidValue logTemplateId,
    String? title,
    required String data,
    required String status,
    String? resourceType,
    _is.UuidValue? resourceId,
    int? logTemplateVersionNumber,
    _is.UuidValue? lockedBy,
    DateTime? lockedAt,
  }) : super._(
         id: id,
         logTemplateId: logTemplateId,
         title: title,
         data: data,
         status: status,
         resourceType: resourceType,
         resourceId: resourceId,
         logTemplateVersionNumber: logTemplateVersionNumber,
         lockedBy: lockedBy,
         lockedAt: lockedAt,
       );

  /// Returns a shallow copy of this [ElogLogUsages]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogLogUsages copyWith({
    Object? id = _Undefined,
    _is.UuidValue? logTemplateId,
    Object? title = _Undefined,
    String? data,
    String? status,
    Object? resourceType = _Undefined,
    Object? resourceId = _Undefined,
    Object? logTemplateVersionNumber = _Undefined,
    Object? lockedBy = _Undefined,
    Object? lockedAt = _Undefined,
  }) {
    return ElogLogUsages(
      id: id is _is.UuidValue? ? id : this.id,
      logTemplateId: logTemplateId ?? this.logTemplateId,
      title: title is String? ? title : this.title,
      data: data ?? this.data,
      status: status ?? this.status,
      resourceType: resourceType is String? ? resourceType : this.resourceType,
      resourceId: resourceId is _is.UuidValue? ? resourceId : this.resourceId,
      logTemplateVersionNumber: logTemplateVersionNumber is int?
          ? logTemplateVersionNumber
          : this.logTemplateVersionNumber,
      lockedBy: lockedBy is _is.UuidValue? ? lockedBy : this.lockedBy,
      lockedAt: lockedAt is DateTime? ? lockedAt : this.lockedAt,
    );
  }
}

class ElogLogUsagesUpdateTable extends _is.UpdateTable<ElogLogUsagesTable> {
  ElogLogUsagesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> logTemplateId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.logTemplateId,
    value,
  );

  _is.ColumnValue<String, String> title(String? value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<String, String> data(String value) => _is.ColumnValue(
    table.data,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
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

  _is.ColumnValue<int, int> logTemplateVersionNumber(int? value) =>
      _is.ColumnValue(
        table.logTemplateVersionNumber,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> lockedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.lockedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> lockedAt(DateTime? value) =>
      _is.ColumnValue(
        table.lockedAt,
        value,
      );
}

class ElogLogUsagesTable extends _is.Table<_is.UuidValue?> {
  ElogLogUsagesTable({super.tableRelation})
    : super(tableName: 'elog_log_usages') {
    updateTable = ElogLogUsagesUpdateTable(this);
    logTemplateId = _is.ColumnUuid(
      'logTemplateId',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    data = _is.ColumnString(
      'data',
      this,
    );
    status = _is.ColumnString(
      'status',
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
    logTemplateVersionNumber = _is.ColumnInt(
      'logTemplateVersionNumber',
      this,
    );
    lockedBy = _is.ColumnUuid(
      'lockedBy',
      this,
    );
    lockedAt = _is.ColumnDateTime(
      'lockedAt',
      this,
    );
  }

  late final ElogLogUsagesUpdateTable updateTable;

  late final _is.ColumnUuid logTemplateId;

  late final _is.ColumnString title;

  late final _is.ColumnString data;

  late final _is.ColumnString status;

  late final _is.ColumnString resourceType;

  late final _is.ColumnUuid resourceId;

  late final _is.ColumnInt logTemplateVersionNumber;

  late final _is.ColumnUuid lockedBy;

  late final _is.ColumnDateTime lockedAt;

  @override
  List<_is.Column> get columns => [
    id,
    logTemplateId,
    title,
    data,
    status,
    resourceType,
    resourceId,
    logTemplateVersionNumber,
    lockedBy,
    lockedAt,
  ];
}

class ElogLogUsagesInclude extends _is.IncludeObject {
  ElogLogUsagesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogLogUsages.t;
}

class ElogLogUsagesIncludeList extends _is.IncludeList {
  ElogLogUsagesIncludeList._({
    _is.WhereExpressionBuilder<ElogLogUsagesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogLogUsages.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogLogUsages.t;
}

class ElogLogUsagesRepository {
  const ElogLogUsagesRepository._();

  /// Returns a list of [ElogLogUsages]s matching the given query parameters.
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
  Future<List<ElogLogUsages>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogLogUsagesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogLogUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogLogUsagesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogLogUsages>(
      where: where?.call(ElogLogUsages.t),
      orderBy: orderBy?.call(ElogLogUsages.t),
      orderByList: orderByList?.call(ElogLogUsages.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogLogUsages] matching the given query parameters.
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
  Future<ElogLogUsages?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogLogUsagesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogLogUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogLogUsagesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogLogUsages>(
      where: where?.call(ElogLogUsages.t),
      orderBy: orderBy?.call(ElogLogUsages.t),
      orderByList: orderByList?.call(ElogLogUsages.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogLogUsages] by its [id] or null if no such row exists.
  Future<ElogLogUsages?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogLogUsages>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogLogUsages]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogLogUsages]s will have their `id` fields set.
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
  Future<List<ElogLogUsages>> insert(
    _is.DatabaseSession session,
    List<ElogLogUsages> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogLogUsages>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogLogUsages] and returns the inserted row.
  ///
  /// The returned [ElogLogUsages] will have its `id` field set.
  Future<ElogLogUsages> insertRow(
    _is.DatabaseSession session,
    ElogLogUsages row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogLogUsages>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogLogUsages]s in the list and returns the resulting rows.
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
  /// The returned [ElogLogUsages]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogLogUsages>> upsert(
    _is.DatabaseSession session,
    List<ElogLogUsages> rows, {
    required _is.ColumnSelections<ElogLogUsagesTable> conflictColumns,
    _is.ColumnSelections<ElogLogUsagesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogLogUsagesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogLogUsages>(
      rows,
      conflictColumns: conflictColumns(ElogLogUsages.t),
      updateColumns: updateColumns?.call(ElogLogUsages.t),
      updateWhere: updateWhere?.call(ElogLogUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogLogUsages] and returns the resulting row.
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
  /// The returned [ElogLogUsages] will have its `id` field set.
  Future<ElogLogUsages?> upsertRow(
    _is.DatabaseSession session,
    ElogLogUsages row, {
    required _is.ColumnSelections<ElogLogUsagesTable> conflictColumns,
    _is.ColumnSelections<ElogLogUsagesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogLogUsagesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogLogUsages>(
      row,
      conflictColumns: conflictColumns(ElogLogUsages.t),
      updateColumns: updateColumns?.call(ElogLogUsages.t),
      updateWhere: updateWhere?.call(ElogLogUsages.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogLogUsages]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogLogUsages>> update(
    _is.DatabaseSession session,
    List<ElogLogUsages> rows, {
    _is.ColumnSelections<ElogLogUsagesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogLogUsages>(
      rows,
      columns: columns?.call(ElogLogUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogLogUsages]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogLogUsages> updateRow(
    _is.DatabaseSession session,
    ElogLogUsages row, {
    _is.ColumnSelections<ElogLogUsagesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogLogUsages>(
      row,
      columns: columns?.call(ElogLogUsages.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogLogUsages] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogLogUsages?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogLogUsagesUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogLogUsages>(
      id,
      columnValues: columnValues(ElogLogUsages.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogLogUsages]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogLogUsages>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogLogUsagesUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogLogUsagesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogLogUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogLogUsagesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogLogUsages>(
      columnValues: columnValues(ElogLogUsages.t.updateTable),
      where: where(ElogLogUsages.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogLogUsages.t),
      orderByList: orderByList?.call(ElogLogUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogLogUsages]s in the list and returns the deleted rows.
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
  Future<List<ElogLogUsages>> delete(
    _is.DatabaseSession session,
    List<ElogLogUsages> rows, {
    _is.OrderByBuilder<ElogLogUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogLogUsagesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogLogUsages>(
      rows,
      orderBy: orderBy?.call(ElogLogUsages.t),
      orderByList: orderByList?.call(ElogLogUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogLogUsages].
  Future<ElogLogUsages> deleteRow(
    _is.DatabaseSession session,
    ElogLogUsages row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogLogUsages>(
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
  Future<List<ElogLogUsages>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogLogUsagesTable> where,
    _is.OrderByBuilder<ElogLogUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogLogUsagesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogLogUsages>(
      where: where(ElogLogUsages.t),
      orderBy: orderBy?.call(ElogLogUsages.t),
      orderByList: orderByList?.call(ElogLogUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogLogUsagesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogLogUsages>(
      where: where?.call(ElogLogUsages.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogLogUsages] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogLogUsagesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogLogUsages>(
      where: where(ElogLogUsages.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
