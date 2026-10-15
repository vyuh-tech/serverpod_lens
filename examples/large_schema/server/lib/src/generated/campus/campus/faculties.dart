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
abstract class CampusFaculty
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusFaculty._({
    this.id,
    required this.campusId,
    required this.code,
    required this.name,
    this.deanId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusFaculty({
    _is.UuidValue? id,
    required _is.UuidValue campusId,
    required String code,
    required String name,
    _is.UuidValue? deanId,
    DateTime? createdAt,
  }) = _CampusFacultyImpl;

  factory CampusFaculty.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusFaculty(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      campusId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['campusId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      deanId: jsonSerialization['deanId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['deanId']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusFacultyTable();

  static const db = CampusFacultyRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue campusId;

  String code;

  String name;

  _is.UuidValue? deanId;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusFaculty]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusFaculty copyWith({
    _is.UuidValue? id,
    _is.UuidValue? campusId,
    String? code,
    String? name,
    _is.UuidValue? deanId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusFaculty',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'code': code,
      'name': name,
      if (deanId != null) 'deanId': deanId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusFaculty',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'code': code,
      'name': name,
      if (deanId != null) 'deanId': deanId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusFacultyInclude include() {
    return CampusFacultyInclude._();
  }

  static CampusFacultyIncludeList includeList({
    _is.WhereExpressionBuilder<CampusFacultyTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFacultyTable>? orderBy,
    _is.OrderByListBuilder<CampusFacultyTable>? orderByList,
    CampusFacultyInclude? include,
  }) {
    return CampusFacultyIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFaculty.t),
      orderByList: orderByList?.call(CampusFaculty.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusFacultyImpl extends CampusFaculty {
  _CampusFacultyImpl({
    _is.UuidValue? id,
    required _is.UuidValue campusId,
    required String code,
    required String name,
    _is.UuidValue? deanId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         campusId: campusId,
         code: code,
         name: name,
         deanId: deanId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusFaculty]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusFaculty copyWith({
    Object? id = _Undefined,
    _is.UuidValue? campusId,
    String? code,
    String? name,
    Object? deanId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusFaculty(
      id: id is _is.UuidValue? ? id : this.id,
      campusId: campusId ?? this.campusId,
      code: code ?? this.code,
      name: name ?? this.name,
      deanId: deanId is _is.UuidValue? ? deanId : this.deanId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusFacultyUpdateTable extends _is.UpdateTable<CampusFacultyTable> {
  CampusFacultyUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> campusId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.campusId,
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

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> deanId(_is.UuidValue? value) =>
      _is.ColumnValue(
        table.deanId,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusFacultyTable extends _is.Table<_is.UuidValue?> {
  CampusFacultyTable({super.tableRelation})
    : super(tableName: 'campus_faculties') {
    updateTable = CampusFacultyUpdateTable(this);
    campusId = _is.ColumnUuid(
      'campusId',
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
    deanId = _is.ColumnUuid(
      'deanId',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusFacultyUpdateTable updateTable;

  late final _is.ColumnUuid campusId;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnUuid deanId;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    campusId,
    code,
    name,
    deanId,
    createdAt,
  ];
}

class CampusFacultyInclude extends _is.IncludeObject {
  CampusFacultyInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFaculty.t;
}

class CampusFacultyIncludeList extends _is.IncludeList {
  CampusFacultyIncludeList._({
    _is.WhereExpressionBuilder<CampusFacultyTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusFaculty.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFaculty.t;
}

class CampusFacultyRepository {
  const CampusFacultyRepository._();

  /// Returns a list of [CampusFaculty]s matching the given query parameters.
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
  Future<List<CampusFaculty>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFacultyTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFacultyTable>? orderBy,
    _is.OrderByListBuilder<CampusFacultyTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusFaculty>(
      where: where?.call(CampusFaculty.t),
      orderBy: orderBy?.call(CampusFaculty.t),
      orderByList: orderByList?.call(CampusFaculty.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusFaculty] matching the given query parameters.
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
  Future<CampusFaculty?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFacultyTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusFacultyTable>? orderBy,
    _is.OrderByListBuilder<CampusFacultyTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusFaculty>(
      where: where?.call(CampusFaculty.t),
      orderBy: orderBy?.call(CampusFaculty.t),
      orderByList: orderByList?.call(CampusFaculty.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusFaculty] by its [id] or null if no such row exists.
  Future<CampusFaculty?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusFaculty>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusFaculty]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusFaculty]s will have their `id` fields set.
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
  Future<List<CampusFaculty>> insert(
    _is.DatabaseSession session,
    List<CampusFaculty> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusFaculty>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusFaculty] and returns the inserted row.
  ///
  /// The returned [CampusFaculty] will have its `id` field set.
  Future<CampusFaculty> insertRow(
    _is.DatabaseSession session,
    CampusFaculty row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusFaculty>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusFaculty]s in the list and returns the resulting rows.
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
  /// The returned [CampusFaculty]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFaculty>> upsert(
    _is.DatabaseSession session,
    List<CampusFaculty> rows, {
    required _is.ColumnSelections<CampusFacultyTable> conflictColumns,
    _is.ColumnSelections<CampusFacultyTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFacultyTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusFaculty>(
      rows,
      conflictColumns: conflictColumns(CampusFaculty.t),
      updateColumns: updateColumns?.call(CampusFaculty.t),
      updateWhere: updateWhere?.call(CampusFaculty.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusFaculty] and returns the resulting row.
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
  /// The returned [CampusFaculty] will have its `id` field set.
  Future<CampusFaculty?> upsertRow(
    _is.DatabaseSession session,
    CampusFaculty row, {
    required _is.ColumnSelections<CampusFacultyTable> conflictColumns,
    _is.ColumnSelections<CampusFacultyTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFacultyTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusFaculty>(
      row,
      conflictColumns: conflictColumns(CampusFaculty.t),
      updateColumns: updateColumns?.call(CampusFaculty.t),
      updateWhere: updateWhere?.call(CampusFaculty.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFaculty]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFaculty>> update(
    _is.DatabaseSession session,
    List<CampusFaculty> rows, {
    _is.ColumnSelections<CampusFacultyTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusFaculty>(
      rows,
      columns: columns?.call(CampusFaculty.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusFaculty]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusFaculty> updateRow(
    _is.DatabaseSession session,
    CampusFaculty row, {
    _is.ColumnSelections<CampusFacultyTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusFaculty>(
      row,
      columns: columns?.call(CampusFaculty.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusFaculty] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusFaculty?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusFacultyUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusFaculty>(
      id,
      columnValues: columnValues(CampusFaculty.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFaculty]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFaculty>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusFacultyUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusFacultyTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFacultyTable>? orderBy,
    _is.OrderByListBuilder<CampusFacultyTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusFaculty>(
      columnValues: columnValues(CampusFaculty.t.updateTable),
      where: where(CampusFaculty.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFaculty.t),
      orderByList: orderByList?.call(CampusFaculty.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusFaculty]s in the list and returns the deleted rows.
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
  Future<List<CampusFaculty>> delete(
    _is.DatabaseSession session,
    List<CampusFaculty> rows, {
    _is.OrderByBuilder<CampusFacultyTable>? orderBy,
    _is.OrderByListBuilder<CampusFacultyTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusFaculty>(
      rows,
      orderBy: orderBy?.call(CampusFaculty.t),
      orderByList: orderByList?.call(CampusFaculty.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusFaculty].
  Future<CampusFaculty> deleteRow(
    _is.DatabaseSession session,
    CampusFaculty row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusFaculty>(
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
  Future<List<CampusFaculty>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFacultyTable> where,
    _is.OrderByBuilder<CampusFacultyTable>? orderBy,
    _is.OrderByListBuilder<CampusFacultyTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusFaculty>(
      where: where(CampusFaculty.t),
      orderBy: orderBy?.call(CampusFaculty.t),
      orderByList: orderByList?.call(CampusFaculty.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFacultyTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusFaculty>(
      where: where?.call(CampusFaculty.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusFaculty] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFacultyTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusFaculty>(
      where: where(CampusFaculty.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
