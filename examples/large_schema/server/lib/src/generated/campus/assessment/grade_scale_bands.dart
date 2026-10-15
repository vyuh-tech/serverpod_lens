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
abstract class CampusGradeScaleBand
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusGradeScaleBand._({
    this.id,
    required this.gradeScaleId,
    required this.label,
    required this.minimumScore,
    required this.maximumScore,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGradeScaleBand({
    _is.UuidValue? id,
    required _is.UuidValue gradeScaleId,
    required String label,
    required double minimumScore,
    required double maximumScore,
    DateTime? createdAt,
  }) = _CampusGradeScaleBandImpl;

  factory CampusGradeScaleBand.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusGradeScaleBand(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      gradeScaleId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['gradeScaleId'],
      ),
      label: jsonSerialization['label'] as String,
      minimumScore: (jsonSerialization['minimumScore'] as num).toDouble(),
      maximumScore: (jsonSerialization['maximumScore'] as num).toDouble(),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusGradeScaleBandTable();

  static const db = CampusGradeScaleBandRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue gradeScaleId;

  String label;

  double minimumScore;

  double maximumScore;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusGradeScaleBand]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusGradeScaleBand copyWith({
    _is.UuidValue? id,
    _is.UuidValue? gradeScaleId,
    String? label,
    double? minimumScore,
    double? maximumScore,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGradeScaleBand',
      if (id != null) 'id': id?.toJson(),
      'gradeScaleId': gradeScaleId.toJson(),
      'label': label,
      'minimumScore': minimumScore,
      'maximumScore': maximumScore,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGradeScaleBand',
      if (id != null) 'id': id?.toJson(),
      'gradeScaleId': gradeScaleId.toJson(),
      'label': label,
      'minimumScore': minimumScore,
      'maximumScore': maximumScore,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusGradeScaleBandInclude include() {
    return CampusGradeScaleBandInclude._();
  }

  static CampusGradeScaleBandIncludeList includeList({
    _is.WhereExpressionBuilder<CampusGradeScaleBandTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGradeScaleBandTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeScaleBandTable>? orderByList,
    CampusGradeScaleBandInclude? include,
  }) {
    return CampusGradeScaleBandIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGradeScaleBand.t),
      orderByList: orderByList?.call(CampusGradeScaleBand.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGradeScaleBandImpl extends CampusGradeScaleBand {
  _CampusGradeScaleBandImpl({
    _is.UuidValue? id,
    required _is.UuidValue gradeScaleId,
    required String label,
    required double minimumScore,
    required double maximumScore,
    DateTime? createdAt,
  }) : super._(
         id: id,
         gradeScaleId: gradeScaleId,
         label: label,
         minimumScore: minimumScore,
         maximumScore: maximumScore,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGradeScaleBand]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusGradeScaleBand copyWith({
    Object? id = _Undefined,
    _is.UuidValue? gradeScaleId,
    String? label,
    double? minimumScore,
    double? maximumScore,
    DateTime? createdAt,
  }) {
    return CampusGradeScaleBand(
      id: id is _is.UuidValue? ? id : this.id,
      gradeScaleId: gradeScaleId ?? this.gradeScaleId,
      label: label ?? this.label,
      minimumScore: minimumScore ?? this.minimumScore,
      maximumScore: maximumScore ?? this.maximumScore,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusGradeScaleBandUpdateTable
    extends _is.UpdateTable<CampusGradeScaleBandTable> {
  CampusGradeScaleBandUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> gradeScaleId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.gradeScaleId,
    value,
  );

  _is.ColumnValue<String, String> label(String value) => _is.ColumnValue(
    table.label,
    value,
  );

  _is.ColumnValue<double, double> minimumScore(double value) => _is.ColumnValue(
    table.minimumScore,
    value,
  );

  _is.ColumnValue<double, double> maximumScore(double value) => _is.ColumnValue(
    table.maximumScore,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusGradeScaleBandTable extends _is.Table<_is.UuidValue?> {
  CampusGradeScaleBandTable({super.tableRelation})
    : super(tableName: 'campus_grade_scale_bands') {
    updateTable = CampusGradeScaleBandUpdateTable(this);
    gradeScaleId = _is.ColumnUuid(
      'gradeScaleId',
      this,
    );
    label = _is.ColumnString(
      'label',
      this,
    );
    minimumScore = _is.ColumnDouble(
      'minimumScore',
      this,
    );
    maximumScore = _is.ColumnDouble(
      'maximumScore',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusGradeScaleBandUpdateTable updateTable;

  late final _is.ColumnUuid gradeScaleId;

  late final _is.ColumnString label;

  late final _is.ColumnDouble minimumScore;

  late final _is.ColumnDouble maximumScore;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    gradeScaleId,
    label,
    minimumScore,
    maximumScore,
    createdAt,
  ];
}

class CampusGradeScaleBandInclude extends _is.IncludeObject {
  CampusGradeScaleBandInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGradeScaleBand.t;
}

class CampusGradeScaleBandIncludeList extends _is.IncludeList {
  CampusGradeScaleBandIncludeList._({
    _is.WhereExpressionBuilder<CampusGradeScaleBandTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusGradeScaleBand.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGradeScaleBand.t;
}

class CampusGradeScaleBandRepository {
  const CampusGradeScaleBandRepository._();

  /// Returns a list of [CampusGradeScaleBand]s matching the given query parameters.
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
  Future<List<CampusGradeScaleBand>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGradeScaleBandTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGradeScaleBandTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeScaleBandTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusGradeScaleBand>(
      where: where?.call(CampusGradeScaleBand.t),
      orderBy: orderBy?.call(CampusGradeScaleBand.t),
      orderByList: orderByList?.call(CampusGradeScaleBand.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusGradeScaleBand] matching the given query parameters.
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
  Future<CampusGradeScaleBand?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGradeScaleBandTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusGradeScaleBandTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeScaleBandTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusGradeScaleBand>(
      where: where?.call(CampusGradeScaleBand.t),
      orderBy: orderBy?.call(CampusGradeScaleBand.t),
      orderByList: orderByList?.call(CampusGradeScaleBand.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusGradeScaleBand] by its [id] or null if no such row exists.
  Future<CampusGradeScaleBand?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusGradeScaleBand>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusGradeScaleBand]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusGradeScaleBand]s will have their `id` fields set.
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
  Future<List<CampusGradeScaleBand>> insert(
    _is.DatabaseSession session,
    List<CampusGradeScaleBand> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusGradeScaleBand>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusGradeScaleBand] and returns the inserted row.
  ///
  /// The returned [CampusGradeScaleBand] will have its `id` field set.
  Future<CampusGradeScaleBand> insertRow(
    _is.DatabaseSession session,
    CampusGradeScaleBand row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusGradeScaleBand>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusGradeScaleBand]s in the list and returns the resulting rows.
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
  /// The returned [CampusGradeScaleBand]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGradeScaleBand>> upsert(
    _is.DatabaseSession session,
    List<CampusGradeScaleBand> rows, {
    required _is.ColumnSelections<CampusGradeScaleBandTable> conflictColumns,
    _is.ColumnSelections<CampusGradeScaleBandTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGradeScaleBandTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusGradeScaleBand>(
      rows,
      conflictColumns: conflictColumns(CampusGradeScaleBand.t),
      updateColumns: updateColumns?.call(CampusGradeScaleBand.t),
      updateWhere: updateWhere?.call(CampusGradeScaleBand.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusGradeScaleBand] and returns the resulting row.
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
  /// The returned [CampusGradeScaleBand] will have its `id` field set.
  Future<CampusGradeScaleBand?> upsertRow(
    _is.DatabaseSession session,
    CampusGradeScaleBand row, {
    required _is.ColumnSelections<CampusGradeScaleBandTable> conflictColumns,
    _is.ColumnSelections<CampusGradeScaleBandTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGradeScaleBandTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusGradeScaleBand>(
      row,
      conflictColumns: conflictColumns(CampusGradeScaleBand.t),
      updateColumns: updateColumns?.call(CampusGradeScaleBand.t),
      updateWhere: updateWhere?.call(CampusGradeScaleBand.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGradeScaleBand]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGradeScaleBand>> update(
    _is.DatabaseSession session,
    List<CampusGradeScaleBand> rows, {
    _is.ColumnSelections<CampusGradeScaleBandTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusGradeScaleBand>(
      rows,
      columns: columns?.call(CampusGradeScaleBand.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusGradeScaleBand]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusGradeScaleBand> updateRow(
    _is.DatabaseSession session,
    CampusGradeScaleBand row, {
    _is.ColumnSelections<CampusGradeScaleBandTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusGradeScaleBand>(
      row,
      columns: columns?.call(CampusGradeScaleBand.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusGradeScaleBand] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusGradeScaleBand?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusGradeScaleBandUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusGradeScaleBand>(
      id,
      columnValues: columnValues(CampusGradeScaleBand.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGradeScaleBand]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGradeScaleBand>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusGradeScaleBandUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusGradeScaleBandTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGradeScaleBandTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeScaleBandTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusGradeScaleBand>(
      columnValues: columnValues(CampusGradeScaleBand.t.updateTable),
      where: where(CampusGradeScaleBand.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGradeScaleBand.t),
      orderByList: orderByList?.call(CampusGradeScaleBand.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusGradeScaleBand]s in the list and returns the deleted rows.
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
  Future<List<CampusGradeScaleBand>> delete(
    _is.DatabaseSession session,
    List<CampusGradeScaleBand> rows, {
    _is.OrderByBuilder<CampusGradeScaleBandTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeScaleBandTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusGradeScaleBand>(
      rows,
      orderBy: orderBy?.call(CampusGradeScaleBand.t),
      orderByList: orderByList?.call(CampusGradeScaleBand.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusGradeScaleBand].
  Future<CampusGradeScaleBand> deleteRow(
    _is.DatabaseSession session,
    CampusGradeScaleBand row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusGradeScaleBand>(
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
  Future<List<CampusGradeScaleBand>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGradeScaleBandTable> where,
    _is.OrderByBuilder<CampusGradeScaleBandTable>? orderBy,
    _is.OrderByListBuilder<CampusGradeScaleBandTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusGradeScaleBand>(
      where: where(CampusGradeScaleBand.t),
      orderBy: orderBy?.call(CampusGradeScaleBand.t),
      orderByList: orderByList?.call(CampusGradeScaleBand.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGradeScaleBandTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusGradeScaleBand>(
      where: where?.call(CampusGradeScaleBand.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusGradeScaleBand] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGradeScaleBandTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusGradeScaleBand>(
      where: where(CampusGradeScaleBand.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
