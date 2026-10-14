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

abstract class SsoDepartments
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoDepartments._({
    this.id,
    required this.companyId,
    required this.departmentTypeId,
    required this.code,
    required this.name,
    this.description,
  });

  factory SsoDepartments({
    _is.UuidValue? id,
    required _is.UuidValue companyId,
    required _is.UuidValue departmentTypeId,
    required String code,
    required String name,
    String? description,
  }) = _SsoDepartmentsImpl;

  factory SsoDepartments.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoDepartments(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      companyId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['companyId'],
      ),
      departmentTypeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentTypeId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
    );
  }

  static final t = SsoDepartmentsTable();

  static const db = SsoDepartmentsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue companyId;

  _is.UuidValue departmentTypeId;

  String code;

  String name;

  String? description;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoDepartments]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoDepartments copyWith({
    _is.UuidValue? id,
    _is.UuidValue? companyId,
    _is.UuidValue? departmentTypeId,
    String? code,
    String? name,
    String? description,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoDepartments',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'departmentTypeId': departmentTypeId.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoDepartments',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'departmentTypeId': departmentTypeId.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
    };
  }

  static SsoDepartmentsInclude include() {
    return SsoDepartmentsInclude._();
  }

  static SsoDepartmentsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoDepartmentsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoDepartmentsTable>? orderBy,
    _is.OrderByListBuilder<SsoDepartmentsTable>? orderByList,
    SsoDepartmentsInclude? include,
  }) {
    return SsoDepartmentsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoDepartments.t),
      orderByList: orderByList?.call(SsoDepartments.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoDepartmentsImpl extends SsoDepartments {
  _SsoDepartmentsImpl({
    _is.UuidValue? id,
    required _is.UuidValue companyId,
    required _is.UuidValue departmentTypeId,
    required String code,
    required String name,
    String? description,
  }) : super._(
         id: id,
         companyId: companyId,
         departmentTypeId: departmentTypeId,
         code: code,
         name: name,
         description: description,
       );

  /// Returns a shallow copy of this [SsoDepartments]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoDepartments copyWith({
    Object? id = _Undefined,
    _is.UuidValue? companyId,
    _is.UuidValue? departmentTypeId,
    String? code,
    String? name,
    Object? description = _Undefined,
  }) {
    return SsoDepartments(
      id: id is _is.UuidValue? ? id : this.id,
      companyId: companyId ?? this.companyId,
      departmentTypeId: departmentTypeId ?? this.departmentTypeId,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
    );
  }
}

class SsoDepartmentsUpdateTable extends _is.UpdateTable<SsoDepartmentsTable> {
  SsoDepartmentsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.companyId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> departmentTypeId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.departmentTypeId,
    value,
  );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );
}

