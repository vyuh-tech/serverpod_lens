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
abstract class CampusCourseSection
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusCourseSection._({
    this.id,
    required this.courseId,
    required this.termId,
    required this.code,
    required this.capacity,
    required this.deliveryMode,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCourseSection({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required _is.UuidValue termId,
    required String code,
    required int capacity,
    required String deliveryMode,
    DateTime? createdAt,
  }) = _CampusCourseSectionImpl;

  factory CampusCourseSection.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusCourseSection(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      termId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['termId']),
      code: jsonSerialization['code'] as String,
      capacity: jsonSerialization['capacity'] as int,
      deliveryMode: jsonSerialization['deliveryMode'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusCourseSectionTable();

  static const db = CampusCourseSectionRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue courseId;

  _is.UuidValue termId;

  String code;

  int capacity;

  String deliveryMode;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusCourseSection]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusCourseSection copyWith({
    _is.UuidValue? id,
    _is.UuidValue? courseId,
    _is.UuidValue? termId,
    String? code,
    int? capacity,
    String? deliveryMode,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCourseSection',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'termId': termId.toJson(),
      'code': code,
      'capacity': capacity,
      'deliveryMode': deliveryMode,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCourseSection',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'termId': termId.toJson(),
      'code': code,
      'capacity': capacity,
      'deliveryMode': deliveryMode,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusCourseSectionInclude include() {
    return CampusCourseSectionInclude._();
  }

  static CampusCourseSectionIncludeList includeList({
    _is.WhereExpressionBuilder<CampusCourseSectionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseSectionTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseSectionTable>? orderByList,
    CampusCourseSectionInclude? include,
  }) {
    return CampusCourseSectionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCourseSection.t),
      orderByList: orderByList?.call(CampusCourseSection.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCourseSectionImpl extends CampusCourseSection {
  _CampusCourseSectionImpl({
    _is.UuidValue? id,
    required _is.UuidValue courseId,
    required _is.UuidValue termId,
    required String code,
    required int capacity,
    required String deliveryMode,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         termId: termId,
         code: code,
         capacity: capacity,
         deliveryMode: deliveryMode,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCourseSection]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusCourseSection copyWith({
    Object? id = _Undefined,
    _is.UuidValue? courseId,
    _is.UuidValue? termId,
    String? code,
    int? capacity,
    String? deliveryMode,
    DateTime? createdAt,
  }) {
    return CampusCourseSection(
      id: id is _is.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      termId: termId ?? this.termId,
      code: code ?? this.code,
      capacity: capacity ?? this.capacity,
      deliveryMode: deliveryMode ?? this.deliveryMode,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusCourseSectionUpdateTable
    extends _is.UpdateTable<CampusCourseSectionTable> {
  CampusCourseSectionUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> courseId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.courseId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> termId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.termId,
        value,
      );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<int, int> capacity(int value) => _is.ColumnValue(
    table.capacity,
    value,
  );

  _is.ColumnValue<String, String> deliveryMode(String value) => _is.ColumnValue(
    table.deliveryMode,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusCourseSectionTable extends _is.Table<_is.UuidValue?> {
  CampusCourseSectionTable({super.tableRelation})
    : super(tableName: 'campus_course_sections') {
    updateTable = CampusCourseSectionUpdateTable(this);
    courseId = _is.ColumnUuid(
      'courseId',
      this,
    );
    termId = _is.ColumnUuid(
      'termId',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    capacity = _is.ColumnInt(
      'capacity',
      this,
    );
    deliveryMode = _is.ColumnString(
      'deliveryMode',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusCourseSectionUpdateTable updateTable;

  late final _is.ColumnUuid courseId;

  late final _is.ColumnUuid termId;

  late final _is.ColumnString code;

  late final _is.ColumnInt capacity;

  late final _is.ColumnString deliveryMode;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    courseId,
    termId,
    code,
    capacity,
    deliveryMode,
    createdAt,
  ];
}

class CampusCourseSectionInclude extends _is.IncludeObject {
  CampusCourseSectionInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCourseSection.t;
}

class CampusCourseSectionIncludeList extends _is.IncludeList {
  CampusCourseSectionIncludeList._({
    _is.WhereExpressionBuilder<CampusCourseSectionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusCourseSection.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCourseSection.t;
}

class CampusCourseSectionRepository {
  const CampusCourseSectionRepository._();

  /// Returns a list of [CampusCourseSection]s matching the given query parameters.
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
  Future<List<CampusCourseSection>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseSectionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseSectionTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseSectionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusCourseSection>(
      where: where?.call(CampusCourseSection.t),
      orderBy: orderBy?.call(CampusCourseSection.t),
      orderByList: orderByList?.call(CampusCourseSection.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusCourseSection] matching the given query parameters.
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
  Future<CampusCourseSection?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseSectionTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusCourseSectionTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseSectionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusCourseSection>(
      where: where?.call(CampusCourseSection.t),
      orderBy: orderBy?.call(CampusCourseSection.t),
      orderByList: orderByList?.call(CampusCourseSection.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusCourseSection] by its [id] or null if no such row exists.
  Future<CampusCourseSection?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusCourseSection>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusCourseSection]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusCourseSection]s will have their `id` fields set.
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
  Future<List<CampusCourseSection>> insert(
    _is.DatabaseSession session,
    List<CampusCourseSection> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusCourseSection>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusCourseSection] and returns the inserted row.
  ///
  /// The returned [CampusCourseSection] will have its `id` field set.
  Future<CampusCourseSection> insertRow(
    _is.DatabaseSession session,
    CampusCourseSection row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusCourseSection>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusCourseSection]s in the list and returns the resulting rows.
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
  /// The returned [CampusCourseSection]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseSection>> upsert(
    _is.DatabaseSession session,
    List<CampusCourseSection> rows, {
    required _is.ColumnSelections<CampusCourseSectionTable> conflictColumns,
    _is.ColumnSelections<CampusCourseSectionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCourseSectionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusCourseSection>(
      rows,
      conflictColumns: conflictColumns(CampusCourseSection.t),
      updateColumns: updateColumns?.call(CampusCourseSection.t),
      updateWhere: updateWhere?.call(CampusCourseSection.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusCourseSection] and returns the resulting row.
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
  /// The returned [CampusCourseSection] will have its `id` field set.
  Future<CampusCourseSection?> upsertRow(
    _is.DatabaseSession session,
    CampusCourseSection row, {
    required _is.ColumnSelections<CampusCourseSectionTable> conflictColumns,
    _is.ColumnSelections<CampusCourseSectionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCourseSectionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusCourseSection>(
      row,
      conflictColumns: conflictColumns(CampusCourseSection.t),
      updateColumns: updateColumns?.call(CampusCourseSection.t),
      updateWhere: updateWhere?.call(CampusCourseSection.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCourseSection]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseSection>> update(
    _is.DatabaseSession session,
    List<CampusCourseSection> rows, {
    _is.ColumnSelections<CampusCourseSectionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusCourseSection>(
      rows,
      columns: columns?.call(CampusCourseSection.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusCourseSection]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusCourseSection> updateRow(
    _is.DatabaseSession session,
    CampusCourseSection row, {
    _is.ColumnSelections<CampusCourseSectionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusCourseSection>(
      row,
      columns: columns?.call(CampusCourseSection.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusCourseSection] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusCourseSection?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusCourseSectionUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusCourseSection>(
      id,
      columnValues: columnValues(CampusCourseSection.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCourseSection]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCourseSection>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusCourseSectionUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusCourseSectionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCourseSectionTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseSectionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusCourseSection>(
      columnValues: columnValues(CampusCourseSection.t.updateTable),
      where: where(CampusCourseSection.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCourseSection.t),
      orderByList: orderByList?.call(CampusCourseSection.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusCourseSection]s in the list and returns the deleted rows.
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
  Future<List<CampusCourseSection>> delete(
    _is.DatabaseSession session,
    List<CampusCourseSection> rows, {
    _is.OrderByBuilder<CampusCourseSectionTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseSectionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusCourseSection>(
      rows,
      orderBy: orderBy?.call(CampusCourseSection.t),
      orderByList: orderByList?.call(CampusCourseSection.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusCourseSection].
  Future<CampusCourseSection> deleteRow(
    _is.DatabaseSession session,
    CampusCourseSection row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusCourseSection>(
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
  Future<List<CampusCourseSection>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCourseSectionTable> where,
    _is.OrderByBuilder<CampusCourseSectionTable>? orderBy,
    _is.OrderByListBuilder<CampusCourseSectionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusCourseSection>(
      where: where(CampusCourseSection.t),
      orderBy: orderBy?.call(CampusCourseSection.t),
      orderByList: orderByList?.call(CampusCourseSection.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCourseSectionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusCourseSection>(
      where: where?.call(CampusCourseSection.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusCourseSection] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCourseSectionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusCourseSection>(
      where: where(CampusCourseSection.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
