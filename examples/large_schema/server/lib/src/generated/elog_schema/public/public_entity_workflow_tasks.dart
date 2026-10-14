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

abstract class PublicEntityWorkflowTasks
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  PublicEntityWorkflowTasks._({
    this.id,
    required this.idField,
    required this.name,
    required this.workflowInstanceId,
    required this.state,
    required this.context,
    this.completedBy,
    this.completedAt,
  });

  factory PublicEntityWorkflowTasks({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required String name,
    required _is.UuidValue workflowInstanceId,
    required String state,
    required String context,
    _is.UuidValue? completedBy,
    DateTime? completedAt,
  }) = _PublicEntityWorkflowTasksImpl;

  factory PublicEntityWorkflowTasks.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return PublicEntityWorkflowTasks(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      name: jsonSerialization['name'] as String,
      workflowInstanceId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['workflowInstanceId'],
      ),
      state: jsonSerialization['state'] as String,
      context: jsonSerialization['context'] as String,
      completedBy: jsonSerialization['completedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['completedBy'],
            ),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
    );
  }

  static final t = PublicEntityWorkflowTasksTable();

  static const db = PublicEntityWorkflowTasksRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue idField;

  String name;

  _is.UuidValue workflowInstanceId;

  String state;

  String context;

  _is.UuidValue? completedBy;

  DateTime? completedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [PublicEntityWorkflowTasks]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  PublicEntityWorkflowTasks copyWith({
    _is.UuidValue? id,
    _is.UuidValue? idField,
    String? name,
    _is.UuidValue? workflowInstanceId,
    String? state,
    String? context,
    _is.UuidValue? completedBy,
    DateTime? completedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicEntityWorkflowTasks',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'name': name,
      'workflowInstanceId': workflowInstanceId.toJson(),
      'state': state,
      'context': context,
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicEntityWorkflowTasks',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'name': name,
      'workflowInstanceId': workflowInstanceId.toJson(),
      'state': state,
      'context': context,
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
    };
  }

  static PublicEntityWorkflowTasksInclude include() {
    return PublicEntityWorkflowTasksInclude._();
  }

  static PublicEntityWorkflowTasksIncludeList includeList({
    _is.WhereExpressionBuilder<PublicEntityWorkflowTasksTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityWorkflowTasksTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityWorkflowTasksTable>? orderByList,
    PublicEntityWorkflowTasksInclude? include,
  }) {
    return PublicEntityWorkflowTasksIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicEntityWorkflowTasks.t),
      orderByList: orderByList?.call(PublicEntityWorkflowTasks.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicEntityWorkflowTasksImpl extends PublicEntityWorkflowTasks {
  _PublicEntityWorkflowTasksImpl({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required String name,
    required _is.UuidValue workflowInstanceId,
    required String state,
    required String context,
    _is.UuidValue? completedBy,
    DateTime? completedAt,
  }) : super._(
         id: id,
         idField: idField,
         name: name,
         workflowInstanceId: workflowInstanceId,
         state: state,
         context: context,
         completedBy: completedBy,
         completedAt: completedAt,
       );

  /// Returns a shallow copy of this [PublicEntityWorkflowTasks]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  PublicEntityWorkflowTasks copyWith({
    Object? id = _Undefined,
    _is.UuidValue? idField,
    String? name,
    _is.UuidValue? workflowInstanceId,
    String? state,
    String? context,
    Object? completedBy = _Undefined,
    Object? completedAt = _Undefined,
  }) {
    return PublicEntityWorkflowTasks(
      id: id is _is.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      name: name ?? this.name,
      workflowInstanceId: workflowInstanceId ?? this.workflowInstanceId,
      state: state ?? this.state,
      context: context ?? this.context,
      completedBy: completedBy is _is.UuidValue?
          ? completedBy
          : this.completedBy,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
    );
  }
}

class PublicEntityWorkflowTasksUpdateTable
    extends _is.UpdateTable<PublicEntityWorkflowTasksTable> {
  PublicEntityWorkflowTasksUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> idField(_is.UuidValue value) =>
      _is.ColumnValue(
        table.idField,
        value,
      );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> workflowInstanceId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.workflowInstanceId,
    value,
  );

  _is.ColumnValue<String, String> state(String value) => _is.ColumnValue(
    table.state,
    value,
  );

  _is.ColumnValue<String, String> context(String value) => _is.ColumnValue(
    table.context,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> completedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.completedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> completedAt(DateTime? value) =>
      _is.ColumnValue(
        table.completedAt,
        value,
      );
}

