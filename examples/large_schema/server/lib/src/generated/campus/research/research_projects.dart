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
abstract class CampusResearchProject
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusResearchProject._({
    this.id,
    required this.departmentId,
    required this.principalInvestigatorId,
    required this.title,
    required this.startsAt,
    this.endsAt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResearchProject({
    _is.UuidValue? id,
    required _is.UuidValue departmentId,
    required _is.UuidValue principalInvestigatorId,
    required String title,
    required DateTime startsAt,
    DateTime? endsAt,
    required String status,
    DateTime? createdAt,
  }) = _CampusResearchProjectImpl;

  factory CampusResearchProject.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusResearchProject(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      departmentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentId'],
      ),
      principalInvestigatorId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['principalInvestigatorId'],
      ),
      title: jsonSerialization['title'] as String,
      startsAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['startsAt'],
      ),
      endsAt: jsonSerialization['endsAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['endsAt']),
      status: jsonSerialization['status'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusResearchProjectTable();

  static const db = CampusResearchProjectRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue departmentId;

  _is.UuidValue principalInvestigatorId;

  String title;

  DateTime startsAt;

  DateTime? endsAt;

  String status;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusResearchProject]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusResearchProject copyWith({
    _is.UuidValue? id,
    _is.UuidValue? departmentId,
    _is.UuidValue? principalInvestigatorId,
    String? title,
    DateTime? startsAt,
    DateTime? endsAt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResearchProject',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      'principalInvestigatorId': principalInvestigatorId.toJson(),
      'title': title,
      'startsAt': startsAt.toJson(),
      if (endsAt != null) 'endsAt': endsAt?.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResearchProject',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      'principalInvestigatorId': principalInvestigatorId.toJson(),
      'title': title,
      'startsAt': startsAt.toJson(),
      if (endsAt != null) 'endsAt': endsAt?.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusResearchProjectInclude include() {
    return CampusResearchProjectInclude._();
  }

  static CampusResearchProjectIncludeList includeList({
    _is.WhereExpressionBuilder<CampusResearchProjectTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResearchProjectTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchProjectTable>? orderByList,
    CampusResearchProjectInclude? include,
  }) {
    return CampusResearchProjectIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResearchProject.t),
      orderByList: orderByList?.call(CampusResearchProject.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusResearchProjectImpl extends CampusResearchProject {
  _CampusResearchProjectImpl({
    _is.UuidValue? id,
    required _is.UuidValue departmentId,
    required _is.UuidValue principalInvestigatorId,
    required String title,
    required DateTime startsAt,
    DateTime? endsAt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         departmentId: departmentId,
         principalInvestigatorId: principalInvestigatorId,
         title: title,
         startsAt: startsAt,
         endsAt: endsAt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResearchProject]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusResearchProject copyWith({
    Object? id = _Undefined,
    _is.UuidValue? departmentId,
    _is.UuidValue? principalInvestigatorId,
    String? title,
    DateTime? startsAt,
    Object? endsAt = _Undefined,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusResearchProject(
      id: id is _is.UuidValue? ? id : this.id,
      departmentId: departmentId ?? this.departmentId,
      principalInvestigatorId:
          principalInvestigatorId ?? this.principalInvestigatorId,
      title: title ?? this.title,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt is DateTime? ? endsAt : this.endsAt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusResearchProjectUpdateTable
    extends _is.UpdateTable<CampusResearchProjectTable> {
  CampusResearchProjectUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> departmentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.departmentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> principalInvestigatorId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.principalInvestigatorId,
    value,
  );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> startsAt(DateTime value) =>
      _is.ColumnValue(
        table.startsAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> endsAt(DateTime? value) =>
      _is.ColumnValue(
        table.endsAt,
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

class CampusResearchProjectTable extends _is.Table<_is.UuidValue?> {
  CampusResearchProjectTable({super.tableRelation})
    : super(tableName: 'campus_research_projects') {
    updateTable = CampusResearchProjectUpdateTable(this);
    departmentId = _is.ColumnUuid(
      'departmentId',
      this,
    );
    principalInvestigatorId = _is.ColumnUuid(
      'principalInvestigatorId',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    startsAt = _is.ColumnDateTime(
      'startsAt',
      this,
    );
    endsAt = _is.ColumnDateTime(
      'endsAt',
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

  late final CampusResearchProjectUpdateTable updateTable;

  late final _is.ColumnUuid departmentId;

  late final _is.ColumnUuid principalInvestigatorId;

  late final _is.ColumnString title;

  late final _is.ColumnDateTime startsAt;

  late final _is.ColumnDateTime endsAt;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    departmentId,
    principalInvestigatorId,
    title,
    startsAt,
    endsAt,
    status,
    createdAt,
  ];
}

class CampusResearchProjectInclude extends _is.IncludeObject {
  CampusResearchProjectInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResearchProject.t;
}

class CampusResearchProjectIncludeList extends _is.IncludeList {
  CampusResearchProjectIncludeList._({
    _is.WhereExpressionBuilder<CampusResearchProjectTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusResearchProject.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResearchProject.t;
}

class CampusResearchProjectRepository {
  const CampusResearchProjectRepository._();

  /// Returns a list of [CampusResearchProject]s matching the given query parameters.
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
  Future<List<CampusResearchProject>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResearchProjectTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResearchProjectTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchProjectTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusResearchProject>(
      where: where?.call(CampusResearchProject.t),
      orderBy: orderBy?.call(CampusResearchProject.t),
      orderByList: orderByList?.call(CampusResearchProject.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusResearchProject] matching the given query parameters.
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
  Future<CampusResearchProject?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResearchProjectTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusResearchProjectTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchProjectTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusResearchProject>(
      where: where?.call(CampusResearchProject.t),
      orderBy: orderBy?.call(CampusResearchProject.t),
      orderByList: orderByList?.call(CampusResearchProject.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusResearchProject] by its [id] or null if no such row exists.
  Future<CampusResearchProject?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusResearchProject>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusResearchProject]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusResearchProject]s will have their `id` fields set.
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
  Future<List<CampusResearchProject>> insert(
    _is.DatabaseSession session,
    List<CampusResearchProject> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusResearchProject>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusResearchProject] and returns the inserted row.
  ///
  /// The returned [CampusResearchProject] will have its `id` field set.
  Future<CampusResearchProject> insertRow(
    _is.DatabaseSession session,
    CampusResearchProject row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusResearchProject>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusResearchProject]s in the list and returns the resulting rows.
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
  /// The returned [CampusResearchProject]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResearchProject>> upsert(
    _is.DatabaseSession session,
    List<CampusResearchProject> rows, {
    required _is.ColumnSelections<CampusResearchProjectTable> conflictColumns,
    _is.ColumnSelections<CampusResearchProjectTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResearchProjectTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusResearchProject>(
      rows,
      conflictColumns: conflictColumns(CampusResearchProject.t),
      updateColumns: updateColumns?.call(CampusResearchProject.t),
      updateWhere: updateWhere?.call(CampusResearchProject.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusResearchProject] and returns the resulting row.
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
  /// The returned [CampusResearchProject] will have its `id` field set.
  Future<CampusResearchProject?> upsertRow(
    _is.DatabaseSession session,
    CampusResearchProject row, {
    required _is.ColumnSelections<CampusResearchProjectTable> conflictColumns,
    _is.ColumnSelections<CampusResearchProjectTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResearchProjectTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusResearchProject>(
      row,
      conflictColumns: conflictColumns(CampusResearchProject.t),
      updateColumns: updateColumns?.call(CampusResearchProject.t),
      updateWhere: updateWhere?.call(CampusResearchProject.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResearchProject]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResearchProject>> update(
    _is.DatabaseSession session,
    List<CampusResearchProject> rows, {
    _is.ColumnSelections<CampusResearchProjectTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusResearchProject>(
      rows,
      columns: columns?.call(CampusResearchProject.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusResearchProject]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusResearchProject> updateRow(
    _is.DatabaseSession session,
    CampusResearchProject row, {
    _is.ColumnSelections<CampusResearchProjectTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusResearchProject>(
      row,
      columns: columns?.call(CampusResearchProject.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusResearchProject] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusResearchProject?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusResearchProjectUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusResearchProject>(
      id,
      columnValues: columnValues(CampusResearchProject.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResearchProject]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResearchProject>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusResearchProjectUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusResearchProjectTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResearchProjectTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchProjectTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusResearchProject>(
      columnValues: columnValues(CampusResearchProject.t.updateTable),
      where: where(CampusResearchProject.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResearchProject.t),
      orderByList: orderByList?.call(CampusResearchProject.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusResearchProject]s in the list and returns the deleted rows.
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
  Future<List<CampusResearchProject>> delete(
    _is.DatabaseSession session,
    List<CampusResearchProject> rows, {
    _is.OrderByBuilder<CampusResearchProjectTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchProjectTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusResearchProject>(
      rows,
      orderBy: orderBy?.call(CampusResearchProject.t),
      orderByList: orderByList?.call(CampusResearchProject.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusResearchProject].
  Future<CampusResearchProject> deleteRow(
    _is.DatabaseSession session,
    CampusResearchProject row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusResearchProject>(
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
  Future<List<CampusResearchProject>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResearchProjectTable> where,
    _is.OrderByBuilder<CampusResearchProjectTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchProjectTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusResearchProject>(
      where: where(CampusResearchProject.t),
      orderBy: orderBy?.call(CampusResearchProject.t),
      orderByList: orderByList?.call(CampusResearchProject.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResearchProjectTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusResearchProject>(
      where: where?.call(CampusResearchProject.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusResearchProject] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResearchProjectTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusResearchProject>(
      where: where(CampusResearchProject.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
