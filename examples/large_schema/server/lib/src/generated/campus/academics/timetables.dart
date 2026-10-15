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
abstract class CampusTimetable
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusTimetable._({
    this.id,
    required this.termId,
    required this.programmeId,
    required this.title,
    required this.published,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusTimetable({
    _is.UuidValue? id,
    required _is.UuidValue termId,
    required _is.UuidValue programmeId,
    required String title,
    required bool published,
    DateTime? createdAt,
  }) = _CampusTimetableImpl;

  factory CampusTimetable.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusTimetable(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      termId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['termId']),
      programmeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeId'],
      ),
      title: jsonSerialization['title'] as String,
      published: _is.BoolJsonExtension.fromJson(jsonSerialization['published']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusTimetableTable();

  static const db = CampusTimetableRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue termId;

  _is.UuidValue programmeId;

  String title;

  bool published;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusTimetable]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusTimetable copyWith({
    _is.UuidValue? id,
    _is.UuidValue? termId,
    _is.UuidValue? programmeId,
    String? title,
    bool? published,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusTimetable',
      if (id != null) 'id': id?.toJson(),
      'termId': termId.toJson(),
      'programmeId': programmeId.toJson(),
      'title': title,
      'published': published,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusTimetable',
      if (id != null) 'id': id?.toJson(),
      'termId': termId.toJson(),
      'programmeId': programmeId.toJson(),
      'title': title,
      'published': published,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusTimetableInclude include() {
    return CampusTimetableInclude._();
  }

  static CampusTimetableIncludeList includeList({
    _is.WhereExpressionBuilder<CampusTimetableTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusTimetableTable>? orderBy,
    _is.OrderByListBuilder<CampusTimetableTable>? orderByList,
    CampusTimetableInclude? include,
  }) {
    return CampusTimetableIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusTimetable.t),
      orderByList: orderByList?.call(CampusTimetable.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusTimetableImpl extends CampusTimetable {
  _CampusTimetableImpl({
    _is.UuidValue? id,
    required _is.UuidValue termId,
    required _is.UuidValue programmeId,
    required String title,
    required bool published,
    DateTime? createdAt,
  }) : super._(
         id: id,
         termId: termId,
         programmeId: programmeId,
         title: title,
         published: published,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusTimetable]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusTimetable copyWith({
    Object? id = _Undefined,
    _is.UuidValue? termId,
    _is.UuidValue? programmeId,
    String? title,
    bool? published,
    DateTime? createdAt,
  }) {
    return CampusTimetable(
      id: id is _is.UuidValue? ? id : this.id,
      termId: termId ?? this.termId,
      programmeId: programmeId ?? this.programmeId,
      title: title ?? this.title,
      published: published ?? this.published,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusTimetableUpdateTable extends _is.UpdateTable<CampusTimetableTable> {
  CampusTimetableUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> termId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.termId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> programmeId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.programmeId,
    value,
  );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<bool, bool> published(bool value) => _is.ColumnValue(
    table.published,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusTimetableTable extends _is.Table<_is.UuidValue?> {
  CampusTimetableTable({super.tableRelation})
    : super(tableName: 'campus_timetables') {
    updateTable = CampusTimetableUpdateTable(this);
    termId = _is.ColumnUuid(
      'termId',
      this,
    );
    programmeId = _is.ColumnUuid(
      'programmeId',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    published = _is.ColumnBool(
      'published',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusTimetableUpdateTable updateTable;

  late final _is.ColumnUuid termId;

  late final _is.ColumnUuid programmeId;

  late final _is.ColumnString title;

  late final _is.ColumnBool published;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    termId,
    programmeId,
    title,
    published,
    createdAt,
  ];
}

class CampusTimetableInclude extends _is.IncludeObject {
  CampusTimetableInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusTimetable.t;
}

class CampusTimetableIncludeList extends _is.IncludeList {
  CampusTimetableIncludeList._({
    _is.WhereExpressionBuilder<CampusTimetableTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusTimetable.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusTimetable.t;
}

class CampusTimetableRepository {
  const CampusTimetableRepository._();

  /// Returns a list of [CampusTimetable]s matching the given query parameters.
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
  Future<List<CampusTimetable>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusTimetableTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusTimetableTable>? orderBy,
    _is.OrderByListBuilder<CampusTimetableTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusTimetable>(
      where: where?.call(CampusTimetable.t),
      orderBy: orderBy?.call(CampusTimetable.t),
      orderByList: orderByList?.call(CampusTimetable.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusTimetable] matching the given query parameters.
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
  Future<CampusTimetable?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusTimetableTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusTimetableTable>? orderBy,
    _is.OrderByListBuilder<CampusTimetableTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusTimetable>(
      where: where?.call(CampusTimetable.t),
      orderBy: orderBy?.call(CampusTimetable.t),
      orderByList: orderByList?.call(CampusTimetable.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusTimetable] by its [id] or null if no such row exists.
  Future<CampusTimetable?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusTimetable>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusTimetable]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusTimetable]s will have their `id` fields set.
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
  Future<List<CampusTimetable>> insert(
    _is.DatabaseSession session,
    List<CampusTimetable> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusTimetable>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusTimetable] and returns the inserted row.
  ///
  /// The returned [CampusTimetable] will have its `id` field set.
  Future<CampusTimetable> insertRow(
    _is.DatabaseSession session,
    CampusTimetable row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusTimetable>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusTimetable]s in the list and returns the resulting rows.
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
  /// The returned [CampusTimetable]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusTimetable>> upsert(
    _is.DatabaseSession session,
    List<CampusTimetable> rows, {
    required _is.ColumnSelections<CampusTimetableTable> conflictColumns,
    _is.ColumnSelections<CampusTimetableTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusTimetableTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusTimetable>(
      rows,
      conflictColumns: conflictColumns(CampusTimetable.t),
      updateColumns: updateColumns?.call(CampusTimetable.t),
      updateWhere: updateWhere?.call(CampusTimetable.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusTimetable] and returns the resulting row.
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
  /// The returned [CampusTimetable] will have its `id` field set.
  Future<CampusTimetable?> upsertRow(
    _is.DatabaseSession session,
    CampusTimetable row, {
    required _is.ColumnSelections<CampusTimetableTable> conflictColumns,
    _is.ColumnSelections<CampusTimetableTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusTimetableTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusTimetable>(
      row,
      conflictColumns: conflictColumns(CampusTimetable.t),
      updateColumns: updateColumns?.call(CampusTimetable.t),
      updateWhere: updateWhere?.call(CampusTimetable.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusTimetable]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusTimetable>> update(
    _is.DatabaseSession session,
    List<CampusTimetable> rows, {
    _is.ColumnSelections<CampusTimetableTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusTimetable>(
      rows,
      columns: columns?.call(CampusTimetable.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusTimetable]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusTimetable> updateRow(
    _is.DatabaseSession session,
    CampusTimetable row, {
    _is.ColumnSelections<CampusTimetableTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusTimetable>(
      row,
      columns: columns?.call(CampusTimetable.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusTimetable] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusTimetable?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusTimetableUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusTimetable>(
      id,
      columnValues: columnValues(CampusTimetable.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusTimetable]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusTimetable>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusTimetableUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusTimetableTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusTimetableTable>? orderBy,
    _is.OrderByListBuilder<CampusTimetableTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusTimetable>(
      columnValues: columnValues(CampusTimetable.t.updateTable),
      where: where(CampusTimetable.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusTimetable.t),
      orderByList: orderByList?.call(CampusTimetable.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusTimetable]s in the list and returns the deleted rows.
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
  Future<List<CampusTimetable>> delete(
    _is.DatabaseSession session,
    List<CampusTimetable> rows, {
    _is.OrderByBuilder<CampusTimetableTable>? orderBy,
    _is.OrderByListBuilder<CampusTimetableTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusTimetable>(
      rows,
      orderBy: orderBy?.call(CampusTimetable.t),
      orderByList: orderByList?.call(CampusTimetable.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusTimetable].
  Future<CampusTimetable> deleteRow(
    _is.DatabaseSession session,
    CampusTimetable row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusTimetable>(
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
  Future<List<CampusTimetable>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusTimetableTable> where,
    _is.OrderByBuilder<CampusTimetableTable>? orderBy,
    _is.OrderByListBuilder<CampusTimetableTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusTimetable>(
      where: where(CampusTimetable.t),
      orderBy: orderBy?.call(CampusTimetable.t),
      orderByList: orderByList?.call(CampusTimetable.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusTimetableTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusTimetable>(
      where: where?.call(CampusTimetable.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusTimetable] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusTimetableTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusTimetable>(
      where: where(CampusTimetable.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
