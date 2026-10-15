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
abstract class CampusProgramme
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusProgramme._({
    this.id,
    required this.departmentId,
    required this.qualificationId,
    required this.code,
    required this.title,
    required this.durationTerms,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusProgramme({
    _is.UuidValue? id,
    required _is.UuidValue departmentId,
    required _is.UuidValue qualificationId,
    required String code,
    required String title,
    required int durationTerms,
    DateTime? createdAt,
  }) = _CampusProgrammeImpl;

  factory CampusProgramme.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusProgramme(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      departmentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentId'],
      ),
      qualificationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['qualificationId'],
      ),
      code: jsonSerialization['code'] as String,
      title: jsonSerialization['title'] as String,
      durationTerms: jsonSerialization['durationTerms'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusProgrammeTable();

  static const db = CampusProgrammeRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue departmentId;

  _is.UuidValue qualificationId;

  String code;

  String title;

  int durationTerms;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusProgramme]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusProgramme copyWith({
    _is.UuidValue? id,
    _is.UuidValue? departmentId,
    _is.UuidValue? qualificationId,
    String? code,
    String? title,
    int? durationTerms,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusProgramme',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      'qualificationId': qualificationId.toJson(),
      'code': code,
      'title': title,
      'durationTerms': durationTerms,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusProgramme',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      'qualificationId': qualificationId.toJson(),
      'code': code,
      'title': title,
      'durationTerms': durationTerms,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusProgrammeInclude include() {
    return CampusProgrammeInclude._();
  }

  static CampusProgrammeIncludeList includeList({
    _is.WhereExpressionBuilder<CampusProgrammeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusProgrammeTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeTable>? orderByList,
    CampusProgrammeInclude? include,
  }) {
    return CampusProgrammeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusProgramme.t),
      orderByList: orderByList?.call(CampusProgramme.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusProgrammeImpl extends CampusProgramme {
  _CampusProgrammeImpl({
    _is.UuidValue? id,
    required _is.UuidValue departmentId,
    required _is.UuidValue qualificationId,
    required String code,
    required String title,
    required int durationTerms,
    DateTime? createdAt,
  }) : super._(
         id: id,
         departmentId: departmentId,
         qualificationId: qualificationId,
         code: code,
         title: title,
         durationTerms: durationTerms,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusProgramme]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusProgramme copyWith({
    Object? id = _Undefined,
    _is.UuidValue? departmentId,
    _is.UuidValue? qualificationId,
    String? code,
    String? title,
    int? durationTerms,
    DateTime? createdAt,
  }) {
    return CampusProgramme(
      id: id is _is.UuidValue? ? id : this.id,
      departmentId: departmentId ?? this.departmentId,
      qualificationId: qualificationId ?? this.qualificationId,
      code: code ?? this.code,
      title: title ?? this.title,
      durationTerms: durationTerms ?? this.durationTerms,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusProgrammeUpdateTable extends _is.UpdateTable<CampusProgrammeTable> {
  CampusProgrammeUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> departmentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.departmentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> qualificationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.qualificationId,
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

  _is.ColumnValue<int, int> durationTerms(int value) => _is.ColumnValue(
    table.durationTerms,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusProgrammeTable extends _is.Table<_is.UuidValue?> {
  CampusProgrammeTable({super.tableRelation})
    : super(tableName: 'campus_programmes') {
    updateTable = CampusProgrammeUpdateTable(this);
    departmentId = _is.ColumnUuid(
      'departmentId',
      this,
    );
    qualificationId = _is.ColumnUuid(
      'qualificationId',
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
    durationTerms = _is.ColumnInt(
      'durationTerms',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusProgrammeUpdateTable updateTable;

  late final _is.ColumnUuid departmentId;

  late final _is.ColumnUuid qualificationId;

  late final _is.ColumnString code;

  late final _is.ColumnString title;

  late final _is.ColumnInt durationTerms;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    departmentId,
    qualificationId,
    code,
    title,
    durationTerms,
    createdAt,
  ];
}

class CampusProgrammeInclude extends _is.IncludeObject {
  CampusProgrammeInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusProgramme.t;
}

class CampusProgrammeIncludeList extends _is.IncludeList {
  CampusProgrammeIncludeList._({
    _is.WhereExpressionBuilder<CampusProgrammeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusProgramme.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusProgramme.t;
}

class CampusProgrammeRepository {
  const CampusProgrammeRepository._();

  /// Returns a list of [CampusProgramme]s matching the given query parameters.
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
  Future<List<CampusProgramme>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusProgrammeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusProgrammeTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusProgramme>(
      where: where?.call(CampusProgramme.t),
      orderBy: orderBy?.call(CampusProgramme.t),
      orderByList: orderByList?.call(CampusProgramme.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusProgramme] matching the given query parameters.
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
  Future<CampusProgramme?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusProgrammeTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusProgrammeTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusProgramme>(
      where: where?.call(CampusProgramme.t),
      orderBy: orderBy?.call(CampusProgramme.t),
      orderByList: orderByList?.call(CampusProgramme.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusProgramme] by its [id] or null if no such row exists.
  Future<CampusProgramme?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusProgramme>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusProgramme]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusProgramme]s will have their `id` fields set.
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
  Future<List<CampusProgramme>> insert(
    _is.DatabaseSession session,
    List<CampusProgramme> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusProgramme>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusProgramme] and returns the inserted row.
  ///
  /// The returned [CampusProgramme] will have its `id` field set.
  Future<CampusProgramme> insertRow(
    _is.DatabaseSession session,
    CampusProgramme row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusProgramme>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusProgramme]s in the list and returns the resulting rows.
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
  /// The returned [CampusProgramme]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusProgramme>> upsert(
    _is.DatabaseSession session,
    List<CampusProgramme> rows, {
    required _is.ColumnSelections<CampusProgrammeTable> conflictColumns,
    _is.ColumnSelections<CampusProgrammeTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusProgrammeTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusProgramme>(
      rows,
      conflictColumns: conflictColumns(CampusProgramme.t),
      updateColumns: updateColumns?.call(CampusProgramme.t),
      updateWhere: updateWhere?.call(CampusProgramme.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusProgramme] and returns the resulting row.
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
  /// The returned [CampusProgramme] will have its `id` field set.
  Future<CampusProgramme?> upsertRow(
    _is.DatabaseSession session,
    CampusProgramme row, {
    required _is.ColumnSelections<CampusProgrammeTable> conflictColumns,
    _is.ColumnSelections<CampusProgrammeTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusProgrammeTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusProgramme>(
      row,
      conflictColumns: conflictColumns(CampusProgramme.t),
      updateColumns: updateColumns?.call(CampusProgramme.t),
      updateWhere: updateWhere?.call(CampusProgramme.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusProgramme]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusProgramme>> update(
    _is.DatabaseSession session,
    List<CampusProgramme> rows, {
    _is.ColumnSelections<CampusProgrammeTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusProgramme>(
      rows,
      columns: columns?.call(CampusProgramme.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusProgramme]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusProgramme> updateRow(
    _is.DatabaseSession session,
    CampusProgramme row, {
    _is.ColumnSelections<CampusProgrammeTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusProgramme>(
      row,
      columns: columns?.call(CampusProgramme.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusProgramme] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusProgramme?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusProgrammeUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusProgramme>(
      id,
      columnValues: columnValues(CampusProgramme.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusProgramme]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusProgramme>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusProgrammeUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusProgrammeTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusProgrammeTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusProgramme>(
      columnValues: columnValues(CampusProgramme.t.updateTable),
      where: where(CampusProgramme.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusProgramme.t),
      orderByList: orderByList?.call(CampusProgramme.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusProgramme]s in the list and returns the deleted rows.
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
  Future<List<CampusProgramme>> delete(
    _is.DatabaseSession session,
    List<CampusProgramme> rows, {
    _is.OrderByBuilder<CampusProgrammeTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusProgramme>(
      rows,
      orderBy: orderBy?.call(CampusProgramme.t),
      orderByList: orderByList?.call(CampusProgramme.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusProgramme].
  Future<CampusProgramme> deleteRow(
    _is.DatabaseSession session,
    CampusProgramme row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusProgramme>(
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
  Future<List<CampusProgramme>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusProgrammeTable> where,
    _is.OrderByBuilder<CampusProgrammeTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusProgramme>(
      where: where(CampusProgramme.t),
      orderBy: orderBy?.call(CampusProgramme.t),
      orderByList: orderByList?.call(CampusProgramme.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusProgrammeTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusProgramme>(
      where: where?.call(CampusProgramme.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusProgramme] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusProgrammeTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusProgramme>(
      where: where(CampusProgramme.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
