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
abstract class CampusCourseMaterial
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusCourseMaterial._({
    this.id,
    required this.courseId,
    required this.title,
    required this.resourceUrl,
    required this.required,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCourseMaterial({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required String title,
    required String resourceUrl,
    required bool required,
    DateTime? createdAt,
  }) = _CampusCourseMaterialImpl;

  factory CampusCourseMaterial.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusCourseMaterial(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      title: jsonSerialization['title'] as String,
      resourceUrl: jsonSerialization['resourceUrl'] as String,
      required: _is.BoolJsonExtension.fromJson(jsonSerialization['required']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusCourseMaterialTable();

  static const db = CampusCourseMaterialRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue courseId;

  String title;

  String resourceUrl;

  bool required;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusCourseMaterial]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusCourseMaterial copyWith({
    _is.UuidValue? id,
    _is.UuidValue? courseId,
    String? title,
    String? resourceUrl,
    bool? required,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCourseMaterial',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'title': title,
      'resourceUrl': resourceUrl,
      'required': required,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCourseMaterial',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'title': title,
      'resourceUrl': resourceUrl,
      'required': required,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusCourseMaterialInclude include() {
    return CampusCourseMaterialInclude._();
  }

  static CampusCourseMaterialIncludeList includeList({
    _is.WhereExpressionBuilder<CampusCourseMaterialTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseMaterialTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseMaterialTable>? orderByList,
    CampusCourseMaterialInclude? include,
  }) {
    return CampusCourseMaterialIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCourseMaterial.t),
      orderByList: orderByList?.call(CampusCourseMaterial.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCourseMaterialImpl extends CampusCourseMaterial {
  _CampusCourseMaterialImpl({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required String title,
    required String resourceUrl,
    required bool required,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         title: title,
         resourceUrl: resourceUrl,
         required: required,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCourseMaterial]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusCourseMaterial copyWith({
    Object? id = _Undefined,
    _is.UuidValue? courseId,
    String? title,
    String? resourceUrl,
    bool? required,
    DateTime? createdAt,
  }) {
    return CampusCourseMaterial(
      id: id is _is.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      title: title ?? this.title,
      resourceUrl: resourceUrl ?? this.resourceUrl,
      required: required ?? this.required,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusCourseMaterialUpdateTable
    extends _is.UpdateTable<CampusCourseMaterialTable> {
  CampusCourseMaterialUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> courseId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.courseId,
        value,
      );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<String, String> resourceUrl(String value) => _is.ColumnValue(
    table.resourceUrl,
    value,
  );

  _is.ColumnValue<bool, bool> required(bool value) => _is.ColumnValue(
    table.required,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusCourseMaterialTable extends _is.Table<_is.UuidValue?> {
  CampusCourseMaterialTable({super.tableRelation})
    : super(tableName: 'campus_course_materials') {
    updateTable = CampusCourseMaterialUpdateTable(this);
    courseId = _is.ColumnUuid(
      'courseId',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    resourceUrl = _is.ColumnString(
      'resourceUrl',
      this,
    );
    required = _is.ColumnBool(
      'required',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusCourseMaterialUpdateTable updateTable;

  late final _is.ColumnUuid courseId;

  late final _is.ColumnString title;

  late final _is.ColumnString resourceUrl;

  late final _is.ColumnBool required;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    courseId,
    title,
    resourceUrl,
    required,
    createdAt,
  ];
}

class CampusCourseMaterialInclude extends _is.IncludeObject {
  CampusCourseMaterialInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCourseMaterial.t;
}

class CampusCourseMaterialIncludeList extends _is.IncludeList {
  CampusCourseMaterialIncludeList._({
    _is.WhereExpressionBuilder<CampusCourseMaterialTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusCourseMaterial.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCourseMaterial.t;
}

class CampusCourseMaterialRepository {
  const CampusCourseMaterialRepository._();

  /// Returns a list of [CampusCourseMaterial]s matching the given query parameters.
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
  Future<List<CampusCourseMaterial>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseMaterialTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseMaterialTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseMaterialTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusCourseMaterial>(
      where: where?.call(CampusCourseMaterial.t),
      orderBy: orderBy?.call(CampusCourseMaterial.t),
      orderByList: orderByList?.call(CampusCourseMaterial.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusCourseMaterial] matching the given query parameters.
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
  Future<CampusCourseMaterial?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseMaterialTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusCourseMaterialTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseMaterialTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusCourseMaterial>(
      where: where?.call(CampusCourseMaterial.t),
      orderBy: orderBy?.call(CampusCourseMaterial.t),
      orderByList: orderByList?.call(CampusCourseMaterial.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusCourseMaterial] by its [id] or null if no such row exists.
  Future<CampusCourseMaterial?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusCourseMaterial>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusCourseMaterial]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusCourseMaterial]s will have their `id` fields set.
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
  Future<List<CampusCourseMaterial>> insert(
    _is.DatabaseSession session,
    List<CampusCourseMaterial> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusCourseMaterial>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusCourseMaterial] and returns the inserted row.
  ///
  /// The returned [CampusCourseMaterial] will have its `id` field set.
  Future<CampusCourseMaterial> insertRow(
    _is.DatabaseSession session,
    CampusCourseMaterial row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusCourseMaterial>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusCourseMaterial]s in the list and returns the resulting rows.
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
  /// The returned [CampusCourseMaterial]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseMaterial>> upsert(
    _is.DatabaseSession session,
    List<CampusCourseMaterial> rows, {
    required _is.ColumnSelections<CampusCourseMaterialTable> conflictColumns,
    _is.ColumnSelections<CampusCourseMaterialTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCourseMaterialTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusCourseMaterial>(
      rows,
      conflictColumns: conflictColumns(CampusCourseMaterial.t),
      updateColumns: updateColumns?.call(CampusCourseMaterial.t),
      updateWhere: updateWhere?.call(CampusCourseMaterial.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusCourseMaterial] and returns the resulting row.
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
  /// The returned [CampusCourseMaterial] will have its `id` field set.
  Future<CampusCourseMaterial?> upsertRow(
    _is.DatabaseSession session,
    CampusCourseMaterial row, {
    required _is.ColumnSelections<CampusCourseMaterialTable> conflictColumns,
    _is.ColumnSelections<CampusCourseMaterialTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCourseMaterialTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusCourseMaterial>(
      row,
      conflictColumns: conflictColumns(CampusCourseMaterial.t),
      updateColumns: updateColumns?.call(CampusCourseMaterial.t),
      updateWhere: updateWhere?.call(CampusCourseMaterial.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCourseMaterial]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseMaterial>> update(
    _is.DatabaseSession session,
    List<CampusCourseMaterial> rows, {
    _is.ColumnSelections<CampusCourseMaterialTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusCourseMaterial>(
      rows,
      columns: columns?.call(CampusCourseMaterial.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusCourseMaterial]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusCourseMaterial> updateRow(
    _is.DatabaseSession session,
    CampusCourseMaterial row, {
    _is.ColumnSelections<CampusCourseMaterialTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusCourseMaterial>(
      row,
      columns: columns?.call(CampusCourseMaterial.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusCourseMaterial] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusCourseMaterial?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusCourseMaterialUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusCourseMaterial>(
      id,
      columnValues: columnValues(CampusCourseMaterial.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCourseMaterial]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseMaterial>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusCourseMaterialUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusCourseMaterialTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseMaterialTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseMaterialTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusCourseMaterial>(
      columnValues: columnValues(CampusCourseMaterial.t.updateTable),
      where: where(CampusCourseMaterial.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCourseMaterial.t),
      orderByList: orderByList?.call(CampusCourseMaterial.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusCourseMaterial]s in the list and returns the deleted rows.
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
  Future<List<CampusCourseMaterial>> delete(
    _is.DatabaseSession session,
    List<CampusCourseMaterial> rows, {
    _is.OrderByBuilder<CampusCourseMaterialTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseMaterialTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusCourseMaterial>(
      rows,
      orderBy: orderBy?.call(CampusCourseMaterial.t),
      orderByList: orderByList?.call(CampusCourseMaterial.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusCourseMaterial].
  Future<CampusCourseMaterial> deleteRow(
    _is.DatabaseSession session,
    CampusCourseMaterial row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusCourseMaterial>(
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
  Future<List<CampusCourseMaterial>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCourseMaterialTable> where,
    _is.OrderByBuilder<CampusCourseMaterialTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseMaterialTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusCourseMaterial>(
      where: where(CampusCourseMaterial.t),
      orderBy: orderBy?.call(CampusCourseMaterial.t),
      orderByList: orderByList?.call(CampusCourseMaterial.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseMaterialTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusCourseMaterial>(
      where: where?.call(CampusCourseMaterial.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusCourseMaterial] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCourseMaterialTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusCourseMaterial>(
      where: where(CampusCourseMaterial.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
