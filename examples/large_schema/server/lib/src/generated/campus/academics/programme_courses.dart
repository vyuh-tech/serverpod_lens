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
abstract class CampusProgrammeCourse
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusProgrammeCourse._({
    this.id,
    required this.programmeVersionId,
    required this.courseId,
    required this.required,
    required this.recommendedTerm,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusProgrammeCourse({
    _is.UuidValue? id,
    required _is.UuidValue programmeVersionId,
    required _is.UuidValue courseId,
    required bool required,
    required int recommendedTerm,
    DateTime? createdAt,
  }) = _CampusProgrammeCourseImpl;

  factory CampusProgrammeCourse.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusProgrammeCourse(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      programmeVersionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeVersionId'],
      ),
      courseId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      required: _is.BoolJsonExtension.fromJson(jsonSerialization['required']),
      recommendedTerm: jsonSerialization['recommendedTerm'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusProgrammeCourseTable();

  static const db = CampusProgrammeCourseRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue programmeVersionId;

  _is.UuidValue courseId;

  bool required;

  int recommendedTerm;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusProgrammeCourse]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusProgrammeCourse copyWith({
    _is.UuidValue? id,
    _is.UuidValue? programmeVersionId,
    _is.UuidValue? courseId,
    bool? required,
    int? recommendedTerm,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusProgrammeCourse',
      if (id != null) 'id': id?.toJson(),
      'programmeVersionId': programmeVersionId.toJson(),
      'courseId': courseId.toJson(),
      'required': required,
      'recommendedTerm': recommendedTerm,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusProgrammeCourse',
      if (id != null) 'id': id?.toJson(),
      'programmeVersionId': programmeVersionId.toJson(),
      'courseId': courseId.toJson(),
      'required': required,
      'recommendedTerm': recommendedTerm,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusProgrammeCourseInclude include() {
    return CampusProgrammeCourseInclude._();
  }

  static CampusProgrammeCourseIncludeList includeList({
    _is.WhereExpressionBuilder<CampusProgrammeCourseTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusProgrammeCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeCourseTable>? orderByList,
    CampusProgrammeCourseInclude? include,
  }) {
    return CampusProgrammeCourseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusProgrammeCourse.t),
      orderByList: orderByList?.call(CampusProgrammeCourse.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusProgrammeCourseImpl extends CampusProgrammeCourse {
  _CampusProgrammeCourseImpl({
    _is.UuidValue? id,
    required _is.UuidValue programmeVersionId,
    required _is.UuidValue courseId,
    required bool required,
    required int recommendedTerm,
    DateTime? createdAt,
  }) : super._(
         id: id,
         programmeVersionId: programmeVersionId,
         courseId: courseId,
         required: required,
         recommendedTerm: recommendedTerm,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusProgrammeCourse]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusProgrammeCourse copyWith({
    Object? id = _Undefined,
    _is.UuidValue? programmeVersionId,
    _is.UuidValue? courseId,
    bool? required,
    int? recommendedTerm,
    DateTime? createdAt,
  }) {
    return CampusProgrammeCourse(
      id: id is _is.UuidValue? ? id : this.id,
      programmeVersionId: programmeVersionId ?? this.programmeVersionId,
      courseId: courseId ?? this.courseId,
      required: required ?? this.required,
      recommendedTerm: recommendedTerm ?? this.recommendedTerm,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusProgrammeCourseUpdateTable
    extends _is.UpdateTable<CampusProgrammeCourseTable> {
  CampusProgrammeCourseUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> programmeVersionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.programmeVersionId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> courseId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.courseId,
        value,
      );

  _is.ColumnValue<bool, bool> required(bool value) => _is.ColumnValue(
    table.required,
    value,
  );

  _is.ColumnValue<int, int> recommendedTerm(int value) => _is.ColumnValue(
    table.recommendedTerm,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusProgrammeCourseTable extends _is.Table<_is.UuidValue?> {
  CampusProgrammeCourseTable({super.tableRelation})
    : super(tableName: 'campus_programme_courses') {
    updateTable = CampusProgrammeCourseUpdateTable(this);
    programmeVersionId = _is.ColumnUuid(
      'programmeVersionId',
      this,
    );
    courseId = _is.ColumnUuid(
      'courseId',
      this,
    );
    required = _is.ColumnBool(
      'required',
      this,
    );
    recommendedTerm = _is.ColumnInt(
      'recommendedTerm',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusProgrammeCourseUpdateTable updateTable;

  late final _is.ColumnUuid programmeVersionId;

  late final _is.ColumnUuid courseId;

  late final _is.ColumnBool required;

  late final _is.ColumnInt recommendedTerm;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    programmeVersionId,
    courseId,
    required,
    recommendedTerm,
    createdAt,
  ];
}

class CampusProgrammeCourseInclude extends _is.IncludeObject {
  CampusProgrammeCourseInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusProgrammeCourse.t;
}

class CampusProgrammeCourseIncludeList extends _is.IncludeList {
  CampusProgrammeCourseIncludeList._({
    _is.WhereExpressionBuilder<CampusProgrammeCourseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusProgrammeCourse.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusProgrammeCourse.t;
}

class CampusProgrammeCourseRepository {
  const CampusProgrammeCourseRepository._();

  /// Returns a list of [CampusProgrammeCourse]s matching the given query parameters.
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
  Future<List<CampusProgrammeCourse>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusProgrammeCourseTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusProgrammeCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeCourseTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusProgrammeCourse>(
      where: where?.call(CampusProgrammeCourse.t),
      orderBy: orderBy?.call(CampusProgrammeCourse.t),
      orderByList: orderByList?.call(CampusProgrammeCourse.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusProgrammeCourse] matching the given query parameters.
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
  Future<CampusProgrammeCourse?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusProgrammeCourseTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusProgrammeCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeCourseTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusProgrammeCourse>(
      where: where?.call(CampusProgrammeCourse.t),
      orderBy: orderBy?.call(CampusProgrammeCourse.t),
      orderByList: orderByList?.call(CampusProgrammeCourse.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusProgrammeCourse] by its [id] or null if no such row exists.
  Future<CampusProgrammeCourse?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusProgrammeCourse>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusProgrammeCourse]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusProgrammeCourse]s will have their `id` fields set.
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
  Future<List<CampusProgrammeCourse>> insert(
    _is.DatabaseSession session,
    List<CampusProgrammeCourse> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusProgrammeCourse>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusProgrammeCourse] and returns the inserted row.
  ///
  /// The returned [CampusProgrammeCourse] will have its `id` field set.
  Future<CampusProgrammeCourse> insertRow(
    _is.DatabaseSession session,
    CampusProgrammeCourse row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusProgrammeCourse>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusProgrammeCourse]s in the list and returns the resulting rows.
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
  /// The returned [CampusProgrammeCourse]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusProgrammeCourse>> upsert(
    _is.DatabaseSession session,
    List<CampusProgrammeCourse> rows, {
    required _is.ColumnSelections<CampusProgrammeCourseTable> conflictColumns,
    _is.ColumnSelections<CampusProgrammeCourseTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusProgrammeCourseTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusProgrammeCourse>(
      rows,
      conflictColumns: conflictColumns(CampusProgrammeCourse.t),
      updateColumns: updateColumns?.call(CampusProgrammeCourse.t),
      updateWhere: updateWhere?.call(CampusProgrammeCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusProgrammeCourse] and returns the resulting row.
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
  /// The returned [CampusProgrammeCourse] will have its `id` field set.
  Future<CampusProgrammeCourse?> upsertRow(
    _is.DatabaseSession session,
    CampusProgrammeCourse row, {
    required _is.ColumnSelections<CampusProgrammeCourseTable> conflictColumns,
    _is.ColumnSelections<CampusProgrammeCourseTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusProgrammeCourseTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusProgrammeCourse>(
      row,
      conflictColumns: conflictColumns(CampusProgrammeCourse.t),
      updateColumns: updateColumns?.call(CampusProgrammeCourse.t),
      updateWhere: updateWhere?.call(CampusProgrammeCourse.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusProgrammeCourse]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusProgrammeCourse>> update(
    _is.DatabaseSession session,
    List<CampusProgrammeCourse> rows, {
    _is.ColumnSelections<CampusProgrammeCourseTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusProgrammeCourse>(
      rows,
      columns: columns?.call(CampusProgrammeCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusProgrammeCourse]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusProgrammeCourse> updateRow(
    _is.DatabaseSession session,
    CampusProgrammeCourse row, {
    _is.ColumnSelections<CampusProgrammeCourseTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusProgrammeCourse>(
      row,
      columns: columns?.call(CampusProgrammeCourse.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusProgrammeCourse] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusProgrammeCourse?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusProgrammeCourseUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusProgrammeCourse>(
      id,
      columnValues: columnValues(CampusProgrammeCourse.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusProgrammeCourse]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusProgrammeCourse>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusProgrammeCourseUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusProgrammeCourseTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusProgrammeCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeCourseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusProgrammeCourse>(
      columnValues: columnValues(CampusProgrammeCourse.t.updateTable),
      where: where(CampusProgrammeCourse.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusProgrammeCourse.t),
      orderByList: orderByList?.call(CampusProgrammeCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusProgrammeCourse]s in the list and returns the deleted rows.
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
  Future<List<CampusProgrammeCourse>> delete(
    _is.DatabaseSession session,
    List<CampusProgrammeCourse> rows, {
    _is.OrderByBuilder<CampusProgrammeCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeCourseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusProgrammeCourse>(
      rows,
      orderBy: orderBy?.call(CampusProgrammeCourse.t),
      orderByList: orderByList?.call(CampusProgrammeCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusProgrammeCourse].
  Future<CampusProgrammeCourse> deleteRow(
    _is.DatabaseSession session,
    CampusProgrammeCourse row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusProgrammeCourse>(
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
  Future<List<CampusProgrammeCourse>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusProgrammeCourseTable> where,
    _is.OrderByBuilder<CampusProgrammeCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeCourseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusProgrammeCourse>(
      where: where(CampusProgrammeCourse.t),
      orderBy: orderBy?.call(CampusProgrammeCourse.t),
      orderByList: orderByList?.call(CampusProgrammeCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusProgrammeCourseTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusProgrammeCourse>(
      where: where?.call(CampusProgrammeCourse.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusProgrammeCourse] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusProgrammeCourseTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusProgrammeCourse>(
      where: where(CampusProgrammeCourse.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
