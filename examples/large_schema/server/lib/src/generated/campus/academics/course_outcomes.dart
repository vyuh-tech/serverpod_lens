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
abstract class CampusCourseOutcome
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusCourseOutcome._({
    this.id,
    required this.courseId,
    required this.code,
    required this.description,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCourseOutcome({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required String code,
    required String description,
    DateTime? createdAt,
  }) = _CampusCourseOutcomeImpl;

  factory CampusCourseOutcome.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusCourseOutcome(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      code: jsonSerialization['code'] as String,
      description: jsonSerialization['description'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusCourseOutcomeTable();

  static const db = CampusCourseOutcomeRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue courseId;

  String code;

  String description;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusCourseOutcome]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusCourseOutcome copyWith({
    _is.UuidValue? id,
    _is.UuidValue? courseId,
    String? code,
    String? description,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCourseOutcome',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'code': code,
      'description': description,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCourseOutcome',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'code': code,
      'description': description,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusCourseOutcomeInclude include() {
    return CampusCourseOutcomeInclude._();
  }

  static CampusCourseOutcomeIncludeList includeList({
    _is.WhereExpressionBuilder<CampusCourseOutcomeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseOutcomeTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseOutcomeTable>? orderByList,
    CampusCourseOutcomeInclude? include,
  }) {
    return CampusCourseOutcomeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCourseOutcome.t),
      orderByList: orderByList?.call(CampusCourseOutcome.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCourseOutcomeImpl extends CampusCourseOutcome {
  _CampusCourseOutcomeImpl({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required String code,
    required String description,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         code: code,
         description: description,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCourseOutcome]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusCourseOutcome copyWith({
    Object? id = _Undefined,
    _is.UuidValue? courseId,
    String? code,
    String? description,
    DateTime? createdAt,
  }) {
    return CampusCourseOutcome(
      id: id is _is.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      code: code ?? this.code,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusCourseOutcomeUpdateTable
    extends _is.UpdateTable<CampusCourseOutcomeTable> {
  CampusCourseOutcomeUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> courseId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.courseId,
        value,
      );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> description(String value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusCourseOutcomeTable extends _is.Table<_is.UuidValue?> {
  CampusCourseOutcomeTable({super.tableRelation})
    : super(tableName: 'campus_course_outcomes') {
    updateTable = CampusCourseOutcomeUpdateTable(this);
    courseId = _is.ColumnUuid(
      'courseId',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusCourseOutcomeUpdateTable updateTable;

  late final _is.ColumnUuid courseId;

  late final _is.ColumnString code;

  late final _is.ColumnString description;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    courseId,
    code,
    description,
    createdAt,
  ];
}

class CampusCourseOutcomeInclude extends _is.IncludeObject {
  CampusCourseOutcomeInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCourseOutcome.t;
}

class CampusCourseOutcomeIncludeList extends _is.IncludeList {
  CampusCourseOutcomeIncludeList._({
    _is.WhereExpressionBuilder<CampusCourseOutcomeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusCourseOutcome.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCourseOutcome.t;
}

class CampusCourseOutcomeRepository {
  const CampusCourseOutcomeRepository._();

  /// Returns a list of [CampusCourseOutcome]s matching the given query parameters.
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
  Future<List<CampusCourseOutcome>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseOutcomeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseOutcomeTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseOutcomeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusCourseOutcome>(
      where: where?.call(CampusCourseOutcome.t),
      orderBy: orderBy?.call(CampusCourseOutcome.t),
      orderByList: orderByList?.call(CampusCourseOutcome.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusCourseOutcome] matching the given query parameters.
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
  Future<CampusCourseOutcome?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseOutcomeTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusCourseOutcomeTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseOutcomeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusCourseOutcome>(
      where: where?.call(CampusCourseOutcome.t),
      orderBy: orderBy?.call(CampusCourseOutcome.t),
      orderByList: orderByList?.call(CampusCourseOutcome.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusCourseOutcome] by its [id] or null if no such row exists.
  Future<CampusCourseOutcome?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusCourseOutcome>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusCourseOutcome]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusCourseOutcome]s will have their `id` fields set.
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
  Future<List<CampusCourseOutcome>> insert(
    _is.DatabaseSession session,
    List<CampusCourseOutcome> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusCourseOutcome>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusCourseOutcome] and returns the inserted row.
  ///
  /// The returned [CampusCourseOutcome] will have its `id` field set.
  Future<CampusCourseOutcome> insertRow(
    _is.DatabaseSession session,
    CampusCourseOutcome row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusCourseOutcome>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusCourseOutcome]s in the list and returns the resulting rows.
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
  /// The returned [CampusCourseOutcome]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseOutcome>> upsert(
    _is.DatabaseSession session,
    List<CampusCourseOutcome> rows, {
    required _is.ColumnSelections<CampusCourseOutcomeTable> conflictColumns,
    _is.ColumnSelections<CampusCourseOutcomeTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCourseOutcomeTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusCourseOutcome>(
      rows,
      conflictColumns: conflictColumns(CampusCourseOutcome.t),
      updateColumns: updateColumns?.call(CampusCourseOutcome.t),
      updateWhere: updateWhere?.call(CampusCourseOutcome.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusCourseOutcome] and returns the resulting row.
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
  /// The returned [CampusCourseOutcome] will have its `id` field set.
  Future<CampusCourseOutcome?> upsertRow(
    _is.DatabaseSession session,
    CampusCourseOutcome row, {
    required _is.ColumnSelections<CampusCourseOutcomeTable> conflictColumns,
    _is.ColumnSelections<CampusCourseOutcomeTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCourseOutcomeTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusCourseOutcome>(
      row,
      conflictColumns: conflictColumns(CampusCourseOutcome.t),
      updateColumns: updateColumns?.call(CampusCourseOutcome.t),
      updateWhere: updateWhere?.call(CampusCourseOutcome.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCourseOutcome]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseOutcome>> update(
    _is.DatabaseSession session,
    List<CampusCourseOutcome> rows, {
    _is.ColumnSelections<CampusCourseOutcomeTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusCourseOutcome>(
      rows,
      columns: columns?.call(CampusCourseOutcome.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusCourseOutcome]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusCourseOutcome> updateRow(
    _is.DatabaseSession session,
    CampusCourseOutcome row, {
    _is.ColumnSelections<CampusCourseOutcomeTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusCourseOutcome>(
      row,
      columns: columns?.call(CampusCourseOutcome.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusCourseOutcome] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusCourseOutcome?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusCourseOutcomeUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusCourseOutcome>(
      id,
      columnValues: columnValues(CampusCourseOutcome.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCourseOutcome]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseOutcome>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusCourseOutcomeUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusCourseOutcomeTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseOutcomeTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseOutcomeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusCourseOutcome>(
      columnValues: columnValues(CampusCourseOutcome.t.updateTable),
      where: where(CampusCourseOutcome.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCourseOutcome.t),
      orderByList: orderByList?.call(CampusCourseOutcome.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusCourseOutcome]s in the list and returns the deleted rows.
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
  Future<List<CampusCourseOutcome>> delete(
    _is.DatabaseSession session,
    List<CampusCourseOutcome> rows, {
    _is.OrderByBuilder<CampusCourseOutcomeTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseOutcomeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusCourseOutcome>(
      rows,
      orderBy: orderBy?.call(CampusCourseOutcome.t),
      orderByList: orderByList?.call(CampusCourseOutcome.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusCourseOutcome].
  Future<CampusCourseOutcome> deleteRow(
    _is.DatabaseSession session,
    CampusCourseOutcome row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusCourseOutcome>(
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
  Future<List<CampusCourseOutcome>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCourseOutcomeTable> where,
    _is.OrderByBuilder<CampusCourseOutcomeTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseOutcomeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusCourseOutcome>(
      where: where(CampusCourseOutcome.t),
      orderBy: orderBy?.call(CampusCourseOutcome.t),
      orderByList: orderByList?.call(CampusCourseOutcome.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseOutcomeTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusCourseOutcome>(
      where: where?.call(CampusCourseOutcome.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusCourseOutcome] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCourseOutcomeTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusCourseOutcome>(
      where: where(CampusCourseOutcome.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
