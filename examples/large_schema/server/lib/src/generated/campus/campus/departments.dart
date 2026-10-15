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

/// Fictional university fixture: campus.
abstract class CampusDepartment
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusDepartment._({
    this.id,
    required this.facultyId,
    required this.code,
    required this.name,
    this.parentId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusDepartment({
    _is.UuidValue? id,
    required _is.UuidValue facultyId,
    required String code,
    required String name,
    _is.UuidValue? parentId,
    DateTime? createdAt,
  }) = _CampusDepartmentImpl;

  factory CampusDepartment.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusDepartment(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      facultyId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['facultyId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      parentId: jsonSerialization['parentId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['parentId']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusDepartmentTable();

  static const db = CampusDepartmentRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue facultyId;

  String code;

  String name;

  _is.UuidValue? parentId;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusDepartment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusDepartment copyWith({
    _is.UuidValue? id,
    _is.UuidValue? facultyId,
    String? code,
    String? name,
    _is.UuidValue? parentId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusDepartment',
      if (id != null) 'id': id?.toJson(),
      'facultyId': facultyId.toJson(),
      'code': code,
      'name': name,
      if (parentId != null) 'parentId': parentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusDepartment',
      if (id != null) 'id': id?.toJson(),
      'facultyId': facultyId.toJson(),
      'code': code,
      'name': name,
      if (parentId != null) 'parentId': parentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusDepartmentInclude include() {
    return CampusDepartmentInclude._();
  }

  static CampusDepartmentIncludeList includeList({
    _is.WhereExpressionBuilder<CampusDepartmentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusDepartmentTable>? orderBy,
    _is.OrderByListBuilder<CampusDepartmentTable>? orderByList,
    CampusDepartmentInclude? include,
  }) {
    return CampusDepartmentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusDepartment.t),
      orderByList: orderByList?.call(CampusDepartment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusDepartmentImpl extends CampusDepartment {
  _CampusDepartmentImpl({
    _is.UuidValue? id,
    required _is.UuidValue facultyId,
    required String code,
    required String name,
    _is.UuidValue? parentId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         facultyId: facultyId,
         code: code,
         name: name,
         parentId: parentId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusDepartment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusDepartment copyWith({
    Object? id = _Undefined,
    _is.UuidValue? facultyId,
    String? code,
    String? name,
    Object? parentId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusDepartment(
      id: id is _is.UuidValue? ? id : this.id,
      facultyId: facultyId ?? this.facultyId,
      code: code ?? this.code,
      name: name ?? this.name,
      parentId: parentId is _is.UuidValue? ? parentId : this.parentId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusDepartmentUpdateTable
    extends _is.UpdateTable<CampusDepartmentTable> {
  CampusDepartmentUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> facultyId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.facultyId,
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

class CampusDepartmentTable extends _is.Table<_is.UuidValue?> {
  CampusDepartmentTable({super.tableRelation})
    : super(tableName: 'campus_departments') {
    updateTable = CampusDepartmentUpdateTable(this);
    facultyId = _is.ColumnUuid(
      'facultyId',
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

  late final CampusDepartmentUpdateTable updateTable;

  late final _is.ColumnUuid facultyId;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnUuid parentId;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    facultyId,
    code,
    name,
    parentId,
    createdAt,
  ];
}

class CampusDepartmentInclude extends _is.IncludeObject {
  CampusDepartmentInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusDepartment.t;
}

class CampusDepartmentIncludeList extends _is.IncludeList {
  CampusDepartmentIncludeList._({
    _is.WhereExpressionBuilder<CampusDepartmentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusDepartment.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusDepartment.t;
}

class CampusDepartmentRepository {
  const CampusDepartmentRepository._();

  /// Returns a list of [CampusDepartment]s matching the given query parameters.
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
  Future<List<CampusDepartment>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusDepartmentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusDepartmentTable>? orderBy,
    _is.OrderByListBuilder<CampusDepartmentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusDepartment>(
      where: where?.call(CampusDepartment.t),
      orderBy: orderBy?.call(CampusDepartment.t),
      orderByList: orderByList?.call(CampusDepartment.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusDepartment] matching the given query parameters.
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
  Future<CampusDepartment?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusDepartmentTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusDepartmentTable>? orderBy,
    _is.OrderByListBuilder<CampusDepartmentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusDepartment>(
      where: where?.call(CampusDepartment.t),
      orderBy: orderBy?.call(CampusDepartment.t),
      orderByList: orderByList?.call(CampusDepartment.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusDepartment] by its [id] or null if no such row exists.
  Future<CampusDepartment?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusDepartment>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusDepartment]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusDepartment]s will have their `id` fields set.
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
  Future<List<CampusDepartment>> insert(
    _is.DatabaseSession session,
    List<CampusDepartment> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusDepartment>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusDepartment] and returns the inserted row.
  ///
  /// The returned [CampusDepartment] will have its `id` field set.
  Future<CampusDepartment> insertRow(
    _is.DatabaseSession session,
    CampusDepartment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusDepartment>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusDepartment]s in the list and returns the resulting rows.
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
  /// The returned [CampusDepartment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusDepartment>> upsert(
    _is.DatabaseSession session,
    List<CampusDepartment> rows, {
    required _is.ColumnSelections<CampusDepartmentTable> conflictColumns,
    _is.ColumnSelections<CampusDepartmentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusDepartmentTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusDepartment>(
      rows,
      conflictColumns: conflictColumns(CampusDepartment.t),
      updateColumns: updateColumns?.call(CampusDepartment.t),
      updateWhere: updateWhere?.call(CampusDepartment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusDepartment] and returns the resulting row.
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
  /// The returned [CampusDepartment] will have its `id` field set.
  Future<CampusDepartment?> upsertRow(
    _is.DatabaseSession session,
    CampusDepartment row, {
    required _is.ColumnSelections<CampusDepartmentTable> conflictColumns,
    _is.ColumnSelections<CampusDepartmentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusDepartmentTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusDepartment>(
      row,
      conflictColumns: conflictColumns(CampusDepartment.t),
      updateColumns: updateColumns?.call(CampusDepartment.t),
      updateWhere: updateWhere?.call(CampusDepartment.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusDepartment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusDepartment>> update(
    _is.DatabaseSession session,
    List<CampusDepartment> rows, {
    _is.ColumnSelections<CampusDepartmentTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusDepartment>(
      rows,
      columns: columns?.call(CampusDepartment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusDepartment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusDepartment> updateRow(
    _is.DatabaseSession session,
    CampusDepartment row, {
    _is.ColumnSelections<CampusDepartmentTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusDepartment>(
      row,
      columns: columns?.call(CampusDepartment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusDepartment] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusDepartment?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusDepartmentUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusDepartment>(
      id,
      columnValues: columnValues(CampusDepartment.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusDepartment]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusDepartment>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusDepartmentUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusDepartmentTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusDepartmentTable>? orderBy,
    _is.OrderByListBuilder<CampusDepartmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusDepartment>(
      columnValues: columnValues(CampusDepartment.t.updateTable),
      where: where(CampusDepartment.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusDepartment.t),
      orderByList: orderByList?.call(CampusDepartment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusDepartment]s in the list and returns the deleted rows.
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
  Future<List<CampusDepartment>> delete(
    _is.DatabaseSession session,
    List<CampusDepartment> rows, {
    _is.OrderByBuilder<CampusDepartmentTable>? orderBy,
    _is.OrderByListBuilder<CampusDepartmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusDepartment>(
      rows,
      orderBy: orderBy?.call(CampusDepartment.t),
      orderByList: orderByList?.call(CampusDepartment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusDepartment].
  Future<CampusDepartment> deleteRow(
    _is.DatabaseSession session,
    CampusDepartment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusDepartment>(
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
  Future<List<CampusDepartment>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusDepartmentTable> where,
    _is.OrderByBuilder<CampusDepartmentTable>? orderBy,
    _is.OrderByListBuilder<CampusDepartmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusDepartment>(
      where: where(CampusDepartment.t),
      orderBy: orderBy?.call(CampusDepartment.t),
      orderByList: orderByList?.call(CampusDepartment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusDepartmentTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusDepartment>(
      where: where?.call(CampusDepartment.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusDepartment] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusDepartmentTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusDepartment>(
      where: where(CampusDepartment.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
