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

/// Fictional university fixture: research.
abstract class CampusProjectMilestone
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusProjectMilestone._({
    this.id,
    required this.projectId,
    required this.title,
    required this.dueAt,
    this.completedAt,
    this.parentId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusProjectMilestone({
    _is.UuidValue? id,
    required _is.UuidValue projectId,
    required String title,
    required DateTime dueAt,
    DateTime? completedAt,
    _is.UuidValue? parentId,
    DateTime? createdAt,
  }) = _CampusProjectMilestoneImpl;

  factory CampusProjectMilestone.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusProjectMilestone(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      projectId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['projectId'],
      ),
      title: jsonSerialization['title'] as String,
      dueAt: _is.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      parentId: jsonSerialization['parentId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['parentId']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusProjectMilestoneTable();

  static const db = CampusProjectMilestoneRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue projectId;

  String title;

  DateTime dueAt;

  DateTime? completedAt;

  _is.UuidValue? parentId;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusProjectMilestone]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusProjectMilestone copyWith({
    _is.UuidValue? id,
    _is.UuidValue? projectId,
    String? title,
    DateTime? dueAt,
    DateTime? completedAt,
    _is.UuidValue? parentId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusProjectMilestone',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'title': title,
      'dueAt': dueAt.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (parentId != null) 'parentId': parentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusProjectMilestone',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'title': title,
      'dueAt': dueAt.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (parentId != null) 'parentId': parentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusProjectMilestoneInclude include() {
    return CampusProjectMilestoneInclude._();
  }

  static CampusProjectMilestoneIncludeList includeList({
    _is.WhereExpressionBuilder<CampusProjectMilestoneTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusProjectMilestoneTable>? orderBy,
    _is.OrderByListBuilder<CampusProjectMilestoneTable>? orderByList,
    CampusProjectMilestoneInclude? include,
  }) {
    return CampusProjectMilestoneIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusProjectMilestone.t),
      orderByList: orderByList?.call(CampusProjectMilestone.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusProjectMilestoneImpl extends CampusProjectMilestone {
  _CampusProjectMilestoneImpl({
    _is.UuidValue? id,
    required _is.UuidValue projectId,
    required String title,
    required DateTime dueAt,
    DateTime? completedAt,
    _is.UuidValue? parentId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         projectId: projectId,
         title: title,
         dueAt: dueAt,
         completedAt: completedAt,
         parentId: parentId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusProjectMilestone]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusProjectMilestone copyWith({
    Object? id = _Undefined,
    _is.UuidValue? projectId,
    String? title,
    DateTime? dueAt,
    Object? completedAt = _Undefined,
    Object? parentId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusProjectMilestone(
      id: id is _is.UuidValue? ? id : this.id,
      projectId: projectId ?? this.projectId,
      title: title ?? this.title,
      dueAt: dueAt ?? this.dueAt,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      parentId: parentId is _is.UuidValue? ? parentId : this.parentId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusProjectMilestoneUpdateTable
    extends _is.UpdateTable<CampusProjectMilestoneTable> {
  CampusProjectMilestoneUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> projectId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.projectId,
    value,
  );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> dueAt(DateTime value) => _is.ColumnValue(
    table.dueAt,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> completedAt(DateTime? value) =>
      _is.ColumnValue(
        table.completedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> parentId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.parentId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusProjectMilestoneTable extends _is.Table<_is.UuidValue?> {
  CampusProjectMilestoneTable({super.tableRelation})
    : super(tableName: 'campus_project_milestones') {
    updateTable = CampusProjectMilestoneUpdateTable(this);
    projectId = _is.ColumnUuid(
      'projectId',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    dueAt = _is.ColumnDateTime(
      'dueAt',
      this,
    );
    completedAt = _is.ColumnDateTime(
      'completedAt',
      this,
    );
    parentId = _is.ColumnUuid(
      'parentId',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusProjectMilestoneUpdateTable updateTable;

  late final _is.ColumnUuid projectId;

  late final _is.ColumnString title;

  late final _is.ColumnDateTime dueAt;

  late final _is.ColumnDateTime completedAt;

  late final _is.ColumnUuid parentId;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    projectId,
    title,
    dueAt,
    completedAt,
    parentId,
    createdAt,
  ];
}

class CampusProjectMilestoneInclude extends _is.IncludeObject {
  CampusProjectMilestoneInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusProjectMilestone.t;
}

class CampusProjectMilestoneIncludeList extends _is.IncludeList {
  CampusProjectMilestoneIncludeList._({
    _is.WhereExpressionBuilder<CampusProjectMilestoneTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusProjectMilestone.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusProjectMilestone.t;
}

class CampusProjectMilestoneRepository {
  const CampusProjectMilestoneRepository._();

  /// Returns a list of [CampusProjectMilestone]s matching the given query parameters.
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
  Future<List<CampusProjectMilestone>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusProjectMilestoneTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusProjectMilestoneTable>? orderBy,
    _is.OrderByListBuilder<CampusProjectMilestoneTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusProjectMilestone>(
      where: where?.call(CampusProjectMilestone.t),
      orderBy: orderBy?.call(CampusProjectMilestone.t),
      orderByList: orderByList?.call(CampusProjectMilestone.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusProjectMilestone] matching the given query parameters.
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
  Future<CampusProjectMilestone?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusProjectMilestoneTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusProjectMilestoneTable>? orderBy,
    _is.OrderByListBuilder<CampusProjectMilestoneTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusProjectMilestone>(
      where: where?.call(CampusProjectMilestone.t),
      orderBy: orderBy?.call(CampusProjectMilestone.t),
      orderByList: orderByList?.call(CampusProjectMilestone.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusProjectMilestone] by its [id] or null if no such row exists.
  Future<CampusProjectMilestone?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusProjectMilestone>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusProjectMilestone]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusProjectMilestone]s will have their `id` fields set.
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
  Future<List<CampusProjectMilestone>> insert(
    _is.DatabaseSession session,
    List<CampusProjectMilestone> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusProjectMilestone>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusProjectMilestone] and returns the inserted row.
  ///
  /// The returned [CampusProjectMilestone] will have its `id` field set.
  Future<CampusProjectMilestone> insertRow(
    _is.DatabaseSession session,
    CampusProjectMilestone row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusProjectMilestone>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusProjectMilestone]s in the list and returns the resulting rows.
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
  /// The returned [CampusProjectMilestone]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusProjectMilestone>> upsert(
    _is.DatabaseSession session,
    List<CampusProjectMilestone> rows, {
    required _is.ColumnSelections<CampusProjectMilestoneTable> conflictColumns,
    _is.ColumnSelections<CampusProjectMilestoneTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusProjectMilestoneTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusProjectMilestone>(
      rows,
      conflictColumns: conflictColumns(CampusProjectMilestone.t),
      updateColumns: updateColumns?.call(CampusProjectMilestone.t),
      updateWhere: updateWhere?.call(CampusProjectMilestone.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusProjectMilestone] and returns the resulting row.
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
  /// The returned [CampusProjectMilestone] will have its `id` field set.
  Future<CampusProjectMilestone?> upsertRow(
    _is.DatabaseSession session,
    CampusProjectMilestone row, {
    required _is.ColumnSelections<CampusProjectMilestoneTable> conflictColumns,
    _is.ColumnSelections<CampusProjectMilestoneTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusProjectMilestoneTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusProjectMilestone>(
      row,
      conflictColumns: conflictColumns(CampusProjectMilestone.t),
      updateColumns: updateColumns?.call(CampusProjectMilestone.t),
      updateWhere: updateWhere?.call(CampusProjectMilestone.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusProjectMilestone]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusProjectMilestone>> update(
    _is.DatabaseSession session,
    List<CampusProjectMilestone> rows, {
    _is.ColumnSelections<CampusProjectMilestoneTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusProjectMilestone>(
      rows,
      columns: columns?.call(CampusProjectMilestone.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusProjectMilestone]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusProjectMilestone> updateRow(
    _is.DatabaseSession session,
    CampusProjectMilestone row, {
    _is.ColumnSelections<CampusProjectMilestoneTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusProjectMilestone>(
      row,
      columns: columns?.call(CampusProjectMilestone.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusProjectMilestone] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusProjectMilestone?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusProjectMilestoneUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusProjectMilestone>(
      id,
      columnValues: columnValues(CampusProjectMilestone.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusProjectMilestone]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusProjectMilestone>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusProjectMilestoneUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusProjectMilestoneTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusProjectMilestoneTable>? orderBy,
    _is.OrderByListBuilder<CampusProjectMilestoneTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusProjectMilestone>(
      columnValues: columnValues(CampusProjectMilestone.t.updateTable),
      where: where(CampusProjectMilestone.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusProjectMilestone.t),
      orderByList: orderByList?.call(CampusProjectMilestone.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusProjectMilestone]s in the list and returns the deleted rows.
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
  Future<List<CampusProjectMilestone>> delete(
    _is.DatabaseSession session,
    List<CampusProjectMilestone> rows, {
    _is.OrderByBuilder<CampusProjectMilestoneTable>? orderBy,
    _is.OrderByListBuilder<CampusProjectMilestoneTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusProjectMilestone>(
      rows,
      orderBy: orderBy?.call(CampusProjectMilestone.t),
      orderByList: orderByList?.call(CampusProjectMilestone.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusProjectMilestone].
  Future<CampusProjectMilestone> deleteRow(
    _is.DatabaseSession session,
    CampusProjectMilestone row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusProjectMilestone>(
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
  Future<List<CampusProjectMilestone>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusProjectMilestoneTable> where,
    _is.OrderByBuilder<CampusProjectMilestoneTable>? orderBy,
    _is.OrderByListBuilder<CampusProjectMilestoneTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusProjectMilestone>(
      where: where(CampusProjectMilestone.t),
      orderBy: orderBy?.call(CampusProjectMilestone.t),
      orderByList: orderByList?.call(CampusProjectMilestone.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusProjectMilestoneTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusProjectMilestone>(
      where: where?.call(CampusProjectMilestone.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusProjectMilestone] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusProjectMilestoneTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusProjectMilestone>(
      where: where(CampusProjectMilestone.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
