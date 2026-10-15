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
abstract class CampusResearchDataset
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusResearchDataset._({
    this.id,
    required this.projectId,
    required this.title,
    required this.resourceUrl,
    required this.licence,
    required this.publicAccess,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResearchDataset({
    _is.UuidValue? id,
    required _is.UuidValue projectId,
    required String title,
    required String resourceUrl,
    required String licence,
    required bool publicAccess,
    DateTime? createdAt,
  }) = _CampusResearchDatasetImpl;

  factory CampusResearchDataset.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusResearchDataset(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      projectId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['projectId'],
      ),
      title: jsonSerialization['title'] as String,
      resourceUrl: jsonSerialization['resourceUrl'] as String,
      licence: jsonSerialization['licence'] as String,
      publicAccess: _is.BoolJsonExtension.fromJson(
        jsonSerialization['publicAccess'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusResearchDatasetTable();

  static const db = CampusResearchDatasetRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue projectId;

  String title;

  String resourceUrl;

  String licence;

  bool publicAccess;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusResearchDataset]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusResearchDataset copyWith({
    _is.UuidValue? id,
    _is.UuidValue? projectId,
    String? title,
    String? resourceUrl,
    String? licence,
    bool? publicAccess,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResearchDataset',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'title': title,
      'resourceUrl': resourceUrl,
      'licence': licence,
      'publicAccess': publicAccess,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResearchDataset',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'title': title,
      'resourceUrl': resourceUrl,
      'licence': licence,
      'publicAccess': publicAccess,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusResearchDatasetInclude include() {
    return CampusResearchDatasetInclude._();
  }

  static CampusResearchDatasetIncludeList includeList({
    _is.WhereExpressionBuilder<CampusResearchDatasetTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResearchDatasetTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchDatasetTable>? orderByList,
    CampusResearchDatasetInclude? include,
  }) {
    return CampusResearchDatasetIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResearchDataset.t),
      orderByList: orderByList?.call(CampusResearchDataset.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusResearchDatasetImpl extends CampusResearchDataset {
  _CampusResearchDatasetImpl({
    _is.UuidValue? id,
    required _is.UuidValue projectId,
    required String title,
    required String resourceUrl,
    required String licence,
    required bool publicAccess,
    DateTime? createdAt,
  }) : super._(
         id: id,
         projectId: projectId,
         title: title,
         resourceUrl: resourceUrl,
         licence: licence,
         publicAccess: publicAccess,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResearchDataset]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusResearchDataset copyWith({
    Object? id = _Undefined,
    _is.UuidValue? projectId,
    String? title,
    String? resourceUrl,
    String? licence,
    bool? publicAccess,
    DateTime? createdAt,
  }) {
    return CampusResearchDataset(
      id: id is _is.UuidValue? ? id : this.id,
      projectId: projectId ?? this.projectId,
      title: title ?? this.title,
      resourceUrl: resourceUrl ?? this.resourceUrl,
      licence: licence ?? this.licence,
      publicAccess: publicAccess ?? this.publicAccess,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusResearchDatasetUpdateTable
    extends _is.UpdateTable<CampusResearchDatasetTable> {
  CampusResearchDatasetUpdateTable(super.table);

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

  _is.ColumnValue<String, String> resourceUrl(String value) => _is.ColumnValue(
    table.resourceUrl,
    value,
  );

  _is.ColumnValue<String, String> licence(String value) => _is.ColumnValue(
    table.licence,
    value,
  );

  _is.ColumnValue<bool, bool> publicAccess(bool value) => _is.ColumnValue(
    table.publicAccess,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusResearchDatasetTable extends _is.Table<_is.UuidValue?> {
  CampusResearchDatasetTable({super.tableRelation})
    : super(tableName: 'campus_research_datasets') {
    updateTable = CampusResearchDatasetUpdateTable(this);
    projectId = _is.ColumnUuid(
      'projectId',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    resourceUrl = _is.ColumnString(
      'resourceUrl',
      this,
    );
    licence = _is.ColumnString(
      'licence',
      this,
    );
    publicAccess = _is.ColumnBool(
      'publicAccess',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusResearchDatasetUpdateTable updateTable;

  late final _is.ColumnUuid projectId;

  late final _is.ColumnString title;

  late final _is.ColumnString resourceUrl;

  late final _is.ColumnString licence;

  late final _is.ColumnBool publicAccess;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    projectId,
    title,
    resourceUrl,
    licence,
    publicAccess,
    createdAt,
  ];
}

class CampusResearchDatasetInclude extends _is.IncludeObject {
  CampusResearchDatasetInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResearchDataset.t;
}

class CampusResearchDatasetIncludeList extends _is.IncludeList {
  CampusResearchDatasetIncludeList._({
    _is.WhereExpressionBuilder<CampusResearchDatasetTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusResearchDataset.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResearchDataset.t;
}

class CampusResearchDatasetRepository {
  const CampusResearchDatasetRepository._();

  /// Returns a list of [CampusResearchDataset]s matching the given query parameters.
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
  Future<List<CampusResearchDataset>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResearchDatasetTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResearchDatasetTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchDatasetTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusResearchDataset>(
      where: where?.call(CampusResearchDataset.t),
      orderBy: orderBy?.call(CampusResearchDataset.t),
      orderByList: orderByList?.call(CampusResearchDataset.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusResearchDataset] matching the given query parameters.
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
  Future<CampusResearchDataset?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResearchDatasetTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusResearchDatasetTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchDatasetTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusResearchDataset>(
      where: where?.call(CampusResearchDataset.t),
      orderBy: orderBy?.call(CampusResearchDataset.t),
      orderByList: orderByList?.call(CampusResearchDataset.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusResearchDataset] by its [id] or null if no such row exists.
  Future<CampusResearchDataset?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusResearchDataset>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusResearchDataset]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusResearchDataset]s will have their `id` fields set.
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
  Future<List<CampusResearchDataset>> insert(
    _is.DatabaseSession session,
    List<CampusResearchDataset> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusResearchDataset>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusResearchDataset] and returns the inserted row.
  ///
  /// The returned [CampusResearchDataset] will have its `id` field set.
  Future<CampusResearchDataset> insertRow(
    _is.DatabaseSession session,
    CampusResearchDataset row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusResearchDataset>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusResearchDataset]s in the list and returns the resulting rows.
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
  /// The returned [CampusResearchDataset]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResearchDataset>> upsert(
    _is.DatabaseSession session,
    List<CampusResearchDataset> rows, {
    required _is.ColumnSelections<CampusResearchDatasetTable> conflictColumns,
    _is.ColumnSelections<CampusResearchDatasetTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResearchDatasetTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusResearchDataset>(
      rows,
      conflictColumns: conflictColumns(CampusResearchDataset.t),
      updateColumns: updateColumns?.call(CampusResearchDataset.t),
      updateWhere: updateWhere?.call(CampusResearchDataset.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusResearchDataset] and returns the resulting row.
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
  /// The returned [CampusResearchDataset] will have its `id` field set.
  Future<CampusResearchDataset?> upsertRow(
    _is.DatabaseSession session,
    CampusResearchDataset row, {
    required _is.ColumnSelections<CampusResearchDatasetTable> conflictColumns,
    _is.ColumnSelections<CampusResearchDatasetTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResearchDatasetTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusResearchDataset>(
      row,
      conflictColumns: conflictColumns(CampusResearchDataset.t),
      updateColumns: updateColumns?.call(CampusResearchDataset.t),
      updateWhere: updateWhere?.call(CampusResearchDataset.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResearchDataset]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResearchDataset>> update(
    _is.DatabaseSession session,
    List<CampusResearchDataset> rows, {
    _is.ColumnSelections<CampusResearchDatasetTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusResearchDataset>(
      rows,
      columns: columns?.call(CampusResearchDataset.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusResearchDataset]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusResearchDataset> updateRow(
    _is.DatabaseSession session,
    CampusResearchDataset row, {
    _is.ColumnSelections<CampusResearchDatasetTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusResearchDataset>(
      row,
      columns: columns?.call(CampusResearchDataset.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusResearchDataset] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusResearchDataset?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusResearchDatasetUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusResearchDataset>(
      id,
      columnValues: columnValues(CampusResearchDataset.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResearchDataset]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResearchDataset>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusResearchDatasetUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusResearchDatasetTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResearchDatasetTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchDatasetTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusResearchDataset>(
      columnValues: columnValues(CampusResearchDataset.t.updateTable),
      where: where(CampusResearchDataset.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResearchDataset.t),
      orderByList: orderByList?.call(CampusResearchDataset.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusResearchDataset]s in the list and returns the deleted rows.
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
  Future<List<CampusResearchDataset>> delete(
    _is.DatabaseSession session,
    List<CampusResearchDataset> rows, {
    _is.OrderByBuilder<CampusResearchDatasetTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchDatasetTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusResearchDataset>(
      rows,
      orderBy: orderBy?.call(CampusResearchDataset.t),
      orderByList: orderByList?.call(CampusResearchDataset.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusResearchDataset].
  Future<CampusResearchDataset> deleteRow(
    _is.DatabaseSession session,
    CampusResearchDataset row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusResearchDataset>(
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
  Future<List<CampusResearchDataset>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResearchDatasetTable> where,
    _is.OrderByBuilder<CampusResearchDatasetTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchDatasetTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusResearchDataset>(
      where: where(CampusResearchDataset.t),
      orderBy: orderBy?.call(CampusResearchDataset.t),
      orderByList: orderByList?.call(CampusResearchDataset.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResearchDatasetTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusResearchDataset>(
      where: where?.call(CampusResearchDataset.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusResearchDataset] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResearchDatasetTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusResearchDataset>(
      where: where(CampusResearchDataset.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
