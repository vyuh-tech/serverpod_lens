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
abstract class CampusStudentNote
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusStudentNote._({
    this.id,
    required this.studentId,
    required this.lecturerId,
    required this.category,
    required this.note,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentNote({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue lecturerId,
    required String category,
    required String note,
    DateTime? createdAt,
  }) = _CampusStudentNoteImpl;

  factory CampusStudentNote.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusStudentNote(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      lecturerId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      category: jsonSerialization['category'] as String,
      note: jsonSerialization['note'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusStudentNoteTable();

  static const db = CampusStudentNoteRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  _is.UuidValue lecturerId;

  String category;

  String note;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusStudentNote]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusStudentNote copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    _is.UuidValue? lecturerId,
    String? category,
    String? note,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentNote',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'category': category,
      'note': note,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentNote',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'category': category,
      'note': note,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusStudentNoteInclude include() {
    return CampusStudentNoteInclude._();
  }

  static CampusStudentNoteIncludeList includeList({
    _is.WhereExpressionBuilder<CampusStudentNoteTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentNoteTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentNoteTable>? orderByList,
    CampusStudentNoteInclude? include,
  }) {
    return CampusStudentNoteIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentNote.t),
      orderByList: orderByList?.call(CampusStudentNote.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentNoteImpl extends CampusStudentNote {
  _CampusStudentNoteImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue lecturerId,
    required String category,
    required String note,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         lecturerId: lecturerId,
         category: category,
         note: note,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentNote]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusStudentNote copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    _is.UuidValue? lecturerId,
    String? category,
    String? note,
    DateTime? createdAt,
  }) {
    return CampusStudentNote(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      lecturerId: lecturerId ?? this.lecturerId,
      category: category ?? this.category,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusStudentNoteUpdateTable
    extends _is.UpdateTable<CampusStudentNoteTable> {
  CampusStudentNoteUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> lecturerId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.lecturerId,
    value,
  );

  _is.ColumnValue<String, String> category(String value) => _is.ColumnValue(
    table.category,
    value,
  );

  _is.ColumnValue<String, String> note(String value) => _is.ColumnValue(
    table.note,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusStudentNoteTable extends _is.Table<_is.UuidValue?> {
  CampusStudentNoteTable({super.tableRelation})
    : super(tableName: 'campus_student_notes') {
    updateTable = CampusStudentNoteUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    lecturerId = _is.ColumnUuid(
      'lecturerId',
      this,
    );
    category = _is.ColumnString(
      'category',
      this,
    );
    note = _is.ColumnString(
      'note',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusStudentNoteUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid lecturerId;

  late final _is.ColumnString category;

  late final _is.ColumnString note;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    lecturerId,
    category,
    note,
    createdAt,
  ];
}

class CampusStudentNoteInclude extends _is.IncludeObject {
  CampusStudentNoteInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentNote.t;
}

class CampusStudentNoteIncludeList extends _is.IncludeList {
  CampusStudentNoteIncludeList._({
    _is.WhereExpressionBuilder<CampusStudentNoteTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusStudentNote.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentNote.t;
}

class CampusStudentNoteRepository {
  const CampusStudentNoteRepository._();

  /// Returns a list of [CampusStudentNote]s matching the given query parameters.
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
  Future<List<CampusStudentNote>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentNoteTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentNoteTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentNoteTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusStudentNote>(
      where: where?.call(CampusStudentNote.t),
      orderBy: orderBy?.call(CampusStudentNote.t),
      orderByList: orderByList?.call(CampusStudentNote.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusStudentNote] matching the given query parameters.
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
  Future<CampusStudentNote?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentNoteTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusStudentNoteTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentNoteTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusStudentNote>(
      where: where?.call(CampusStudentNote.t),
      orderBy: orderBy?.call(CampusStudentNote.t),
      orderByList: orderByList?.call(CampusStudentNote.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusStudentNote] by its [id] or null if no such row exists.
  Future<CampusStudentNote?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusStudentNote>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusStudentNote]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusStudentNote]s will have their `id` fields set.
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
  Future<List<CampusStudentNote>> insert(
    _is.DatabaseSession session,
    List<CampusStudentNote> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusStudentNote>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusStudentNote] and returns the inserted row.
  ///
  /// The returned [CampusStudentNote] will have its `id` field set.
  Future<CampusStudentNote> insertRow(
    _is.DatabaseSession session,
    CampusStudentNote row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusStudentNote>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusStudentNote]s in the list and returns the resulting rows.
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
  /// The returned [CampusStudentNote]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentNote>> upsert(
    _is.DatabaseSession session,
    List<CampusStudentNote> rows, {
    required _is.ColumnSelections<CampusStudentNoteTable> conflictColumns,
    _is.ColumnSelections<CampusStudentNoteTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentNoteTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusStudentNote>(
      rows,
      conflictColumns: conflictColumns(CampusStudentNote.t),
      updateColumns: updateColumns?.call(CampusStudentNote.t),
      updateWhere: updateWhere?.call(CampusStudentNote.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusStudentNote] and returns the resulting row.
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
  /// The returned [CampusStudentNote] will have its `id` field set.
  Future<CampusStudentNote?> upsertRow(
    _is.DatabaseSession session,
    CampusStudentNote row, {
    required _is.ColumnSelections<CampusStudentNoteTable> conflictColumns,
    _is.ColumnSelections<CampusStudentNoteTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentNoteTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusStudentNote>(
      row,
      conflictColumns: conflictColumns(CampusStudentNote.t),
      updateColumns: updateColumns?.call(CampusStudentNote.t),
      updateWhere: updateWhere?.call(CampusStudentNote.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentNote]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentNote>> update(
    _is.DatabaseSession session,
    List<CampusStudentNote> rows, {
    _is.ColumnSelections<CampusStudentNoteTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusStudentNote>(
      rows,
      columns: columns?.call(CampusStudentNote.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusStudentNote]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusStudentNote> updateRow(
    _is.DatabaseSession session,
    CampusStudentNote row, {
    _is.ColumnSelections<CampusStudentNoteTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusStudentNote>(
      row,
      columns: columns?.call(CampusStudentNote.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusStudentNote] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusStudentNote?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusStudentNoteUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusStudentNote>(
      id,
      columnValues: columnValues(CampusStudentNote.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentNote]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentNote>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusStudentNoteUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusStudentNoteTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentNoteTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentNoteTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusStudentNote>(
      columnValues: columnValues(CampusStudentNote.t.updateTable),
      where: where(CampusStudentNote.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentNote.t),
      orderByList: orderByList?.call(CampusStudentNote.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusStudentNote]s in the list and returns the deleted rows.
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
  Future<List<CampusStudentNote>> delete(
    _is.DatabaseSession session,
    List<CampusStudentNote> rows, {
    _is.OrderByBuilder<CampusStudentNoteTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentNoteTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusStudentNote>(
      rows,
      orderBy: orderBy?.call(CampusStudentNote.t),
      orderByList: orderByList?.call(CampusStudentNote.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusStudentNote].
  Future<CampusStudentNote> deleteRow(
    _is.DatabaseSession session,
    CampusStudentNote row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusStudentNote>(
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
  Future<List<CampusStudentNote>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentNoteTable> where,
    _is.OrderByBuilder<CampusStudentNoteTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentNoteTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusStudentNote>(
      where: where(CampusStudentNote.t),
      orderBy: orderBy?.call(CampusStudentNote.t),
      orderByList: orderByList?.call(CampusStudentNote.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentNoteTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusStudentNote>(
      where: where?.call(CampusStudentNote.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusStudentNote] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentNoteTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusStudentNote>(
      where: where(CampusStudentNote.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