class SsoDepartmentsTable extends _is.Table<_is.UuidValue?> {
  SsoDepartmentsTable({super.tableRelation})
    : super(tableName: 'sso_departments') {
    updateTable = SsoDepartmentsUpdateTable(this);
    companyId = _is.ColumnUuid(
      'companyId',
      this,
    );
    departmentTypeId = _is.ColumnUuid(
      'departmentTypeId',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
  }

  late final SsoDepartmentsUpdateTable updateTable;

  late final _is.ColumnUuid companyId;

  late final _is.ColumnUuid departmentTypeId;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  @override
  List<_is.Column> get columns => [
    id,
    companyId,
    departmentTypeId,
    code,
    name,
    description,
  ];
}

class SsoDepartmentsInclude extends _is.IncludeObject {
  SsoDepartmentsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoDepartments.t;
}

class SsoDepartmentsIncludeList extends _is.IncludeList {
  SsoDepartmentsIncludeList._({
    _is.WhereExpressionBuilder<SsoDepartmentsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoDepartments.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoDepartments.t;
}

class SsoDepartmentsRepository {
  const SsoDepartmentsRepository._();

  /// Returns a list of [SsoDepartments]s matching the given query parameters.
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
  Future<List<SsoDepartments>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoDepartmentsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoDepartmentsTable>? orderBy,
    _is.OrderByListBuilder<SsoDepartmentsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoDepartments>(
      where: where?.call(SsoDepartments.t),
      orderBy: orderBy?.call(SsoDepartments.t),
      orderByList: orderByList?.call(SsoDepartments.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoDepartments] matching the given query parameters.
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
  Future<SsoDepartments?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoDepartmentsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoDepartmentsTable>? orderBy,
    _is.OrderByListBuilder<SsoDepartmentsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoDepartments>(
      where: where?.call(SsoDepartments.t),
      orderBy: orderBy?.call(SsoDepartments.t),
      orderByList: orderByList?.call(SsoDepartments.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoDepartments] by its [id] or null if no such row exists.
  Future<SsoDepartments?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoDepartments>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoDepartments]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoDepartments]s will have their `id` fields set.
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
  Future<List<SsoDepartments>> insert(
    _is.DatabaseSession session,
    List<SsoDepartments> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoDepartments>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoDepartments] and returns the inserted row.
  ///
  /// The returned [SsoDepartments] will have its `id` field set.
  Future<SsoDepartments> insertRow(
    _is.DatabaseSession session,
    SsoDepartments row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoDepartments>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoDepartments]s in the list and returns the resulting rows.
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
  /// The returned [SsoDepartments]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoDepartments>> upsert(
    _is.DatabaseSession session,
    List<SsoDepartments> rows, {
    required _is.ColumnSelections<SsoDepartmentsTable> conflictColumns,
    _is.ColumnSelections<SsoDepartmentsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoDepartmentsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoDepartments>(
      rows,
      conflictColumns: conflictColumns(SsoDepartments.t),
      updateColumns: updateColumns?.call(SsoDepartments.t),
      updateWhere: updateWhere?.call(SsoDepartments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoDepartments] and returns the resulting row.
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
  /// The returned [SsoDepartments] will have its `id` field set.
  Future<SsoDepartments?> upsertRow(
    _is.DatabaseSession session,
    SsoDepartments row, {
    required _is.ColumnSelections<SsoDepartmentsTable> conflictColumns,
    _is.ColumnSelections<SsoDepartmentsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoDepartmentsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoDepartments>(
      row,
      conflictColumns: conflictColumns(SsoDepartments.t),
      updateColumns: updateColumns?.call(SsoDepartments.t),
      updateWhere: updateWhere?.call(SsoDepartments.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoDepartments]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoDepartments>> update(
    _is.DatabaseSession session,
    List<SsoDepartments> rows, {
    _is.ColumnSelections<SsoDepartmentsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoDepartments>(
      rows,
      columns: columns?.call(SsoDepartments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoDepartments]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoDepartments> updateRow(
    _is.DatabaseSession session,
    SsoDepartments row, {
    _is.ColumnSelections<SsoDepartmentsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoDepartments>(
      row,
      columns: columns?.call(SsoDepartments.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoDepartments] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoDepartments?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoDepartmentsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoDepartments>(
      id,
      columnValues: columnValues(SsoDepartments.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoDepartments]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoDepartments>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoDepartmentsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<SsoDepartmentsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoDepartmentsTable>? orderBy,
    _is.OrderByListBuilder<SsoDepartmentsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoDepartments>(
      columnValues: columnValues(SsoDepartments.t.updateTable),
      where: where(SsoDepartments.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoDepartments.t),
      orderByList: orderByList?.call(SsoDepartments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoDepartments]s in the list and returns the deleted rows.
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
  Future<List<SsoDepartments>> delete(
    _is.DatabaseSession session,
    List<SsoDepartments> rows, {
    _is.OrderByBuilder<SsoDepartmentsTable>? orderBy,
    _is.OrderByListBuilder<SsoDepartmentsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoDepartments>(
      rows,
      orderBy: orderBy?.call(SsoDepartments.t),
      orderByList: orderByList?.call(SsoDepartments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoDepartments].
  Future<SsoDepartments> deleteRow(
    _is.DatabaseSession session,
    SsoDepartments row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoDepartments>(
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
  Future<List<SsoDepartments>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoDepartmentsTable> where,
    _is.OrderByBuilder<SsoDepartmentsTable>? orderBy,
    _is.OrderByListBuilder<SsoDepartmentsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoDepartments>(
      where: where(SsoDepartments.t),
      orderBy: orderBy?.call(SsoDepartments.t),
      orderByList: orderByList?.call(SsoDepartments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoDepartmentsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoDepartments>(
      where: where?.call(SsoDepartments.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoDepartments] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoDepartmentsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoDepartments>(
      where: where(SsoDepartments.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