class PublicEntityWorkflowTasksTable extends _is.Table<_is.UuidValue?> {
  PublicEntityWorkflowTasksTable({super.tableRelation})
    : super(tableName: 'public_entity_workflow_tasks') {
    updateTable = PublicEntityWorkflowTasksUpdateTable(this);
    idField = _is.ColumnUuid(
      'idField',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    workflowInstanceId = _is.ColumnUuid(
      'workflowInstanceId',
      this,
    );
    state = _is.ColumnString(
      'state',
      this,
    );
    context = _is.ColumnString(
      'context',
      this,
    );
    completedBy = _is.ColumnUuid(
      'completedBy',
      this,
    );
    completedAt = _is.ColumnDateTime(
      'completedAt',
      this,
    );
  }

  late final PublicEntityWorkflowTasksUpdateTable updateTable;

  late final _is.ColumnUuid idField;

  late final _is.ColumnString name;

  late final _is.ColumnUuid workflowInstanceId;

  late final _is.ColumnString state;

  late final _is.ColumnString context;

  late final _is.ColumnUuid completedBy;

  late final _is.ColumnDateTime completedAt;

  @override
  List<_is.Column> get columns => [
    id,
    idField,
    name,
    workflowInstanceId,
    state,
    context,
    completedBy,
    completedAt,
  ];
}

class PublicEntityWorkflowTasksInclude extends _is.IncludeObject {
  PublicEntityWorkflowTasksInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicEntityWorkflowTasks.t;
}

class PublicEntityWorkflowTasksIncludeList extends _is.IncludeList {
  PublicEntityWorkflowTasksIncludeList._({
    _is.WhereExpressionBuilder<PublicEntityWorkflowTasksTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PublicEntityWorkflowTasks.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicEntityWorkflowTasks.t;
}

class PublicEntityWorkflowTasksRepository {
  const PublicEntityWorkflowTasksRepository._();

  /// Returns a list of [PublicEntityWorkflowTasks]s matching the given query parameters.
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
  Future<List<PublicEntityWorkflowTasks>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityWorkflowTasksTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityWorkflowTasksTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityWorkflowTasksTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PublicEntityWorkflowTasks>(
      where: where?.call(PublicEntityWorkflowTasks.t),
      orderBy: orderBy?.call(PublicEntityWorkflowTasks.t),
      orderByList: orderByList?.call(PublicEntityWorkflowTasks.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PublicEntityWorkflowTasks] matching the given query parameters.
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
  Future<PublicEntityWorkflowTasks?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityWorkflowTasksTable>? where,
    int? offset,
    _is.OrderByBuilder<PublicEntityWorkflowTasksTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityWorkflowTasksTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PublicEntityWorkflowTasks>(
      where: where?.call(PublicEntityWorkflowTasks.t),
      orderBy: orderBy?.call(PublicEntityWorkflowTasks.t),
      orderByList: orderByList?.call(PublicEntityWorkflowTasks.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PublicEntityWorkflowTasks] by its [id] or null if no such row exists.
  Future<PublicEntityWorkflowTasks?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PublicEntityWorkflowTasks>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PublicEntityWorkflowTasks]s in the list and returns the inserted rows.
  ///
  /// The returned [PublicEntityWorkflowTasks]s will have their `id` fields set.
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
  Future<List<PublicEntityWorkflowTasks>> insert(
    _is.DatabaseSession session,
    List<PublicEntityWorkflowTasks> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<PublicEntityWorkflowTasks>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [PublicEntityWorkflowTasks] and returns the inserted row.
  ///
  /// The returned [PublicEntityWorkflowTasks] will have its `id` field set.
  Future<PublicEntityWorkflowTasks> insertRow(
    _is.DatabaseSession session,
    PublicEntityWorkflowTasks row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<PublicEntityWorkflowTasks>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [PublicEntityWorkflowTasks]s in the list and returns the resulting rows.
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
  /// The returned [PublicEntityWorkflowTasks]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityWorkflowTasks>> upsert(
    _is.DatabaseSession session,
    List<PublicEntityWorkflowTasks> rows, {
    required _is.ColumnSelections<PublicEntityWorkflowTasksTable>
    conflictColumns,
    _is.ColumnSelections<PublicEntityWorkflowTasksTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicEntityWorkflowTasksTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<PublicEntityWorkflowTasks>(
      rows,
      conflictColumns: conflictColumns(PublicEntityWorkflowTasks.t),
      updateColumns: updateColumns?.call(PublicEntityWorkflowTasks.t),
      updateWhere: updateWhere?.call(PublicEntityWorkflowTasks.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [PublicEntityWorkflowTasks] and returns the resulting row.
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
  /// The returned [PublicEntityWorkflowTasks] will have its `id` field set.
  Future<PublicEntityWorkflowTasks?> upsertRow(
    _is.DatabaseSession session,
    PublicEntityWorkflowTasks row, {
    required _is.ColumnSelections<PublicEntityWorkflowTasksTable>
    conflictColumns,
    _is.ColumnSelections<PublicEntityWorkflowTasksTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicEntityWorkflowTasksTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<PublicEntityWorkflowTasks>(
      row,
      conflictColumns: conflictColumns(PublicEntityWorkflowTasks.t),
      updateColumns: updateColumns?.call(PublicEntityWorkflowTasks.t),
      updateWhere: updateWhere?.call(PublicEntityWorkflowTasks.t),
      transaction: transaction,
    );
  }

  /// Updates all [PublicEntityWorkflowTasks]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityWorkflowTasks>> update(
    _is.DatabaseSession session,
    List<PublicEntityWorkflowTasks> rows, {
    _is.ColumnSelections<PublicEntityWorkflowTasksTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<PublicEntityWorkflowTasks>(
      rows,
      columns: columns?.call(PublicEntityWorkflowTasks.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [PublicEntityWorkflowTasks]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PublicEntityWorkflowTasks> updateRow(
    _is.DatabaseSession session,
    PublicEntityWorkflowTasks row, {
    _is.ColumnSelections<PublicEntityWorkflowTasksTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<PublicEntityWorkflowTasks>(
      row,
      columns: columns?.call(PublicEntityWorkflowTasks.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PublicEntityWorkflowTasks] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PublicEntityWorkflowTasks?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<PublicEntityWorkflowTasksUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<PublicEntityWorkflowTasks>(
      id,
      columnValues: columnValues(PublicEntityWorkflowTasks.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PublicEntityWorkflowTasks]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityWorkflowTasks>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<PublicEntityWorkflowTasksUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<PublicEntityWorkflowTasksTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityWorkflowTasksTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityWorkflowTasksTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<PublicEntityWorkflowTasks>(
      columnValues: columnValues(PublicEntityWorkflowTasks.t.updateTable),
      where: where(PublicEntityWorkflowTasks.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicEntityWorkflowTasks.t),
      orderByList: orderByList?.call(PublicEntityWorkflowTasks.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [PublicEntityWorkflowTasks]s in the list and returns the deleted rows.
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
  Future<List<PublicEntityWorkflowTasks>> delete(
    _is.DatabaseSession session,
    List<PublicEntityWorkflowTasks> rows, {
    _is.OrderByBuilder<PublicEntityWorkflowTasksTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityWorkflowTasksTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<PublicEntityWorkflowTasks>(
      rows,
      orderBy: orderBy?.call(PublicEntityWorkflowTasks.t),
      orderByList: orderByList?.call(PublicEntityWorkflowTasks.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [PublicEntityWorkflowTasks].
  Future<PublicEntityWorkflowTasks> deleteRow(
    _is.DatabaseSession session,
    PublicEntityWorkflowTasks row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PublicEntityWorkflowTasks>(
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
  Future<List<PublicEntityWorkflowTasks>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicEntityWorkflowTasksTable> where,
    _is.OrderByBuilder<PublicEntityWorkflowTasksTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityWorkflowTasksTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<PublicEntityWorkflowTasks>(
      where: where(PublicEntityWorkflowTasks.t),
      orderBy: orderBy?.call(PublicEntityWorkflowTasks.t),
      orderByList: orderByList?.call(PublicEntityWorkflowTasks.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityWorkflowTasksTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<PublicEntityWorkflowTasks>(
      where: where?.call(PublicEntityWorkflowTasks.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PublicEntityWorkflowTasks] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicEntityWorkflowTasksTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PublicEntityWorkflowTasks>(
      where: where(PublicEntityWorkflowTasks.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
