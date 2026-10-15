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
abstract class CampusCourseCategory
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusCourseCategory._({
    this.id,
    required this.name,
    this.parentId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCourseCategory({
    _is.UuidValue? id,
    required String name,
    _is.UuidValue? parentId,
    DateTime? createdAt,
  }) = _CampusCourseCategoryImpl;

  factory CampusCourseCategory.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusCourseCategory(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      parentId: jsonSerialization['parentId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['parentId']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusCourseCategoryTable();

  static const db = CampusCourseCategoryRepository._();

  @override
  _is.UuidValue? id;

  String name;

  _is.UuidValue? parentId;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusCourseCategory]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusCourseCategory copyWith({
    _is.UuidValue? id,
    String? name,
    _is.UuidValue? parentId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCourseCategory',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (parentId != null) 'parentId': parentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCourseCategory',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (parentId != null) 'parentId': parentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusCourseCategoryInclude include() {
    return CampusCourseCategoryInclude._();
  }

  static CampusCourseCategoryIncludeList includeList({
    _is.WhereExpressionBuilder<CampusCourseCategoryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseCategoryTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseCategoryTable>? orderByList,
    CampusCourseCategoryInclude? include,
  }) {
    return CampusCourseCategoryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCourseCategory.t),
      orderByList: orderByList?.call(CampusCourseCategory.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCourseCategoryImpl extends CampusCourseCategory {
  _CampusCourseCategoryImpl({
    _is.UuidValue? id,
    required String name,
    _is.UuidValue? parentId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         parentId: parentId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCourseCategory]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusCourseCategory copyWith({
    Object? id = _Undefined,
    String? name,
    Object? parentId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusCourseCategory(
      id: id is _is.UuidValue? ? id : this.id,
      name: name ?? this.name,
      parentId: parentId is _is.UuidValue? ? parentId : this.parentId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusCourseCategoryUpdateTable
    extends _is.UpdateTable<CampusCourseCategoryTable> {
  CampusCourseCategoryUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> parentId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.parentId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusCourseCategoryTable extends _is.Table<_is.UuidValue?> {
  CampusCourseCategoryTable({super.tableRelation})
    : super(tableName: 'campus_course_categories') {
    updateTable = CampusCourseCategoryUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    parentId = _is.ColumnUuid(
      'parentId',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusCourseCategoryUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnUuid parentId;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    parentId,
    createdAt,
  ];
}

class CampusCourseCategoryInclude extends _is.IncludeObject {
  CampusCourseCategoryInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCourseCategory.t;
}

class CampusCourseCategoryIncludeList extends _is.IncludeList {
  CampusCourseCategoryIncludeList._({
    _is.WhereExpressionBuilder<CampusCourseCategoryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusCourseCategory.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCourseCategory.t;
}

class CampusCourseCategoryRepository {
  const CampusCourseCategoryRepository._();

  /// Returns a list of [CampusCourseCategory]s matching the given query parameters.
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
  Future<List<CampusCourseCategory>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseCategoryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseCategoryTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseCategoryTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusCourseCategory>(
      where: where?.call(CampusCourseCategory.t),
      orderBy: orderBy?.call(CampusCourseCategory.t),
      orderByList: orderByList?.call(CampusCourseCategory.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusCourseCategory] matching the given query parameters.
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
  Future<CampusCourseCategory?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseCategoryTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusCourseCategoryTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseCategoryTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusCourseCategory>(
      where: where?.call(CampusCourseCategory.t),
      orderBy: orderBy?.call(CampusCourseCategory.t),
      orderByList: orderByList?.call(CampusCourseCategory.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusCourseCategory] by its [id] or null if no such row exists.
  Future<CampusCourseCategory?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusCourseCategory>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusCourseCategory]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusCourseCategory]s will have their `id` fields set.
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
  Future<List<CampusCourseCategory>> insert(
    _is.DatabaseSession session,
    List<CampusCourseCategory> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusCourseCategory>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusCourseCategory] and returns the inserted row.
  ///
  /// The returned [CampusCourseCategory] will have its `id` field set.
  Future<CampusCourseCategory> insertRow(
    _is.DatabaseSession session,
    CampusCourseCategory row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusCourseCategory>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusCourseCategory]s in the list and returns the resulting rows.
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
  /// The returned [CampusCourseCategory]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseCategory>> upsert(
    _is.DatabaseSession session,
    List<CampusCourseCategory> rows, {
    required _is.ColumnSelections<CampusCourseCategoryTable> conflictColumns,
    _is.ColumnSelections<CampusCourseCategoryTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCourseCategoryTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusCourseCategory>(
      rows,
      conflictColumns: conflictColumns(CampusCourseCategory.t),
      updateColumns: updateColumns?.call(CampusCourseCategory.t),
      updateWhere: updateWhere?.call(CampusCourseCategory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusCourseCategory] and returns the resulting row.
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
  /// The returned [CampusCourseCategory] will have its `id` field set.
  Future<CampusCourseCategory?> upsertRow(
    _is.DatabaseSession session,
    CampusCourseCategory row, {
    required _is.ColumnSelections<CampusCourseCategoryTable> conflictColumns,
    _is.ColumnSelections<CampusCourseCategoryTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCourseCategoryTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusCourseCategory>(
      row,
      conflictColumns: conflictColumns(CampusCourseCategory.t),
      updateColumns: updateColumns?.call(CampusCourseCategory.t),
      updateWhere: updateWhere?.call(CampusCourseCategory.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCourseCategory]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseCategory>> update(
    _is.DatabaseSession session,
    List<CampusCourseCategory> rows, {
    _is.ColumnSelections<CampusCourseCategoryTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusCourseCategory>(
      rows,
      columns: columns?.call(CampusCourseCategory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusCourseCategory]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusCourseCategory> updateRow(
    _is.DatabaseSession session,
    CampusCourseCategory row, {
    _is.ColumnSelections<CampusCourseCategoryTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusCourseCategory>(
      row,
      columns: columns?.call(CampusCourseCategory.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusCourseCategory] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusCourseCategory?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusCourseCategoryUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusCourseCategory>(
      id,
      columnValues: columnValues(CampusCourseCategory.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCourseCategory]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseCategory>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusCourseCategoryUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusCourseCategoryTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseCategoryTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseCategoryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusCourseCategory>(
      columnValues: columnValues(CampusCourseCategory.t.updateTable),
      where: where(CampusCourseCategory.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCourseCategory.t),
      orderByList: orderByList?.call(CampusCourseCategory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusCourseCategory]s in the list and returns the deleted rows.
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
  Future<List<CampusCourseCategory>> delete(
    _is.DatabaseSession session,
    List<CampusCourseCategory> rows, {
    _is.OrderByBuilder<CampusCourseCategoryTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseCategoryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusCourseCategory>(
      rows,
      orderBy: orderBy?.call(CampusCourseCategory.t),
      orderByList: orderByList?.call(CampusCourseCategory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusCourseCategory].
  Future<CampusCourseCategory> deleteRow(
    _is.DatabaseSession session,
    CampusCourseCategory row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusCourseCategory>(
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
  Future<List<CampusCourseCategory>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCourseCategoryTable> where,
    _is.OrderByBuilder<CampusCourseCategoryTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseCategoryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusCourseCategory>(
      where: where(CampusCourseCategory.t),
      orderBy: orderBy?.call(CampusCourseCategory.t),
      orderByList: orderByList?.call(CampusCourseCategory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseCategoryTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusCourseCategory>(
      where: where?.call(CampusCourseCategory.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusCourseCategory] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCourseCategoryTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusCourseCategory>(
      where: where(CampusCourseCategory.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
