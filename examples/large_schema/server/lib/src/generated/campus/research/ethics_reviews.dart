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

/// Fictional university fixture: research.
abstract class CampusEthicsReview
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusEthicsReview._({
    this.id,
    required this.applicationId,
    required this.reviewerId,
    required this.decision,
    this.reviewedAt,
    this.notes,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusEthicsReview({
    _is.UuidValue? id,
    required _is.UuidValue applicationId,
    required _is.UuidValue reviewerId,
    required String decision,
    DateTime? reviewedAt,
    String? notes,
    DateTime? createdAt,
  }) = _CampusEthicsReviewImpl;

  factory CampusEthicsReview.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusEthicsReview(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      applicationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['applicationId'],
      ),
      reviewerId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['reviewerId'],
      ),
      decision: jsonSerialization['decision'] as String,
      reviewedAt: jsonSerialization['reviewedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['reviewedAt']),
      notes: jsonSerialization['notes'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusEthicsReviewTable();

  static const db = CampusEthicsReviewRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue applicationId;

  _is.UuidValue reviewerId;

  String decision;

  DateTime? reviewedAt;

  String? notes;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusEthicsReview]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusEthicsReview copyWith({
    _is.UuidValue? id,
    _is.UuidValue? applicationId,
    _is.UuidValue? reviewerId,
    String? decision,
    DateTime? reviewedAt,
    String? notes,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusEthicsReview',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'reviewerId': reviewerId.toJson(),
      'decision': decision,
      if (reviewedAt != null) 'reviewedAt': reviewedAt?.toJson(),
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusEthicsReview',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'reviewerId': reviewerId.toJson(),
      'decision': decision,
      if (reviewedAt != null) 'reviewedAt': reviewedAt?.toJson(),
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusEthicsReviewInclude include() {
    return CampusEthicsReviewInclude._();
  }

  static CampusEthicsReviewIncludeList includeList({
    _is.WhereExpressionBuilder<CampusEthicsReviewTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusEthicsReviewTable>? orderBy,
    _is.OrderByListBuilder<CampusEthicsReviewTable>? orderByList,
    CampusEthicsReviewInclude? include,
  }) {
    return CampusEthicsReviewIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusEthicsReview.t),
      orderByList: orderByList?.call(CampusEthicsReview.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusEthicsReviewImpl extends CampusEthicsReview {
  _CampusEthicsReviewImpl({
    _is.UuidValue? id,
    required _is.UuidValue applicationId,
    required _is.UuidValue reviewerId,
    required String decision,
    DateTime? reviewedAt,
    String? notes,
    DateTime? createdAt,
  }) : super._(
         id: id,
         applicationId: applicationId,
         reviewerId: reviewerId,
         decision: decision,
         reviewedAt: reviewedAt,
         notes: notes,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusEthicsReview]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusEthicsReview copyWith({
    Object? id = _Undefined,
    _is.UuidValue? applicationId,
    _is.UuidValue? reviewerId,
    String? decision,
    Object? reviewedAt = _Undefined,
    Object? notes = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusEthicsReview(
      id: id is _is.UuidValue? ? id : this.id,
      applicationId: applicationId ?? this.applicationId,
      reviewerId: reviewerId ?? this.reviewerId,
      decision: decision ?? this.decision,
      reviewedAt: reviewedAt is DateTime? ? reviewedAt : this.reviewedAt,
      notes: notes is String? ? notes : this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusEthicsReviewUpdateTable
    extends _is.UpdateTable<CampusEthicsReviewTable> {
  CampusEthicsReviewUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> applicationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.applicationId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> reviewerId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.reviewerId,
    value,
  );

  _is.ColumnValue<String, String> decision(String value) => _is.ColumnValue(
    table.decision,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> reviewedAt(DateTime? value) =>
      _is.ColumnValue(
        table.reviewedAt,
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

class CampusEthicsReviewTable extends _is.Table<_is.UuidValue?> {
  CampusEthicsReviewTable({super.tableRelation})
    : super(tableName: 'campus_ethics_reviews') {
    updateTable = CampusEthicsReviewUpdateTable(this);
    applicationId = _is.ColumnUuid(
      'applicationId',
      this,
    );
    reviewerId = _is.ColumnUuid(
      'reviewerId',
      this,
    );
    decision = _is.ColumnString(
      'decision',
      this,
    );
    reviewedAt = _is.ColumnDateTime(
      'reviewedAt',
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

  late final CampusEthicsReviewUpdateTable updateTable;

  late final _is.ColumnUuid applicationId;

  late final _is.ColumnUuid reviewerId;

  late final _is.ColumnString decision;

  late final _is.ColumnDateTime reviewedAt;

  late final _is.ColumnString notes;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    applicationId,
    reviewerId,
    decision,
    reviewedAt,
    notes,
    createdAt,
  ];
}

class CampusEthicsReviewInclude extends _is.IncludeObject {
  CampusEthicsReviewInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusEthicsReview.t;
}

class CampusEthicsReviewIncludeList extends _is.IncludeList {
  CampusEthicsReviewIncludeList._({
    _is.WhereExpressionBuilder<CampusEthicsReviewTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusEthicsReview.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusEthicsReview.t;
}

class CampusEthicsReviewRepository {
  const CampusEthicsReviewRepository._();

  /// Returns a list of [CampusEthicsReview]s matching the given query parameters.
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
  Future<List<CampusEthicsReview>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusEthicsReviewTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusEthicsReviewTable>? orderBy,
    _is.OrderByListBuilder<CampusEthicsReviewTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusEthicsReview>(
      where: where?.call(CampusEthicsReview.t),
      orderBy: orderBy?.call(CampusEthicsReview.t),
      orderByList: orderByList?.call(CampusEthicsReview.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusEthicsReview] matching the given query parameters.
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
  Future<CampusEthicsReview?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusEthicsReviewTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusEthicsReviewTable>? orderBy,
    _is.OrderByListBuilder<CampusEthicsReviewTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusEthicsReview>(
      where: where?.call(CampusEthicsReview.t),
      orderBy: orderBy?.call(CampusEthicsReview.t),
      orderByList: orderByList?.call(CampusEthicsReview.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusEthicsReview] by its [id] or null if no such row exists.
  Future<CampusEthicsReview?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusEthicsReview>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusEthicsReview]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusEthicsReview]s will have their `id` fields set.
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
  Future<List<CampusEthicsReview>> insert(
    _is.DatabaseSession session,
    List<CampusEthicsReview> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusEthicsReview>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusEthicsReview] and returns the inserted row.
  ///
  /// The returned [CampusEthicsReview] will have its `id` field set.
  Future<CampusEthicsReview> insertRow(
    _is.DatabaseSession session,
    CampusEthicsReview row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusEthicsReview>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusEthicsReview]s in the list and returns the resulting rows.
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
  /// The returned [CampusEthicsReview]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusEthicsReview>> upsert(
    _is.DatabaseSession session,
    List<CampusEthicsReview> rows, {
    required _is.ColumnSelections<CampusEthicsReviewTable> conflictColumns,
    _is.ColumnSelections<CampusEthicsReviewTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusEthicsReviewTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusEthicsReview>(
      rows,
      conflictColumns: conflictColumns(CampusEthicsReview.t),
      updateColumns: updateColumns?.call(CampusEthicsReview.t),
      updateWhere: updateWhere?.call(CampusEthicsReview.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusEthicsReview] and returns the resulting row.
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
  /// The returned [CampusEthicsReview] will have its `id` field set.
  Future<CampusEthicsReview?> upsertRow(
    _is.DatabaseSession session,
    CampusEthicsReview row, {
    required _is.ColumnSelections<CampusEthicsReviewTable> conflictColumns,
    _is.ColumnSelections<CampusEthicsReviewTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusEthicsReviewTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusEthicsReview>(
      row,
      conflictColumns: conflictColumns(CampusEthicsReview.t),
      updateColumns: updateColumns?.call(CampusEthicsReview.t),
      updateWhere: updateWhere?.call(CampusEthicsReview.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusEthicsReview]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusEthicsReview>> update(
    _is.DatabaseSession session,
    List<CampusEthicsReview> rows, {
    _is.ColumnSelections<CampusEthicsReviewTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusEthicsReview>(
      rows,
      columns: columns?.call(CampusEthicsReview.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusEthicsReview]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusEthicsReview> updateRow(
    _is.DatabaseSession session,
    CampusEthicsReview row, {
    _is.ColumnSelections<CampusEthicsReviewTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusEthicsReview>(
      row,
      columns: columns?.call(CampusEthicsReview.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusEthicsReview] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusEthicsReview?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusEthicsReviewUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusEthicsReview>(
      id,
      columnValues: columnValues(CampusEthicsReview.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusEthicsReview]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusEthicsReview>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusEthicsReviewUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusEthicsReviewTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusEthicsReviewTable>? orderBy,
    _is.OrderByListBuilder<CampusEthicsReviewTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusEthicsReview>(
      columnValues: columnValues(CampusEthicsReview.t.updateTable),
      where: where(CampusEthicsReview.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusEthicsReview.t),
      orderByList: orderByList?.call(CampusEthicsReview.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusEthicsReview]s in the list and returns the deleted rows.
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
  Future<List<CampusEthicsReview>> delete(
    _is.DatabaseSession session,
    List<CampusEthicsReview> rows, {
    _is.OrderByBuilder<CampusEthicsReviewTable>? orderBy,
    _is.OrderByListBuilder<CampusEthicsReviewTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusEthicsReview>(
      rows,
      orderBy: orderBy?.call(CampusEthicsReview.t),
      orderByList: orderByList?.call(CampusEthicsReview.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusEthicsReview].
  Future<CampusEthicsReview> deleteRow(
    _is.DatabaseSession session,
    CampusEthicsReview row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusEthicsReview>(
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
  Future<List<CampusEthicsReview>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusEthicsReviewTable> where,
    _is.OrderByBuilder<CampusEthicsReviewTable>? orderBy,
    _is.OrderByListBuilder<CampusEthicsReviewTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusEthicsReview>(
      where: where(CampusEthicsReview.t),
      orderBy: orderBy?.call(CampusEthicsReview.t),
      orderByList: orderByList?.call(CampusEthicsReview.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusEthicsReviewTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusEthicsReview>(
      where: where?.call(CampusEthicsReview.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusEthicsReview] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusEthicsReviewTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusEthicsReview>(
      where: where(CampusEthicsReview.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
