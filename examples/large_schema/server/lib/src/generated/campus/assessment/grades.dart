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
abstract class CampusGrade
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusGrade._({
    this.id,
    required this.submissionId,
    required this.markerId,
    this.gradeScaleId,
    required this.score,
    this.feedback,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGrade({
    _is.UuidValue? id,
    required _is.UuidValue submissionId,
    required _is.UuidValue markerId,
    _is.UuidValue? gradeScaleId,
    required double score,
    String? feedback,
    DateTime? createdAt,
  }) = _CampusGradeImpl;

  factory CampusGrade.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusGrade(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      submissionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['submissionId'],
      ),
      markerId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['markerId'],
      ),
      gradeScaleId: jsonSerialization['gradeScaleId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['gradeScaleId'],
            ),
      score: (jsonSerialization['score'] as num).toDouble(),
      feedback: jsonSerialization['feedback'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusGradeTable();

  static const db = CampusGradeRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue submissionId;

  _is.UuidValue markerId;

  _is.UuidValue? gradeScaleId;

  double score;

  String? feedback;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusGrade]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusGrade copyWith({
    _is.UuidValue? id,
    _is.UuidValue? submissionId,
    _is.UuidValue? markerId,
    _is.UuidValue? gradeScaleId,
    double? score,
    String? feedback,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGrade',
      if (id != null) 'id': id?.toJson(),
      'submissionId': submissionId.toJson(),
      'markerId': markerId.toJson(),
      if (gradeScaleId != null) 'gradeScaleId': gradeScaleId?.toJson(),
      'score': score,
      if (feedback != null) 'feedback': feedback,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGrade',
      if (id != null) 'id': id?.toJson(),
      'submissionId': submissionId.toJson(),
      'markerId': markerId.toJson(),
      if (gradeScaleId != null) 'gradeScaleId': gradeScaleId?.toJson(),
      'score': score,
      if (feedback != null) 'feedback': feedback,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusGradeInclude include() {
    return CampusGradeInclude._();
  }

  static CampusGradeIncludeList includeList({
    _is.WhereExpressionBuilder<CampusGradeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGradeTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeTable>? orderByList,
    CampusGradeInclude? include,
  }) {
    return CampusGradeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGrade.t),
      orderByList: orderByList?.call(CampusGrade.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGradeImpl extends CampusGrade {
  _CampusGradeImpl({
    _is.UuidValue? id,
    required _is.UuidValue submissionId,
    required _is.UuidValue markerId,
    _is.UuidValue? gradeScaleId,
    required double score,
    String? feedback,
    DateTime? createdAt,
  }) : super._(
         id: id,
         submissionId: submissionId,
         markerId: markerId,
         gradeScaleId: gradeScaleId,
         score: score,
         feedback: feedback,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGrade]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusGrade copyWith({
    Object? id = _Undefined,
    _is.UuidValue? submissionId,
    _is.UuidValue? markerId,
    Object? gradeScaleId = _Undefined,
    double? score,
    Object? feedback = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusGrade(
      id: id is _is.UuidValue? ? id : this.id,
      submissionId: submissionId ?? this.submissionId,
      markerId: markerId ?? this.markerId,
      gradeScaleId: gradeScaleId is _is.UuidValue?
          ? gradeScaleId
          : this.gradeScaleId,
      score: score ?? this.score,
      feedback: feedback is String? ? feedback : this.feedback,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusGradeUpdateTable extends _is.UpdateTable<CampusGradeTable> {
  CampusGradeUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> submissionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.submissionId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> markerId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.markerId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> gradeScaleId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.gradeScaleId,
    value,
  );

  _is.ColumnValue<double, double> score(double value) => _is.ColumnValue(
    table.score,
    value,
  );

  _is.ColumnValue<String, String> feedback(String? value) => _is.ColumnValue(
    table.feedback,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusGradeTable extends _is.Table<_is.UuidValue?> {
  CampusGradeTable({super.tableRelation}) : super(tableName: 'campus_grades') {
    updateTable = CampusGradeUpdateTable(this);
    submissionId = _is.ColumnUuid(
      'submissionId',
      this,
    );
    markerId = _is.ColumnUuid(
      'markerId',
      this,
    );
    gradeScaleId = _is.ColumnUuid(
      'gradeScaleId',
      this,
    );
    score = _is.ColumnDouble(
      'score',
      this,
    );
    feedback = _is.ColumnString(
      'feedback',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusGradeUpdateTable updateTable;

  late final _is.ColumnUuid submissionId;

  late final _is.ColumnUuid markerId;

  late final _is.ColumnUuid gradeScaleId;

  late final _is.ColumnDouble score;

  late final _is.ColumnString feedback;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    submissionId,
    markerId,
    gradeScaleId,
    score,
    feedback,
    createdAt,
  ];
}

class CampusGradeInclude extends _is.IncludeObject {
  CampusGradeInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGrade.t;
}

class CampusGradeIncludeList extends _is.IncludeList {
  CampusGradeIncludeList._({
    _is.WhereExpressionBuilder<CampusGradeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusGrade.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGrade.t;
}

class CampusGradeRepository {
  const CampusGradeRepository._();

  /// Returns a list of [CampusGrade]s matching the given query parameters.
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
  Future<List<CampusGrade>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGradeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGradeTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusGrade>(
      where: where?.call(CampusGrade.t),
      orderBy: orderBy?.call(CampusGrade.t),
      orderByList: orderByList?.call(CampusGrade.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusGrade] matching the given query parameters.
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
  Future<CampusGrade?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGradeTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusGradeTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusGrade>(
      where: where?.call(CampusGrade.t),
      orderBy: orderBy?.call(CampusGrade.t),
      orderByList: orderByList?.call(CampusGrade.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusGrade] by its [id] or null if no such row exists.
  Future<CampusGrade?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusGrade>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusGrade]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusGrade]s will have their `id` fields set.
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
  Future<List<CampusGrade>> insert(
    _is.DatabaseSession session,
    List<CampusGrade> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusGrade>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusGrade] and returns the inserted row.
  ///
  /// The returned [CampusGrade] will have its `id` field set.
  Future<CampusGrade> insertRow(
    _is.DatabaseSession session,
    CampusGrade row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusGrade>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusGrade]s in the list and returns the resulting rows.
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
  /// The returned [CampusGrade]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGrade>> upsert(
    _is.DatabaseSession session,
    List<CampusGrade> rows, {
    required _is.ColumnSelections<CampusGradeTable> conflictColumns,
    _is.ColumnSelections<CampusGradeTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGradeTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusGrade>(
      rows,
      conflictColumns: conflictColumns(CampusGrade.t),
      updateColumns: updateColumns?.call(CampusGrade.t),
      updateWhere: updateWhere?.call(CampusGrade.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusGrade] and returns the resulting row.
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
  /// The returned [CampusGrade] will have its `id` field set.
  Future<CampusGrade?> upsertRow(
    _is.DatabaseSession session,
    CampusGrade row, {
    required _is.ColumnSelections<CampusGradeTable> conflictColumns,
    _is.ColumnSelections<CampusGradeTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGradeTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusGrade>(
      row,
      conflictColumns: conflictColumns(CampusGrade.t),
      updateColumns: updateColumns?.call(CampusGrade.t),
      updateWhere: updateWhere?.call(CampusGrade.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGrade]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGrade>> update(
    _is.DatabaseSession session,
    List<CampusGrade> rows, {
    _is.ColumnSelections<CampusGradeTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusGrade>(
      rows,
      columns: columns?.call(CampusGrade.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusGrade]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusGrade> updateRow(
    _is.DatabaseSession session,
    CampusGrade row, {
    _is.ColumnSelections<CampusGradeTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusGrade>(
      row,
      columns: columns?.call(CampusGrade.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusGrade] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusGrade?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusGradeUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusGrade>(
      id,
      columnValues: columnValues(CampusGrade.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGrade]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGrade>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusGradeUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusGradeTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGradeTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusGrade>(
      columnValues: columnValues(CampusGrade.t.updateTable),
      where: where(CampusGrade.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGrade.t),
      orderByList: orderByList?.call(CampusGrade.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusGrade]s in the list and returns the deleted rows.
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
  Future<List<CampusGrade>> delete(
    _is.DatabaseSession session,
    List<CampusGrade> rows, {
    _is.OrderByBuilder<CampusGradeTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusGrade>(
      rows,
      orderBy: orderBy?.call(CampusGrade.t),
      orderByList: orderByList?.call(CampusGrade.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusGrade].
  Future<CampusGrade> deleteRow(
    _is.DatabaseSession session,
    CampusGrade row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusGrade>(
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
  Future<List<CampusGrade>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGradeTable> where,
    _is.OrderByBuilder<CampusGradeTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusGrade>(
      where: where(CampusGrade.t),
      orderBy: orderBy?.call(CampusGrade.t),
      orderByList: orderByList?.call(CampusGrade.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGradeTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusGrade>(
      where: where?.call(CampusGrade.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusGrade] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGradeTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusGrade>(
      where: where(CampusGrade.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
