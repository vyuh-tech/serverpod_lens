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
abstract class CampusEthicsApplication
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusEthicsApplication._({
    this.id,
    required this.projectId,
    required this.submittedById,
    required this.submittedAt,
    required this.summary,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusEthicsApplication({
    _is.UuidValue? id,
    required _is.UuidValue projectId,
    required _is.UuidValue submittedById,
    required DateTime submittedAt,
    required String summary,
    required String status,
    DateTime? createdAt,
  }) = _CampusEthicsApplicationImpl;

  factory CampusEthicsApplication.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusEthicsApplication(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      projectId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['projectId'],
      ),
      submittedById: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['submittedById'],
      ),
      submittedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['submittedAt'],
      ),
      summary: jsonSerialization['summary'] as String,
      status: jsonSerialization['status'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusEthicsApplicationTable();

  static const db = CampusEthicsApplicationRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue projectId;

  _is.UuidValue submittedById;

  DateTime submittedAt;

  String summary;

  String status;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusEthicsApplication]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusEthicsApplication copyWith({
    _is.UuidValue? id,
    _is.UuidValue? projectId,
    _is.UuidValue? submittedById,
    DateTime? submittedAt,
    String? summary,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusEthicsApplication',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'submittedById': submittedById.toJson(),
      'submittedAt': submittedAt.toJson(),
      'summary': summary,
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusEthicsApplication',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'submittedById': submittedById.toJson(),
      'submittedAt': submittedAt.toJson(),
      'summary': summary,
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusEthicsApplicationInclude include() {
    return CampusEthicsApplicationInclude._();
  }

  static CampusEthicsApplicationIncludeList includeList({
    _is.WhereExpressionBuilder<CampusEthicsApplicationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusEthicsApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusEthicsApplicationTable>? orderByList,
    CampusEthicsApplicationInclude? include,
  }) {
    return CampusEthicsApplicationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusEthicsApplication.t),
      orderByList: orderByList?.call(CampusEthicsApplication.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusEthicsApplicationImpl extends CampusEthicsApplication {
  _CampusEthicsApplicationImpl({
    _is.UuidValue? id,
    required _is.UuidValue projectId,
    required _is.UuidValue submittedById,
    required DateTime submittedAt,
    required String summary,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         projectId: projectId,
         submittedById: submittedById,
         submittedAt: submittedAt,
         summary: summary,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusEthicsApplication]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusEthicsApplication copyWith({
    Object? id = _Undefined,
    _is.UuidValue? projectId,
    _is.UuidValue? submittedById,
    DateTime? submittedAt,
    String? summary,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusEthicsApplication(
      id: id is _is.UuidValue? ? id : this.id,
      projectId: projectId ?? this.projectId,
      submittedById: submittedById ?? this.submittedById,
      submittedAt: submittedAt ?? this.submittedAt,
      summary: summary ?? this.summary,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusEthicsApplicationUpdateTable
    extends _is.UpdateTable<CampusEthicsApplicationTable> {
  CampusEthicsApplicationUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> projectId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.projectId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> submittedById(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.submittedById,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> submittedAt(DateTime value) =>
      _is.ColumnValue(
        table.submittedAt,
        value,
      );

  _is.ColumnValue<String, String> summary(String value) => _is.ColumnValue(
    table.summary,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusEthicsApplicationTable extends _is.Table<_is.UuidValue?> {
  CampusEthicsApplicationTable({super.tableRelation})
    : super(tableName: 'campus_ethics_applications') {
    updateTable = CampusEthicsApplicationUpdateTable(this);
    projectId = _is.ColumnUuid(
      'projectId',
      this,
    );
    submittedById = _is.ColumnUuid(
      'submittedById',
      this,
    );
    submittedAt = _is.ColumnDateTime(
      'submittedAt',
      this,
    );
    summary = _is.ColumnString(
      'summary',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusEthicsApplicationUpdateTable updateTable;

  late final _is.ColumnUuid projectId;

  late final _is.ColumnUuid submittedById;

  late final _is.ColumnDateTime submittedAt;

  late final _is.ColumnString summary;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    projectId,
    submittedById,
    submittedAt,
    summary,
    status,
    createdAt,
  ];
}

class CampusEthicsApplicationInclude extends _is.IncludeObject {
  CampusEthicsApplicationInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusEthicsApplication.t;
}

class CampusEthicsApplicationIncludeList extends _is.IncludeList {
  CampusEthicsApplicationIncludeList._({
    _is.WhereExpressionBuilder<CampusEthicsApplicationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusEthicsApplication.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusEthicsApplication.t;
}

class CampusEthicsApplicationRepository {
  const CampusEthicsApplicationRepository._();

  /// Returns a list of [CampusEthicsApplication]s matching the given query parameters.
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
  Future<List<CampusEthicsApplication>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusEthicsApplicationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusEthicsApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusEthicsApplicationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusEthicsApplication>(
      where: where?.call(CampusEthicsApplication.t),
      orderBy: orderBy?.call(CampusEthicsApplication.t),
      orderByList: orderByList?.call(CampusEthicsApplication.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusEthicsApplication] matching the given query parameters.
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
  Future<CampusEthicsApplication?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusEthicsApplicationTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusEthicsApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusEthicsApplicationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusEthicsApplication>(
      where: where?.call(CampusEthicsApplication.t),
      orderBy: orderBy?.call(CampusEthicsApplication.t),
      orderByList: orderByList?.call(CampusEthicsApplication.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusEthicsApplication] by its [id] or null if no such row exists.
  Future<CampusEthicsApplication?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusEthicsApplication>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusEthicsApplication]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusEthicsApplication]s will have their `id` fields set.
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
  Future<List<CampusEthicsApplication>> insert(
    _is.DatabaseSession session,
    List<CampusEthicsApplication> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusEthicsApplication>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusEthicsApplication] and returns the inserted row.
  ///
  /// The returned [CampusEthicsApplication] will have its `id` field set.
  Future<CampusEthicsApplication> insertRow(
    _is.DatabaseSession session,
    CampusEthicsApplication row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusEthicsApplication>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusEthicsApplication]s in the list and returns the resulting rows.
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
  /// The returned [CampusEthicsApplication]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusEthicsApplication>> upsert(
    _is.DatabaseSession session,
    List<CampusEthicsApplication> rows, {
    required _is.ColumnSelections<CampusEthicsApplicationTable> conflictColumns,
    _is.ColumnSelections<CampusEthicsApplicationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusEthicsApplicationTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusEthicsApplication>(
      rows,
      conflictColumns: conflictColumns(CampusEthicsApplication.t),
      updateColumns: updateColumns?.call(CampusEthicsApplication.t),
      updateWhere: updateWhere?.call(CampusEthicsApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusEthicsApplication] and returns the resulting row.
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
  /// The returned [CampusEthicsApplication] will have its `id` field set.
  Future<CampusEthicsApplication?> upsertRow(
    _is.DatabaseSession session,
    CampusEthicsApplication row, {
    required _is.ColumnSelections<CampusEthicsApplicationTable> conflictColumns,
    _is.ColumnSelections<CampusEthicsApplicationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusEthicsApplicationTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusEthicsApplication>(
      row,
      conflictColumns: conflictColumns(CampusEthicsApplication.t),
      updateColumns: updateColumns?.call(CampusEthicsApplication.t),
      updateWhere: updateWhere?.call(CampusEthicsApplication.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusEthicsApplication]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusEthicsApplication>> update(
    _is.DatabaseSession session,
    List<CampusEthicsApplication> rows, {
    _is.ColumnSelections<CampusEthicsApplicationTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusEthicsApplication>(
      rows,
      columns: columns?.call(CampusEthicsApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusEthicsApplication]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusEthicsApplication> updateRow(
    _is.DatabaseSession session,
    CampusEthicsApplication row, {
    _is.ColumnSelections<CampusEthicsApplicationTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusEthicsApplication>(
      row,
      columns: columns?.call(CampusEthicsApplication.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusEthicsApplication] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusEthicsApplication?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusEthicsApplicationUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusEthicsApplication>(
      id,
      columnValues: columnValues(CampusEthicsApplication.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusEthicsApplication]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusEthicsApplication>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusEthicsApplicationUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusEthicsApplicationTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusEthicsApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusEthicsApplicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusEthicsApplication>(
      columnValues: columnValues(CampusEthicsApplication.t.updateTable),
      where: where(CampusEthicsApplication.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusEthicsApplication.t),
      orderByList: orderByList?.call(CampusEthicsApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusEthicsApplication]s in the list and returns the deleted rows.
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
  Future<List<CampusEthicsApplication>> delete(
    _is.DatabaseSession session,
    List<CampusEthicsApplication> rows, {
    _is.OrderByBuilder<CampusEthicsApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusEthicsApplicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusEthicsApplication>(
      rows,
      orderBy: orderBy?.call(CampusEthicsApplication.t),
      orderByList: orderByList?.call(CampusEthicsApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusEthicsApplication].
  Future<CampusEthicsApplication> deleteRow(
    _is.DatabaseSession session,
    CampusEthicsApplication row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusEthicsApplication>(
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
  Future<List<CampusEthicsApplication>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusEthicsApplicationTable> where,
    _is.OrderByBuilder<CampusEthicsApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusEthicsApplicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusEthicsApplication>(
      where: where(CampusEthicsApplication.t),
      orderBy: orderBy?.call(CampusEthicsApplication.t),
      orderByList: orderByList?.call(CampusEthicsApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusEthicsApplicationTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusEthicsApplication>(
      where: where?.call(CampusEthicsApplication.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusEthicsApplication] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusEthicsApplicationTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusEthicsApplication>(
      where: where(CampusEthicsApplication.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
