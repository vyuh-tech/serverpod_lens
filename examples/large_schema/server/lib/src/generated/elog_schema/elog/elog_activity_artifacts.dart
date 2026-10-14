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

abstract class ElogActivityArtifacts
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogActivityArtifacts._({
    this.id,
    required this.activityId,
    required this.artifactType,
    required this.artifactTemplateId,
    required this.artifactUsageId,
    required this.status,
    required this.sortOrder,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  factory ElogActivityArtifacts({
    _is.UuidValue? id,
    required _is.UuidValue activityId,
    required String artifactType,
    required _is.UuidValue artifactTemplateId,
    required _is.UuidValue artifactUsageId,
    required String status,
    required int sortOrder,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ElogActivityArtifactsImpl;

  factory ElogActivityArtifacts.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogActivityArtifacts(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      activityId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['activityId'],
      ),
      artifactType: jsonSerialization['artifactType'] as String,
      artifactTemplateId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['artifactTemplateId'],
      ),
      artifactUsageId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['artifactUsageId'],
      ),
      status: jsonSerialization['status'] as String,
      sortOrder: jsonSerialization['sortOrder'] as int,
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['createdBy']),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['updatedBy']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = ElogActivityArtifactsTable();

  static const db = ElogActivityArtifactsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue activityId;

  String artifactType;

  _is.UuidValue artifactTemplateId;

  _is.UuidValue artifactUsageId;

  String status;

  int sortOrder;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  DateTime? createdAt;

  DateTime? updatedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogActivityArtifacts]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogActivityArtifacts copyWith({
    _is.UuidValue? id,
    _is.UuidValue? activityId,
    String? artifactType,
    _is.UuidValue? artifactTemplateId,
    _is.UuidValue? artifactUsageId,
    String? status,
    int? sortOrder,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogActivityArtifacts',
      if (id != null) 'id': id?.toJson(),
      'activityId': activityId.toJson(),
      'artifactType': artifactType,
      'artifactTemplateId': artifactTemplateId.toJson(),
      'artifactUsageId': artifactUsageId.toJson(),
      'status': status,
      'sortOrder': sortOrder,
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogActivityArtifacts',
      if (id != null) 'id': id?.toJson(),
      'activityId': activityId.toJson(),
      'artifactType': artifactType,
      'artifactTemplateId': artifactTemplateId.toJson(),
      'artifactUsageId': artifactUsageId.toJson(),
      'status': status,
      'sortOrder': sortOrder,
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  static ElogActivityArtifactsInclude include() {
    return ElogActivityArtifactsInclude._();
  }

  static ElogActivityArtifactsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogActivityArtifactsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogActivityArtifactsTable>? orderBy,
    _is.OrderByListBuilder<ElogActivityArtifactsTable>? orderByList,
    ElogActivityArtifactsInclude? include,
  }) {
    return ElogActivityArtifactsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogActivityArtifacts.t),
      orderByList: orderByList?.call(ElogActivityArtifacts.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogActivityArtifactsImpl extends ElogActivityArtifacts {
  _ElogActivityArtifactsImpl({
    _is.UuidValue? id,
    required _is.UuidValue activityId,
    required String artifactType,
    required _is.UuidValue artifactTemplateId,
    required _is.UuidValue artifactUsageId,
    required String status,
    required int sortOrder,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         activityId: activityId,
         artifactType: artifactType,
         artifactTemplateId: artifactTemplateId,
         artifactUsageId: artifactUsageId,
         status: status,
         sortOrder: sortOrder,
         createdBy: createdBy,
         updatedBy: updatedBy,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [ElogActivityArtifacts]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogActivityArtifacts copyWith({
    Object? id = _Undefined,
    _is.UuidValue? activityId,
    String? artifactType,
    _is.UuidValue? artifactTemplateId,
    _is.UuidValue? artifactUsageId,
    String? status,
    int? sortOrder,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
  }) {
    return ElogActivityArtifacts(
      id: id is _is.UuidValue? ? id : this.id,
      activityId: activityId ?? this.activityId,
      artifactType: artifactType ?? this.artifactType,
      artifactTemplateId: artifactTemplateId ?? this.artifactTemplateId,
      artifactUsageId: artifactUsageId ?? this.artifactUsageId,
      status: status ?? this.status,
      sortOrder: sortOrder ?? this.sortOrder,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
    );
  }
}

class ElogActivityArtifactsUpdateTable
    extends _is.UpdateTable<ElogActivityArtifactsTable> {
  ElogActivityArtifactsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> activityId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.activityId,
    value,
  );

  _is.ColumnValue<String, String> artifactType(String value) => _is.ColumnValue(
    table.artifactType,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> artifactTemplateId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.artifactTemplateId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> artifactUsageId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.artifactUsageId,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<int, int> sortOrder(int value) => _is.ColumnValue(
    table.sortOrder,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> createdBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.createdBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> updatedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.updatedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime? value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );
}

class ElogActivityArtifactsTable extends _is.Table<_is.UuidValue?> {
  ElogActivityArtifactsTable({super.tableRelation})
    : super(tableName: 'elog_activity_artifacts') {
    updateTable = ElogActivityArtifactsUpdateTable(this);
    activityId = _is.ColumnUuid(
      'activityId',
      this,
    );
    artifactType = _is.ColumnString(
      'artifactType',
      this,
    );
    artifactTemplateId = _is.ColumnUuid(
      'artifactTemplateId',
      this,
    );
    artifactUsageId = _is.ColumnUuid(
      'artifactUsageId',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    sortOrder = _is.ColumnInt(
      'sortOrder',
      this,
    );
    createdBy = _is.ColumnUuid(
      'createdBy',
      this,
    );
    updatedBy = _is.ColumnUuid(
      'updatedBy',
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

  late final ElogActivityArtifactsUpdateTable updateTable;

  late final _is.ColumnUuid activityId;

  late final _is.ColumnString artifactType;

  late final _is.ColumnUuid artifactTemplateId;

  late final _is.ColumnUuid artifactUsageId;

  late final _is.ColumnString status;

  late final _is.ColumnInt sortOrder;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    activityId,
    artifactType,
    artifactTemplateId,
    artifactUsageId,
    status,
    sortOrder,
    createdBy,
    updatedBy,
    createdAt,
    updatedAt,
  ];
}

class ElogActivityArtifactsInclude extends _is.IncludeObject {
  ElogActivityArtifactsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogActivityArtifacts.t;
}

class ElogActivityArtifactsIncludeList extends _is.IncludeList {
  ElogActivityArtifactsIncludeList._({
    _is.WhereExpressionBuilder<ElogActivityArtifactsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogActivityArtifacts.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogActivityArtifacts.t;
}

class ElogActivityArtifactsRepository {
  const ElogActivityArtifactsRepository._();

  /// Returns a list of [ElogActivityArtifacts]s matching the given query parameters.
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
  Future<List<ElogActivityArtifacts>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogActivityArtifactsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogActivityArtifactsTable>? orderBy,
    _is.OrderByListBuilder<ElogActivityArtifactsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogActivityArtifacts>(
      where: where?.call(ElogActivityArtifacts.t),
      orderBy: orderBy?.call(ElogActivityArtifacts.t),
      orderByList: orderByList?.call(ElogActivityArtifacts.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogActivityArtifacts] matching the given query parameters.
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
  Future<ElogActivityArtifacts?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogActivityArtifactsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogActivityArtifactsTable>? orderBy,
    _is.OrderByListBuilder<ElogActivityArtifactsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogActivityArtifacts>(
      where: where?.call(ElogActivityArtifacts.t),
      orderBy: orderBy?.call(ElogActivityArtifacts.t),
      orderByList: orderByList?.call(ElogActivityArtifacts.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogActivityArtifacts] by its [id] or null if no such row exists.
  Future<ElogActivityArtifacts?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogActivityArtifacts>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogActivityArtifacts]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogActivityArtifacts]s will have their `id` fields set.
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
  Future<List<ElogActivityArtifacts>> insert(
    _is.DatabaseSession session,
    List<ElogActivityArtifacts> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogActivityArtifacts>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogActivityArtifacts] and returns the inserted row.
  ///
  /// The returned [ElogActivityArtifacts] will have its `id` field set.
  Future<ElogActivityArtifacts> insertRow(
    _is.DatabaseSession session,
    ElogActivityArtifacts row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogActivityArtifacts>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogActivityArtifacts]s in the list and returns the resulting rows.
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
  /// The returned [ElogActivityArtifacts]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogActivityArtifacts>> upsert(
    _is.DatabaseSession session,
    List<ElogActivityArtifacts> rows, {
    required _is.ColumnSelections<ElogActivityArtifactsTable> conflictColumns,
    _is.ColumnSelections<ElogActivityArtifactsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogActivityArtifactsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogActivityArtifacts>(
      rows,
      conflictColumns: conflictColumns(ElogActivityArtifacts.t),
      updateColumns: updateColumns?.call(ElogActivityArtifacts.t),
      updateWhere: updateWhere?.call(ElogActivityArtifacts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogActivityArtifacts] and returns the resulting row.
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
  /// The returned [ElogActivityArtifacts] will have its `id` field set.
  Future<ElogActivityArtifacts?> upsertRow(
    _is.DatabaseSession session,
    ElogActivityArtifacts row, {
    required _is.ColumnSelections<ElogActivityArtifactsTable> conflictColumns,
    _is.ColumnSelections<ElogActivityArtifactsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogActivityArtifactsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogActivityArtifacts>(
      row,
      conflictColumns: conflictColumns(ElogActivityArtifacts.t),
      updateColumns: updateColumns?.call(ElogActivityArtifacts.t),
      updateWhere: updateWhere?.call(ElogActivityArtifacts.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogActivityArtifacts]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogActivityArtifacts>> update(
    _is.DatabaseSession session,
    List<ElogActivityArtifacts> rows, {
    _is.ColumnSelections<ElogActivityArtifactsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogActivityArtifacts>(
      rows,
      columns: columns?.call(ElogActivityArtifacts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogActivityArtifacts]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogActivityArtifacts> updateRow(
    _is.DatabaseSession session,
    ElogActivityArtifacts row, {
    _is.ColumnSelections<ElogActivityArtifactsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogActivityArtifacts>(
      row,
      columns: columns?.call(ElogActivityArtifacts.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogActivityArtifacts] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogActivityArtifacts?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogActivityArtifactsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogActivityArtifacts>(
      id,
      columnValues: columnValues(ElogActivityArtifacts.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogActivityArtifacts]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogActivityArtifacts>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogActivityArtifactsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogActivityArtifactsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogActivityArtifactsTable>? orderBy,
    _is.OrderByListBuilder<ElogActivityArtifactsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogActivityArtifacts>(
      columnValues: columnValues(ElogActivityArtifacts.t.updateTable),
      where: where(ElogActivityArtifacts.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogActivityArtifacts.t),
      orderByList: orderByList?.call(ElogActivityArtifacts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogActivityArtifacts]s in the list and returns the deleted rows.
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
  Future<List<ElogActivityArtifacts>> delete(
    _is.DatabaseSession session,
    List<ElogActivityArtifacts> rows, {
    _is.OrderByBuilder<ElogActivityArtifactsTable>? orderBy,
    _is.OrderByListBuilder<ElogActivityArtifactsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogActivityArtifacts>(
      rows,
      orderBy: orderBy?.call(ElogActivityArtifacts.t),
      orderByList: orderByList?.call(ElogActivityArtifacts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogActivityArtifacts].
  Future<ElogActivityArtifacts> deleteRow(
    _is.DatabaseSession session,
    ElogActivityArtifacts row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogActivityArtifacts>(
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
  Future<List<ElogActivityArtifacts>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogActivityArtifactsTable> where,
    _is.OrderByBuilder<ElogActivityArtifactsTable>? orderBy,
    _is.OrderByListBuilder<ElogActivityArtifactsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogActivityArtifacts>(
      where: where(ElogActivityArtifacts.t),
      orderBy: orderBy?.call(ElogActivityArtifacts.t),
      orderByList: orderByList?.call(ElogActivityArtifacts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogActivityArtifactsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogActivityArtifacts>(
      where: where?.call(ElogActivityArtifacts.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogActivityArtifacts] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogActivityArtifactsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogActivityArtifacts>(
      where: where(ElogActivityArtifacts.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
