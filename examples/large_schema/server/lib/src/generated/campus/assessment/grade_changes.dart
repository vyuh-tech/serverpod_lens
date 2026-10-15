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
abstract class CampusGradeChange
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusGradeChange._({
    this.id,
    required this.gradeId,
    required this.changedById,
    required this.previousScore,
    required this.nextScore,
    required this.reason,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGradeChange({
    _is.UuidValue? id,
    required _is.UuidValue gradeId,
    required _is.UuidValue changedById,
    required double previousScore,
    required double nextScore,
    required String reason,
    DateTime? createdAt,
  }) = _CampusGradeChangeImpl;

  factory CampusGradeChange.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusGradeChange(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      gradeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['gradeId'],
      ),
      changedById: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['changedById'],
      ),
      previousScore: (jsonSerialization['previousScore'] as num).toDouble(),
      nextScore: (jsonSerialization['nextScore'] as num).toDouble(),
      reason: jsonSerialization['reason'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusGradeChangeTable();

  static const db = CampusGradeChangeRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue gradeId;

  _is.UuidValue changedById;

  double previousScore;

  double nextScore;

  String reason;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusGradeChange]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusGradeChange copyWith({
    _is.UuidValue? id,
    _is.UuidValue? gradeId,
    _is.UuidValue? changedById,
    double? previousScore,
    double? nextScore,
    String? reason,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGradeChange',
      if (id != null) 'id': id?.toJson(),
      'gradeId': gradeId.toJson(),
      'changedById': changedById.toJson(),
      'previousScore': previousScore,
      'nextScore': nextScore,
      'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGradeChange',
      if (id != null) 'id': id?.toJson(),
      'gradeId': gradeId.toJson(),
      'changedById': changedById.toJson(),
      'previousScore': previousScore,
      'nextScore': nextScore,
      'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusGradeChangeInclude include() {
    return CampusGradeChangeInclude._();
  }

  static CampusGradeChangeIncludeList includeList({
    _is.WhereExpressionBuilder<CampusGradeChangeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGradeChangeTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeChangeTable>? orderByList,
    CampusGradeChangeInclude? include,
  }) {
    return CampusGradeChangeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGradeChange.t),
      orderByList: orderByList?.call(CampusGradeChange.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGradeChangeImpl extends CampusGradeChange {
  _CampusGradeChangeImpl({
    _is.UuidValue? id,
    required _is.UuidValue gradeId,
    required _is.UuidValue changedById,
    required double previousScore,
    required double nextScore,
    required String reason,
    DateTime? createdAt,
  }) : super._(
         id: id,
         gradeId: gradeId,
         changedById: changedById,
         previousScore: previousScore,
         nextScore: nextScore,
         reason: reason,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGradeChange]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusGradeChange copyWith({
    Object? id = _Undefined,
    _is.UuidValue? gradeId,
    _is.UuidValue? changedById,
    double? previousScore,
    double? nextScore,
    String? reason,
    DateTime? createdAt,
  }) {
    return CampusGradeChange(
      id: id is _is.UuidValue? ? id : this.id,
      gradeId: gradeId ?? this.gradeId,
      changedById: changedById ?? this.changedById,
      previousScore: previousScore ?? this.previousScore,
      nextScore: nextScore ?? this.nextScore,
      reason: reason ?? this.reason,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusGradeChangeUpdateTable
    extends _is.UpdateTable<CampusGradeChangeTable> {
  CampusGradeChangeUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> gradeId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.gradeId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> changedById(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.changedById,
    value,
  );

  _is.ColumnValue<double, double> previousScore(double value) =>
      _is.ColumnValue(
        table.previousScore,
        value,
      );

  _is.ColumnValue<double, double> nextScore(double value) => _is.ColumnValue(
    table.nextScore,
    value,
  );

  _is.ColumnValue<String, String> reason(String value) => _is.ColumnValue(
    table.reason,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusGradeChangeTable extends _is.Table<_is.UuidValue?> {
  CampusGradeChangeTable({super.tableRelation})
    : super(tableName: 'campus_grade_changes') {
    updateTable = CampusGradeChangeUpdateTable(this);
    gradeId = _is.ColumnUuid(
      'gradeId',
      this,
    );
    changedById = _is.ColumnUuid(
      'changedById',
      this,
    );
    previousScore = _is.ColumnDouble(
      'previousScore',
      this,
    );
    nextScore = _is.ColumnDouble(
      'nextScore',
      this,
    );
    reason = _is.ColumnString(
      'reason',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusGradeChangeUpdateTable updateTable;

  late final _is.ColumnUuid gradeId;

  late final _is.ColumnUuid changedById;

  late final _is.ColumnDouble previousScore;

  late final _is.ColumnDouble nextScore;

  late final _is.ColumnString reason;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    gradeId,
    changedById,
    previousScore,
    nextScore,
    reason,
    createdAt,
  ];
}

class CampusGradeChangeInclude extends _is.IncludeObject {
  CampusGradeChangeInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGradeChange.t;
}

class CampusGradeChangeIncludeList extends _is.IncludeList {
  CampusGradeChangeIncludeList._({
    _is.WhereExpressionBuilder<CampusGradeChangeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusGradeChange.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGradeChange.t;
}

class CampusGradeChangeRepository {
  const CampusGradeChangeRepository._();

  /// Returns a list of [CampusGradeChange]s matching the given query parameters.
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
  Future<List<CampusGradeChange>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGradeChangeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGradeChangeTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeChangeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusGradeChange>(
      where: where?.call(CampusGradeChange.t),
      orderBy: orderBy?.call(CampusGradeChange.t),
      orderByList: orderByList?.call(CampusGradeChange.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusGradeChange] matching the given query parameters.
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
  Future<CampusGradeChange?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGradeChangeTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusGradeChangeTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeChangeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusGradeChange>(
      where: where?.call(CampusGradeChange.t),
      orderBy: orderBy?.call(CampusGradeChange.t),
      orderByList: orderByList?.call(CampusGradeChange.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusGradeChange] by its [id] or null if no such row exists.
  Future<CampusGradeChange?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusGradeChange>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusGradeChange]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusGradeChange]s will have their `id` fields set.
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
  Future<List<CampusGradeChange>> insert(
    _is.DatabaseSession session,
    List<CampusGradeChange> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusGradeChange>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusGradeChange] and returns the inserted row.
  ///
  /// The returned [CampusGradeChange] will have its `id` field set.
  Future<CampusGradeChange> insertRow(
    _is.DatabaseSession session,
    CampusGradeChange row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusGradeChange>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusGradeChange]s in the list and returns the resulting rows.
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
  /// The returned [CampusGradeChange]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGradeChange>> upsert(
    _is.DatabaseSession session,
    List<CampusGradeChange> rows, {
    required _is.ColumnSelections<CampusGradeChangeTable> conflictColumns,
    _is.ColumnSelections<CampusGradeChangeTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGradeChangeTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusGradeChange>(
      rows,
      conflictColumns: conflictColumns(CampusGradeChange.t),
      updateColumns: updateColumns?.call(CampusGradeChange.t),
      updateWhere: updateWhere?.call(CampusGradeChange.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusGradeChange] and returns the resulting row.
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
  /// The returned [CampusGradeChange] will have its `id` field set.
  Future<CampusGradeChange?> upsertRow(
    _is.DatabaseSession session,
    CampusGradeChange row, {
    required _is.ColumnSelections<CampusGradeChangeTable> conflictColumns,
    _is.ColumnSelections<CampusGradeChangeTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGradeChangeTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusGradeChange>(
      row,
      conflictColumns: conflictColumns(CampusGradeChange.t),
      updateColumns: updateColumns?.call(CampusGradeChange.t),
      updateWhere: updateWhere?.call(CampusGradeChange.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGradeChange]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGradeChange>> update(
    _is.DatabaseSession session,
    List<CampusGradeChange> rows, {
    _is.ColumnSelections<CampusGradeChangeTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusGradeChange>(
      rows,
      columns: columns?.call(CampusGradeChange.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusGradeChange]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusGradeChange> updateRow(
    _is.DatabaseSession session,
    CampusGradeChange row, {
    _is.ColumnSelections<CampusGradeChangeTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusGradeChange>(
      row,
      columns: columns?.call(CampusGradeChange.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusGradeChange] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusGradeChange?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusGradeChangeUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusGradeChange>(
      id,
      columnValues: columnValues(CampusGradeChange.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGradeChange]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGradeChange>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusGradeChangeUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusGradeChangeTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGradeChangeTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeChangeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusGradeChange>(
      columnValues: columnValues(CampusGradeChange.t.updateTable),
      where: where(CampusGradeChange.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGradeChange.t),
      orderByList: orderByList?.call(CampusGradeChange.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusGradeChange]s in the list and returns the deleted rows.
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
  Future<List<CampusGradeChange>> delete(
    _is.DatabaseSession session,
    List<CampusGradeChange> rows, {
    _is.OrderByBuilder<CampusGradeChangeTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeChangeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusGradeChange>(
      rows,
      orderBy: orderBy?.call(CampusGradeChange.t),
      orderByList: orderByList?.call(CampusGradeChange.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusGradeChange].
  Future<CampusGradeChange> deleteRow(
    _is.DatabaseSession session,
    CampusGradeChange row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusGradeChange>(
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
  Future<List<CampusGradeChange>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGradeChangeTable> where,
    _is.OrderByBuilder<CampusGradeChangeTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeChangeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusGradeChange>(
      where: where(CampusGradeChange.t),
      orderBy: orderBy?.call(CampusGradeChange.t),
      orderByList: orderByList?.call(CampusGradeChange.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGradeChangeTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusGradeChange>(
      where: where?.call(CampusGradeChange.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusGradeChange] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGradeChangeTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusGradeChange>(
      where: where(CampusGradeChange.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
