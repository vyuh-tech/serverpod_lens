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
abstract class CampusAssessment
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusAssessment._({
    this.id,
    required this.sectionId,
    required this.title,
    required this.dueAt,
    required this.maximumScore,
    required this.weightPercent,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAssessment({
    _is.UuidValue? id,
    required _is.UuidValue sectionId,
    required String title,
    required DateTime dueAt,
    required double maximumScore,
    required double weightPercent,
    DateTime? createdAt,
  }) = _CampusAssessmentImpl;

  factory CampusAssessment.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusAssessment(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sectionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      title: jsonSerialization['title'] as String,
      dueAt: _is.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
      maximumScore: (jsonSerialization['maximumScore'] as num).toDouble(),
      weightPercent: (jsonSerialization['weightPercent'] as num).toDouble(),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusAssessmentTable();

  static const db = CampusAssessmentRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue sectionId;

  String title;

  DateTime dueAt;

  double maximumScore;

  double weightPercent;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusAssessment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusAssessment copyWith({
    _is.UuidValue? id,
    _is.UuidValue? sectionId,
    String? title,
    DateTime? dueAt,
    double? maximumScore,
    double? weightPercent,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAssessment',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'title': title,
      'dueAt': dueAt.toJson(),
      'maximumScore': maximumScore,
      'weightPercent': weightPercent,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAssessment',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'title': title,
      'dueAt': dueAt.toJson(),
      'maximumScore': maximumScore,
      'weightPercent': weightPercent,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusAssessmentInclude include() {
    return CampusAssessmentInclude._();
  }

  static CampusAssessmentIncludeList includeList({
    _is.WhereExpressionBuilder<CampusAssessmentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAssessmentTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentTable>? orderByList,
    CampusAssessmentInclude? include,
  }) {
    return CampusAssessmentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAssessment.t),
      orderByList: orderByList?.call(CampusAssessment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAssessmentImpl extends CampusAssessment {
  _CampusAssessmentImpl({
    _is.UuidValue? id,
    required _is.UuidValue sectionId,
    required String title,
    required DateTime dueAt,
    required double maximumScore,
    required double weightPercent,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sectionId: sectionId,
         title: title,
         dueAt: dueAt,
         maximumScore: maximumScore,
         weightPercent: weightPercent,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAssessment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusAssessment copyWith({
    Object? id = _Undefined,
    _is.UuidValue? sectionId,
    String? title,
    DateTime? dueAt,
    double? maximumScore,
    double? weightPercent,
    DateTime? createdAt,
  }) {
    return CampusAssessment(
      id: id is _is.UuidValue? ? id : this.id,
      sectionId: sectionId ?? this.sectionId,
      title: title ?? this.title,
      dueAt: dueAt ?? this.dueAt,
      maximumScore: maximumScore ?? this.maximumScore,
      weightPercent: weightPercent ?? this.weightPercent,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusAssessmentUpdateTable
    extends _is.UpdateTable<CampusAssessmentTable> {
  CampusAssessmentUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> sectionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.sectionId,
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

  _is.ColumnValue<double, double> maximumScore(double value) => _is.ColumnValue(
    table.maximumScore,
    value,
  );

  _is.ColumnValue<double, double> weightPercent(double value) =>
      _is.ColumnValue(
        table.weightPercent,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusAssessmentTable extends _is.Table<_is.UuidValue?> {
  CampusAssessmentTable({super.tableRelation})
    : super(tableName: 'campus_assessments') {
    updateTable = CampusAssessmentUpdateTable(this);
    sectionId = _is.ColumnUuid(
      'sectionId',
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
    maximumScore = _is.ColumnDouble(
      'maximumScore',
      this,
    );
    weightPercent = _is.ColumnDouble(
      'weightPercent',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusAssessmentUpdateTable updateTable;

  late final _is.ColumnUuid sectionId;

  late final _is.ColumnString title;

  late final _is.ColumnDateTime dueAt;

  late final _is.ColumnDouble maximumScore;

  late final _is.ColumnDouble weightPercent;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    sectionId,
    title,
    dueAt,
    maximumScore,
    weightPercent,
    createdAt,
  ];
}

class CampusAssessmentInclude extends _is.IncludeObject {
  CampusAssessmentInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAssessment.t;
}

class CampusAssessmentIncludeList extends _is.IncludeList {
  CampusAssessmentIncludeList._({
    _is.WhereExpressionBuilder<CampusAssessmentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusAssessment.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAssessment.t;
}

class CampusAssessmentRepository {
  const CampusAssessmentRepository._();

  /// Returns a list of [CampusAssessment]s matching the given query parameters.
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
  Future<List<CampusAssessment>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAssessmentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAssessmentTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusAssessment>(
      where: where?.call(CampusAssessment.t),
      orderBy: orderBy?.call(CampusAssessment.t),
      orderByList: orderByList?.call(CampusAssessment.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusAssessment] matching the given query parameters.
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
  Future<CampusAssessment?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAssessmentTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusAssessmentTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusAssessment>(
      where: where?.call(CampusAssessment.t),
      orderBy: orderBy?.call(CampusAssessment.t),
      orderByList: orderByList?.call(CampusAssessment.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusAssessment] by its [id] or null if no such row exists.
  Future<CampusAssessment?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusAssessment>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusAssessment]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusAssessment]s will have their `id` fields set.
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
  Future<List<CampusAssessment>> insert(
    _is.DatabaseSession session,
    List<CampusAssessment> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusAssessment>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusAssessment] and returns the inserted row.
  ///
  /// The returned [CampusAssessment] will have its `id` field set.
  Future<CampusAssessment> insertRow(
    _is.DatabaseSession session,
    CampusAssessment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusAssessment>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusAssessment]s in the list and returns the resulting rows.
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
  /// The returned [CampusAssessment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAssessment>> upsert(
    _is.DatabaseSession session,
    List<CampusAssessment> rows, {
    required _is.ColumnSelections<CampusAssessmentTable> conflictColumns,
    _is.ColumnSelections<CampusAssessmentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAssessmentTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusAssessment>(
      rows,
      conflictColumns: conflictColumns(CampusAssessment.t),
      updateColumns: updateColumns?.call(CampusAssessment.t),
      updateWhere: updateWhere?.call(CampusAssessment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusAssessment] and returns the resulting row.
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
  /// The returned [CampusAssessment] will have its `id` field set.
  Future<CampusAssessment?> upsertRow(
    _is.DatabaseSession session,
    CampusAssessment row, {
    required _is.ColumnSelections<CampusAssessmentTable> conflictColumns,
    _is.ColumnSelections<CampusAssessmentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAssessmentTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusAssessment>(
      row,
      conflictColumns: conflictColumns(CampusAssessment.t),
      updateColumns: updateColumns?.call(CampusAssessment.t),
      updateWhere: updateWhere?.call(CampusAssessment.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAssessment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAssessment>> update(
    _is.DatabaseSession session,
    List<CampusAssessment> rows, {
    _is.ColumnSelections<CampusAssessmentTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusAssessment>(
      rows,
      columns: columns?.call(CampusAssessment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusAssessment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusAssessment> updateRow(
    _is.DatabaseSession session,
    CampusAssessment row, {
    _is.ColumnSelections<CampusAssessmentTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusAssessment>(
      row,
      columns: columns?.call(CampusAssessment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusAssessment] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusAssessment?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusAssessmentUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusAssessment>(
      id,
      columnValues: columnValues(CampusAssessment.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAssessment]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAssessment>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusAssessmentUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusAssessmentTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAssessmentTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusAssessment>(
      columnValues: columnValues(CampusAssessment.t.updateTable),
      where: where(CampusAssessment.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAssessment.t),
      orderByList: orderByList?.call(CampusAssessment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusAssessment]s in the list and returns the deleted rows.
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
  Future<List<CampusAssessment>> delete(
    _is.DatabaseSession session,
    List<CampusAssessment> rows, {
    _is.OrderByBuilder<CampusAssessmentTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusAssessment>(
      rows,
      orderBy: orderBy?.call(CampusAssessment.t),
      orderByList: orderByList?.call(CampusAssessment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusAssessment].
  Future<CampusAssessment> deleteRow(
    _is.DatabaseSession session,
    CampusAssessment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusAssessment>(
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
  Future<List<CampusAssessment>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAssessmentTable> where,
    _is.OrderByBuilder<CampusAssessmentTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusAssessment>(
      where: where(CampusAssessment.t),
      orderBy: orderBy?.call(CampusAssessment.t),
      orderByList: orderByList?.call(CampusAssessment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAssessmentTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusAssessment>(
      where: where?.call(CampusAssessment.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusAssessment] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAssessmentTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusAssessment>(
      where: where(CampusAssessment.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
