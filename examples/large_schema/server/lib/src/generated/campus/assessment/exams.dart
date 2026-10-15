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

/// Fictional university fixture: assessment.
abstract class CampusExam
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusExam._({
    this.id,
    required this.courseId,
    required this.title,
    required this.durationMinutes,
    required this.maximumScore,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusExam({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required String title,
    required int durationMinutes,
    required double maximumScore,
    DateTime? createdAt,
  }) = _CampusExamImpl;

  factory CampusExam.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusExam(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      title: jsonSerialization['title'] as String,
      durationMinutes: jsonSerialization['durationMinutes'] as int,
      maximumScore: (jsonSerialization['maximumScore'] as num).toDouble(),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusExamTable();

  static const db = CampusExamRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue courseId;

  String title;

  int durationMinutes;

  double maximumScore;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusExam]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusExam copyWith({
    _is.UuidValue? id,
    _is.UuidValue? courseId,
    String? title,
    int? durationMinutes,
    double? maximumScore,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusExam',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'title': title,
      'durationMinutes': durationMinutes,
      'maximumScore': maximumScore,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusExam',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'title': title,
      'durationMinutes': durationMinutes,
      'maximumScore': maximumScore,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusExamInclude include() {
    return CampusExamInclude._();
  }

  static CampusExamIncludeList includeList({
    _is.WhereExpressionBuilder<CampusExamTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamTable>? orderBy,
    _is.OrderByListBuilder<CampusExamTable>? orderByList,
    CampusExamInclude? include,
  }) {
    return CampusExamIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusExam.t),
      orderByList: orderByList?.call(CampusExam.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusExamImpl extends CampusExam {
  _CampusExamImpl({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required String title,
    required int durationMinutes,
    required double maximumScore,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         title: title,
         durationMinutes: durationMinutes,
         maximumScore: maximumScore,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusExam]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusExam copyWith({
    Object? id = _Undefined,
    _is.UuidValue? courseId,
    String? title,
    int? durationMinutes,
    double? maximumScore,
    DateTime? createdAt,
  }) {
    return CampusExam(
      id: id is _is.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      title: title ?? this.title,
      durationMinutes: durationMinutes ?? this.durationMinutes,
      maximumScore: maximumScore ?? this.maximumScore,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusExamUpdateTable extends _is.UpdateTable<CampusExamTable> {
  CampusExamUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> courseId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.courseId,
        value,
      );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<int, int> durationMinutes(int value) => _is.ColumnValue(
    table.durationMinutes,
    value,
  );

  _is.ColumnValue<double, double> maximumScore(double value) => _is.ColumnValue(
    table.maximumScore,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusExamTable extends _is.Table<_is.UuidValue?> {
  CampusExamTable({super.tableRelation}) : super(tableName: 'campus_exams') {
    updateTable = CampusExamUpdateTable(this);
    courseId = _is.ColumnUuid(
      'courseId',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    durationMinutes = _is.ColumnInt(
      'durationMinutes',
      this,
    );
    maximumScore = _is.ColumnDouble(
      'maximumScore',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusExamUpdateTable updateTable;

  late final _is.ColumnUuid courseId;

  late final _is.ColumnString title;

  late final _is.ColumnInt durationMinutes;

  late final _is.ColumnDouble maximumScore;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    courseId,
    title,
    durationMinutes,
    maximumScore,
    createdAt,
  ];
}

class CampusExamInclude extends _is.IncludeObject {
  CampusExamInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusExam.t;
}

class CampusExamIncludeList extends _is.IncludeList {
  CampusExamIncludeList._({
    _is.WhereExpressionBuilder<CampusExamTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusExam.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusExam.t;
}

class CampusExamRepository {
  const CampusExamRepository._();

  /// Returns a list of [CampusExam]s matching the given query parameters.
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
  Future<List<CampusExam>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamTable>? orderBy,
    _is.OrderByListBuilder<CampusExamTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusExam>(
      where: where?.call(CampusExam.t),
      orderBy: orderBy?.call(CampusExam.t),
      orderByList: orderByList?.call(CampusExam.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusExam] matching the given query parameters.
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
  Future<CampusExam?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusExamTable>? orderBy,
    _is.OrderByListBuilder<CampusExamTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusExam>(
      where: where?.call(CampusExam.t),
      orderBy: orderBy?.call(CampusExam.t),
      orderByList: orderByList?.call(CampusExam.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusExam] by its [id] or null if no such row exists.
  Future<CampusExam?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusExam>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusExam]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusExam]s will have their `id` fields set.
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
  Future<List<CampusExam>> insert(
    _is.DatabaseSession session,
    List<CampusExam> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusExam>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusExam] and returns the inserted row.
  ///
  /// The returned [CampusExam] will have its `id` field set.
  Future<CampusExam> insertRow(
    _is.DatabaseSession session,
    CampusExam row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusExam>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusExam]s in the list and returns the resulting rows.
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
  /// The returned [CampusExam]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExam>> upsert(
    _is.DatabaseSession session,
    List<CampusExam> rows, {
    required _is.ColumnSelections<CampusExamTable> conflictColumns,
    _is.ColumnSelections<CampusExamTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusExamTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusExam>(
      rows,
      conflictColumns: conflictColumns(CampusExam.t),
      updateColumns: updateColumns?.call(CampusExam.t),
      updateWhere: updateWhere?.call(CampusExam.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusExam] and returns the resulting row.
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
  /// The returned [CampusExam] will have its `id` field set.
  Future<CampusExam?> upsertRow(
    _is.DatabaseSession session,
    CampusExam row, {
    required _is.ColumnSelections<CampusExamTable> conflictColumns,
    _is.ColumnSelections<CampusExamTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusExamTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusExam>(
      row,
      conflictColumns: conflictColumns(CampusExam.t),
      updateColumns: updateColumns?.call(CampusExam.t),
      updateWhere: updateWhere?.call(CampusExam.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusExam]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExam>> update(
    _is.DatabaseSession session,
    List<CampusExam> rows, {
    _is.ColumnSelections<CampusExamTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusExam>(
      rows,
      columns: columns?.call(CampusExam.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusExam]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusExam> updateRow(
    _is.DatabaseSession session,
    CampusExam row, {
    _is.ColumnSelections<CampusExamTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusExam>(
      row,
      columns: columns?.call(CampusExam.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusExam] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusExam?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusExamUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusExam>(
      id,
      columnValues: columnValues(CampusExam.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusExam]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExam>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusExamUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusExamTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamTable>? orderBy,
    _is.OrderByListBuilder<CampusExamTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusExam>(
      columnValues: columnValues(CampusExam.t.updateTable),
      where: where(CampusExam.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusExam.t),
      orderByList: orderByList?.call(CampusExam.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusExam]s in the list and returns the deleted rows.
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
  Future<List<CampusExam>> delete(
    _is.DatabaseSession session,
    List<CampusExam> rows, {
    _is.OrderByBuilder<CampusExamTable>? orderBy,
    _is.OrderByListBuilder<CampusExamTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusExam>(
      rows,
      orderBy: orderBy?.call(CampusExam.t),
      orderByList: orderByList?.call(CampusExam.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusExam].
  Future<CampusExam> deleteRow(
    _is.DatabaseSession session,
    CampusExam row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusExam>(
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
  Future<List<CampusExam>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusExamTable> where,
    _is.OrderByBuilder<CampusExamTable>? orderBy,
    _is.OrderByListBuilder<CampusExamTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusExam>(
      where: where(CampusExam.t),
      orderBy: orderBy?.call(CampusExam.t),
      orderByList: orderByList?.call(CampusExam.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusExam>(
      where: where?.call(CampusExam.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusExam] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusExamTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusExam>(
      where: where(CampusExam.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
