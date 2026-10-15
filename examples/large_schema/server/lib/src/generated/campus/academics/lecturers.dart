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
abstract class CampusLecturer
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusLecturer._({
    this.id,
    required this.departmentId,
    required this.staffNumber,
    required this.name,
    required this.email,
    this.supervisorId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusLecturer({
    _is.UuidValue? id,
    required _is.UuidValue departmentId,
    required String staffNumber,
    required String name,
    required String email,
    _is.UuidValue? supervisorId,
    DateTime? createdAt,
  }) = _CampusLecturerImpl;

  factory CampusLecturer.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusLecturer(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      departmentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentId'],
      ),
      staffNumber: jsonSerialization['staffNumber'] as String,
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String,
      supervisorId: jsonSerialization['supervisorId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['supervisorId'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusLecturerTable();

  static const db = CampusLecturerRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue departmentId;

  String staffNumber;

  String name;

  String email;

  _is.UuidValue? supervisorId;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusLecturer]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusLecturer copyWith({
    _is.UuidValue? id,
    _is.UuidValue? departmentId,
    String? staffNumber,
    String? name,
    String? email,
    _is.UuidValue? supervisorId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusLecturer',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      'staffNumber': staffNumber,
      'name': name,
      'email': email,
      if (supervisorId != null) 'supervisorId': supervisorId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusLecturer',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      'staffNumber': staffNumber,
      'name': name,
      'email': email,
      if (supervisorId != null) 'supervisorId': supervisorId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusLecturerInclude include() {
    return CampusLecturerInclude._();
  }

  static CampusLecturerIncludeList includeList({
    _is.WhereExpressionBuilder<CampusLecturerTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLecturerTable>? orderBy,
    _is.OrderByListBuilder<CampusLecturerTable>? orderByList,
    CampusLecturerInclude? include,
  }) {
    return CampusLecturerIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusLecturer.t),
      orderByList: orderByList?.call(CampusLecturer.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusLecturerImpl extends CampusLecturer {
  _CampusLecturerImpl({
    _is.UuidValue? id,
    required _is.UuidValue departmentId,
    required String staffNumber,
    required String name,
    required String email,
    _is.UuidValue? supervisorId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         departmentId: departmentId,
         staffNumber: staffNumber,
         name: name,
         email: email,
         supervisorId: supervisorId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusLecturer]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusLecturer copyWith({
    Object? id = _Undefined,
    _is.UuidValue? departmentId,
    String? staffNumber,
    String? name,
    String? email,
    Object? supervisorId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusLecturer(
      id: id is _is.UuidValue? ? id : this.id,
      departmentId: departmentId ?? this.departmentId,
      staffNumber: staffNumber ?? this.staffNumber,
      name: name ?? this.name,
      email: email ?? this.email,
      supervisorId: supervisorId is _is.UuidValue?
          ? supervisorId
          : this.supervisorId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusLecturerUpdateTable extends _is.UpdateTable<CampusLecturerTable> {
  CampusLecturerUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> departmentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.departmentId,
    value,
  );

  _is.ColumnValue<String, String> staffNumber(String value) => _is.ColumnValue(
    table.staffNumber,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> email(String value) => _is.ColumnValue(
    table.email,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> supervisorId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.supervisorId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusLecturerTable extends _is.Table<_is.UuidValue?> {
  CampusLecturerTable({super.tableRelation})
    : super(tableName: 'campus_lecturers') {
    updateTable = CampusLecturerUpdateTable(this);
    departmentId = _is.ColumnUuid(
      'departmentId',
      this,
    );
    staffNumber = _is.ColumnString(
      'staffNumber',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    email = _is.ColumnString(
      'email',
      this,
    );
    supervisorId = _is.ColumnUuid(
      'supervisorId',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusLecturerUpdateTable updateTable;

  late final _is.ColumnUuid departmentId;

  late final _is.ColumnString staffNumber;

  late final _is.ColumnString name;

  late final _is.ColumnString email;

  late final _is.ColumnUuid supervisorId;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    departmentId,
    staffNumber,
    name,
    email,
    supervisorId,
    createdAt,
  ];
}

class CampusLecturerInclude extends _is.IncludeObject {
  CampusLecturerInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusLecturer.t;
}

class CampusLecturerIncludeList extends _is.IncludeList {
  CampusLecturerIncludeList._({
    _is.WhereExpressionBuilder<CampusLecturerTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusLecturer.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusLecturer.t;
}

class CampusLecturerRepository {
  const CampusLecturerRepository._();

  /// Returns a list of [CampusLecturer]s matching the given query parameters.
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
  Future<List<CampusLecturer>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLecturerTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLecturerTable>? orderBy,
    _is.OrderByListBuilder<CampusLecturerTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusLecturer>(
      where: where?.call(CampusLecturer.t),
      orderBy: orderBy?.call(CampusLecturer.t),
      orderByList: orderByList?.call(CampusLecturer.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusLecturer] matching the given query parameters.
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
  Future<CampusLecturer?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLecturerTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusLecturerTable>? orderBy,
    _is.OrderByListBuilder<CampusLecturerTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusLecturer>(
      where: where?.call(CampusLecturer.t),
      orderBy: orderBy?.call(CampusLecturer.t),
      orderByList: orderByList?.call(CampusLecturer.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusLecturer] by its [id] or null if no such row exists.
  Future<CampusLecturer?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusLecturer>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusLecturer]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusLecturer]s will have their `id` fields set.
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
  Future<List<CampusLecturer>> insert(
    _is.DatabaseSession session,
    List<CampusLecturer> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusLecturer>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusLecturer] and returns the inserted row.
  ///
  /// The returned [CampusLecturer] will have its `id` field set.
  Future<CampusLecturer> insertRow(
    _is.DatabaseSession session,
    CampusLecturer row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusLecturer>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusLecturer]s in the list and returns the resulting rows.
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
  /// The returned [CampusLecturer]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLecturer>> upsert(
    _is.DatabaseSession session,
    List<CampusLecturer> rows, {
    required _is.ColumnSelections<CampusLecturerTable> conflictColumns,
    _is.ColumnSelections<CampusLecturerTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusLecturerTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusLecturer>(
      rows,
      conflictColumns: conflictColumns(CampusLecturer.t),
      updateColumns: updateColumns?.call(CampusLecturer.t),
      updateWhere: updateWhere?.call(CampusLecturer.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusLecturer] and returns the resulting row.
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
  /// The returned [CampusLecturer] will have its `id` field set.
  Future<CampusLecturer?> upsertRow(
    _is.DatabaseSession session,
    CampusLecturer row, {
    required _is.ColumnSelections<CampusLecturerTable> conflictColumns,
    _is.ColumnSelections<CampusLecturerTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusLecturerTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusLecturer>(
      row,
      conflictColumns: conflictColumns(CampusLecturer.t),
      updateColumns: updateColumns?.call(CampusLecturer.t),
      updateWhere: updateWhere?.call(CampusLecturer.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusLecturer]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLecturer>> update(
    _is.DatabaseSession session,
    List<CampusLecturer> rows, {
    _is.ColumnSelections<CampusLecturerTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusLecturer>(
      rows,
      columns: columns?.call(CampusLecturer.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusLecturer]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusLecturer> updateRow(
    _is.DatabaseSession session,
    CampusLecturer row, {
    _is.ColumnSelections<CampusLecturerTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusLecturer>(
      row,
      columns: columns?.call(CampusLecturer.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusLecturer] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusLecturer?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusLecturerUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusLecturer>(
      id,
      columnValues: columnValues(CampusLecturer.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusLecturer]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLecturer>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusLecturerUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusLecturerTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLecturerTable>? orderBy,
    _is.OrderByListBuilder<CampusLecturerTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusLecturer>(
      columnValues: columnValues(CampusLecturer.t.updateTable),
      where: where(CampusLecturer.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusLecturer.t),
      orderByList: orderByList?.call(CampusLecturer.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusLecturer]s in the list and returns the deleted rows.
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
  Future<List<CampusLecturer>> delete(
    _is.DatabaseSession session,
    List<CampusLecturer> rows, {
    _is.OrderByBuilder<CampusLecturerTable>? orderBy,
    _is.OrderByListBuilder<CampusLecturerTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusLecturer>(
      rows,
      orderBy: orderBy?.call(CampusLecturer.t),
      orderByList: orderByList?.call(CampusLecturer.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusLecturer].
  Future<CampusLecturer> deleteRow(
    _is.DatabaseSession session,
    CampusLecturer row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusLecturer>(
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
  Future<List<CampusLecturer>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusLecturerTable> where,
    _is.OrderByBuilder<CampusLecturerTable>? orderBy,
    _is.OrderByListBuilder<CampusLecturerTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusLecturer>(
      where: where(CampusLecturer.t),
      orderBy: orderBy?.call(CampusLecturer.t),
      orderByList: orderByList?.call(CampusLecturer.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLecturerTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusLecturer>(
      where: where?.call(CampusLecturer.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusLecturer] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusLecturerTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusLecturer>(
      where: where(CampusLecturer.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
