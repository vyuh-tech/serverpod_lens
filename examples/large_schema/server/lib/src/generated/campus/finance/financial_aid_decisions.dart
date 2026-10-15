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

/// Fictional university fixture: finance.
abstract class CampusFinancialAidDecision
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusFinancialAidDecision._({
    this.id,
    required this.applicationId,
    required this.awardedMinor,
    required this.decidedAt,
    this.notes,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusFinancialAidDecision({
    _is.UuidValue? id,
    required _is.UuidValue applicationId,
    required int awardedMinor,
    required DateTime decidedAt,
    String? notes,
    DateTime? createdAt,
  }) = _CampusFinancialAidDecisionImpl;

  factory CampusFinancialAidDecision.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusFinancialAidDecision(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      applicationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['applicationId'],
      ),
      awardedMinor: jsonSerialization['awardedMinor'] as int,
      decidedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['decidedAt'],
      ),
      notes: jsonSerialization['notes'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusFinancialAidDecisionTable();

  static const db = CampusFinancialAidDecisionRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue applicationId;

  int awardedMinor;

  DateTime decidedAt;

  String? notes;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusFinancialAidDecision]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusFinancialAidDecision copyWith({
    _is.UuidValue? id,
    _is.UuidValue? applicationId,
    int? awardedMinor,
    DateTime? decidedAt,
    String? notes,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusFinancialAidDecision',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'awardedMinor': awardedMinor,
      'decidedAt': decidedAt.toJson(),
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusFinancialAidDecision',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'awardedMinor': awardedMinor,
      'decidedAt': decidedAt.toJson(),
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusFinancialAidDecisionInclude include() {
    return CampusFinancialAidDecisionInclude._();
  }

  static CampusFinancialAidDecisionIncludeList includeList({
    _is.WhereExpressionBuilder<CampusFinancialAidDecisionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFinancialAidDecisionTable>? orderBy,
    _is.OrderByListBuilder<CampusFinancialAidDecisionTable>? orderByList,
    CampusFinancialAidDecisionInclude? include,
  }) {
    return CampusFinancialAidDecisionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFinancialAidDecision.t),
      orderByList: orderByList?.call(CampusFinancialAidDecision.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusFinancialAidDecisionImpl extends CampusFinancialAidDecision {
  _CampusFinancialAidDecisionImpl({
    _is.UuidValue? id,
    required _is.UuidValue applicationId,
    required int awardedMinor,
    required DateTime decidedAt,
    String? notes,
    DateTime? createdAt,
  }) : super._(
         id: id,
         applicationId: applicationId,
         awardedMinor: awardedMinor,
         decidedAt: decidedAt,
         notes: notes,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusFinancialAidDecision]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusFinancialAidDecision copyWith({
    Object? id = _Undefined,
    _is.UuidValue? applicationId,
    int? awardedMinor,
    DateTime? decidedAt,
    Object? notes = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusFinancialAidDecision(
      id: id is _is.UuidValue? ? id : this.id,
      applicationId: applicationId ?? this.applicationId,
      awardedMinor: awardedMinor ?? this.awardedMinor,
      decidedAt: decidedAt ?? this.decidedAt,
      notes: notes is String? ? notes : this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusFinancialAidDecisionUpdateTable
    extends _is.UpdateTable<CampusFinancialAidDecisionTable> {
  CampusFinancialAidDecisionUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> applicationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.applicationId,
    value,
  );

  _is.ColumnValue<int, int> awardedMinor(int value) => _is.ColumnValue(
    table.awardedMinor,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> decidedAt(DateTime value) =>
      _is.ColumnValue(
        table.decidedAt,
        value,
      );

  _is.ColumnValue<String, String> notes(String? value) => _is.ColumnValue(
    table.notes,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusFinancialAidDecisionTable extends _is.Table<_is.UuidValue?> {
  CampusFinancialAidDecisionTable({super.tableRelation})
    : super(tableName: 'campus_financial_aid_decisions') {
    updateTable = CampusFinancialAidDecisionUpdateTable(this);
    applicationId = _is.ColumnUuid(
      'applicationId',
      this,
    );
    awardedMinor = _is.ColumnInt(
      'awardedMinor',
      this,
    );
    decidedAt = _is.ColumnDateTime(
      'decidedAt',
      this,
    );
    notes = _is.ColumnString(
      'notes',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusFinancialAidDecisionUpdateTable updateTable;

  late final _is.ColumnUuid applicationId;

  late final _is.ColumnInt awardedMinor;

  late final _is.ColumnDateTime decidedAt;

  late final _is.ColumnString notes;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    applicationId,
    awardedMinor,
    decidedAt,
    notes,
    createdAt,
  ];
}

class CampusFinancialAidDecisionInclude extends _is.IncludeObject {
  CampusFinancialAidDecisionInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFinancialAidDecision.t;
}

class CampusFinancialAidDecisionIncludeList extends _is.IncludeList {
  CampusFinancialAidDecisionIncludeList._({
    _is.WhereExpressionBuilder<CampusFinancialAidDecisionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusFinancialAidDecision.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFinancialAidDecision.t;
}

class CampusFinancialAidDecisionRepository {
  const CampusFinancialAidDecisionRepository._();

  /// Returns a list of [CampusFinancialAidDecision]s matching the given query parameters.
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
  Future<List<CampusFinancialAidDecision>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFinancialAidDecisionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFinancialAidDecisionTable>? orderBy,
    _is.OrderByListBuilder<CampusFinancialAidDecisionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusFinancialAidDecision>(
      where: where?.call(CampusFinancialAidDecision.t),
      orderBy: orderBy?.call(CampusFinancialAidDecision.t),
      orderByList: orderByList?.call(CampusFinancialAidDecision.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusFinancialAidDecision] matching the given query parameters.
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
  Future<CampusFinancialAidDecision?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFinancialAidDecisionTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusFinancialAidDecisionTable>? orderBy,
    _is.OrderByListBuilder<CampusFinancialAidDecisionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusFinancialAidDecision>(
      where: where?.call(CampusFinancialAidDecision.t),
      orderBy: orderBy?.call(CampusFinancialAidDecision.t),
      orderByList: orderByList?.call(CampusFinancialAidDecision.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusFinancialAidDecision] by its [id] or null if no such row exists.
  Future<CampusFinancialAidDecision?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusFinancialAidDecision>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusFinancialAidDecision]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusFinancialAidDecision]s will have their `id` fields set.
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
  Future<List<CampusFinancialAidDecision>> insert(
    _is.DatabaseSession session,
    List<CampusFinancialAidDecision> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusFinancialAidDecision>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusFinancialAidDecision] and returns the inserted row.
  ///
  /// The returned [CampusFinancialAidDecision] will have its `id` field set.
  Future<CampusFinancialAidDecision> insertRow(
    _is.DatabaseSession session,
    CampusFinancialAidDecision row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusFinancialAidDecision>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusFinancialAidDecision]s in the list and returns the resulting rows.
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
  /// The returned [CampusFinancialAidDecision]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFinancialAidDecision>> upsert(
    _is.DatabaseSession session,
    List<CampusFinancialAidDecision> rows, {
    required _is.ColumnSelections<CampusFinancialAidDecisionTable>
    conflictColumns,
    _is.ColumnSelections<CampusFinancialAidDecisionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFinancialAidDecisionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusFinancialAidDecision>(
      rows,
      conflictColumns: conflictColumns(CampusFinancialAidDecision.t),
      updateColumns: updateColumns?.call(CampusFinancialAidDecision.t),
      updateWhere: updateWhere?.call(CampusFinancialAidDecision.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusFinancialAidDecision] and returns the resulting row.
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
  /// The returned [CampusFinancialAidDecision] will have its `id` field set.
  Future<CampusFinancialAidDecision?> upsertRow(
    _is.DatabaseSession session,
    CampusFinancialAidDecision row, {
    required _is.ColumnSelections<CampusFinancialAidDecisionTable>
    conflictColumns,
    _is.ColumnSelections<CampusFinancialAidDecisionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFinancialAidDecisionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusFinancialAidDecision>(
      row,
      conflictColumns: conflictColumns(CampusFinancialAidDecision.t),
      updateColumns: updateColumns?.call(CampusFinancialAidDecision.t),
      updateWhere: updateWhere?.call(CampusFinancialAidDecision.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFinancialAidDecision]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFinancialAidDecision>> update(
    _is.DatabaseSession session,
    List<CampusFinancialAidDecision> rows, {
    _is.ColumnSelections<CampusFinancialAidDecisionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusFinancialAidDecision>(
      rows,
      columns: columns?.call(CampusFinancialAidDecision.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusFinancialAidDecision]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusFinancialAidDecision> updateRow(
    _is.DatabaseSession session,
    CampusFinancialAidDecision row, {
    _is.ColumnSelections<CampusFinancialAidDecisionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusFinancialAidDecision>(
      row,
      columns: columns?.call(CampusFinancialAidDecision.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusFinancialAidDecision] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusFinancialAidDecision?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusFinancialAidDecisionUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusFinancialAidDecision>(
      id,
      columnValues: columnValues(CampusFinancialAidDecision.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFinancialAidDecision]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFinancialAidDecision>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusFinancialAidDecisionUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusFinancialAidDecisionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFinancialAidDecisionTable>? orderBy,
    _is.OrderByListBuilder<CampusFinancialAidDecisionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusFinancialAidDecision>(
      columnValues: columnValues(CampusFinancialAidDecision.t.updateTable),
      where: where(CampusFinancialAidDecision.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFinancialAidDecision.t),
      orderByList: orderByList?.call(CampusFinancialAidDecision.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusFinancialAidDecision]s in the list and returns the deleted rows.
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
  Future<List<CampusFinancialAidDecision>> delete(
    _is.DatabaseSession session,
    List<CampusFinancialAidDecision> rows, {
    _is.OrderByBuilder<CampusFinancialAidDecisionTable>? orderBy,
    _is.OrderByListBuilder<CampusFinancialAidDecisionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusFinancialAidDecision>(
      rows,
      orderBy: orderBy?.call(CampusFinancialAidDecision.t),
      orderByList: orderByList?.call(CampusFinancialAidDecision.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusFinancialAidDecision].
  Future<CampusFinancialAidDecision> deleteRow(
    _is.DatabaseSession session,
    CampusFinancialAidDecision row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusFinancialAidDecision>(
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
  Future<List<CampusFinancialAidDecision>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFinancialAidDecisionTable> where,
    _is.OrderByBuilder<CampusFinancialAidDecisionTable>? orderBy,
    _is.OrderByListBuilder<CampusFinancialAidDecisionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusFinancialAidDecision>(
      where: where(CampusFinancialAidDecision.t),
      orderBy: orderBy?.call(CampusFinancialAidDecision.t),
      orderByList: orderByList?.call(CampusFinancialAidDecision.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFinancialAidDecisionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusFinancialAidDecision>(
      where: where?.call(CampusFinancialAidDecision.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusFinancialAidDecision] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFinancialAidDecisionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusFinancialAidDecision>(
      where: where(CampusFinancialAidDecision.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
