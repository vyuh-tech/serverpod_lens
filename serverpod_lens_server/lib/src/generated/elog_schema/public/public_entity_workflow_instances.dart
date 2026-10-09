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

abstract class PublicEntityWorkflowInstances
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  PublicEntityWorkflowInstances._({
    this.id,
    required this.idField,
    required this.name,
    required this.operation,
    required this.entityType,
    this.entityId,
    required this.state,
    required this.context,
    this.startedAt,
    this.completedAt,
    this.cancelledAt,
    this.expiresAt,
    required this.entityVersion,
    this.submittedBy,
    this.submittedAt,
  });

  factory PublicEntityWorkflowInstances({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required String name,
    required String operation,
    required String entityType,
    _is.UuidValue? entityId,
    required String state,
    required String context,
    DateTime? startedAt,
    DateTime? completedAt,
    DateTime? cancelledAt,
    DateTime? expiresAt,
    required int entityVersion,
    _is.UuidValue? submittedBy,
    DateTime? submittedAt,
  }) = _PublicEntityWorkflowInstancesImpl;

  factory PublicEntityWorkflowInstances.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return PublicEntityWorkflowInstances(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      name: jsonSerialization['name'] as String,
      operation: jsonSerialization['operation'] as String,
      entityType: jsonSerialization['entityType'] as String,
      entityId: jsonSerialization['entityId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['entityId']),
      state: jsonSerialization['state'] as String,
      context: jsonSerialization['context'] as String,
      startedAt: jsonSerialization['startedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      cancelledAt: jsonSerialization['cancelledAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['cancelledAt'],
            ),
      expiresAt: jsonSerialization['expiresAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['expiresAt']),
      entityVersion: jsonSerialization['entityVersion'] as int,
      submittedBy: jsonSerialization['submittedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['submittedBy'],
            ),
      submittedAt: jsonSerialization['submittedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['submittedAt'],
            ),
    );
  }

  static final t = PublicEntityWorkflowInstancesTable();

  static const db = PublicEntityWorkflowInstancesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue idField;

  String name;

  String operation;

  String entityType;

  _is.UuidValue? entityId;

  String state;

  String context;

  DateTime? startedAt;

  DateTime? completedAt;

  DateTime? cancelledAt;

  DateTime? expiresAt;

  int entityVersion;

  _is.UuidValue? submittedBy;

  DateTime? submittedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [PublicEntityWorkflowInstances]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  PublicEntityWorkflowInstances copyWith({
    _is.UuidValue? id,
    _is.UuidValue? idField,
    String? name,
    String? operation,
    String? entityType,
    _is.UuidValue? entityId,
    String? state,
    String? context,
    DateTime? startedAt,
    DateTime? completedAt,
    DateTime? cancelledAt,
    DateTime? expiresAt,
    int? entityVersion,
    _is.UuidValue? submittedBy,
    DateTime? submittedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicEntityWorkflowInstances',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'name': name,
      'operation': operation,
      'entityType': entityType,
      if (entityId != null) 'entityId': entityId?.toJson(),
      'state': state,
      'context': context,
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (cancelledAt != null) 'cancelledAt': cancelledAt?.toJson(),
      if (expiresAt != null) 'expiresAt': expiresAt?.toJson(),
      'entityVersion': entityVersion,
      if (submittedBy != null) 'submittedBy': submittedBy?.toJson(),
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicEntityWorkflowInstances',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'name': name,
      'operation': operation,
      'entityType': entityType,
      if (entityId != null) 'entityId': entityId?.toJson(),
      'state': state,
      'context': context,
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (cancelledAt != null) 'cancelledAt': cancelledAt?.toJson(),
      if (expiresAt != null) 'expiresAt': expiresAt?.toJson(),
      'entityVersion': entityVersion,
      if (submittedBy != null) 'submittedBy': submittedBy?.toJson(),
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
    };
  }

  static PublicEntityWorkflowInstancesInclude include() {
    return PublicEntityWorkflowInstancesInclude._();
  }

  static PublicEntityWorkflowInstancesIncludeList includeList({
    _is.WhereExpressionBuilder<PublicEntityWorkflowInstancesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityWorkflowInstancesTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityWorkflowInstancesTable>? orderByList,
    PublicEntityWorkflowInstancesInclude? include,
  }) {
    return PublicEntityWorkflowInstancesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicEntityWorkflowInstances.t),
      orderByList: orderByList?.call(PublicEntityWorkflowInstances.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicEntityWorkflowInstancesImpl extends PublicEntityWorkflowInstances {
  _PublicEntityWorkflowInstancesImpl({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required String name,
    required String operation,
    required String entityType,
    _is.UuidValue? entityId,
    required String state,
    required String context,
    DateTime? startedAt,
    DateTime? completedAt,
    DateTime? cancelledAt,
    DateTime? expiresAt,
    required int entityVersion,
    _is.UuidValue? submittedBy,
    DateTime? submittedAt,
  }) : super._(
         id: id,
         idField: idField,
         name: name,
         operation: operation,
         entityType: entityType,
         entityId: entityId,
         state: state,
         context: context,
         startedAt: startedAt,
         completedAt: completedAt,
         cancelledAt: cancelledAt,
         expiresAt: expiresAt,
         entityVersion: entityVersion,
         submittedBy: submittedBy,
         submittedAt: submittedAt,
       );

  /// Returns a shallow copy of this [PublicEntityWorkflowInstances]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  PublicEntityWorkflowInstances copyWith({
    Object? id = _Undefined,
    _is.UuidValue? idField,
    String? name,
    String? operation,
    String? entityType,
    Object? entityId = _Undefined,
    String? state,
    String? context,
    Object? startedAt = _Undefined,
    Object? completedAt = _Undefined,
    Object? cancelledAt = _Undefined,
    Object? expiresAt = _Undefined,
    int? entityVersion,
    Object? submittedBy = _Undefined,
    Object? submittedAt = _Undefined,
  }) {
    return PublicEntityWorkflowInstances(
      id: id is _is.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      name: name ?? this.name,
      operation: operation ?? this.operation,
      entityType: entityType ?? this.entityType,
      entityId: entityId is _is.UuidValue? ? entityId : this.entityId,
      state: state ?? this.state,
      context: context ?? this.context,
      startedAt: startedAt is DateTime? ? startedAt : this.startedAt,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      cancelledAt: cancelledAt is DateTime? ? cancelledAt : this.cancelledAt,
      expiresAt: expiresAt is DateTime? ? expiresAt : this.expiresAt,
      entityVersion: entityVersion ?? this.entityVersion,
      submittedBy: submittedBy is _is.UuidValue?
          ? submittedBy
          : this.submittedBy,
      submittedAt: submittedAt is DateTime? ? submittedAt : this.submittedAt,
    );
  }
}

