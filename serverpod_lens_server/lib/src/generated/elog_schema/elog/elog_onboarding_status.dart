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

abstract class ElogOnboardingStatus
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogOnboardingStatus._({
    this.id,
    required this.industry,
    required this.completedAt,
    this.completedBy,
    required this.provisioningSummary,
  });

  factory ElogOnboardingStatus({
    _is.UuidValue? id,
    required String industry,
    required DateTime completedAt,
    _is.UuidValue? completedBy,
    required String provisioningSummary,
  }) = _ElogOnboardingStatusImpl;

  factory ElogOnboardingStatus.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogOnboardingStatus(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industry: jsonSerialization['industry'] as String,
      completedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['completedAt'],
      ),
      completedBy: jsonSerialization['completedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['completedBy'],
            ),
      provisioningSummary: jsonSerialization['provisioningSummary'] as String,
    );
  }

  static final t = ElogOnboardingStatusTable();

  static const db = ElogOnboardingStatusRepository._();

  @override
  _is.UuidValue? id;

  String industry;

  DateTime completedAt;

  _is.UuidValue? completedBy;

  String provisioningSummary;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogOnboardingStatus]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogOnboardingStatus copyWith({
    _is.UuidValue? id,
    String? industry,
    DateTime? completedAt,
    _is.UuidValue? completedBy,
    String? provisioningSummary,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogOnboardingStatus',
      if (id != null) 'id': id?.toJson(),
      'industry': industry,
      'completedAt': completedAt.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      'provisioningSummary': provisioningSummary,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogOnboardingStatus',
      if (id != null) 'id': id?.toJson(),
      'industry': industry,
      'completedAt': completedAt.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      'provisioningSummary': provisioningSummary,
    };
  }

  static ElogOnboardingStatusInclude include() {
    return ElogOnboardingStatusInclude._();
  }

  static ElogOnboardingStatusIncludeList includeList({
    _is.WhereExpressionBuilder<ElogOnboardingStatusTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogOnboardingStatusTable>? orderBy,
    _is.OrderByListBuilder<ElogOnboardingStatusTable>? orderByList,
    ElogOnboardingStatusInclude? include,
  }) {
    return ElogOnboardingStatusIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogOnboardingStatus.t),
      orderByList: orderByList?.call(ElogOnboardingStatus.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogOnboardingStatusImpl extends ElogOnboardingStatus {
  _ElogOnboardingStatusImpl({
    _is.UuidValue? id,
    required String industry,
    required DateTime completedAt,
    _is.UuidValue? completedBy,
    required String provisioningSummary,
  }) : super._(
         id: id,
         industry: industry,
         completedAt: completedAt,
         completedBy: completedBy,
         provisioningSummary: provisioningSummary,
       );

  /// Returns a shallow copy of this [ElogOnboardingStatus]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogOnboardingStatus copyWith({
    Object? id = _Undefined,
    String? industry,
    DateTime? completedAt,
    Object? completedBy = _Undefined,
    String? provisioningSummary,
  }) {
    return ElogOnboardingStatus(
      id: id is _is.UuidValue? ? id : this.id,
      industry: industry ?? this.industry,
      completedAt: completedAt ?? this.completedAt,
      completedBy: completedBy is _is.UuidValue?
          ? completedBy
          : this.completedBy,
      provisioningSummary: provisioningSummary ?? this.provisioningSummary,
    );
  }
}

