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
abstract class CampusCompletion
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusCompletion._({
    this.id,
    required this.studentId,
    required this.programmeVersionId,
    required this.completedAt,
    required this.awardedCredits,
    this.classification,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCompletion({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue programmeVersionId,
    required DateTime completedAt,
    required int awardedCredits,
    String? classification,
    DateTime? createdAt,
  }) = _CampusCompletionImpl;

  factory CampusCompletion.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusCompletion(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      programmeVersionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeVersionId'],
      ),
      completedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['completedAt'],
      ),
      awardedCredits: jsonSerialization['awardedCredits'] as int,
      classification: jsonSerialization['classification'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusCompletionTable();

  static const db = CampusCompletionRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  _is.UuidValue programmeVersionId;

  DateTime completedAt;

  int awardedCredits;

  String? classification;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusCompletion]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusCompletion copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    _is.UuidValue? programmeVersionId,
    DateTime? completedAt,
    int? awardedCredits,
    String? classification,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCompletion',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'programmeVersionId': programmeVersionId.toJson(),
      'completedAt': completedAt.toJson(),
      'awardedCredits': awardedCredits,
      if (classification != null) 'classification': classification,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCompletion',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'programmeVersionId': programmeVersionId.toJson(),
      'completedAt': completedAt.toJson(),
      'awardedCredits': awardedCredits,
      if (classification != null) 'classification': classification,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusCompletionInclude include() {
    return CampusCompletionInclude._();
  }

  static CampusCompletionIncludeList includeList({
    _is.WhereExpressionBuilder<CampusCompletionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCompletionTable>? orderBy,
    _is.OrderByListBuilder<CampusCompletionTable>? orderByList,
    CampusCompletionInclude? include,
  }) {
    return CampusCompletionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCompletion.t),
      orderByList: orderByList?.call(CampusCompletion.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCompletionImpl extends CampusCompletion {
  _CampusCompletionImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue programmeVersionId,
    required DateTime completedAt,
    required int awardedCredits,
    String? classification,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         programmeVersionId: programmeVersionId,
         completedAt: completedAt,
         awardedCredits: awardedCredits,
         classification: classification,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCompletion]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusCompletion copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    _is.UuidValue? programmeVersionId,
    DateTime? completedAt,
    int? awardedCredits,
    Object? classification = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusCompletion(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      programmeVersionId: programmeVersionId ?? this.programmeVersionId,
      completedAt: completedAt ?? this.completedAt,
      awardedCredits: awardedCredits ?? this.awardedCredits,
      classification: classification is String?
          ? classification
          : this.classification,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusCompletionUpdateTable
    extends _is.UpdateTable<CampusCompletionTable> {
  CampusCompletionUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> programmeVersionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.programmeVersionId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> completedAt(DateTime value) =>
      _is.ColumnValue(
        table.completedAt,
        value,
      );

  _is.ColumnValue<int, int> awardedCredits(int value) => _is.ColumnValue(
    table.awardedCredits,
    value,
  );

  _is.ColumnValue<String, String> classification(String? value) =>
      _is.ColumnValue(
        table.classification,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusCompletionTable extends _is.Table<_is.UuidValue?> {
  CampusCompletionTable({super.tableRelation})
    : super(tableName: 'campus_completions') {
    updateTable = CampusCompletionUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    programmeVersionId = _is.ColumnUuid(
      'programmeVersionId',
      this,
    );
    completedAt = _is.ColumnDateTime(
      'completedAt',
      this,
    );
    awardedCredits = _is.ColumnInt(
      'awardedCredits',
      this,
    );
    classification = _is.ColumnString(
      'classification',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusCompletionUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid programmeVersionId;

  late final _is.ColumnDateTime completedAt;

  late final _is.ColumnInt awardedCredits;

  late final _is.ColumnString classification;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    programmeVersionId,
    completedAt,
    awardedCredits,
    classification,
    createdAt,
  ];
}

class CampusCompletionInclude extends _is.IncludeObject {
  CampusCompletionInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCompletion.t;
}

class CampusCompletionIncludeList extends _is.IncludeList {
  CampusCompletionIncludeList._({
    _is.WhereExpressionBuilder<CampusCompletionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusCompletion.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCompletion.t;
}

class CampusCompletionRepository {
  const CampusCompletionRepository._();

  /// Returns a list of [CampusCompletion]s matching the given query parameters.
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
  Future<List<CampusCompletion>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCompletionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCompletionTable>? orderBy,
    _is.OrderByListBuilder<CampusCompletionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusCompletion>(
      where: where?.call(CampusCompletion.t),
      orderBy: orderBy?.call(CampusCompletion.t),
      orderByList: orderByList?.call(CampusCompletion.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusCompletion] matching the given query parameters.
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
  Future<CampusCompletion?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCompletionTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusCompletionTable>? orderBy,
    _is.OrderByListBuilder<CampusCompletionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusCompletion>(
      where: where?.call(CampusCompletion.t),
      orderBy: orderBy?.call(CampusCompletion.t),
      orderByList: orderByList?.call(CampusCompletion.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusCompletion] by its [id] or null if no such row exists.
  Future<CampusCompletion?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusCompletion>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusCompletion]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusCompletion]s will have their `id` fields set.
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
  Future<List<CampusCompletion>> insert(
    _is.DatabaseSession session,
    List<CampusCompletion> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusCompletion>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusCompletion] and returns the inserted row.
  ///
  /// The returned [CampusCompletion] will have its `id` field set.
  Future<CampusCompletion> insertRow(
    _is.DatabaseSession session,
    CampusCompletion row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusCompletion>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusCompletion]s in the list and returns the resulting rows.
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
  /// The returned [CampusCompletion]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCompletion>> upsert(
    _is.DatabaseSession session,
    List<CampusCompletion> rows, {
    required _is.ColumnSelections<CampusCompletionTable> conflictColumns,
    _is.ColumnSelections<CampusCompletionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCompletionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusCompletion>(
      rows,
      conflictColumns: conflictColumns(CampusCompletion.t),
      updateColumns: updateColumns?.call(CampusCompletion.t),
      updateWhere: updateWhere?.call(CampusCompletion.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusCompletion] and returns the resulting row.
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
  /// The returned [CampusCompletion] will have its `id` field set.
  Future<CampusCompletion?> upsertRow(
    _is.DatabaseSession session,
    CampusCompletion row, {
    required _is.ColumnSelections<CampusCompletionTable> conflictColumns,
    _is.ColumnSelections<CampusCompletionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCompletionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusCompletion>(
      row,
      conflictColumns: conflictColumns(CampusCompletion.t),
      updateColumns: updateColumns?.call(CampusCompletion.t),
      updateWhere: updateWhere?.call(CampusCompletion.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCompletion]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCompletion>> update(
    _is.DatabaseSession session,
    List<CampusCompletion> rows, {
    _is.ColumnSelections<CampusCompletionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusCompletion>(
      rows,
      columns: columns?.call(CampusCompletion.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusCompletion]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusCompletion> updateRow(
    _is.DatabaseSession session,
    CampusCompletion row, {
    _is.ColumnSelections<CampusCompletionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusCompletion>(
      row,
      columns: columns?.call(CampusCompletion.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusCompletion] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusCompletion?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusCompletionUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusCompletion>(
      id,
      columnValues: columnValues(CampusCompletion.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCompletion]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCompletion>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusCompletionUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusCompletionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCompletionTable>? orderBy,
    _is.OrderByListBuilder<CampusCompletionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusCompletion>(
      columnValues: columnValues(CampusCompletion.t.updateTable),
      where: where(CampusCompletion.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCompletion.t),
      orderByList: orderByList?.call(CampusCompletion.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusCompletion]s in the list and returns the deleted rows.
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
  Future<List<CampusCompletion>> delete(
    _is.DatabaseSession session,
    List<CampusCompletion> rows, {
    _is.OrderByBuilder<CampusCompletionTable>? orderBy,
    _is.OrderByListBuilder<CampusCompletionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusCompletion>(
      rows,
      orderBy: orderBy?.call(CampusCompletion.t),
      orderByList: orderByList?.call(CampusCompletion.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusCompletion].
  Future<CampusCompletion> deleteRow(
    _is.DatabaseSession session,
    CampusCompletion row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusCompletion>(
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
  Future<List<CampusCompletion>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCompletionTable> where,
    _is.OrderByBuilder<CampusCompletionTable>? orderBy,
    _is.OrderByListBuilder<CampusCompletionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusCompletion>(
      where: where(CampusCompletion.t),
      orderBy: orderBy?.call(CampusCompletion.t),
      orderByList: orderByList?.call(CampusCompletion.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCompletionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusCompletion>(
      where: where?.call(CampusCompletion.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusCompletion] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCompletionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusCompletion>(
      where: where(CampusCompletion.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
