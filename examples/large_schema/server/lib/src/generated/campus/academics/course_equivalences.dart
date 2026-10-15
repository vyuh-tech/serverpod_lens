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

/// Fictional university fixture: academics.
abstract class CampusCourseEquivalence
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusCourseEquivalence._({
    this.id,
    required this.courseId,
    required this.equivalentCourseId,
    required this.approvedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCourseEquivalence({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required _is.UuidValue equivalentCourseId,
    required DateTime approvedAt,
    DateTime? createdAt,
  }) = _CampusCourseEquivalenceImpl;

  factory CampusCourseEquivalence.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusCourseEquivalence(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      equivalentCourseId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['equivalentCourseId'],
      ),
      approvedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['approvedAt'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusCourseEquivalenceTable();

  static const db = CampusCourseEquivalenceRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue courseId;

  _is.UuidValue equivalentCourseId;

  DateTime approvedAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusCourseEquivalence]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusCourseEquivalence copyWith({
    _is.UuidValue? id,
    _is.UuidValue? courseId,
    _is.UuidValue? equivalentCourseId,
    DateTime? approvedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCourseEquivalence',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'equivalentCourseId': equivalentCourseId.toJson(),
      'approvedAt': approvedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCourseEquivalence',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'equivalentCourseId': equivalentCourseId.toJson(),
      'approvedAt': approvedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusCourseEquivalenceInclude include() {
    return CampusCourseEquivalenceInclude._();
  }

  static CampusCourseEquivalenceIncludeList includeList({
    _is.WhereExpressionBuilder<CampusCourseEquivalenceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseEquivalenceTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseEquivalenceTable>? orderByList,
    CampusCourseEquivalenceInclude? include,
  }) {
    return CampusCourseEquivalenceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCourseEquivalence.t),
      orderByList: orderByList?.call(CampusCourseEquivalence.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCourseEquivalenceImpl extends CampusCourseEquivalence {
  _CampusCourseEquivalenceImpl({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required _is.UuidValue equivalentCourseId,
    required DateTime approvedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         equivalentCourseId: equivalentCourseId,
         approvedAt: approvedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCourseEquivalence]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusCourseEquivalence copyWith({
    Object? id = _Undefined,
    _is.UuidValue? courseId,
    _is.UuidValue? equivalentCourseId,
    DateTime? approvedAt,
    DateTime? createdAt,
  }) {
    return CampusCourseEquivalence(
      id: id is _is.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      equivalentCourseId: equivalentCourseId ?? this.equivalentCourseId,
      approvedAt: approvedAt ?? this.approvedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusCourseEquivalenceUpdateTable
    extends _is.UpdateTable<CampusCourseEquivalenceTable> {
  CampusCourseEquivalenceUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> courseId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.courseId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> equivalentCourseId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.equivalentCourseId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> approvedAt(DateTime value) =>
      _is.ColumnValue(
        table.approvedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusCourseEquivalenceTable extends _is.Table<_is.UuidValue?> {
  CampusCourseEquivalenceTable({super.tableRelation})
    : super(tableName: 'campus_course_equivalences') {
    updateTable = CampusCourseEquivalenceUpdateTable(this);
    courseId = _is.ColumnUuid(
      'courseId',
      this,
    );
    equivalentCourseId = _is.ColumnUuid(
      'equivalentCourseId',
      this,
    );
    approvedAt = _is.ColumnDateTime(
      'approvedAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusCourseEquivalenceUpdateTable updateTable;

  late final _is.ColumnUuid courseId;

  late final _is.ColumnUuid equivalentCourseId;

  late final _is.ColumnDateTime approvedAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    courseId,
    equivalentCourseId,
    approvedAt,
    createdAt,
  ];
}

class CampusCourseEquivalenceInclude extends _is.IncludeObject {
  CampusCourseEquivalenceInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCourseEquivalence.t;
}

class CampusCourseEquivalenceIncludeList extends _is.IncludeList {
  CampusCourseEquivalenceIncludeList._({
    _is.WhereExpressionBuilder<CampusCourseEquivalenceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusCourseEquivalence.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCourseEquivalence.t;
}

class CampusCourseEquivalenceRepository {
  const CampusCourseEquivalenceRepository._();

  /// Returns a list of [CampusCourseEquivalence]s matching the given query parameters.
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
  Future<List<CampusCourseEquivalence>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseEquivalenceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseEquivalenceTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseEquivalenceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusCourseEquivalence>(
      where: where?.call(CampusCourseEquivalence.t),
      orderBy: orderBy?.call(CampusCourseEquivalence.t),
      orderByList: orderByList?.call(CampusCourseEquivalence.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusCourseEquivalence] matching the given query parameters.
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
  Future<CampusCourseEquivalence?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseEquivalenceTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusCourseEquivalenceTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseEquivalenceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusCourseEquivalence>(
      where: where?.call(CampusCourseEquivalence.t),
      orderBy: orderBy?.call(CampusCourseEquivalence.t),
      orderByList: orderByList?.call(CampusCourseEquivalence.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusCourseEquivalence] by its [id] or null if no such row exists.
  Future<CampusCourseEquivalence?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusCourseEquivalence>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusCourseEquivalence]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusCourseEquivalence]s will have their `id` fields set.
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
  Future<List<CampusCourseEquivalence>> insert(
    _is.DatabaseSession session,
    List<CampusCourseEquivalence> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusCourseEquivalence>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusCourseEquivalence] and returns the inserted row.
  ///
  /// The returned [CampusCourseEquivalence] will have its `id` field set.
  Future<CampusCourseEquivalence> insertRow(
    _is.DatabaseSession session,
    CampusCourseEquivalence row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusCourseEquivalence>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusCourseEquivalence]s in the list and returns the resulting rows.
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
  /// The returned [CampusCourseEquivalence]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseEquivalence>> upsert(
    _is.DatabaseSession session,
    List<CampusCourseEquivalence> rows, {
    required _is.ColumnSelections<CampusCourseEquivalenceTable> conflictColumns,
    _is.ColumnSelections<CampusCourseEquivalenceTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCourseEquivalenceTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusCourseEquivalence>(
      rows,
      conflictColumns: conflictColumns(CampusCourseEquivalence.t),
      updateColumns: updateColumns?.call(CampusCourseEquivalence.t),
      updateWhere: updateWhere?.call(CampusCourseEquivalence.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusCourseEquivalence] and returns the resulting row.
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
  /// The returned [CampusCourseEquivalence] will have its `id` field set.
  Future<CampusCourseEquivalence?> upsertRow(
    _is.DatabaseSession session,
    CampusCourseEquivalence row, {
    required _is.ColumnSelections<CampusCourseEquivalenceTable> conflictColumns,
    _is.ColumnSelections<CampusCourseEquivalenceTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCourseEquivalenceTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusCourseEquivalence>(
      row,
      conflictColumns: conflictColumns(CampusCourseEquivalence.t),
      updateColumns: updateColumns?.call(CampusCourseEquivalence.t),
      updateWhere: updateWhere?.call(CampusCourseEquivalence.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCourseEquivalence]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseEquivalence>> update(
    _is.DatabaseSession session,
    List<CampusCourseEquivalence> rows, {
    _is.ColumnSelections<CampusCourseEquivalenceTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusCourseEquivalence>(
      rows,
      columns: columns?.call(CampusCourseEquivalence.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusCourseEquivalence]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusCourseEquivalence> updateRow(
    _is.DatabaseSession session,
    CampusCourseEquivalence row, {
    _is.ColumnSelections<CampusCourseEquivalenceTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusCourseEquivalence>(
      row,
      columns: columns?.call(CampusCourseEquivalence.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusCourseEquivalence] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusCourseEquivalence?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusCourseEquivalenceUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusCourseEquivalence>(
      id,
      columnValues: columnValues(CampusCourseEquivalence.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCourseEquivalence]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseEquivalence>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusCourseEquivalenceUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusCourseEquivalenceTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseEquivalenceTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseEquivalenceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusCourseEquivalence>(
      columnValues: columnValues(CampusCourseEquivalence.t.updateTable),
      where: where(CampusCourseEquivalence.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCourseEquivalence.t),
      orderByList: orderByList?.call(CampusCourseEquivalence.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusCourseEquivalence]s in the list and returns the deleted rows.
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
  Future<List<CampusCourseEquivalence>> delete(
    _is.DatabaseSession session,
    List<CampusCourseEquivalence> rows, {
    _is.OrderByBuilder<CampusCourseEquivalenceTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseEquivalenceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusCourseEquivalence>(
      rows,
      orderBy: orderBy?.call(CampusCourseEquivalence.t),
      orderByList: orderByList?.call(CampusCourseEquivalence.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusCourseEquivalence].
  Future<CampusCourseEquivalence> deleteRow(
    _is.DatabaseSession session,
    CampusCourseEquivalence row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusCourseEquivalence>(
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
  Future<List<CampusCourseEquivalence>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCourseEquivalenceTable> where,
    _is.OrderByBuilder<CampusCourseEquivalenceTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseEquivalenceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusCourseEquivalence>(
      where: where(CampusCourseEquivalence.t),
      orderBy: orderBy?.call(CampusCourseEquivalence.t),
      orderByList: orderByList?.call(CampusCourseEquivalence.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseEquivalenceTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusCourseEquivalence>(
      where: where?.call(CampusCourseEquivalence.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusCourseEquivalence] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCourseEquivalenceTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusCourseEquivalence>(
      where: where(CampusCourseEquivalence.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
