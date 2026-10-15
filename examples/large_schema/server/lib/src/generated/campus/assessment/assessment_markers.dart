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
abstract class CampusAssessmentMarker
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusAssessmentMarker._({
    this.id,
    required this.assessmentId,
    required this.lecturerId,
    required this.moderation,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAssessmentMarker({
    _is.UuidValue? id,
    required _is.UuidValue assessmentId,
    required _is.UuidValue lecturerId,
    required bool moderation,
    DateTime? createdAt,
  }) = _CampusAssessmentMarkerImpl;

  factory CampusAssessmentMarker.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusAssessmentMarker(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      assessmentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['assessmentId'],
      ),
      lecturerId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      moderation: _is.BoolJsonExtension.fromJson(
        jsonSerialization['moderation'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusAssessmentMarkerTable();

  static const db = CampusAssessmentMarkerRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue assessmentId;

  _is.UuidValue lecturerId;

  bool moderation;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusAssessmentMarker]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusAssessmentMarker copyWith({
    _is.UuidValue? id,
    _is.UuidValue? assessmentId,
    _is.UuidValue? lecturerId,
    bool? moderation,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAssessmentMarker',
      if (id != null) 'id': id?.toJson(),
      'assessmentId': assessmentId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'moderation': moderation,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAssessmentMarker',
      if (id != null) 'id': id?.toJson(),
      'assessmentId': assessmentId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'moderation': moderation,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusAssessmentMarkerInclude include() {
    return CampusAssessmentMarkerInclude._();
  }

  static CampusAssessmentMarkerIncludeList includeList({
    _is.WhereExpressionBuilder<CampusAssessmentMarkerTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAssessmentMarkerTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentMarkerTable>? orderByList,
    CampusAssessmentMarkerInclude? include,
  }) {
    return CampusAssessmentMarkerIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAssessmentMarker.t),
      orderByList: orderByList?.call(CampusAssessmentMarker.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAssessmentMarkerImpl extends CampusAssessmentMarker {
  _CampusAssessmentMarkerImpl({
    _is.UuidValue? id,
    required _is.UuidValue assessmentId,
    required _is.UuidValue lecturerId,
    required bool moderation,
    DateTime? createdAt,
  }) : super._(
         id: id,
         assessmentId: assessmentId,
         lecturerId: lecturerId,
         moderation: moderation,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAssessmentMarker]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusAssessmentMarker copyWith({
    Object? id = _Undefined,
    _is.UuidValue? assessmentId,
    _is.UuidValue? lecturerId,
    bool? moderation,
    DateTime? createdAt,
  }) {
    return CampusAssessmentMarker(
      id: id is _is.UuidValue? ? id : this.id,
      assessmentId: assessmentId ?? this.assessmentId,
      lecturerId: lecturerId ?? this.lecturerId,
      moderation: moderation ?? this.moderation,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusAssessmentMarkerUpdateTable
    extends _is.UpdateTable<CampusAssessmentMarkerTable> {
  CampusAssessmentMarkerUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> assessmentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.assessmentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> lecturerId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.lecturerId,
    value,
  );

  _is.ColumnValue<bool, bool> moderation(bool value) => _is.ColumnValue(
    table.moderation,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusAssessmentMarkerTable extends _is.Table<_is.UuidValue?> {
  CampusAssessmentMarkerTable({super.tableRelation})
    : super(tableName: 'campus_assessment_markers') {
    updateTable = CampusAssessmentMarkerUpdateTable(this);
    assessmentId = _is.ColumnUuid(
      'assessmentId',
      this,
    );
    lecturerId = _is.ColumnUuid(
      'lecturerId',
      this,
    );
    moderation = _is.ColumnBool(
      'moderation',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusAssessmentMarkerUpdateTable updateTable;

  late final _is.ColumnUuid assessmentId;

  late final _is.ColumnUuid lecturerId;

  late final _is.ColumnBool moderation;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    assessmentId,
    lecturerId,
    moderation,
    createdAt,
  ];
}

class CampusAssessmentMarkerInclude extends _is.IncludeObject {
  CampusAssessmentMarkerInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAssessmentMarker.t;
}

class CampusAssessmentMarkerIncludeList extends _is.IncludeList {
  CampusAssessmentMarkerIncludeList._({
    _is.WhereExpressionBuilder<CampusAssessmentMarkerTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusAssessmentMarker.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAssessmentMarker.t;
}

class CampusAssessmentMarkerRepository {
  const CampusAssessmentMarkerRepository._();

  /// Returns a list of [CampusAssessmentMarker]s matching the given query parameters.
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
  Future<List<CampusAssessmentMarker>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAssessmentMarkerTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAssessmentMarkerTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentMarkerTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusAssessmentMarker>(
      where: where?.call(CampusAssessmentMarker.t),
      orderBy: orderBy?.call(CampusAssessmentMarker.t),
      orderByList: orderByList?.call(CampusAssessmentMarker.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusAssessmentMarker] matching the given query parameters.
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
  Future<CampusAssessmentMarker?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAssessmentMarkerTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusAssessmentMarkerTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentMarkerTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusAssessmentMarker>(
      where: where?.call(CampusAssessmentMarker.t),
      orderBy: orderBy?.call(CampusAssessmentMarker.t),
      orderByList: orderByList?.call(CampusAssessmentMarker.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusAssessmentMarker] by its [id] or null if no such row exists.
  Future<CampusAssessmentMarker?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusAssessmentMarker>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusAssessmentMarker]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusAssessmentMarker]s will have their `id` fields set.
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
  Future<List<CampusAssessmentMarker>> insert(
    _is.DatabaseSession session,
    List<CampusAssessmentMarker> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusAssessmentMarker>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusAssessmentMarker] and returns the inserted row.
  ///
  /// The returned [CampusAssessmentMarker] will have its `id` field set.
  Future<CampusAssessmentMarker> insertRow(
    _is.DatabaseSession session,
    CampusAssessmentMarker row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusAssessmentMarker>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusAssessmentMarker]s in the list and returns the resulting rows.
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
  /// The returned [CampusAssessmentMarker]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAssessmentMarker>> upsert(
    _is.DatabaseSession session,
    List<CampusAssessmentMarker> rows, {
    required _is.ColumnSelections<CampusAssessmentMarkerTable> conflictColumns,
    _is.ColumnSelections<CampusAssessmentMarkerTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAssessmentMarkerTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusAssessmentMarker>(
      rows,
      conflictColumns: conflictColumns(CampusAssessmentMarker.t),
      updateColumns: updateColumns?.call(CampusAssessmentMarker.t),
      updateWhere: updateWhere?.call(CampusAssessmentMarker.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusAssessmentMarker] and returns the resulting row.
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
  /// The returned [CampusAssessmentMarker] will have its `id` field set.
  Future<CampusAssessmentMarker?> upsertRow(
    _is.DatabaseSession session,
    CampusAssessmentMarker row, {
    required _is.ColumnSelections<CampusAssessmentMarkerTable> conflictColumns,
    _is.ColumnSelections<CampusAssessmentMarkerTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAssessmentMarkerTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusAssessmentMarker>(
      row,
      conflictColumns: conflictColumns(CampusAssessmentMarker.t),
      updateColumns: updateColumns?.call(CampusAssessmentMarker.t),
      updateWhere: updateWhere?.call(CampusAssessmentMarker.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAssessmentMarker]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAssessmentMarker>> update(
    _is.DatabaseSession session,
    List<CampusAssessmentMarker> rows, {
    _is.ColumnSelections<CampusAssessmentMarkerTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusAssessmentMarker>(
      rows,
      columns: columns?.call(CampusAssessmentMarker.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusAssessmentMarker]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusAssessmentMarker> updateRow(
    _is.DatabaseSession session,
    CampusAssessmentMarker row, {
    _is.ColumnSelections<CampusAssessmentMarkerTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusAssessmentMarker>(
      row,
      columns: columns?.call(CampusAssessmentMarker.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusAssessmentMarker] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusAssessmentMarker?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusAssessmentMarkerUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusAssessmentMarker>(
      id,
      columnValues: columnValues(CampusAssessmentMarker.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAssessmentMarker]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAssessmentMarker>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusAssessmentMarkerUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusAssessmentMarkerTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAssessmentMarkerTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentMarkerTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusAssessmentMarker>(
      columnValues: columnValues(CampusAssessmentMarker.t.updateTable),
      where: where(CampusAssessmentMarker.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAssessmentMarker.t),
      orderByList: orderByList?.call(CampusAssessmentMarker.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusAssessmentMarker]s in the list and returns the deleted rows.
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
  Future<List<CampusAssessmentMarker>> delete(
    _is.DatabaseSession session,
    List<CampusAssessmentMarker> rows, {
    _is.OrderByBuilder<CampusAssessmentMarkerTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentMarkerTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusAssessmentMarker>(
      rows,
      orderBy: orderBy?.call(CampusAssessmentMarker.t),
      orderByList: orderByList?.call(CampusAssessmentMarker.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusAssessmentMarker].
  Future<CampusAssessmentMarker> deleteRow(
    _is.DatabaseSession session,
    CampusAssessmentMarker row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusAssessmentMarker>(
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
  Future<List<CampusAssessmentMarker>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAssessmentMarkerTable> where,
    _is.OrderByBuilder<CampusAssessmentMarkerTable>? orderBy,
    _is.OrderByListBuilder<CampusAssessmentMarkerTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusAssessmentMarker>(
      where: where(CampusAssessmentMarker.t),
      orderBy: orderBy?.call(CampusAssessmentMarker.t),
      orderByList: orderByList?.call(CampusAssessmentMarker.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAssessmentMarkerTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusAssessmentMarker>(
      where: where?.call(CampusAssessmentMarker.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusAssessmentMarker] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAssessmentMarkerTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusAssessmentMarker>(
      where: where(CampusAssessmentMarker.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