class PublicEntityWorkflowInstancesUpdateTable
    extends _is.UpdateTable<PublicEntityWorkflowInstancesTable> {
  PublicEntityWorkflowInstancesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> idField(_is.UuidValue value) =>
      _is.ColumnValue(
        table.idField,
        value,
      );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> operation(String value) => _is.ColumnValue(
    table.operation,
    value,
  );

  _is.ColumnValue<String, String> entityType(String value) => _is.ColumnValue(
    table.entityType,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> entityId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.entityId,
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

  _is.ColumnValue<DateTime, DateTime> startedAt(DateTime? value) =>
      _is.ColumnValue(
        table.startedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> completedAt(DateTime? value) =>
      _is.ColumnValue(
        table.completedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> cancelledAt(DateTime? value) =>
      _is.ColumnValue(
        table.cancelledAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> expiresAt(DateTime? value) =>
      _is.ColumnValue(
        table.expiresAt,
        value,
      );

  _is.ColumnValue<int, int> entityVersion(int value) => _is.ColumnValue(
    table.entityVersion,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> submittedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.submittedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> submittedAt(DateTime? value) =>
      _is.ColumnValue(
        table.submittedAt,
        value,
      );
}

class PublicEntityWorkflowInstancesTable extends _is.Table<_is.UuidValue?> {
  PublicEntityWorkflowInstancesTable({super.tableRelation})
    : super(tableName: 'public_entity_workflow_instances') {
    updateTable = PublicEntityWorkflowInstancesUpdateTable(this);
    idField = _is.ColumnUuid(
      'idField',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    operation = _is.ColumnString(
      'operation',
      this,
    );
    entityType = _is.ColumnString(
      'entityType',
      this,
    );
    entityId = _is.ColumnUuid(
      'entityId',
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
    startedAt = _is.ColumnDateTime(
      'startedAt',
      this,
    );
    completedAt = _is.ColumnDateTime(
      'completedAt',
      this,
    );
    cancelledAt = _is.ColumnDateTime(
      'cancelledAt',
      this,
    );
    expiresAt = _is.ColumnDateTime(
      'expiresAt',
      this,
    );
    entityVersion = _is.ColumnInt(
      'entityVersion',
      this,
    );
    submittedBy = _is.ColumnUuid(
      'submittedBy',
      this,
    );
    submittedAt = _is.ColumnDateTime(
      'submittedAt',
      this,
    );
  }

  late final PublicEntityWorkflowInstancesUpdateTable updateTable;

  late final _is.ColumnUuid idField;

  late final _is.ColumnString name;

  late final _is.ColumnString operation;

  late final _is.ColumnString entityType;

  late final _is.ColumnUuid entityId;

  late final _is.ColumnString state;

  late final _is.ColumnString context;

  late final _is.ColumnDateTime startedAt;

  late final _is.ColumnDateTime completedAt;

  late final _is.ColumnDateTime cancelledAt;

  late final _is.ColumnDateTime expiresAt;

  late final _is.ColumnInt entityVersion;

  late final _is.ColumnUuid submittedBy;

  late final _is.ColumnDateTime submittedAt;

  @override
  List<_is.Column> get columns => [
    id,
    idField,
    name,
    operation,
    entityType,
    entityId,
    state,
    context,
    startedAt,
    completedAt,
    cancelledAt,
    expiresAt,
    entityVersion,
    submittedBy,
    submittedAt,
  ];
}

class PublicEntityWorkflowInstancesInclude extends _is.IncludeObject {
  PublicEntityWorkflowInstancesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicEntityWorkflowInstances.t;
}

class PublicEntityWorkflowInstancesIncludeList extends _is.IncludeList {
  PublicEntityWorkflowInstancesIncludeList._({
    _is.WhereExpressionBuilder<PublicEntityWorkflowInstancesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PublicEntityWorkflowInstances.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicEntityWorkflowInstances.t;
}

class PublicEntityWorkflowInstancesRepository {
  const PublicEntityWorkflowInstancesRepository._();

  /// Returns a list of [PublicEntityWorkflowInstances]s matching the given query parameters.
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
  Future<List<PublicEntityWorkflowInstances>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityWorkflowInstancesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityWorkflowInstancesTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityWorkflowInstancesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PublicEntityWorkflowInstances>(
      where: where?.call(PublicEntityWorkflowInstances.t),
      orderBy: orderBy?.call(PublicEntityWorkflowInstances.t),
      orderByList: orderByList?.call(PublicEntityWorkflowInstances.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PublicEntityWorkflowInstances] matching the given query parameters.
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
  Future<PublicEntityWorkflowInstances?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityWorkflowInstancesTable>? where,
    int? offset,
    _is.OrderByBuilder<PublicEntityWorkflowInstancesTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityWorkflowInstancesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PublicEntityWorkflowInstances>(
      where: where?.call(PublicEntityWorkflowInstances.t),
      orderBy: orderBy?.call(PublicEntityWorkflowInstances.t),
      orderByList: orderByList?.call(PublicEntityWorkflowInstances.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PublicEntityWorkflowInstances] by its [id] or null if no such row exists.
  Future<PublicEntityWorkflowInstances?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PublicEntityWorkflowInstances>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PublicEntityWorkflowInstances]s in the list and returns the inserted rows.
  ///
  /// The returned [PublicEntityWorkflowInstances]s will have their `id` fields set.
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
  Future<List<PublicEntityWorkflowInstances>> insert(
    _is.DatabaseSession session,
    List<PublicEntityWorkflowInstances> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<PublicEntityWorkflowInstances>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [PublicEntityWorkflowInstances] and returns the inserted row.
  ///
  /// The returned [PublicEntityWorkflowInstances] will have its `id` field set.
  Future<PublicEntityWorkflowInstances> insertRow(
    _is.DatabaseSession session,
    PublicEntityWorkflowInstances row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<PublicEntityWorkflowInstances>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [PublicEntityWorkflowInstances]s in the list and returns the resulting rows.
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
  /// The returned [PublicEntityWorkflowInstances]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityWorkflowInstances>> upsert(
    _is.DatabaseSession session,
    List<PublicEntityWorkflowInstances> rows, {
    required _is.ColumnSelections<PublicEntityWorkflowInstancesTable>
    conflictColumns,
    _is.ColumnSelections<PublicEntityWorkflowInstancesTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicEntityWorkflowInstancesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<PublicEntityWorkflowInstances>(
      rows,
      conflictColumns: conflictColumns(PublicEntityWorkflowInstances.t),
      updateColumns: updateColumns?.call(PublicEntityWorkflowInstances.t),
      updateWhere: updateWhere?.call(PublicEntityWorkflowInstances.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [PublicEntityWorkflowInstances] and returns the resulting row.
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
  /// The returned [PublicEntityWorkflowInstances] will have its `id` field set.
  Future<PublicEntityWorkflowInstances?> upsertRow(
    _is.DatabaseSession session,
    PublicEntityWorkflowInstances row, {
    required _is.ColumnSelections<PublicEntityWorkflowInstancesTable>
    conflictColumns,
    _is.ColumnSelections<PublicEntityWorkflowInstancesTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicEntityWorkflowInstancesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<PublicEntityWorkflowInstances>(
      row,
      conflictColumns: conflictColumns(PublicEntityWorkflowInstances.t),
      updateColumns: updateColumns?.call(PublicEntityWorkflowInstances.t),
      updateWhere: updateWhere?.call(PublicEntityWorkflowInstances.t),
      transaction: transaction,
    );
  }

  /// Updates all [PublicEntityWorkflowInstances]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityWorkflowInstances>> update(
    _is.DatabaseSession session,
    List<PublicEntityWorkflowInstances> rows, {
    _is.ColumnSelections<PublicEntityWorkflowInstancesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<PublicEntityWorkflowInstances>(
      rows,
      columns: columns?.call(PublicEntityWorkflowInstances.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [PublicEntityWorkflowInstances]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PublicEntityWorkflowInstances> updateRow(
    _is.DatabaseSession session,
    PublicEntityWorkflowInstances row, {
    _is.ColumnSelections<PublicEntityWorkflowInstancesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<PublicEntityWorkflowInstances>(
      row,
      columns: columns?.call(PublicEntityWorkflowInstances.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PublicEntityWorkflowInstances] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PublicEntityWorkflowInstances?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<
      PublicEntityWorkflowInstancesUpdateTable
    >
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<PublicEntityWorkflowInstances>(
      id,
      columnValues: columnValues(PublicEntityWorkflowInstances.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PublicEntityWorkflowInstances]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityWorkflowInstances>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<
      PublicEntityWorkflowInstancesUpdateTable
    >
    columnValues,
    required _is.WhereExpressionBuilder<PublicEntityWorkflowInstancesTable>
    where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityWorkflowInstancesTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityWorkflowInstancesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<PublicEntityWorkflowInstances>(
      columnValues: columnValues(PublicEntityWorkflowInstances.t.updateTable),
      where: where(PublicEntityWorkflowInstances.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicEntityWorkflowInstances.t),
      orderByList: orderByList?.call(PublicEntityWorkflowInstances.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [PublicEntityWorkflowInstances]s in the list and returns the deleted rows.
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
  Future<List<PublicEntityWorkflowInstances>> delete(
    _is.DatabaseSession session,
    List<PublicEntityWorkflowInstances> rows, {
    _is.OrderByBuilder<PublicEntityWorkflowInstancesTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityWorkflowInstancesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<PublicEntityWorkflowInstances>(
      rows,
      orderBy: orderBy?.call(PublicEntityWorkflowInstances.t),
      orderByList: orderByList?.call(PublicEntityWorkflowInstances.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [PublicEntityWorkflowInstances].
  Future<PublicEntityWorkflowInstances> deleteRow(
    _is.DatabaseSession session,
    PublicEntityWorkflowInstances row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PublicEntityWorkflowInstances>(
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
  Future<List<PublicEntityWorkflowInstances>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicEntityWorkflowInstancesTable>
    where,
    _is.OrderByBuilder<PublicEntityWorkflowInstancesTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityWorkflowInstancesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<PublicEntityWorkflowInstances>(
      where: where(PublicEntityWorkflowInstances.t),
      orderBy: orderBy?.call(PublicEntityWorkflowInstances.t),
      orderByList: orderByList?.call(PublicEntityWorkflowInstances.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityWorkflowInstancesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<PublicEntityWorkflowInstances>(
      where: where?.call(PublicEntityWorkflowInstances.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PublicEntityWorkflowInstances] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicEntityWorkflowInstancesTable>
    where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PublicEntityWorkflowInstances>(
      where: where(PublicEntityWorkflowInstances.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
