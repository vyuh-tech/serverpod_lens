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
abstract class CampusWithdrawal
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusWithdrawal._({
    this.id,
    required this.enrolmentId,
    required this.requestedAt,
    required this.reason,
    this.approvedById,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusWithdrawal({
    _is.UuidValue? id,
    required _is.UuidValue enrolmentId,
    required DateTime requestedAt,
    required String reason,
    _is.UuidValue? approvedById,
    DateTime? createdAt,
  }) = _CampusWithdrawalImpl;

  factory CampusWithdrawal.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusWithdrawal(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      enrolmentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['enrolmentId'],
      ),
      requestedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['requestedAt'],
      ),
      reason: jsonSerialization['reason'] as String,
      approvedById: jsonSerialization['approvedById'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['approvedById'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusWithdrawalTable();

  static const db = CampusWithdrawalRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue enrolmentId;

  DateTime requestedAt;

  String reason;

  _is.UuidValue? approvedById;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusWithdrawal]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusWithdrawal copyWith({
    _is.UuidValue? id,
    _is.UuidValue? enrolmentId,
    DateTime? requestedAt,
    String? reason,
    _is.UuidValue? approvedById,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusWithdrawal',
      if (id != null) 'id': id?.toJson(),
      'enrolmentId': enrolmentId.toJson(),
      'requestedAt': requestedAt.toJson(),
      'reason': reason,
      if (approvedById != null) 'approvedById': approvedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusWithdrawal',
      if (id != null) 'id': id?.toJson(),
      'enrolmentId': enrolmentId.toJson(),
      'requestedAt': requestedAt.toJson(),
      'reason': reason,
      if (approvedById != null) 'approvedById': approvedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusWithdrawalInclude include() {
    return CampusWithdrawalInclude._();
  }

  static CampusWithdrawalIncludeList includeList({
    _is.WhereExpressionBuilder<CampusWithdrawalTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusWithdrawalTable>? orderBy,
    _is.OrderByListBuilder<CampusWithdrawalTable>? orderByList,
    CampusWithdrawalInclude? include,
  }) {
    return CampusWithdrawalIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusWithdrawal.t),
      orderByList: orderByList?.call(CampusWithdrawal.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusWithdrawalImpl extends CampusWithdrawal {
  _CampusWithdrawalImpl({
    _is.UuidValue? id,
    required _is.UuidValue enrolmentId,
    required DateTime requestedAt,
    required String reason,
    _is.UuidValue? approvedById,
    DateTime? createdAt,
  }) : super._(
         id: id,
         enrolmentId: enrolmentId,
         requestedAt: requestedAt,
         reason: reason,
         approvedById: approvedById,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusWithdrawal]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusWithdrawal copyWith({
    Object? id = _Undefined,
    _is.UuidValue? enrolmentId,
    DateTime? requestedAt,
    String? reason,
    Object? approvedById = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusWithdrawal(
      id: id is _is.UuidValue? ? id : this.id,
      enrolmentId: enrolmentId ?? this.enrolmentId,
      requestedAt: requestedAt ?? this.requestedAt,
      reason: reason ?? this.reason,
      approvedById: approvedById is _is.UuidValue?
          ? approvedById
          : this.approvedById,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusWithdrawalUpdateTable
    extends _is.UpdateTable<CampusWithdrawalTable> {
  CampusWithdrawalUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> enrolmentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.enrolmentId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> requestedAt(DateTime value) =>
      _is.ColumnValue(
        table.requestedAt,
        value,
      );

  _is.ColumnValue<String, String> reason(String value) => _is.ColumnValue(
    table.reason,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> approvedById(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.approvedById,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusWithdrawalTable extends _is.Table<_is.UuidValue?> {
  CampusWithdrawalTable({super.tableRelation})
    : super(tableName: 'campus_withdrawals') {
    updateTable = CampusWithdrawalUpdateTable(this);
    enrolmentId = _is.ColumnUuid(
      'enrolmentId',
      this,
    );
    requestedAt = _is.ColumnDateTime(
      'requestedAt',
      this,
    );
    reason = _is.ColumnString(
      'reason',
      this,
    );
    approvedById = _is.ColumnUuid(
      'approvedById',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusWithdrawalUpdateTable updateTable;

  late final _is.ColumnUuid enrolmentId;

  late final _is.ColumnDateTime requestedAt;

  late final _is.ColumnString reason;

  late final _is.ColumnUuid approvedById;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    enrolmentId,
    requestedAt,
    reason,
    approvedById,
    createdAt,
  ];
}

class CampusWithdrawalInclude extends _is.IncludeObject {
  CampusWithdrawalInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusWithdrawal.t;
}

class CampusWithdrawalIncludeList extends _is.IncludeList {
  CampusWithdrawalIncludeList._({
    _is.WhereExpressionBuilder<CampusWithdrawalTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusWithdrawal.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusWithdrawal.t;
}

class CampusWithdrawalRepository {
  const CampusWithdrawalRepository._();

  /// Returns a list of [CampusWithdrawal]s matching the given query parameters.
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
  Future<List<CampusWithdrawal>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusWithdrawalTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusWithdrawalTable>? orderBy,
    _is.OrderByListBuilder<CampusWithdrawalTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusWithdrawal>(
      where: where?.call(CampusWithdrawal.t),
      orderBy: orderBy?.call(CampusWithdrawal.t),
      orderByList: orderByList?.call(CampusWithdrawal.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusWithdrawal] matching the given query parameters.
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
  Future<CampusWithdrawal?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusWithdrawalTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusWithdrawalTable>? orderBy,
    _is.OrderByListBuilder<CampusWithdrawalTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusWithdrawal>(
      where: where?.call(CampusWithdrawal.t),
      orderBy: orderBy?.call(CampusWithdrawal.t),
      orderByList: orderByList?.call(CampusWithdrawal.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusWithdrawal] by its [id] or null if no such row exists.
  Future<CampusWithdrawal?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusWithdrawal>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusWithdrawal]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusWithdrawal]s will have their `id` fields set.
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
  Future<List<CampusWithdrawal>> insert(
    _is.DatabaseSession session,
    List<CampusWithdrawal> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusWithdrawal>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusWithdrawal] and returns the inserted row.
  ///
  /// The returned [CampusWithdrawal] will have its `id` field set.
  Future<CampusWithdrawal> insertRow(
    _is.DatabaseSession session,
    CampusWithdrawal row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusWithdrawal>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusWithdrawal]s in the list and returns the resulting rows.
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
  /// The returned [CampusWithdrawal]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusWithdrawal>> upsert(
    _is.DatabaseSession session,
    List<CampusWithdrawal> rows, {
    required _is.ColumnSelections<CampusWithdrawalTable> conflictColumns,
    _is.ColumnSelections<CampusWithdrawalTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusWithdrawalTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusWithdrawal>(
      rows,
      conflictColumns: conflictColumns(CampusWithdrawal.t),
      updateColumns: updateColumns?.call(CampusWithdrawal.t),
      updateWhere: updateWhere?.call(CampusWithdrawal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusWithdrawal] and returns the resulting row.
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
  /// The returned [CampusWithdrawal] will have its `id` field set.
  Future<CampusWithdrawal?> upsertRow(
    _is.DatabaseSession session,
    CampusWithdrawal row, {
    required _is.ColumnSelections<CampusWithdrawalTable> conflictColumns,
    _is.ColumnSelections<CampusWithdrawalTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusWithdrawalTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusWithdrawal>(
      row,
      conflictColumns: conflictColumns(CampusWithdrawal.t),
      updateColumns: updateColumns?.call(CampusWithdrawal.t),
      updateWhere: updateWhere?.call(CampusWithdrawal.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusWithdrawal]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusWithdrawal>> update(
    _is.DatabaseSession session,
    List<CampusWithdrawal> rows, {
    _is.ColumnSelections<CampusWithdrawalTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusWithdrawal>(
      rows,
      columns: columns?.call(CampusWithdrawal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusWithdrawal]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusWithdrawal> updateRow(
    _is.DatabaseSession session,
    CampusWithdrawal row, {
    _is.ColumnSelections<CampusWithdrawalTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusWithdrawal>(
      row,
      columns: columns?.call(CampusWithdrawal.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusWithdrawal] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusWithdrawal?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusWithdrawalUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusWithdrawal>(
      id,
      columnValues: columnValues(CampusWithdrawal.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusWithdrawal]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusWithdrawal>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusWithdrawalUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusWithdrawalTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusWithdrawalTable>? orderBy,
    _is.OrderByListBuilder<CampusWithdrawalTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusWithdrawal>(
      columnValues: columnValues(CampusWithdrawal.t.updateTable),
      where: where(CampusWithdrawal.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusWithdrawal.t),
      orderByList: orderByList?.call(CampusWithdrawal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusWithdrawal]s in the list and returns the deleted rows.
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
  Future<List<CampusWithdrawal>> delete(
    _is.DatabaseSession session,
    List<CampusWithdrawal> rows, {
    _is.OrderByBuilder<CampusWithdrawalTable>? orderBy,
    _is.OrderByListBuilder<CampusWithdrawalTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusWithdrawal>(
      rows,
      orderBy: orderBy?.call(CampusWithdrawal.t),
      orderByList: orderByList?.call(CampusWithdrawal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusWithdrawal].
  Future<CampusWithdrawal> deleteRow(
    _is.DatabaseSession session,
    CampusWithdrawal row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusWithdrawal>(
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
  Future<List<CampusWithdrawal>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusWithdrawalTable> where,
    _is.OrderByBuilder<CampusWithdrawalTable>? orderBy,
    _is.OrderByListBuilder<CampusWithdrawalTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusWithdrawal>(
      where: where(CampusWithdrawal.t),
      orderBy: orderBy?.call(CampusWithdrawal.t),
      orderByList: orderByList?.call(CampusWithdrawal.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusWithdrawalTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusWithdrawal>(
      where: where?.call(CampusWithdrawal.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusWithdrawal] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusWithdrawalTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusWithdrawal>(
      where: where(CampusWithdrawal.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
