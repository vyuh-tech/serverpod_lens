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

/// Fictional university fixture: library.
abstract class CampusReadingList
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusReadingList._({
    this.id,
    required this.courseId,
    required this.lecturerId,
    required this.title,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusReadingList({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required _is.UuidValue lecturerId,
    required String title,
    DateTime? createdAt,
  }) = _CampusReadingListImpl;

  factory CampusReadingList.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusReadingList(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      lecturerId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      title: jsonSerialization['title'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusReadingListTable();

  static const db = CampusReadingListRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue courseId;

  _is.UuidValue lecturerId;

  String title;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusReadingList]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusReadingList copyWith({
    _is.UuidValue? id,
    _is.UuidValue? courseId,
    _is.UuidValue? lecturerId,
    String? title,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusReadingList',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'title': title,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusReadingList',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'title': title,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusReadingListInclude include() {
    return CampusReadingListInclude._();
  }

  static CampusReadingListIncludeList includeList({
    _is.WhereExpressionBuilder<CampusReadingListTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusReadingListTable>? orderBy,
    _is.OrderByListBuilder<CampusReadingListTable>? orderByList,
    CampusReadingListInclude? include,
  }) {
    return CampusReadingListIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusReadingList.t),
      orderByList: orderByList?.call(CampusReadingList.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusReadingListImpl extends CampusReadingList {
  _CampusReadingListImpl({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required _is.UuidValue lecturerId,
    required String title,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         lecturerId: lecturerId,
         title: title,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusReadingList]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusReadingList copyWith({
    Object? id = _Undefined,
    _is.UuidValue? courseId,
    _is.UuidValue? lecturerId,
    String? title,
    DateTime? createdAt,
  }) {
    return CampusReadingList(
      id: id is _is.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      lecturerId: lecturerId ?? this.lecturerId,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusReadingListUpdateTable
    extends _is.UpdateTable<CampusReadingListTable> {
  CampusReadingListUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> courseId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.courseId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> lecturerId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.lecturerId,
    value,
  );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusReadingListTable extends _is.Table<_is.UuidValue?> {
  CampusReadingListTable({super.tableRelation})
    : super(tableName: 'campus_reading_lists') {
    updateTable = CampusReadingListUpdateTable(this);
    courseId = _is.ColumnUuid(
      'courseId',
      this,
    );
    lecturerId = _is.ColumnUuid(
      'lecturerId',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusReadingListUpdateTable updateTable;

  late final _is.ColumnUuid courseId;

  late final _is.ColumnUuid lecturerId;

  late final _is.ColumnString title;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    courseId,
    lecturerId,
    title,
    createdAt,
  ];
}

class CampusReadingListInclude extends _is.IncludeObject {
  CampusReadingListInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusReadingList.t;
}

class CampusReadingListIncludeList extends _is.IncludeList {
  CampusReadingListIncludeList._({
    _is.WhereExpressionBuilder<CampusReadingListTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusReadingList.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusReadingList.t;
}

class CampusReadingListRepository {
  const CampusReadingListRepository._();

  /// Returns a list of [CampusReadingList]s matching the given query parameters.
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
  Future<List<CampusReadingList>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusReadingListTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusReadingListTable>? orderBy,
    _is.OrderByListBuilder<CampusReadingListTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusReadingList>(
      where: where?.call(CampusReadingList.t),
      orderBy: orderBy?.call(CampusReadingList.t),
      orderByList: orderByList?.call(CampusReadingList.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusReadingList] matching the given query parameters.
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
  Future<CampusReadingList?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusReadingListTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusReadingListTable>? orderBy,
    _is.OrderByListBuilder<CampusReadingListTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusReadingList>(
      where: where?.call(CampusReadingList.t),
      orderBy: orderBy?.call(CampusReadingList.t),
      orderByList: orderByList?.call(CampusReadingList.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusReadingList] by its [id] or null if no such row exists.
  Future<CampusReadingList?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusReadingList>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusReadingList]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusReadingList]s will have their `id` fields set.
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
  Future<List<CampusReadingList>> insert(
    _is.DatabaseSession session,
    List<CampusReadingList> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusReadingList>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusReadingList] and returns the inserted row.
  ///
  /// The returned [CampusReadingList] will have its `id` field set.
  Future<CampusReadingList> insertRow(
    _is.DatabaseSession session,
    CampusReadingList row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusReadingList>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusReadingList]s in the list and returns the resulting rows.
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
  /// The returned [CampusReadingList]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusReadingList>> upsert(
    _is.DatabaseSession session,
    List<CampusReadingList> rows, {
    required _is.ColumnSelections<CampusReadingListTable> conflictColumns,
    _is.ColumnSelections<CampusReadingListTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusReadingListTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusReadingList>(
      rows,
      conflictColumns: conflictColumns(CampusReadingList.t),
      updateColumns: updateColumns?.call(CampusReadingList.t),
      updateWhere: updateWhere?.call(CampusReadingList.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusReadingList] and returns the resulting row.
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
  /// The returned [CampusReadingList] will have its `id` field set.
  Future<CampusReadingList?> upsertRow(
    _is.DatabaseSession session,
    CampusReadingList row, {
    required _is.ColumnSelections<CampusReadingListTable> conflictColumns,
    _is.ColumnSelections<CampusReadingListTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusReadingListTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusReadingList>(
      row,
      conflictColumns: conflictColumns(CampusReadingList.t),
      updateColumns: updateColumns?.call(CampusReadingList.t),
      updateWhere: updateWhere?.call(CampusReadingList.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusReadingList]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusReadingList>> update(
    _is.DatabaseSession session,
    List<CampusReadingList> rows, {
    _is.ColumnSelections<CampusReadingListTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusReadingList>(
      rows,
      columns: columns?.call(CampusReadingList.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusReadingList]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusReadingList> updateRow(
    _is.DatabaseSession session,
    CampusReadingList row, {
    _is.ColumnSelections<CampusReadingListTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusReadingList>(
      row,
      columns: columns?.call(CampusReadingList.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusReadingList] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusReadingList?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusReadingListUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusReadingList>(
      id,
      columnValues: columnValues(CampusReadingList.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusReadingList]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusReadingList>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusReadingListUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusReadingListTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusReadingListTable>? orderBy,
    _is.OrderByListBuilder<CampusReadingListTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusReadingList>(
      columnValues: columnValues(CampusReadingList.t.updateTable),
      where: where(CampusReadingList.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusReadingList.t),
      orderByList: orderByList?.call(CampusReadingList.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusReadingList]s in the list and returns the deleted rows.
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
  Future<List<CampusReadingList>> delete(
    _is.DatabaseSession session,
    List<CampusReadingList> rows, {
    _is.OrderByBuilder<CampusReadingListTable>? orderBy,
    _is.OrderByListBuilder<CampusReadingListTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusReadingList>(
      rows,
      orderBy: orderBy?.call(CampusReadingList.t),
      orderByList: orderByList?.call(CampusReadingList.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusReadingList].
  Future<CampusReadingList> deleteRow(
    _is.DatabaseSession session,
    CampusReadingList row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusReadingList>(
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
  Future<List<CampusReadingList>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusReadingListTable> where,
    _is.OrderByBuilder<CampusReadingListTable>? orderBy,
    _is.OrderByListBuilder<CampusReadingListTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusReadingList>(
      where: where(CampusReadingList.t),
      orderBy: orderBy?.call(CampusReadingList.t),
      orderByList: orderByList?.call(CampusReadingList.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusReadingListTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusReadingList>(
      where: where?.call(CampusReadingList.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusReadingList] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusReadingListTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusReadingList>(
      where: where(CampusReadingList.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
