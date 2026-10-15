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
abstract class CampusCourse
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusCourse._({
    this.id,
    required this.departmentId,
    this.categoryId,
    required this.code,
    required this.title,
    required this.credits,
    this.description,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCourse({
    _is.UuidValue? id,
    required _is.UuidValue departmentId,
    _is.UuidValue? categoryId,
    required String code,
    required String title,
    required int credits,
    String? description,
    DateTime? createdAt,
  }) = _CampusCourseImpl;

  factory CampusCourse.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusCourse(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      departmentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentId'],
      ),
      categoryId: jsonSerialization['categoryId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['categoryId'],
            ),
      code: jsonSerialization['code'] as String,
      title: jsonSerialization['title'] as String,
      credits: jsonSerialization['credits'] as int,
      description: jsonSerialization['description'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusCourseTable();

  static const db = CampusCourseRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue departmentId;

  _is.UuidValue? categoryId;

  String code;

  String title;

  int credits;

  String? description;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusCourse]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusCourse copyWith({
    _is.UuidValue? id,
    _is.UuidValue? departmentId,
    _is.UuidValue? categoryId,
    String? code,
    String? title,
    int? credits,
    String? description,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCourse',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      if (categoryId != null) 'categoryId': categoryId?.toJson(),
      'code': code,
      'title': title,
      'credits': credits,
      if (description != null) 'description': description,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCourse',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      if (categoryId != null) 'categoryId': categoryId?.toJson(),
      'code': code,
      'title': title,
      'credits': credits,
      if (description != null) 'description': description,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusCourseInclude include() {
    return CampusCourseInclude._();
  }

  static CampusCourseIncludeList includeList({
    _is.WhereExpressionBuilder<CampusCourseTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseTable>? orderByList,
    CampusCourseInclude? include,
  }) {
    return CampusCourseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCourse.t),
      orderByList: orderByList?.call(CampusCourse.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCourseImpl extends CampusCourse {
  _CampusCourseImpl({
    _is.UuidValue? id,
    required _is.UuidValue departmentId,
    _is.UuidValue? categoryId,
    required String code,
    required String title,
    required int credits,
    String? description,
    DateTime? createdAt,
  }) : super._(
         id: id,
         departmentId: departmentId,
         categoryId: categoryId,
         code: code,
         title: title,
         credits: credits,
         description: description,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCourse]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusCourse copyWith({
    Object? id = _Undefined,
    _is.UuidValue? departmentId,
    Object? categoryId = _Undefined,
    String? code,
    String? title,
    int? credits,
    Object? description = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusCourse(
      id: id is _is.UuidValue? ? id : this.id,
      departmentId: departmentId ?? this.departmentId,
      categoryId: categoryId is _is.UuidValue? ? categoryId : this.categoryId,
      code: code ?? this.code,
      title: title ?? this.title,
      credits: credits ?? this.credits,
      description: description is String? ? description : this.description,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusCourseUpdateTable extends _is.UpdateTable<CampusCourseTable> {
  CampusCourseUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> departmentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.departmentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> categoryId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.categoryId,
    value,
  );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<int, int> credits(int value) => _is.ColumnValue(
    table.credits,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusCourseTable extends _is.Table<_is.UuidValue?> {
  CampusCourseTable({super.tableRelation})
    : super(tableName: 'campus_courses') {
    updateTable = CampusCourseUpdateTable(this);
    departmentId = _is.ColumnUuid(
      'departmentId',
      this,
    );
    categoryId = _is.ColumnUuid(
      'categoryId',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    credits = _is.ColumnInt(
      'credits',
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

  late final CampusCourseUpdateTable updateTable;

  late final _is.ColumnUuid departmentId;

  late final _is.ColumnUuid categoryId;

  late final _is.ColumnString code;

  late final _is.ColumnString title;

  late final _is.ColumnInt credits;

  late final _is.ColumnString description;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    departmentId,
    categoryId,
    code,
    title,
    credits,
    description,
    createdAt,
  ];
}

class CampusCourseInclude extends _is.IncludeObject {
  CampusCourseInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCourse.t;
}

class CampusCourseIncludeList extends _is.IncludeList {
  CampusCourseIncludeList._({
    _is.WhereExpressionBuilder<CampusCourseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusCourse.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCourse.t;
}

class CampusCourseRepository {
  const CampusCourseRepository._();

  /// Returns a list of [CampusCourse]s matching the given query parameters.
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
  Future<List<CampusCourse>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusCourse>(
      where: where?.call(CampusCourse.t),
      orderBy: orderBy?.call(CampusCourse.t),
      orderByList: orderByList?.call(CampusCourse.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusCourse] matching the given query parameters.
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
  Future<CampusCourse?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusCourse>(
      where: where?.call(CampusCourse.t),
      orderBy: orderBy?.call(CampusCourse.t),
      orderByList: orderByList?.call(CampusCourse.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusCourse] by its [id] or null if no such row exists.
  Future<CampusCourse?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusCourse>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusCourse]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusCourse]s will have their `id` fields set.
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
  Future<List<CampusCourse>> insert(
    _is.DatabaseSession session,
    List<CampusCourse> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusCourse>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusCourse] and returns the inserted row.
  ///
  /// The returned [CampusCourse] will have its `id` field set.
  Future<CampusCourse> insertRow(
    _is.DatabaseSession session,
    CampusCourse row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusCourse>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusCourse]s in the list and returns the resulting rows.
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
  /// The returned [CampusCourse]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourse>> upsert(
    _is.DatabaseSession session,
    List<CampusCourse> rows, {
    required _is.ColumnSelections<CampusCourseTable> conflictColumns,
    _is.ColumnSelections<CampusCourseTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCourseTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusCourse>(
      rows,
      conflictColumns: conflictColumns(CampusCourse.t),
      updateColumns: updateColumns?.call(CampusCourse.t),
      updateWhere: updateWhere?.call(CampusCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusCourse] and returns the resulting row.
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
  /// The returned [CampusCourse] will have its `id` field set.
  Future<CampusCourse?> upsertRow(
    _is.DatabaseSession session,
    CampusCourse row, {
    required _is.ColumnSelections<CampusCourseTable> conflictColumns,
    _is.ColumnSelections<CampusCourseTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCourseTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusCourse>(
      row,
      conflictColumns: conflictColumns(CampusCourse.t),
      updateColumns: updateColumns?.call(CampusCourse.t),
      updateWhere: updateWhere?.call(CampusCourse.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCourse]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourse>> update(
    _is.DatabaseSession session,
    List<CampusCourse> rows, {
    _is.ColumnSelections<CampusCourseTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusCourse>(
      rows,
      columns: columns?.call(CampusCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusCourse]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusCourse> updateRow(
    _is.DatabaseSession session,
    CampusCourse row, {
    _is.ColumnSelections<CampusCourseTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusCourse>(
      row,
      columns: columns?.call(CampusCourse.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusCourse] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusCourse?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusCourseUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusCourse>(
      id,
      columnValues: columnValues(CampusCourse.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCourse]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourse>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusCourseUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusCourseTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusCourse>(
      columnValues: columnValues(CampusCourse.t.updateTable),
      where: where(CampusCourse.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCourse.t),
      orderByList: orderByList?.call(CampusCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusCourse]s in the list and returns the deleted rows.
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
  Future<List<CampusCourse>> delete(
    _is.DatabaseSession session,
    List<CampusCourse> rows, {
    _is.OrderByBuilder<CampusCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusCourse>(
      rows,
      orderBy: orderBy?.call(CampusCourse.t),
      orderByList: orderByList?.call(CampusCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusCourse].
  Future<CampusCourse> deleteRow(
    _is.DatabaseSession session,
    CampusCourse row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusCourse>(
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
  Future<List<CampusCourse>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCourseTable> where,
    _is.OrderByBuilder<CampusCourseTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusCourse>(
      where: where(CampusCourse.t),
      orderBy: orderBy?.call(CampusCourse.t),
      orderByList: orderByList?.call(CampusCourse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusCourse>(
      where: where?.call(CampusCourse.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusCourse] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCourseTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusCourse>(
      where: where(CampusCourse.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
