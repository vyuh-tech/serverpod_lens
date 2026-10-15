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
abstract class CampusAppeal
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusAppeal._({
    this.id,
    required this.studentId,
    required this.gradeId,
    required this.reason,
    required this.status,
    this.reviewedById,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAppeal({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue gradeId,
    required String reason,
    required String status,
    _is.UuidValue? reviewedById,
    DateTime? createdAt,
  }) = _CampusAppealImpl;

  factory CampusAppeal.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusAppeal(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      gradeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['gradeId'],
      ),
      reason: jsonSerialization['reason'] as String,
      status: jsonSerialization['status'] as String,
      reviewedById: jsonSerialization['reviewedById'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['reviewedById'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusAppealTable();

  static const db = CampusAppealRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  _is.UuidValue gradeId;

  String reason;

  String status;

  _is.UuidValue? reviewedById;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusAppeal]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusAppeal copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    _is.UuidValue? gradeId,
    String? reason,
    String? status,
    _is.UuidValue? reviewedById,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAppeal',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'gradeId': gradeId.toJson(),
      'reason': reason,
      'status': status,
      if (reviewedById != null) 'reviewedById': reviewedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAppeal',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'gradeId': gradeId.toJson(),
      'reason': reason,
      'status': status,
      if (reviewedById != null) 'reviewedById': reviewedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusAppealInclude include() {
    return CampusAppealInclude._();
  }

  static CampusAppealIncludeList includeList({
    _is.WhereExpressionBuilder<CampusAppealTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAppealTable>? orderBy,
    _is.OrderByListBuilder<CampusAppealTable>? orderByList,
    CampusAppealInclude? include,
  }) {
    return CampusAppealIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAppeal.t),
      orderByList: orderByList?.call(CampusAppeal.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAppealImpl extends CampusAppeal {
  _CampusAppealImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue gradeId,
    required String reason,
    required String status,
    _is.UuidValue? reviewedById,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         gradeId: gradeId,
         reason: reason,
         status: status,
         reviewedById: reviewedById,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAppeal]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusAppeal copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    _is.UuidValue? gradeId,
    String? reason,
    String? status,
    Object? reviewedById = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusAppeal(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      gradeId: gradeId ?? this.gradeId,
      reason: reason ?? this.reason,
      status: status ?? this.status,
      reviewedById: reviewedById is _is.UuidValue?
          ? reviewedById
          : this.reviewedById,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusAppealUpdateTable extends _is.UpdateTable<CampusAppealTable> {
  CampusAppealUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> gradeId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.gradeId,
        value,
      );

  _is.ColumnValue<String, String> reason(String value) => _is.ColumnValue(
    table.reason,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> reviewedById(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.reviewedById,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusAppealTable extends _is.Table<_is.UuidValue?> {
  CampusAppealTable({super.tableRelation})
    : super(tableName: 'campus_appeals') {
    updateTable = CampusAppealUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    gradeId = _is.ColumnUuid(
      'gradeId',
      this,
    );
    reason = _is.ColumnString(
      'reason',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    reviewedById = _is.ColumnUuid(
      'reviewedById',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusAppealUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid gradeId;

  late final _is.ColumnString reason;

  late final _is.ColumnString status;

  late final _is.ColumnUuid reviewedById;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    gradeId,
    reason,
    status,
    reviewedById,
    createdAt,
  ];
}

class CampusAppealInclude extends _is.IncludeObject {
  CampusAppealInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAppeal.t;
}

class CampusAppealIncludeList extends _is.IncludeList {
  CampusAppealIncludeList._({
    _is.WhereExpressionBuilder<CampusAppealTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusAppeal.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAppeal.t;
}

class CampusAppealRepository {
  const CampusAppealRepository._();

  /// Returns a list of [CampusAppeal]s matching the given query parameters.
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
  Future<List<CampusAppeal>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAppealTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAppealTable>? orderBy,
    _is.OrderByListBuilder<CampusAppealTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusAppeal>(
      where: where?.call(CampusAppeal.t),
      orderBy: orderBy?.call(CampusAppeal.t),
      orderByList: orderByList?.call(CampusAppeal.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusAppeal] matching the given query parameters.
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
  Future<CampusAppeal?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAppealTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusAppealTable>? orderBy,
    _is.OrderByListBuilder<CampusAppealTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusAppeal>(
      where: where?.call(CampusAppeal.t),
      orderBy: orderBy?.call(CampusAppeal.t),
      orderByList: orderByList?.call(CampusAppeal.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusAppeal] by its [id] or null if no such row exists.
  Future<CampusAppeal?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusAppeal>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusAppeal]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusAppeal]s will have their `id` fields set.
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
  Future<List<CampusAppeal>> insert(
    _is.DatabaseSession session,
    List<CampusAppeal> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusAppeal>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusAppeal] and returns the inserted row.
  ///
  /// The returned [CampusAppeal] will have its `id` field set.
  Future<CampusAppeal> insertRow(
    _is.DatabaseSession session,
    CampusAppeal row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusAppeal>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusAppeal]s in the list and returns the resulting rows.
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
  /// The returned [CampusAppeal]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAppeal>> upsert(
    _is.DatabaseSession session,
    List<CampusAppeal> rows, {
    required _is.ColumnSelections<CampusAppealTable> conflictColumns,
    _is.ColumnSelections<CampusAppealTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAppealTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusAppeal>(
      rows,
      conflictColumns: conflictColumns(CampusAppeal.t),
      updateColumns: updateColumns?.call(CampusAppeal.t),
      updateWhere: updateWhere?.call(CampusAppeal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusAppeal] and returns the resulting row.
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
  /// The returned [CampusAppeal] will have its `id` field set.
  Future<CampusAppeal?> upsertRow(
    _is.DatabaseSession session,
    CampusAppeal row, {
    required _is.ColumnSelections<CampusAppealTable> conflictColumns,
    _is.ColumnSelections<CampusAppealTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAppealTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusAppeal>(
      row,
      conflictColumns: conflictColumns(CampusAppeal.t),
      updateColumns: updateColumns?.call(CampusAppeal.t),
      updateWhere: updateWhere?.call(CampusAppeal.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAppeal]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAppeal>> update(
    _is.DatabaseSession session,
    List<CampusAppeal> rows, {
    _is.ColumnSelections<CampusAppealTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusAppeal>(
      rows,
      columns: columns?.call(CampusAppeal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusAppeal]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusAppeal> updateRow(
    _is.DatabaseSession session,
    CampusAppeal row, {
    _is.ColumnSelections<CampusAppealTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusAppeal>(
      row,
      columns: columns?.call(CampusAppeal.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusAppeal] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusAppeal?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusAppealUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusAppeal>(
      id,
      columnValues: columnValues(CampusAppeal.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAppeal]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAppeal>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusAppealUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusAppealTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAppealTable>? orderBy,
    _is.OrderByListBuilder<CampusAppealTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusAppeal>(
      columnValues: columnValues(CampusAppeal.t.updateTable),
      where: where(CampusAppeal.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAppeal.t),
      orderByList: orderByList?.call(CampusAppeal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusAppeal]s in the list and returns the deleted rows.
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
  Future<List<CampusAppeal>> delete(
    _is.DatabaseSession session,
    List<CampusAppeal> rows, {
    _is.OrderByBuilder<CampusAppealTable>? orderBy,
    _is.OrderByListBuilder<CampusAppealTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusAppeal>(
      rows,
      orderBy: orderBy?.call(CampusAppeal.t),
      orderByList: orderByList?.call(CampusAppeal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusAppeal].
  Future<CampusAppeal> deleteRow(
    _is.DatabaseSession session,
    CampusAppeal row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusAppeal>(
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
  Future<List<CampusAppeal>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAppealTable> where,
    _is.OrderByBuilder<CampusAppealTable>? orderBy,
    _is.OrderByListBuilder<CampusAppealTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusAppeal>(
      where: where(CampusAppeal.t),
      orderBy: orderBy?.call(CampusAppeal.t),
      orderByList: orderByList?.call(CampusAppeal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAppealTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusAppeal>(
      where: where?.call(CampusAppeal.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusAppeal] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAppealTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusAppeal>(
      where: where(CampusAppeal.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
