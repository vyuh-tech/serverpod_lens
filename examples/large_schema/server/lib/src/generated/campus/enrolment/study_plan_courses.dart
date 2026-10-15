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
abstract class CampusStudyPlanCourse
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusStudyPlanCourse._({
    this.id,
    required this.studyPlanId,
    required this.courseId,
    this.plannedTermId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudyPlanCourse({
    _is.UuidValue? id,
    required _is.UuidValue studyPlanId,
    required _is.UuidValue courseId,
    _is.UuidValue? plannedTermId,
    DateTime? createdAt,
  }) = _CampusStudyPlanCourseImpl;

  factory CampusStudyPlanCourse.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusStudyPlanCourse(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studyPlanId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studyPlanId'],
      ),
      courseId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      plannedTermId: jsonSerialization['plannedTermId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['plannedTermId'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusStudyPlanCourseTable();

  static const db = CampusStudyPlanCourseRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studyPlanId;

  _is.UuidValue courseId;

  _is.UuidValue? plannedTermId;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusStudyPlanCourse]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusStudyPlanCourse copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studyPlanId,
    _is.UuidValue? courseId,
    _is.UuidValue? plannedTermId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudyPlanCourse',
      if (id != null) 'id': id?.toJson(),
      'studyPlanId': studyPlanId.toJson(),
      'courseId': courseId.toJson(),
      if (plannedTermId != null) 'plannedTermId': plannedTermId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudyPlanCourse',
      if (id != null) 'id': id?.toJson(),
      'studyPlanId': studyPlanId.toJson(),
      'courseId': courseId.toJson(),
      if (plannedTermId != null) 'plannedTermId': plannedTermId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusStudyPlanCourseInclude include() {
    return CampusStudyPlanCourseInclude._();
  }

  static CampusStudyPlanCourseIncludeList includeList({
    _is.WhereExpressionBuilder<CampusStudyPlanCourseTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudyPlanCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusStudyPlanCourseTable>? orderByList,
    CampusStudyPlanCourseInclude? include,
  }) {
    return CampusStudyPlanCourseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudyPlanCourse.t),
      orderByList: orderByList?.call(CampusStudyPlanCourse.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudyPlanCourseImpl extends CampusStudyPlanCourse {
  _CampusStudyPlanCourseImpl({
    _is.UuidValue? id,
    required _is.UuidValue studyPlanId,
    required _is.UuidValue courseId,
    _is.UuidValue? plannedTermId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studyPlanId: studyPlanId,
         courseId: courseId,
         plannedTermId: plannedTermId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudyPlanCourse]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusStudyPlanCourse copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studyPlanId,
    _is.UuidValue? courseId,
    Object? plannedTermId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusStudyPlanCourse(
      id: id is _is.UuidValue? ? id : this.id,
      studyPlanId: studyPlanId ?? this.studyPlanId,
      courseId: courseId ?? this.courseId,
      plannedTermId: plannedTermId is _is.UuidValue?
          ? plannedTermId
          : this.plannedTermId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusStudyPlanCourseUpdateTable
    extends _is.UpdateTable<CampusStudyPlanCourseTable> {
  CampusStudyPlanCourseUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studyPlanId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studyPlanId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> courseId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.courseId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> plannedTermId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.plannedTermId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusStudyPlanCourseTable extends _is.Table<_is.UuidValue?> {
  CampusStudyPlanCourseTable({super.tableRelation})
    : super(tableName: 'campus_study_plan_courses') {
    updateTable = CampusStudyPlanCourseUpdateTable(this);
    studyPlanId = _is.ColumnUuid(
      'studyPlanId',
      this,
    );
    courseId = _is.ColumnUuid(
      'courseId',
      this,
    );
    plannedTermId = _is.ColumnUuid(
      'plannedTermId',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusStudyPlanCourseUpdateTable updateTable;

  late final _is.ColumnUuid studyPlanId;

  late final _is.ColumnUuid courseId;

  late final _is.ColumnUuid plannedTermId;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studyPlanId,
    courseId,
    plannedTermId,
    createdAt,
  ];
}

class CampusStudyPlanCourseInclude extends _is.IncludeObject {
  CampusStudyPlanCourseInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudyPlanCourse.t;
}

class CampusStudyPlanCourseIncludeList extends _is.IncludeList {
  CampusStudyPlanCourseIncludeList._({
    _is.WhereExpressionBuilder<CampusStudyPlanCourseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusStudyPlanCourse.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudyPlanCourse.t;
}

class CampusStudyPlanCourseRepository {
  const CampusStudyPlanCourseRepository._();

  /// Returns a list of [CampusStudyPlanCourse]s matching the given query parameters.
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
  Future<List<CampusStudyPlanCourse>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudyPlanCourseTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudyPlanCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusStudyPlanCourseTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusStudyPlanCourse>(
      where: where?.call(CampusStudyPlanCourse.t),
      orderBy: orderBy?.call(CampusStudyPlanCourse.t),
      orderByList: orderByList?.call(CampusStudyPlanCourse.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusStudyPlanCourse] matching the given query parameters.
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
  Future<CampusStudyPlanCourse?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudyPlanCourseTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusStudyPlanCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusStudyPlanCourseTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusStudyPlanCourse>(
      where: where?.call(CampusStudyPlanCourse.t),
      orderBy: orderBy?.call(CampusStudyPlanCourse.t),
      orderByList: orderByList?.call(CampusStudyPlanCourse.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusStudyPlanCourse] by its [id] or null if no such row exists.
  Future<CampusStudyPlanCourse?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusStudyPlanCourse>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusStudyPlanCourse]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusStudyPlanCourse]s will have their `id` fields set.
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
  Future<List<CampusStudyPlanCourse>> insert(
    _is.DatabaseSession session,
    List<CampusStudyPlanCourse> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusStudyPlanCourse>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusStudyPlanCourse] and returns the inserted row.
  ///
  /// The returned [CampusStudyPlanCourse] will have its `id` field set.
  Future<CampusStudyPlanCourse> insertRow(
    _is.DatabaseSession session,
    CampusStudyPlanCourse row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusStudyPlanCourse>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusStudyPlanCourse]s in the list and returns the resulting rows.
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
  /// The returned [CampusStudyPlanCourse]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudyPlanCourse>> upsert(
    _is.DatabaseSession session,
    List<CampusStudyPlanCourse> rows, {
    required _is.ColumnSelections<CampusStudyPlanCourseTable> conflictColumns,
    _is.ColumnSelections<CampusStudyPlanCourseTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudyPlanCourseTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusStudyPlanCourse>(
      rows,
      conflictColumns: conflictColumns(CampusStudyPlanCourse.t),
      updateColumns: updateColumns?.call(CampusStudyPlanCourse.t),
      updateWhere: updateWhere?.call(CampusStudyPlanCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusStudyPlanCourse] and returns the resulting row.
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
  /// The returned [CampusStudyPlanCourse] will have its `id` field set.
  Future<CampusStudyPlanCourse?> upsertRow(
    _is.DatabaseSession session,
    CampusStudyPlanCourse row, {
    required _is.ColumnSelections<CampusStudyPlanCourseTable> conflictColumns,
    _is.ColumnSelections<CampusStudyPlanCourseTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudyPlanCourseTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusStudyPlanCourse>(
      row,
      conflictColumns: conflictColumns(CampusStudyPlanCourse.t),
      updateColumns: updateColumns?.call(CampusStudyPlanCourse.t),
      updateWhere: updateWhere?.call(CampusStudyPlanCourse.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudyPlanCourse]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudyPlanCourse>> update(
    _is.DatabaseSession session,
    List<CampusStudyPlanCourse> rows, {
    _is.ColumnSelections<CampusStudyPlanCourseTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusStudyPlanCourse>(
      rows,
      columns: columns?.call(CampusStudyPlanCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusStudyPlanCourse]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusStudyPlanCourse> updateRow(
    _is.DatabaseSession session,
    CampusStudyPlanCourse row, {
    _is.ColumnSelections<CampusStudyPlanCourseTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusStudyPlanCourse>(
      row,
      columns: columns?.call(CampusStudyPlanCourse.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusStudyPlanCourse] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusStudyPlanCourse?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusStudyPlanCourseUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusStudyPlanCourse>(
      id,
      columnValues: columnValues(CampusStudyPlanCourse.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudyPlanCourse]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudyPlanCourse>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusStudyPlanCourseUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusStudyPlanCourseTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudyPlanCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusStudyPlanCourseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusStudyPlanCourse>(
      columnValues: columnValues(CampusStudyPlanCourse.t.updateTable),
      where: where(CampusStudyPlanCourse.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudyPlanCourse.t),
      orderByList: orderByList?.call(CampusStudyPlanCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusStudyPlanCourse]s in the list and returns the deleted rows.
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
  Future<List<CampusStudyPlanCourse>> delete(
    _is.DatabaseSession session,
    List<CampusStudyPlanCourse> rows, {
    _is.OrderByBuilder<CampusStudyPlanCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusStudyPlanCourseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusStudyPlanCourse>(
      rows,
      orderBy: orderBy?.call(CampusStudyPlanCourse.t),
      orderByList: orderByList?.call(CampusStudyPlanCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusStudyPlanCourse].
  Future<CampusStudyPlanCourse> deleteRow(
    _is.DatabaseSession session,
    CampusStudyPlanCourse row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusStudyPlanCourse>(
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
  Future<List<CampusStudyPlanCourse>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudyPlanCourseTable> where,
    _is.OrderByBuilder<CampusStudyPlanCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusStudyPlanCourseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusStudyPlanCourse>(
      where: where(CampusStudyPlanCourse.t),
      orderBy: orderBy?.call(CampusStudyPlanCourse.t),
      orderByList: orderByList?.call(CampusStudyPlanCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudyPlanCourseTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusStudyPlanCourse>(
      where: where?.call(CampusStudyPlanCourse.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusStudyPlanCourse] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudyPlanCourseTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusStudyPlanCourse>(
      where: where(CampusStudyPlanCourse.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
