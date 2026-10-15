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
abstract class CampusApplicationReview
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusApplicationReview._({
    this.id,
    required this.applicationId,
    required this.lecturerId,
    this.score,
    required this.recommendation,
    this.reviewedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusApplicationReview({
    _is.UuidValue? id,
    required _is.UuidValue applicationId,
    required _is.UuidValue lecturerId,
    double? score,
    required String recommendation,
    DateTime? reviewedAt,
    DateTime? createdAt,
  }) = _CampusApplicationReviewImpl;

  factory CampusApplicationReview.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusApplicationReview(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      applicationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['applicationId'],
      ),
      lecturerId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      score: (jsonSerialization['score'] as num?)?.toDouble(),
      recommendation: jsonSerialization['recommendation'] as String,
      reviewedAt: jsonSerialization['reviewedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['reviewedAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusApplicationReviewTable();

  static const db = CampusApplicationReviewRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue applicationId;

  _is.UuidValue lecturerId;

  double? score;

  String recommendation;

  DateTime? reviewedAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusApplicationReview]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusApplicationReview copyWith({
    _is.UuidValue? id,
    _is.UuidValue? applicationId,
    _is.UuidValue? lecturerId,
    double? score,
    String? recommendation,
    DateTime? reviewedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusApplicationReview',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'lecturerId': lecturerId.toJson(),
      if (score != null) 'score': score,
      'recommendation': recommendation,
      if (reviewedAt != null) 'reviewedAt': reviewedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusApplicationReview',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'lecturerId': lecturerId.toJson(),
      if (score != null) 'score': score,
      'recommendation': recommendation,
      if (reviewedAt != null) 'reviewedAt': reviewedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusApplicationReviewInclude include() {
    return CampusApplicationReviewInclude._();
  }

  static CampusApplicationReviewIncludeList includeList({
    _is.WhereExpressionBuilder<CampusApplicationReviewTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusApplicationReviewTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationReviewTable>? orderByList,
    CampusApplicationReviewInclude? include,
  }) {
    return CampusApplicationReviewIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusApplicationReview.t),
      orderByList: orderByList?.call(CampusApplicationReview.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusApplicationReviewImpl extends CampusApplicationReview {
  _CampusApplicationReviewImpl({
    _is.UuidValue? id,
    required _is.UuidValue applicationId,
    required _is.UuidValue lecturerId,
    double? score,
    required String recommendation,
    DateTime? reviewedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         applicationId: applicationId,
         lecturerId: lecturerId,
         score: score,
         recommendation: recommendation,
         reviewedAt: reviewedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusApplicationReview]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusApplicationReview copyWith({
    Object? id = _Undefined,
    _is.UuidValue? applicationId,
    _is.UuidValue? lecturerId,
    Object? score = _Undefined,
    String? recommendation,
    Object? reviewedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusApplicationReview(
      id: id is _is.UuidValue? ? id : this.id,
      applicationId: applicationId ?? this.applicationId,
      lecturerId: lecturerId ?? this.lecturerId,
      score: score is double? ? score : this.score,
      recommendation: recommendation ?? this.recommendation,
      reviewedAt: reviewedAt is DateTime? ? reviewedAt : this.reviewedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusApplicationReviewUpdateTable
    extends _is.UpdateTable<CampusApplicationReviewTable> {
  CampusApplicationReviewUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> applicationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.applicationId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> lecturerId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.lecturerId,
    value,
  );

  _is.ColumnValue<double, double> score(double? value) => _is.ColumnValue(
    table.score,
    value,
  );

  _is.ColumnValue<String, String> recommendation(String value) =>
      _is.ColumnValue(
        table.recommendation,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> reviewedAt(DateTime? value) =>
      _is.ColumnValue(
        table.reviewedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusApplicationReviewTable extends _is.Table<_is.UuidValue?> {
  CampusApplicationReviewTable({super.tableRelation})
    : super(tableName: 'campus_application_reviews') {
    updateTable = CampusApplicationReviewUpdateTable(this);
    applicationId = _is.ColumnUuid(
      'applicationId',
      this,
    );
    lecturerId = _is.ColumnUuid(
      'lecturerId',
      this,
    );
    score = _is.ColumnDouble(
      'score',
      this,
    );
    recommendation = _is.ColumnString(
      'recommendation',
      this,
    );
    reviewedAt = _is.ColumnDateTime(
      'reviewedAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusApplicationReviewUpdateTable updateTable;

  late final _is.ColumnUuid applicationId;

  late final _is.ColumnUuid lecturerId;

  late final _is.ColumnDouble score;

  late final _is.ColumnString recommendation;

  late final _is.ColumnDateTime reviewedAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    applicationId,
    lecturerId,
    score,
    recommendation,
    reviewedAt,
    createdAt,
  ];
}

class CampusApplicationReviewInclude extends _is.IncludeObject {
  CampusApplicationReviewInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusApplicationReview.t;
}

class CampusApplicationReviewIncludeList extends _is.IncludeList {
  CampusApplicationReviewIncludeList._({
    _is.WhereExpressionBuilder<CampusApplicationReviewTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusApplicationReview.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusApplicationReview.t;
}

class CampusApplicationReviewRepository {
  const CampusApplicationReviewRepository._();

  /// Returns a list of [CampusApplicationReview]s matching the given query parameters.
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
  Future<List<CampusApplicationReview>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusApplicationReviewTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusApplicationReviewTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationReviewTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusApplicationReview>(
      where: where?.call(CampusApplicationReview.t),
      orderBy: orderBy?.call(CampusApplicationReview.t),
      orderByList: orderByList?.call(CampusApplicationReview.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusApplicationReview] matching the given query parameters.
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
  Future<CampusApplicationReview?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusApplicationReviewTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusApplicationReviewTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationReviewTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusApplicationReview>(
      where: where?.call(CampusApplicationReview.t),
      orderBy: orderBy?.call(CampusApplicationReview.t),
      orderByList: orderByList?.call(CampusApplicationReview.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusApplicationReview] by its [id] or null if no such row exists.
  Future<CampusApplicationReview?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusApplicationReview>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusApplicationReview]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusApplicationReview]s will have their `id` fields set.
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
  Future<List<CampusApplicationReview>> insert(
    _is.DatabaseSession session,
    List<CampusApplicationReview> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusApplicationReview>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusApplicationReview] and returns the inserted row.
  ///
  /// The returned [CampusApplicationReview] will have its `id` field set.
  Future<CampusApplicationReview> insertRow(
    _is.DatabaseSession session,
    CampusApplicationReview row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusApplicationReview>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusApplicationReview]s in the list and returns the resulting rows.
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
  /// The returned [CampusApplicationReview]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusApplicationReview>> upsert(
    _is.DatabaseSession session,
    List<CampusApplicationReview> rows, {
    required _is.ColumnSelections<CampusApplicationReviewTable> conflictColumns,
    _is.ColumnSelections<CampusApplicationReviewTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusApplicationReviewTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusApplicationReview>(
      rows,
      conflictColumns: conflictColumns(CampusApplicationReview.t),
      updateColumns: updateColumns?.call(CampusApplicationReview.t),
      updateWhere: updateWhere?.call(CampusApplicationReview.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusApplicationReview] and returns the resulting row.
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
  /// The returned [CampusApplicationReview] will have its `id` field set.
  Future<CampusApplicationReview?> upsertRow(
    _is.DatabaseSession session,
    CampusApplicationReview row, {
    required _is.ColumnSelections<CampusApplicationReviewTable> conflictColumns,
    _is.ColumnSelections<CampusApplicationReviewTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusApplicationReviewTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusApplicationReview>(
      row,
      conflictColumns: conflictColumns(CampusApplicationReview.t),
      updateColumns: updateColumns?.call(CampusApplicationReview.t),
      updateWhere: updateWhere?.call(CampusApplicationReview.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusApplicationReview]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusApplicationReview>> update(
    _is.DatabaseSession session,
    List<CampusApplicationReview> rows, {
    _is.ColumnSelections<CampusApplicationReviewTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusApplicationReview>(
      rows,
      columns: columns?.call(CampusApplicationReview.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusApplicationReview]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusApplicationReview> updateRow(
    _is.DatabaseSession session,
    CampusApplicationReview row, {
    _is.ColumnSelections<CampusApplicationReviewTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusApplicationReview>(
      row,
      columns: columns?.call(CampusApplicationReview.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusApplicationReview] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusApplicationReview?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusApplicationReviewUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusApplicationReview>(
      id,
      columnValues: columnValues(CampusApplicationReview.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusApplicationReview]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusApplicationReview>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusApplicationReviewUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusApplicationReviewTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusApplicationReviewTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationReviewTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusApplicationReview>(
      columnValues: columnValues(CampusApplicationReview.t.updateTable),
      where: where(CampusApplicationReview.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusApplicationReview.t),
      orderByList: orderByList?.call(CampusApplicationReview.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusApplicationReview]s in the list and returns the deleted rows.
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
  Future<List<CampusApplicationReview>> delete(
    _is.DatabaseSession session,
    List<CampusApplicationReview> rows, {
    _is.OrderByBuilder<CampusApplicationReviewTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationReviewTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusApplicationReview>(
      rows,
      orderBy: orderBy?.call(CampusApplicationReview.t),
      orderByList: orderByList?.call(CampusApplicationReview.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusApplicationReview].
  Future<CampusApplicationReview> deleteRow(
    _is.DatabaseSession session,
    CampusApplicationReview row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusApplicationReview>(
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
  Future<List<CampusApplicationReview>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusApplicationReviewTable> where,
    _is.OrderByBuilder<CampusApplicationReviewTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationReviewTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusApplicationReview>(
      where: where(CampusApplicationReview.t),
      orderBy: orderBy?.call(CampusApplicationReview.t),
      orderByList: orderByList?.call(CampusApplicationReview.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusApplicationReviewTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusApplicationReview>(
      where: where?.call(CampusApplicationReview.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusApplicationReview] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusApplicationReviewTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusApplicationReview>(
      where: where(CampusApplicationReview.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
