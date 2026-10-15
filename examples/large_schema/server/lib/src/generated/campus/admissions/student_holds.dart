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

/// Fictional university fixture: admissions.
abstract class CampusStudentHold
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusStudentHold._({
    this.id,
    required this.studentId,
    required this.reason,
    required this.blocksEnrolment,
    this.releasedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentHold({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required String reason,
    required bool blocksEnrolment,
    DateTime? releasedAt,
    DateTime? createdAt,
  }) = _CampusStudentHoldImpl;

  factory CampusStudentHold.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusStudentHold(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      reason: jsonSerialization['reason'] as String,
      blocksEnrolment: _is.BoolJsonExtension.fromJson(
        jsonSerialization['blocksEnrolment'],
      ),
      releasedAt: jsonSerialization['releasedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['releasedAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusStudentHoldTable();

  static const db = CampusStudentHoldRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  String reason;

  bool blocksEnrolment;

  DateTime? releasedAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusStudentHold]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusStudentHold copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    String? reason,
    bool? blocksEnrolment,
    DateTime? releasedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentHold',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'reason': reason,
      'blocksEnrolment': blocksEnrolment,
      if (releasedAt != null) 'releasedAt': releasedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentHold',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'reason': reason,
      'blocksEnrolment': blocksEnrolment,
      if (releasedAt != null) 'releasedAt': releasedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusStudentHoldInclude include() {
    return CampusStudentHoldInclude._();
  }

  static CampusStudentHoldIncludeList includeList({
    _is.WhereExpressionBuilder<CampusStudentHoldTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentHoldTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentHoldTable>? orderByList,
    CampusStudentHoldInclude? include,
  }) {
    return CampusStudentHoldIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentHold.t),
      orderByList: orderByList?.call(CampusStudentHold.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentHoldImpl extends CampusStudentHold {
  _CampusStudentHoldImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required String reason,
    required bool blocksEnrolment,
    DateTime? releasedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         reason: reason,
         blocksEnrolment: blocksEnrolment,
         releasedAt: releasedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentHold]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusStudentHold copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    String? reason,
    bool? blocksEnrolment,
    Object? releasedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusStudentHold(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      reason: reason ?? this.reason,
      blocksEnrolment: blocksEnrolment ?? this.blocksEnrolment,
      releasedAt: releasedAt is DateTime? ? releasedAt : this.releasedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusStudentHoldUpdateTable
    extends _is.UpdateTable<CampusStudentHoldTable> {
  CampusStudentHoldUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<String, String> reason(String value) => _is.ColumnValue(
    table.reason,
    value,
  );

  _is.ColumnValue<bool, bool> blocksEnrolment(bool value) => _is.ColumnValue(
    table.blocksEnrolment,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> releasedAt(DateTime? value) =>
      _is.ColumnValue(
        table.releasedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusStudentHoldTable extends _is.Table<_is.UuidValue?> {
  CampusStudentHoldTable({super.tableRelation})
    : super(tableName: 'campus_student_holds') {
    updateTable = CampusStudentHoldUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    reason = _is.ColumnString(
      'reason',
      this,
    );
    blocksEnrolment = _is.ColumnBool(
      'blocksEnrolment',
      this,
    );
    releasedAt = _is.ColumnDateTime(
      'releasedAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusStudentHoldUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnString reason;

  late final _is.ColumnBool blocksEnrolment;

  late final _is.ColumnDateTime releasedAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    reason,
    blocksEnrolment,
    releasedAt,
    createdAt,
  ];
}

class CampusStudentHoldInclude extends _is.IncludeObject {
  CampusStudentHoldInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentHold.t;
}

class CampusStudentHoldIncludeList extends _is.IncludeList {
  CampusStudentHoldIncludeList._({
    _is.WhereExpressionBuilder<CampusStudentHoldTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusStudentHold.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentHold.t;
}

class CampusStudentHoldRepository {
  const CampusStudentHoldRepository._();

  /// Returns a list of [CampusStudentHold]s matching the given query parameters.
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
  Future<List<CampusStudentHold>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentHoldTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentHoldTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentHoldTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusStudentHold>(
      where: where?.call(CampusStudentHold.t),
      orderBy: orderBy?.call(CampusStudentHold.t),
      orderByList: orderByList?.call(CampusStudentHold.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusStudentHold] matching the given query parameters.
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
  Future<CampusStudentHold?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentHoldTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusStudentHoldTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentHoldTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusStudentHold>(
      where: where?.call(CampusStudentHold.t),
      orderBy: orderBy?.call(CampusStudentHold.t),
      orderByList: orderByList?.call(CampusStudentHold.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusStudentHold] by its [id] or null if no such row exists.
  Future<CampusStudentHold?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusStudentHold>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusStudentHold]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusStudentHold]s will have their `id` fields set.
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
  Future<List<CampusStudentHold>> insert(
    _is.DatabaseSession session,
    List<CampusStudentHold> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusStudentHold>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusStudentHold] and returns the inserted row.
  ///
  /// The returned [CampusStudentHold] will have its `id` field set.
  Future<CampusStudentHold> insertRow(
    _is.DatabaseSession session,
    CampusStudentHold row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusStudentHold>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusStudentHold]s in the list and returns the resulting rows.
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
  /// The returned [CampusStudentHold]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentHold>> upsert(
    _is.DatabaseSession session,
    List<CampusStudentHold> rows, {
    required _is.ColumnSelections<CampusStudentHoldTable> conflictColumns,
    _is.ColumnSelections<CampusStudentHoldTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentHoldTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusStudentHold>(
      rows,
      conflictColumns: conflictColumns(CampusStudentHold.t),
      updateColumns: updateColumns?.call(CampusStudentHold.t),
      updateWhere: updateWhere?.call(CampusStudentHold.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusStudentHold] and returns the resulting row.
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
  /// The returned [CampusStudentHold] will have its `id` field set.
  Future<CampusStudentHold?> upsertRow(
    _is.DatabaseSession session,
    CampusStudentHold row, {
    required _is.ColumnSelections<CampusStudentHoldTable> conflictColumns,
    _is.ColumnSelections<CampusStudentHoldTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentHoldTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusStudentHold>(
      row,
      conflictColumns: conflictColumns(CampusStudentHold.t),
      updateColumns: updateColumns?.call(CampusStudentHold.t),
      updateWhere: updateWhere?.call(CampusStudentHold.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentHold]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentHold>> update(
    _is.DatabaseSession session,
    List<CampusStudentHold> rows, {
    _is.ColumnSelections<CampusStudentHoldTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusStudentHold>(
      rows,
      columns: columns?.call(CampusStudentHold.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusStudentHold]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusStudentHold> updateRow(
    _is.DatabaseSession session,
    CampusStudentHold row, {
    _is.ColumnSelections<CampusStudentHoldTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusStudentHold>(
      row,
      columns: columns?.call(CampusStudentHold.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusStudentHold] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusStudentHold?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusStudentHoldUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusStudentHold>(
      id,
      columnValues: columnValues(CampusStudentHold.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentHold]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentHold>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusStudentHoldUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusStudentHoldTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentHoldTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentHoldTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusStudentHold>(
      columnValues: columnValues(CampusStudentHold.t.updateTable),
      where: where(CampusStudentHold.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentHold.t),
      orderByList: orderByList?.call(CampusStudentHold.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusStudentHold]s in the list and returns the deleted rows.
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
  Future<List<CampusStudentHold>> delete(
    _is.DatabaseSession session,
    List<CampusStudentHold> rows, {
    _is.OrderByBuilder<CampusStudentHoldTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentHoldTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusStudentHold>(
      rows,
      orderBy: orderBy?.call(CampusStudentHold.t),
      orderByList: orderByList?.call(CampusStudentHold.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusStudentHold].
  Future<CampusStudentHold> deleteRow(
    _is.DatabaseSession session,
    CampusStudentHold row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusStudentHold>(
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
  Future<List<CampusStudentHold>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentHoldTable> where,
    _is.OrderByBuilder<CampusStudentHoldTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentHoldTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusStudentHold>(
      where: where(CampusStudentHold.t),
      orderBy: orderBy?.call(CampusStudentHold.t),
      orderByList: orderByList?.call(CampusStudentHold.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentHoldTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusStudentHold>(
      where: where?.call(CampusStudentHold.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusStudentHold] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentHoldTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusStudentHold>(
      where: where(CampusStudentHold.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