class ElogOnboardingStatusUpdateTable
    extends _is.UpdateTable<ElogOnboardingStatusTable> {
  ElogOnboardingStatusUpdateTable(super.table);

  _is.ColumnValue<String, String> industry(String value) => _is.ColumnValue(
    table.industry,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> completedAt(DateTime value) =>
      _is.ColumnValue(
        table.completedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> completedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.completedBy,
    value,
  );

  _is.ColumnValue<String, String> provisioningSummary(String value) =>
      _is.ColumnValue(
        table.provisioningSummary,
        value,
      );
}

class ElogOnboardingStatusTable extends _is.Table<_is.UuidValue?> {
  ElogOnboardingStatusTable({super.tableRelation})
    : super(tableName: 'elog_onboarding_status') {
    updateTable = ElogOnboardingStatusUpdateTable(this);
    industry = _is.ColumnString(
      'industry',
      this,
    );
    completedAt = _is.ColumnDateTime(
      'completedAt',
      this,
    );
    completedBy = _is.ColumnUuid(
      'completedBy',
      this,
    );
    provisioningSummary = _is.ColumnString(
      'provisioningSummary',
      this,
    );
  }

  late final ElogOnboardingStatusUpdateTable updateTable;

  late final _is.ColumnString industry;

  late final _is.ColumnDateTime completedAt;

  late final _is.ColumnUuid completedBy;

  late final _is.ColumnString provisioningSummary;

  @override
  List<_is.Column> get columns => [
    id,
    industry,
    completedAt,
    completedBy,
    provisioningSummary,
  ];
}

class ElogOnboardingStatusInclude extends _is.IncludeObject {
  ElogOnboardingStatusInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogOnboardingStatus.t;
}

class ElogOnboardingStatusIncludeList extends _is.IncludeList {
  ElogOnboardingStatusIncludeList._({
    _is.WhereExpressionBuilder<ElogOnboardingStatusTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogOnboardingStatus.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogOnboardingStatus.t;
}

class ElogOnboardingStatusRepository {
  const ElogOnboardingStatusRepository._();

  /// Returns a list of [ElogOnboardingStatus]s matching the given query parameters.
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
  Future<List<ElogOnboardingStatus>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogOnboardingStatusTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogOnboardingStatusTable>? orderBy,
    _is.OrderByListBuilder<ElogOnboardingStatusTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogOnboardingStatus>(
      where: where?.call(ElogOnboardingStatus.t),
      orderBy: orderBy?.call(ElogOnboardingStatus.t),
      orderByList: orderByList?.call(ElogOnboardingStatus.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogOnboardingStatus] matching the given query parameters.
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
  Future<ElogOnboardingStatus?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogOnboardingStatusTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogOnboardingStatusTable>? orderBy,
    _is.OrderByListBuilder<ElogOnboardingStatusTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogOnboardingStatus>(
      where: where?.call(ElogOnboardingStatus.t),
      orderBy: orderBy?.call(ElogOnboardingStatus.t),
      orderByList: orderByList?.call(ElogOnboardingStatus.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogOnboardingStatus] by its [id] or null if no such row exists.
  Future<ElogOnboardingStatus?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogOnboardingStatus>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogOnboardingStatus]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogOnboardingStatus]s will have their `id` fields set.
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
  Future<List<ElogOnboardingStatus>> insert(
    _is.DatabaseSession session,
    List<ElogOnboardingStatus> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogOnboardingStatus>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogOnboardingStatus] and returns the inserted row.
  ///
  /// The returned [ElogOnboardingStatus] will have its `id` field set.
  Future<ElogOnboardingStatus> insertRow(
    _is.DatabaseSession session,
    ElogOnboardingStatus row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogOnboardingStatus>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogOnboardingStatus]s in the list and returns the resulting rows.
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
  /// The returned [ElogOnboardingStatus]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogOnboardingStatus>> upsert(
    _is.DatabaseSession session,
    List<ElogOnboardingStatus> rows, {
    required _is.ColumnSelections<ElogOnboardingStatusTable> conflictColumns,
    _is.ColumnSelections<ElogOnboardingStatusTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogOnboardingStatusTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogOnboardingStatus>(
      rows,
      conflictColumns: conflictColumns(ElogOnboardingStatus.t),
      updateColumns: updateColumns?.call(ElogOnboardingStatus.t),
      updateWhere: updateWhere?.call(ElogOnboardingStatus.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogOnboardingStatus] and returns the resulting row.
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
  /// The returned [ElogOnboardingStatus] will have its `id` field set.
  Future<ElogOnboardingStatus?> upsertRow(
    _is.DatabaseSession session,
    ElogOnboardingStatus row, {
    required _is.ColumnSelections<ElogOnboardingStatusTable> conflictColumns,
    _is.ColumnSelections<ElogOnboardingStatusTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogOnboardingStatusTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogOnboardingStatus>(
      row,
      conflictColumns: conflictColumns(ElogOnboardingStatus.t),
      updateColumns: updateColumns?.call(ElogOnboardingStatus.t),
      updateWhere: updateWhere?.call(ElogOnboardingStatus.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogOnboardingStatus]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogOnboardingStatus>> update(
    _is.DatabaseSession session,
    List<ElogOnboardingStatus> rows, {
    _is.ColumnSelections<ElogOnboardingStatusTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogOnboardingStatus>(
      rows,
      columns: columns?.call(ElogOnboardingStatus.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogOnboardingStatus]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogOnboardingStatus> updateRow(
    _is.DatabaseSession session,
    ElogOnboardingStatus row, {
    _is.ColumnSelections<ElogOnboardingStatusTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogOnboardingStatus>(
      row,
      columns: columns?.call(ElogOnboardingStatus.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogOnboardingStatus] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogOnboardingStatus?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogOnboardingStatusUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogOnboardingStatus>(
      id,
      columnValues: columnValues(ElogOnboardingStatus.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogOnboardingStatus]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogOnboardingStatus>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogOnboardingStatusUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogOnboardingStatusTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogOnboardingStatusTable>? orderBy,
    _is.OrderByListBuilder<ElogOnboardingStatusTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogOnboardingStatus>(
      columnValues: columnValues(ElogOnboardingStatus.t.updateTable),
      where: where(ElogOnboardingStatus.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogOnboardingStatus.t),
      orderByList: orderByList?.call(ElogOnboardingStatus.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogOnboardingStatus]s in the list and returns the deleted rows.
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
  Future<List<ElogOnboardingStatus>> delete(
    _is.DatabaseSession session,
    List<ElogOnboardingStatus> rows, {
    _is.OrderByBuilder<ElogOnboardingStatusTable>? orderBy,
    _is.OrderByListBuilder<ElogOnboardingStatusTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogOnboardingStatus>(
      rows,
      orderBy: orderBy?.call(ElogOnboardingStatus.t),
      orderByList: orderByList?.call(ElogOnboardingStatus.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogOnboardingStatus].
  Future<ElogOnboardingStatus> deleteRow(
    _is.DatabaseSession session,
    ElogOnboardingStatus row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogOnboardingStatus>(
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
  Future<List<ElogOnboardingStatus>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogOnboardingStatusTable> where,
    _is.OrderByBuilder<ElogOnboardingStatusTable>? orderBy,
    _is.OrderByListBuilder<ElogOnboardingStatusTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogOnboardingStatus>(
      where: where(ElogOnboardingStatus.t),
      orderBy: orderBy?.call(ElogOnboardingStatus.t),
      orderByList: orderByList?.call(ElogOnboardingStatus.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogOnboardingStatusTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogOnboardingStatus>(
      where: where?.call(ElogOnboardingStatus.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogOnboardingStatus] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogOnboardingStatusTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogOnboardingStatus>(
      where: where(ElogOnboardingStatus.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
