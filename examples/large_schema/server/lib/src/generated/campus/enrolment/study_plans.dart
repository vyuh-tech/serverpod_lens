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

/// Fictional university fixture: enrolment.
abstract class CampusStudyPlan
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusStudyPlan._({
    this.id,
    required this.studentId,
    required this.programmeVersionId,
    this.approvedById,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudyPlan({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue programmeVersionId,
    _is.UuidValue? approvedById,
    required String status,
    DateTime? createdAt,
  }) = _CampusStudyPlanImpl;

  factory CampusStudyPlan.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusStudyPlan(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      programmeVersionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeVersionId'],
      ),
      approvedById: jsonSerialization['approvedById'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['approvedById'],
            ),
      status: jsonSerialization['status'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusStudyPlanTable();

  static const db = CampusStudyPlanRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  _is.UuidValue programmeVersionId;

  _is.UuidValue? approvedById;

  String status;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusStudyPlan]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusStudyPlan copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    _is.UuidValue? programmeVersionId,
    _is.UuidValue? approvedById,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudyPlan',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'programmeVersionId': programmeVersionId.toJson(),
      if (approvedById != null) 'approvedById': approvedById?.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudyPlan',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'programmeVersionId': programmeVersionId.toJson(),
      if (approvedById != null) 'approvedById': approvedById?.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusStudyPlanInclude include() {
    return CampusStudyPlanInclude._();
  }

  static CampusStudyPlanIncludeList includeList({
    _is.WhereExpressionBuilder<CampusStudyPlanTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudyPlanTable>? orderBy,
    _is.OrderByListBuilder<CampusStudyPlanTable>? orderByList,
    CampusStudyPlanInclude? include,
  }) {
    return CampusStudyPlanIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudyPlan.t),
      orderByList: orderByList?.call(CampusStudyPlan.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudyPlanImpl extends CampusStudyPlan {
  _CampusStudyPlanImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue programmeVersionId,
    _is.UuidValue? approvedById,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         programmeVersionId: programmeVersionId,
         approvedById: approvedById,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudyPlan]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusStudyPlan copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    _is.UuidValue? programmeVersionId,
    Object? approvedById = _Undefined,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusStudyPlan(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      programmeVersionId: programmeVersionId ?? this.programmeVersionId,
      approvedById: approvedById is _is.UuidValue?
          ? approvedById
          : this.approvedById,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusStudyPlanUpdateTable extends _is.UpdateTable<CampusStudyPlanTable> {
  CampusStudyPlanUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> programmeVersionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.programmeVersionId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> approvedById(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.approvedById,
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

class CampusStudyPlanTable extends _is.Table<_is.UuidValue?> {
  CampusStudyPlanTable({super.tableRelation})
    : super(tableName: 'campus_study_plans') {
    updateTable = CampusStudyPlanUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    programmeVersionId = _is.ColumnUuid(
      'programmeVersionId',
      this,
    );
    approvedById = _is.ColumnUuid(
      'approvedById',
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

  late final CampusStudyPlanUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid programmeVersionId;

  late final _is.ColumnUuid approvedById;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    programmeVersionId,
    approvedById,
    status,
    createdAt,
  ];
}

class CampusStudyPlanInclude extends _is.IncludeObject {
  CampusStudyPlanInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudyPlan.t;
}

class CampusStudyPlanIncludeList extends _is.IncludeList {
  CampusStudyPlanIncludeList._({
    _is.WhereExpressionBuilder<CampusStudyPlanTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusStudyPlan.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudyPlan.t;
}

class CampusStudyPlanRepository {
  const CampusStudyPlanRepository._();

  /// Returns a list of [CampusStudyPlan]s matching the given query parameters.
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
  Future<List<CampusStudyPlan>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudyPlanTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudyPlanTable>? orderBy,
    _is.OrderByListBuilder<CampusStudyPlanTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusStudyPlan>(
      where: where?.call(CampusStudyPlan.t),
      orderBy: orderBy?.call(CampusStudyPlan.t),
      orderByList: orderByList?.call(CampusStudyPlan.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusStudyPlan] matching the given query parameters.
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
  Future<CampusStudyPlan?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudyPlanTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusStudyPlanTable>? orderBy,
    _is.OrderByListBuilder<CampusStudyPlanTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusStudyPlan>(
      where: where?.call(CampusStudyPlan.t),
      orderBy: orderBy?.call(CampusStudyPlan.t),
      orderByList: orderByList?.call(CampusStudyPlan.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusStudyPlan] by its [id] or null if no such row exists.
  Future<CampusStudyPlan?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusStudyPlan>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusStudyPlan]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusStudyPlan]s will have their `id` fields set.
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
  Future<List<CampusStudyPlan>> insert(
    _is.DatabaseSession session,
    List<CampusStudyPlan> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusStudyPlan>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusStudyPlan] and returns the inserted row.
  ///
  /// The returned [CampusStudyPlan] will have its `id` field set.
  Future<CampusStudyPlan> insertRow(
    _is.DatabaseSession session,
    CampusStudyPlan row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusStudyPlan>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusStudyPlan]s in the list and returns the resulting rows.
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
  /// The returned [CampusStudyPlan]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudyPlan>> upsert(
    _is.DatabaseSession session,
    List<CampusStudyPlan> rows, {
    required _is.ColumnSelections<CampusStudyPlanTable> conflictColumns,
    _is.ColumnSelections<CampusStudyPlanTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudyPlanTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusStudyPlan>(
      rows,
      conflictColumns: conflictColumns(CampusStudyPlan.t),
      updateColumns: updateColumns?.call(CampusStudyPlan.t),
      updateWhere: updateWhere?.call(CampusStudyPlan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusStudyPlan] and returns the resulting row.
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
  /// The returned [CampusStudyPlan] will have its `id` field set.
  Future<CampusStudyPlan?> upsertRow(
    _is.DatabaseSession session,
    CampusStudyPlan row, {
    required _is.ColumnSelections<CampusStudyPlanTable> conflictColumns,
    _is.ColumnSelections<CampusStudyPlanTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudyPlanTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusStudyPlan>(
      row,
      conflictColumns: conflictColumns(CampusStudyPlan.t),
      updateColumns: updateColumns?.call(CampusStudyPlan.t),
      updateWhere: updateWhere?.call(CampusStudyPlan.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudyPlan]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudyPlan>> update(
    _is.DatabaseSession session,
    List<CampusStudyPlan> rows, {
    _is.ColumnSelections<CampusStudyPlanTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusStudyPlan>(
      rows,
      columns: columns?.call(CampusStudyPlan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusStudyPlan]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusStudyPlan> updateRow(
    _is.DatabaseSession session,
    CampusStudyPlan row, {
    _is.ColumnSelections<CampusStudyPlanTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusStudyPlan>(
      row,
      columns: columns?.call(CampusStudyPlan.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusStudyPlan] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusStudyPlan?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusStudyPlanUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusStudyPlan>(
      id,
      columnValues: columnValues(CampusStudyPlan.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudyPlan]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudyPlan>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusStudyPlanUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusStudyPlanTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudyPlanTable>? orderBy,
    _is.OrderByListBuilder<CampusStudyPlanTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusStudyPlan>(
      columnValues: columnValues(CampusStudyPlan.t.updateTable),
      where: where(CampusStudyPlan.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudyPlan.t),
      orderByList: orderByList?.call(CampusStudyPlan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusStudyPlan]s in the list and returns the deleted rows.
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
  Future<List<CampusStudyPlan>> delete(
    _is.DatabaseSession session,
    List<CampusStudyPlan> rows, {
    _is.OrderByBuilder<CampusStudyPlanTable>? orderBy,
    _is.OrderByListBuilder<CampusStudyPlanTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusStudyPlan>(
      rows,
      orderBy: orderBy?.call(CampusStudyPlan.t),
      orderByList: orderByList?.call(CampusStudyPlan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusStudyPlan].
  Future<CampusStudyPlan> deleteRow(
    _is.DatabaseSession session,
    CampusStudyPlan row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusStudyPlan>(
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
  Future<List<CampusStudyPlan>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudyPlanTable> where,
    _is.OrderByBuilder<CampusStudyPlanTable>? orderBy,
    _is.OrderByListBuilder<CampusStudyPlanTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusStudyPlan>(
      where: where(CampusStudyPlan.t),
      orderBy: orderBy?.call(CampusStudyPlan.t),
      orderByList: orderByList?.call(CampusStudyPlan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudyPlanTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusStudyPlan>(
      where: where?.call(CampusStudyPlan.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusStudyPlan] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudyPlanTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusStudyPlan>(
      where: where(CampusStudyPlan.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
