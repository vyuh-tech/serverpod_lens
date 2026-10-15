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
abstract class CampusAssessmentComponent
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusAssessmentComponent._({
    this.id,
    required this.assessmentId,
    required this.title,
    required this.maximumScore,
    required this.sequence,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAssessmentComponent({
    _is.UuidValue? id,
    required _is.UuidValue assessmentId,
    required String title,
    required double maximumScore,
    required int sequence,
    DateTime? createdAt,
  }) = _CampusAssessmentComponentImpl;

  factory CampusAssessmentComponent.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusAssessmentComponent(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      assessmentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['assessmentId'],
      ),
      title: jsonSerialization['title'] as String,
      maximumScore: (jsonSerialization['maximumScore'] as num).toDouble(),
      sequence: jsonSerialization['sequence'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusAssessmentComponentTable();

  static const db = CampusAssessmentComponentRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue assessmentId;

  String title;

  double maximumScore;

  int sequence;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusAssessmentComponent]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusAssessmentComponent copyWith({
    _is.UuidValue? id,
    _is.UuidValue? assessmentId,
    String? title,
    double? maximumScore,
    int? sequence,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAssessmentComponent',
      if (id != null) 'id': id?.toJson(),
      'assessmentId': assessmentId.toJson(),
      'title': title,
      'maximumScore': maximumScore,
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAssessmentComponent',
      if (id != null) 'id': id?.toJson(),
      'assessmentId': assessmentId.toJson(),
      'title': title,
      'maximumScore': maximumScore,
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusAssessmentComponentInclude include() {
    return CampusAssessmentComponentInclude._();
  }

  static CampusAssessmentComponentIncludeList includeList({
    _is.WhereExpressionBuilder<CampusAssessmentComponentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAssessmentComponentTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentComponentTable>? orderByList,
    CampusAssessmentComponentInclude? include,
  }) {
    return CampusAssessmentComponentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAssessmentComponent.t),
      orderByList: orderByList?.call(CampusAssessmentComponent.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAssessmentComponentImpl extends CampusAssessmentComponent {
  _CampusAssessmentComponentImpl({
    _is.UuidValue? id,
    required _is.UuidValue assessmentId,
    required String title,
    required double maximumScore,
    required int sequence,
    DateTime? createdAt,
  }) : super._(
         id: id,
         assessmentId: assessmentId,
         title: title,
         maximumScore: maximumScore,
         sequence: sequence,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAssessmentComponent]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusAssessmentComponent copyWith({
    Object? id = _Undefined,
    _is.UuidValue? assessmentId,
    String? title,
    double? maximumScore,
    int? sequence,
    DateTime? createdAt,
  }) {
    return CampusAssessmentComponent(
      id: id is _is.UuidValue? ? id : this.id,
      assessmentId: assessmentId ?? this.assessmentId,
      title: title ?? this.title,
      maximumScore: maximumScore ?? this.maximumScore,
      sequence: sequence ?? this.sequence,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusAssessmentComponentUpdateTable
    extends _is.UpdateTable<CampusAssessmentComponentTable> {
  CampusAssessmentComponentUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> assessmentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.assessmentId,
    value,
  );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<double, double> maximumScore(double value) => _is.ColumnValue(
    table.maximumScore,
    value,
  );

  _is.ColumnValue<int, int> sequence(int value) => _is.ColumnValue(
    table.sequence,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusAssessmentComponentTable extends _is.Table<_is.UuidValue?> {
  CampusAssessmentComponentTable({super.tableRelation})
    : super(tableName: 'campus_assessment_components') {
    updateTable = CampusAssessmentComponentUpdateTable(this);
    assessmentId = _is.ColumnUuid(
      'assessmentId',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    maximumScore = _is.ColumnDouble(
      'maximumScore',
      this,
    );
    sequence = _is.ColumnInt(
      'sequence',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusAssessmentComponentUpdateTable updateTable;

  late final _is.ColumnUuid assessmentId;

  late final _is.ColumnString title;

  late final _is.ColumnDouble maximumScore;

  late final _is.ColumnInt sequence;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    assessmentId,
    title,
    maximumScore,
    sequence,
    createdAt,
  ];
}

class CampusAssessmentComponentInclude extends _is.IncludeObject {
  CampusAssessmentComponentInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAssessmentComponent.t;
}

class CampusAssessmentComponentIncludeList extends _is.IncludeList {
  CampusAssessmentComponentIncludeList._({
    _is.WhereExpressionBuilder<CampusAssessmentComponentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusAssessmentComponent.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAssessmentComponent.t;
}

class CampusAssessmentComponentRepository {
  const CampusAssessmentComponentRepository._();

  /// Returns a list of [CampusAssessmentComponent]s matching the given query parameters.
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
  Future<List<CampusAssessmentComponent>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAssessmentComponentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAssessmentComponentTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentComponentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusAssessmentComponent>(
      where: where?.call(CampusAssessmentComponent.t),
      orderBy: orderBy?.call(CampusAssessmentComponent.t),
      orderByList: orderByList?.call(CampusAssessmentComponent.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusAssessmentComponent] matching the given query parameters.
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
  Future<CampusAssessmentComponent?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAssessmentComponentTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusAssessmentComponentTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentComponentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusAssessmentComponent>(
      where: where?.call(CampusAssessmentComponent.t),
      orderBy: orderBy?.call(CampusAssessmentComponent.t),
      orderByList: orderByList?.call(CampusAssessmentComponent.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusAssessmentComponent] by its [id] or null if no such row exists.
  Future<CampusAssessmentComponent?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusAssessmentComponent>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusAssessmentComponent]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusAssessmentComponent]s will have their `id` fields set.
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
  Future<List<CampusAssessmentComponent>> insert(
    _is.DatabaseSession session,
    List<CampusAssessmentComponent> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusAssessmentComponent>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusAssessmentComponent] and returns the inserted row.
  ///
  /// The returned [CampusAssessmentComponent] will have its `id` field set.
  Future<CampusAssessmentComponent> insertRow(
    _is.DatabaseSession session,
    CampusAssessmentComponent row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusAssessmentComponent>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusAssessmentComponent]s in the list and returns the resulting rows.
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
  /// The returned [CampusAssessmentComponent]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAssessmentComponent>> upsert(
    _is.DatabaseSession session,
    List<CampusAssessmentComponent> rows, {
    required _is.ColumnSelections<CampusAssessmentComponentTable>
    conflictColumns,
    _is.ColumnSelections<CampusAssessmentComponentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAssessmentComponentTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusAssessmentComponent>(
      rows,
      conflictColumns: conflictColumns(CampusAssessmentComponent.t),
      updateColumns: updateColumns?.call(CampusAssessmentComponent.t),
      updateWhere: updateWhere?.call(CampusAssessmentComponent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusAssessmentComponent] and returns the resulting row.
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
  /// The returned [CampusAssessmentComponent] will have its `id` field set.
  Future<CampusAssessmentComponent?> upsertRow(
    _is.DatabaseSession session,
    CampusAssessmentComponent row, {
    required _is.ColumnSelections<CampusAssessmentComponentTable>
    conflictColumns,
    _is.ColumnSelections<CampusAssessmentComponentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAssessmentComponentTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusAssessmentComponent>(
      row,
      conflictColumns: conflictColumns(CampusAssessmentComponent.t),
      updateColumns: updateColumns?.call(CampusAssessmentComponent.t),
      updateWhere: updateWhere?.call(CampusAssessmentComponent.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAssessmentComponent]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAssessmentComponent>> update(
    _is.DatabaseSession session,
    List<CampusAssessmentComponent> rows, {
    _is.ColumnSelections<CampusAssessmentComponentTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusAssessmentComponent>(
      rows,
      columns: columns?.call(CampusAssessmentComponent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusAssessmentComponent]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusAssessmentComponent> updateRow(
    _is.DatabaseSession session,
    CampusAssessmentComponent row, {
    _is.ColumnSelections<CampusAssessmentComponentTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusAssessmentComponent>(
      row,
      columns: columns?.call(CampusAssessmentComponent.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusAssessmentComponent] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusAssessmentComponent?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusAssessmentComponentUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusAssessmentComponent>(
      id,
      columnValues: columnValues(CampusAssessmentComponent.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAssessmentComponent]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAssessmentComponent>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusAssessmentComponentUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusAssessmentComponentTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAssessmentComponentTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentComponentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusAssessmentComponent>(
      columnValues: columnValues(CampusAssessmentComponent.t.updateTable),
      where: where(CampusAssessmentComponent.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAssessmentComponent.t),
      orderByList: orderByList?.call(CampusAssessmentComponent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusAssessmentComponent]s in the list and returns the deleted rows.
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
  Future<List<CampusAssessmentComponent>> delete(
    _is.DatabaseSession session,
    List<CampusAssessmentComponent> rows, {
    _is.OrderByBuilder<CampusAssessmentComponentTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentComponentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusAssessmentComponent>(
      rows,
      orderBy: orderBy?.call(CampusAssessmentComponent.t),
      orderByList: orderByList?.call(CampusAssessmentComponent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusAssessmentComponent].
  Future<CampusAssessmentComponent> deleteRow(
    _is.DatabaseSession session,
    CampusAssessmentComponent row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusAssessmentComponent>(
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
  Future<List<CampusAssessmentComponent>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAssessmentComponentTable> where,
    _is.OrderByBuilder<CampusAssessmentComponentTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentComponentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusAssessmentComponent>(
      where: where(CampusAssessmentComponent.t),
      orderBy: orderBy?.call(CampusAssessmentComponent.t),
      orderByList: orderByList?.call(CampusAssessmentComponent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAssessmentComponentTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusAssessmentComponent>(
      where: where?.call(CampusAssessmentComponent.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusAssessmentComponent] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAssessmentComponentTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusAssessmentComponent>(
      where: where(CampusAssessmentComponent.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
