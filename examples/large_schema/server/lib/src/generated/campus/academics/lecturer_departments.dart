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
abstract class CampusLecturerDepartment
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusLecturerDepartment._({
    this.id,
    required this.lecturerId,
    required this.departmentId,
    required this.allocationPercent,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusLecturerDepartment({
    _is.UuidValue? id,
    required _is.UuidValue lecturerId,
    required _is.UuidValue departmentId,
    required int allocationPercent,
    DateTime? createdAt,
  }) = _CampusLecturerDepartmentImpl;

  factory CampusLecturerDepartment.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusLecturerDepartment(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      lecturerId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      departmentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentId'],
      ),
      allocationPercent: jsonSerialization['allocationPercent'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusLecturerDepartmentTable();

  static const db = CampusLecturerDepartmentRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue lecturerId;

  _is.UuidValue departmentId;

  int allocationPercent;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusLecturerDepartment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusLecturerDepartment copyWith({
    _is.UuidValue? id,
    _is.UuidValue? lecturerId,
    _is.UuidValue? departmentId,
    int? allocationPercent,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusLecturerDepartment',
      if (id != null) 'id': id?.toJson(),
      'lecturerId': lecturerId.toJson(),
      'departmentId': departmentId.toJson(),
      'allocationPercent': allocationPercent,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusLecturerDepartment',
      if (id != null) 'id': id?.toJson(),
      'lecturerId': lecturerId.toJson(),
      'departmentId': departmentId.toJson(),
      'allocationPercent': allocationPercent,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusLecturerDepartmentInclude include() {
    return CampusLecturerDepartmentInclude._();
  }

  static CampusLecturerDepartmentIncludeList includeList({
    _is.WhereExpressionBuilder<CampusLecturerDepartmentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLecturerDepartmentTable>? orderBy,
    _is.OrderByListBuilder<CampusLecturerDepartmentTable>? orderByList,
    CampusLecturerDepartmentInclude? include,
  }) {
    return CampusLecturerDepartmentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusLecturerDepartment.t),
      orderByList: orderByList?.call(CampusLecturerDepartment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusLecturerDepartmentImpl extends CampusLecturerDepartment {
  _CampusLecturerDepartmentImpl({
    _is.UuidValue? id,
    required _is.UuidValue lecturerId,
    required _is.UuidValue departmentId,
    required int allocationPercent,
    DateTime? createdAt,
  }) : super._(
         id: id,
         lecturerId: lecturerId,
         departmentId: departmentId,
         allocationPercent: allocationPercent,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusLecturerDepartment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusLecturerDepartment copyWith({
    Object? id = _Undefined,
    _is.UuidValue? lecturerId,
    _is.UuidValue? departmentId,
    int? allocationPercent,
    DateTime? createdAt,
  }) {
    return CampusLecturerDepartment(
      id: id is _is.UuidValue? ? id : this.id,
      lecturerId: lecturerId ?? this.lecturerId,
      departmentId: departmentId ?? this.departmentId,
      allocationPercent: allocationPercent ?? this.allocationPercent,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusLecturerDepartmentUpdateTable
    extends _is.UpdateTable<CampusLecturerDepartmentTable> {
  CampusLecturerDepartmentUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> lecturerId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.lecturerId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> departmentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.departmentId,
    value,
  );

  _is.ColumnValue<int, int> allocationPercent(int value) => _is.ColumnValue(
    table.allocationPercent,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusLecturerDepartmentTable extends _is.Table<_is.UuidValue?> {
  CampusLecturerDepartmentTable({super.tableRelation})
    : super(tableName: 'campus_lecturer_departments') {
    updateTable = CampusLecturerDepartmentUpdateTable(this);
    lecturerId = _is.ColumnUuid(
      'lecturerId',
      this,
    );
    departmentId = _is.ColumnUuid(
      'departmentId',
      this,
    );
    allocationPercent = _is.ColumnInt(
      'allocationPercent',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusLecturerDepartmentUpdateTable updateTable;

  late final _is.ColumnUuid lecturerId;

  late final _is.ColumnUuid departmentId;

  late final _is.ColumnInt allocationPercent;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    lecturerId,
    departmentId,
    allocationPercent,
    createdAt,
  ];
}

class CampusLecturerDepartmentInclude extends _is.IncludeObject {
  CampusLecturerDepartmentInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusLecturerDepartment.t;
}

class CampusLecturerDepartmentIncludeList extends _is.IncludeList {
  CampusLecturerDepartmentIncludeList._({
    _is.WhereExpressionBuilder<CampusLecturerDepartmentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusLecturerDepartment.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusLecturerDepartment.t;
}

class CampusLecturerDepartmentRepository {
  const CampusLecturerDepartmentRepository._();

  /// Returns a list of [CampusLecturerDepartment]s matching the given query parameters.
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
  Future<List<CampusLecturerDepartment>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLecturerDepartmentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLecturerDepartmentTable>? orderBy,
    _is.OrderByListBuilder<CampusLecturerDepartmentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusLecturerDepartment>(
      where: where?.call(CampusLecturerDepartment.t),
      orderBy: orderBy?.call(CampusLecturerDepartment.t),
      orderByList: orderByList?.call(CampusLecturerDepartment.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusLecturerDepartment] matching the given query parameters.
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
  Future<CampusLecturerDepartment?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLecturerDepartmentTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusLecturerDepartmentTable>? orderBy,
    _is.OrderByListBuilder<CampusLecturerDepartmentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusLecturerDepartment>(
      where: where?.call(CampusLecturerDepartment.t),
      orderBy: orderBy?.call(CampusLecturerDepartment.t),
      orderByList: orderByList?.call(CampusLecturerDepartment.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusLecturerDepartment] by its [id] or null if no such row exists.
  Future<CampusLecturerDepartment?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusLecturerDepartment>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusLecturerDepartment]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusLecturerDepartment]s will have their `id` fields set.
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
  Future<List<CampusLecturerDepartment>> insert(
    _is.DatabaseSession session,
    List<CampusLecturerDepartment> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusLecturerDepartment>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusLecturerDepartment] and returns the inserted row.
  ///
  /// The returned [CampusLecturerDepartment] will have its `id` field set.
  Future<CampusLecturerDepartment> insertRow(
    _is.DatabaseSession session,
    CampusLecturerDepartment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusLecturerDepartment>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusLecturerDepartment]s in the list and returns the resulting rows.
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
  /// The returned [CampusLecturerDepartment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLecturerDepartment>> upsert(
    _is.DatabaseSession session,
    List<CampusLecturerDepartment> rows, {
    required _is.ColumnSelections<CampusLecturerDepartmentTable>
    conflictColumns,
    _is.ColumnSelections<CampusLecturerDepartmentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusLecturerDepartmentTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusLecturerDepartment>(
      rows,
      conflictColumns: conflictColumns(CampusLecturerDepartment.t),
      updateColumns: updateColumns?.call(CampusLecturerDepartment.t),
      updateWhere: updateWhere?.call(CampusLecturerDepartment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusLecturerDepartment] and returns the resulting row.
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
  /// The returned [CampusLecturerDepartment] will have its `id` field set.
  Future<CampusLecturerDepartment?> upsertRow(
    _is.DatabaseSession session,
    CampusLecturerDepartment row, {
    required _is.ColumnSelections<CampusLecturerDepartmentTable>
    conflictColumns,
    _is.ColumnSelections<CampusLecturerDepartmentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusLecturerDepartmentTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusLecturerDepartment>(
      row,
      conflictColumns: conflictColumns(CampusLecturerDepartment.t),
      updateColumns: updateColumns?.call(CampusLecturerDepartment.t),
      updateWhere: updateWhere?.call(CampusLecturerDepartment.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusLecturerDepartment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLecturerDepartment>> update(
    _is.DatabaseSession session,
    List<CampusLecturerDepartment> rows, {
    _is.ColumnSelections<CampusLecturerDepartmentTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusLecturerDepartment>(
      rows,
      columns: columns?.call(CampusLecturerDepartment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusLecturerDepartment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusLecturerDepartment> updateRow(
    _is.DatabaseSession session,
    CampusLecturerDepartment row, {
    _is.ColumnSelections<CampusLecturerDepartmentTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusLecturerDepartment>(
      row,
      columns: columns?.call(CampusLecturerDepartment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusLecturerDepartment] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusLecturerDepartment?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusLecturerDepartmentUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusLecturerDepartment>(
      id,
      columnValues: columnValues(CampusLecturerDepartment.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusLecturerDepartment]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLecturerDepartment>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusLecturerDepartmentUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusLecturerDepartmentTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLecturerDepartmentTable>? orderBy,
    _is.OrderByListBuilder<CampusLecturerDepartmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusLecturerDepartment>(
      columnValues: columnValues(CampusLecturerDepartment.t.updateTable),
      where: where(CampusLecturerDepartment.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusLecturerDepartment.t),
      orderByList: orderByList?.call(CampusLecturerDepartment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusLecturerDepartment]s in the list and returns the deleted rows.
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
  Future<List<CampusLecturerDepartment>> delete(
    _is.DatabaseSession session,
    List<CampusLecturerDepartment> rows, {
    _is.OrderByBuilder<CampusLecturerDepartmentTable>? orderBy,
    _is.OrderByListBuilder<CampusLecturerDepartmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusLecturerDepartment>(
      rows,
      orderBy: orderBy?.call(CampusLecturerDepartment.t),
      orderByList: orderByList?.call(CampusLecturerDepartment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusLecturerDepartment].
  Future<CampusLecturerDepartment> deleteRow(
    _is.DatabaseSession session,
    CampusLecturerDepartment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusLecturerDepartment>(
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
  Future<List<CampusLecturerDepartment>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusLecturerDepartmentTable> where,
    _is.OrderByBuilder<CampusLecturerDepartmentTable>? orderBy,
    _is.OrderByListBuilder<CampusLecturerDepartmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusLecturerDepartment>(
      where: where(CampusLecturerDepartment.t),
      orderBy: orderBy?.call(CampusLecturerDepartment.t),
      orderByList: orderByList?.call(CampusLecturerDepartment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLecturerDepartmentTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusLecturerDepartment>(
      where: where?.call(CampusLecturerDepartment.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusLecturerDepartment] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusLecturerDepartmentTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusLecturerDepartment>(
      where: where(CampusLecturerDepartment.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
