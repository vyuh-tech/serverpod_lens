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
abstract class CampusCoursePrerequisite
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusCoursePrerequisite._({
    this.id,
    required this.courseId,
    required this.prerequisiteId,
    this.minimumGrade,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCoursePrerequisite({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required _is.UuidValue prerequisiteId,
    String? minimumGrade,
    DateTime? createdAt,
  }) = _CampusCoursePrerequisiteImpl;

  factory CampusCoursePrerequisite.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusCoursePrerequisite(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      prerequisiteId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['prerequisiteId'],
      ),
      minimumGrade: jsonSerialization['minimumGrade'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusCoursePrerequisiteTable();

  static const db = CampusCoursePrerequisiteRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue courseId;

  _is.UuidValue prerequisiteId;

  String? minimumGrade;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusCoursePrerequisite]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusCoursePrerequisite copyWith({
    _is.UuidValue? id,
    _is.UuidValue? courseId,
    _is.UuidValue? prerequisiteId,
    String? minimumGrade,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCoursePrerequisite',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'prerequisiteId': prerequisiteId.toJson(),
      if (minimumGrade != null) 'minimumGrade': minimumGrade,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCoursePrerequisite',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'prerequisiteId': prerequisiteId.toJson(),
      if (minimumGrade != null) 'minimumGrade': minimumGrade,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusCoursePrerequisiteInclude include() {
    return CampusCoursePrerequisiteInclude._();
  }

  static CampusCoursePrerequisiteIncludeList includeList({
    _is.WhereExpressionBuilder<CampusCoursePrerequisiteTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCoursePrerequisiteTable>? orderBy,
    _is.OrderByListBuilder<CampusCoursePrerequisiteTable>? orderByList,
    CampusCoursePrerequisiteInclude? include,
  }) {
    return CampusCoursePrerequisiteIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCoursePrerequisite.t),
      orderByList: orderByList?.call(CampusCoursePrerequisite.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCoursePrerequisiteImpl extends CampusCoursePrerequisite {
  _CampusCoursePrerequisiteImpl({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required _is.UuidValue prerequisiteId,
    String? minimumGrade,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         prerequisiteId: prerequisiteId,
         minimumGrade: minimumGrade,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCoursePrerequisite]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusCoursePrerequisite copyWith({
    Object? id = _Undefined,
    _is.UuidValue? courseId,
    _is.UuidValue? prerequisiteId,
    Object? minimumGrade = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusCoursePrerequisite(
      id: id is _is.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      prerequisiteId: prerequisiteId ?? this.prerequisiteId,
      minimumGrade: minimumGrade is String? ? minimumGrade : this.minimumGrade,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusCoursePrerequisiteUpdateTable
    extends _is.UpdateTable<CampusCoursePrerequisiteTable> {
  CampusCoursePrerequisiteUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> courseId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.courseId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> prerequisiteId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.prerequisiteId,
    value,
  );

  _is.ColumnValue<String, String> minimumGrade(String? value) =>
      _is.ColumnValue(
        table.minimumGrade,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusCoursePrerequisiteTable extends _is.Table<_is.UuidValue?> {
  CampusCoursePrerequisiteTable({super.tableRelation})
    : super(tableName: 'campus_course_prerequisites') {
    updateTable = CampusCoursePrerequisiteUpdateTable(this);
    courseId = _is.ColumnUuid(
      'courseId',
      this,
    );
    prerequisiteId = _is.ColumnUuid(
      'prerequisiteId',
      this,
    );
    minimumGrade = _is.ColumnString(
      'minimumGrade',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusCoursePrerequisiteUpdateTable updateTable;

  late final _is.ColumnUuid courseId;

  late final _is.ColumnUuid prerequisiteId;

  late final _is.ColumnString minimumGrade;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    courseId,
    prerequisiteId,
    minimumGrade,
    createdAt,
  ];
}

class CampusCoursePrerequisiteInclude extends _is.IncludeObject {
  CampusCoursePrerequisiteInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCoursePrerequisite.t;
}

class CampusCoursePrerequisiteIncludeList extends _is.IncludeList {
  CampusCoursePrerequisiteIncludeList._({
    _is.WhereExpressionBuilder<CampusCoursePrerequisiteTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusCoursePrerequisite.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCoursePrerequisite.t;
}

class CampusCoursePrerequisiteRepository {
  const CampusCoursePrerequisiteRepository._();

  /// Returns a list of [CampusCoursePrerequisite]s matching the given query parameters.
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
  Future<List<CampusCoursePrerequisite>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCoursePrerequisiteTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCoursePrerequisiteTable>? orderBy,
    _is.OrderByListBuilder<CampusCoursePrerequisiteTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusCoursePrerequisite>(
      where: where?.call(CampusCoursePrerequisite.t),
      orderBy: orderBy?.call(CampusCoursePrerequisite.t),
      orderByList: orderByList?.call(CampusCoursePrerequisite.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusCoursePrerequisite] matching the given query parameters.
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
  Future<CampusCoursePrerequisite?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCoursePrerequisiteTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusCoursePrerequisiteTable>? orderBy,
    _is.OrderByListBuilder<CampusCoursePrerequisiteTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusCoursePrerequisite>(
      where: where?.call(CampusCoursePrerequisite.t),
      orderBy: orderBy?.call(CampusCoursePrerequisite.t),
      orderByList: orderByList?.call(CampusCoursePrerequisite.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusCoursePrerequisite] by its [id] or null if no such row exists.
  Future<CampusCoursePrerequisite?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusCoursePrerequisite>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusCoursePrerequisite]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusCoursePrerequisite]s will have their `id` fields set.
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
  Future<List<CampusCoursePrerequisite>> insert(
    _is.DatabaseSession session,
    List<CampusCoursePrerequisite> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusCoursePrerequisite>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusCoursePrerequisite] and returns the inserted row.
  ///
  /// The returned [CampusCoursePrerequisite] will have its `id` field set.
  Future<CampusCoursePrerequisite> insertRow(
    _is.DatabaseSession session,
    CampusCoursePrerequisite row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusCoursePrerequisite>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusCoursePrerequisite]s in the list and returns the resulting rows.
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
  /// The returned [CampusCoursePrerequisite]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCoursePrerequisite>> upsert(
    _is.DatabaseSession session,
    List<CampusCoursePrerequisite> rows, {
    required _is.ColumnSelections<CampusCoursePrerequisiteTable>
    conflictColumns,
    _is.ColumnSelections<CampusCoursePrerequisiteTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCoursePrerequisiteTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusCoursePrerequisite>(
      rows,
      conflictColumns: conflictColumns(CampusCoursePrerequisite.t),
      updateColumns: updateColumns?.call(CampusCoursePrerequisite.t),
      updateWhere: updateWhere?.call(CampusCoursePrerequisite.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusCoursePrerequisite] and returns the resulting row.
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
  /// The returned [CampusCoursePrerequisite] will have its `id` field set.
  Future<CampusCoursePrerequisite?> upsertRow(
    _is.DatabaseSession session,
    CampusCoursePrerequisite row, {
    required _is.ColumnSelections<CampusCoursePrerequisiteTable>
    conflictColumns,
    _is.ColumnSelections<CampusCoursePrerequisiteTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCoursePrerequisiteTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusCoursePrerequisite>(
      row,
      conflictColumns: conflictColumns(CampusCoursePrerequisite.t),
      updateColumns: updateColumns?.call(CampusCoursePrerequisite.t),
      updateWhere: updateWhere?.call(CampusCoursePrerequisite.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCoursePrerequisite]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCoursePrerequisite>> update(
    _is.DatabaseSession session,
    List<CampusCoursePrerequisite> rows, {
    _is.ColumnSelections<CampusCoursePrerequisiteTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusCoursePrerequisite>(
      rows,
      columns: columns?.call(CampusCoursePrerequisite.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusCoursePrerequisite]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusCoursePrerequisite> updateRow(
    _is.DatabaseSession session,
    CampusCoursePrerequisite row, {
    _is.ColumnSelections<CampusCoursePrerequisiteTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusCoursePrerequisite>(
      row,
      columns: columns?.call(CampusCoursePrerequisite.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusCoursePrerequisite] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusCoursePrerequisite?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusCoursePrerequisiteUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusCoursePrerequisite>(
      id,
      columnValues: columnValues(CampusCoursePrerequisite.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCoursePrerequisite]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCoursePrerequisite>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusCoursePrerequisiteUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusCoursePrerequisiteTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCoursePrerequisiteTable>? orderBy,
    _is.OrderByListBuilder<CampusCoursePrerequisiteTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusCoursePrerequisite>(
      columnValues: columnValues(CampusCoursePrerequisite.t.updateTable),
      where: where(CampusCoursePrerequisite.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCoursePrerequisite.t),
      orderByList: orderByList?.call(CampusCoursePrerequisite.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusCoursePrerequisite]s in the list and returns the deleted rows.
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
  Future<List<CampusCoursePrerequisite>> delete(
    _is.DatabaseSession session,
    List<CampusCoursePrerequisite> rows, {
    _is.OrderByBuilder<CampusCoursePrerequisiteTable>? orderBy,
    _is.OrderByListBuilder<CampusCoursePrerequisiteTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusCoursePrerequisite>(
      rows,
      orderBy: orderBy?.call(CampusCoursePrerequisite.t),
      orderByList: orderByList?.call(CampusCoursePrerequisite.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusCoursePrerequisite].
  Future<CampusCoursePrerequisite> deleteRow(
    _is.DatabaseSession session,
    CampusCoursePrerequisite row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusCoursePrerequisite>(
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
  Future<List<CampusCoursePrerequisite>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCoursePrerequisiteTable> where,
    _is.OrderByBuilder<CampusCoursePrerequisiteTable>? orderBy,
    _is.OrderByListBuilder<CampusCoursePrerequisiteTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusCoursePrerequisite>(
      where: where(CampusCoursePrerequisite.t),
      orderBy: orderBy?.call(CampusCoursePrerequisite.t),
      orderByList: orderByList?.call(CampusCoursePrerequisite.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCoursePrerequisiteTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusCoursePrerequisite>(
      where: where?.call(CampusCoursePrerequisite.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusCoursePrerequisite] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCoursePrerequisiteTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusCoursePrerequisite>(
      where: where(CampusCoursePrerequisite.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
