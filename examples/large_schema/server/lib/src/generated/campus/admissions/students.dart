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

/// Fictional university fixture: admissions.
abstract class CampusStudent
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusStudent._({
    this.id,
    this.programmeId,
    required this.studentNumber,
    required this.name,
    required this.email,
    required this.dateOfBirth,
    required this.active,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudent({
    _is.UuidValue? id,
    _is.UuidValue? programmeId,
    required String studentNumber,
    required String name,
    required String email,
    required DateTime dateOfBirth,
    required bool active,
    DateTime? createdAt,
  }) = _CampusStudentImpl;

  factory CampusStudent.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusStudent(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      programmeId: jsonSerialization['programmeId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['programmeId'],
            ),
      studentNumber: jsonSerialization['studentNumber'] as String,
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String,
      dateOfBirth: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['dateOfBirth'],
      ),
      active: _is.BoolJsonExtension.fromJson(jsonSerialization['active']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusStudentTable();

  static const db = CampusStudentRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue? programmeId;

  String studentNumber;

  String name;

  String email;

  DateTime dateOfBirth;

  bool active;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusStudent]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusStudent copyWith({
    _is.UuidValue? id,
    _is.UuidValue? programmeId,
    String? studentNumber,
    String? name,
    String? email,
    DateTime? dateOfBirth,
    bool? active,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudent',
      if (id != null) 'id': id?.toJson(),
      if (programmeId != null) 'programmeId': programmeId?.toJson(),
      'studentNumber': studentNumber,
      'name': name,
      'email': email,
      'dateOfBirth': dateOfBirth.toJson(),
      'active': active,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudent',
      if (id != null) 'id': id?.toJson(),
      if (programmeId != null) 'programmeId': programmeId?.toJson(),
      'studentNumber': studentNumber,
      'name': name,
      'email': email,
      'dateOfBirth': dateOfBirth.toJson(),
      'active': active,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusStudentInclude include() {
    return CampusStudentInclude._();
  }

  static CampusStudentIncludeList includeList({
    _is.WhereExpressionBuilder<CampusStudentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentTable>? orderByList,
    CampusStudentInclude? include,
  }) {
    return CampusStudentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudent.t),
      orderByList: orderByList?.call(CampusStudent.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentImpl extends CampusStudent {
  _CampusStudentImpl({
    _is.UuidValue? id,
    _is.UuidValue? programmeId,
    required String studentNumber,
    required String name,
    required String email,
    required DateTime dateOfBirth,
    required bool active,
    DateTime? createdAt,
  }) : super._(
         id: id,
         programmeId: programmeId,
         studentNumber: studentNumber,
         name: name,
         email: email,
         dateOfBirth: dateOfBirth,
         active: active,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudent]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusStudent copyWith({
    Object? id = _Undefined,
    Object? programmeId = _Undefined,
    String? studentNumber,
    String? name,
    String? email,
    DateTime? dateOfBirth,
    bool? active,
    DateTime? createdAt,
  }) {
    return CampusStudent(
      id: id is _is.UuidValue? ? id : this.id,
      programmeId: programmeId is _is.UuidValue?
          ? programmeId
          : this.programmeId,
      studentNumber: studentNumber ?? this.studentNumber,
      name: name ?? this.name,
      email: email ?? this.email,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      active: active ?? this.active,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusStudentUpdateTable extends _is.UpdateTable<CampusStudentTable> {
  CampusStudentUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> programmeId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.programmeId,
    value,
  );

  _is.ColumnValue<String, String> studentNumber(String value) =>
      _is.ColumnValue(
        table.studentNumber,
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

  _is.ColumnValue<DateTime, DateTime> dateOfBirth(DateTime value) =>
      _is.ColumnValue(
        table.dateOfBirth,
        value,
      );

  _is.ColumnValue<bool, bool> active(bool value) => _is.ColumnValue(
    table.active,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusStudentTable extends _is.Table<_is.UuidValue?> {
  CampusStudentTable({super.tableRelation})
    : super(tableName: 'campus_students') {
    updateTable = CampusStudentUpdateTable(this);
    programmeId = _is.ColumnUuid(
      'programmeId',
      this,
    );
    studentNumber = _is.ColumnString(
      'studentNumber',
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
    dateOfBirth = _is.ColumnDateTime(
      'dateOfBirth',
      this,
    );
    active = _is.ColumnBool(
      'active',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusStudentUpdateTable updateTable;

  late final _is.ColumnUuid programmeId;

  late final _is.ColumnString studentNumber;

  late final _is.ColumnString name;

  late final _is.ColumnString email;

  late final _is.ColumnDateTime dateOfBirth;

  late final _is.ColumnBool active;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    programmeId,
    studentNumber,
    name,
    email,
    dateOfBirth,
    active,
    createdAt,
  ];
}

class CampusStudentInclude extends _is.IncludeObject {
  CampusStudentInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudent.t;
}

class CampusStudentIncludeList extends _is.IncludeList {
  CampusStudentIncludeList._({
    _is.WhereExpressionBuilder<CampusStudentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusStudent.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudent.t;
}

class CampusStudentRepository {
  const CampusStudentRepository._();

  /// Returns a list of [CampusStudent]s matching the given query parameters.
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
  Future<List<CampusStudent>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusStudent>(
      where: where?.call(CampusStudent.t),
      orderBy: orderBy?.call(CampusStudent.t),
      orderByList: orderByList?.call(CampusStudent.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusStudent] matching the given query parameters.
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
  Future<CampusStudent?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusStudentTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusStudent>(
      where: where?.call(CampusStudent.t),
      orderBy: orderBy?.call(CampusStudent.t),
      orderByList: orderByList?.call(CampusStudent.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusStudent] by its [id] or null if no such row exists.
  Future<CampusStudent?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusStudent>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusStudent]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusStudent]s will have their `id` fields set.
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
  Future<List<CampusStudent>> insert(
    _is.DatabaseSession session,
    List<CampusStudent> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusStudent>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusStudent] and returns the inserted row.
  ///
  /// The returned [CampusStudent] will have its `id` field set.
  Future<CampusStudent> insertRow(
    _is.DatabaseSession session,
    CampusStudent row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusStudent>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusStudent]s in the list and returns the resulting rows.
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
  /// The returned [CampusStudent]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudent>> upsert(
    _is.DatabaseSession session,
    List<CampusStudent> rows, {
    required _is.ColumnSelections<CampusStudentTable> conflictColumns,
    _is.ColumnSelections<CampusStudentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusStudent>(
      rows,
      conflictColumns: conflictColumns(CampusStudent.t),
      updateColumns: updateColumns?.call(CampusStudent.t),
      updateWhere: updateWhere?.call(CampusStudent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusStudent] and returns the resulting row.
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
  /// The returned [CampusStudent] will have its `id` field set.
  Future<CampusStudent?> upsertRow(
    _is.DatabaseSession session,
    CampusStudent row, {
    required _is.ColumnSelections<CampusStudentTable> conflictColumns,
    _is.ColumnSelections<CampusStudentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusStudent>(
      row,
      conflictColumns: conflictColumns(CampusStudent.t),
      updateColumns: updateColumns?.call(CampusStudent.t),
      updateWhere: updateWhere?.call(CampusStudent.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudent]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudent>> update(
    _is.DatabaseSession session,
    List<CampusStudent> rows, {
    _is.ColumnSelections<CampusStudentTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusStudent>(
      rows,
      columns: columns?.call(CampusStudent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusStudent]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusStudent> updateRow(
    _is.DatabaseSession session,
    CampusStudent row, {
    _is.ColumnSelections<CampusStudentTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusStudent>(
      row,
      columns: columns?.call(CampusStudent.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusStudent] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusStudent?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusStudentUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusStudent>(
      id,
      columnValues: columnValues(CampusStudent.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudent]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudent>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusStudentUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusStudentTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusStudent>(
      columnValues: columnValues(CampusStudent.t.updateTable),
      where: where(CampusStudent.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudent.t),
      orderByList: orderByList?.call(CampusStudent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusStudent]s in the list and returns the deleted rows.
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
  Future<List<CampusStudent>> delete(
    _is.DatabaseSession session,
    List<CampusStudent> rows, {
    _is.OrderByBuilder<CampusStudentTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusStudent>(
      rows,
      orderBy: orderBy?.call(CampusStudent.t),
      orderByList: orderByList?.call(CampusStudent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusStudent].
  Future<CampusStudent> deleteRow(
    _is.DatabaseSession session,
    CampusStudent row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusStudent>(
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
  Future<List<CampusStudent>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentTable> where,
    _is.OrderByBuilder<CampusStudentTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusStudent>(
      where: where(CampusStudent.t),
      orderBy: orderBy?.call(CampusStudent.t),
      orderByList: orderByList?.call(CampusStudent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusStudent>(
      where: where?.call(CampusStudent.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusStudent] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusStudent>(
      where: where(CampusStudent.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
