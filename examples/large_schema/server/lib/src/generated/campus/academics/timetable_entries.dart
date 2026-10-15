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
abstract class CampusTimetableEntry
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusTimetableEntry._({
    this.id,
    required this.timetableId,
    required this.meetingId,
    required this.sequence,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusTimetableEntry({
    _is.UuidValue? id,
    required _is.UuidValue timetableId,
    required _is.UuidValue meetingId,
    required int sequence,
    DateTime? createdAt,
  }) = _CampusTimetableEntryImpl;

  factory CampusTimetableEntry.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusTimetableEntry(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      timetableId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['timetableId'],
      ),
      meetingId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['meetingId'],
      ),
      sequence: jsonSerialization['sequence'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusTimetableEntryTable();

  static const db = CampusTimetableEntryRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue timetableId;

  _is.UuidValue meetingId;

  int sequence;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusTimetableEntry]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusTimetableEntry copyWith({
    _is.UuidValue? id,
    _is.UuidValue? timetableId,
    _is.UuidValue? meetingId,
    int? sequence,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusTimetableEntry',
      if (id != null) 'id': id?.toJson(),
      'timetableId': timetableId.toJson(),
      'meetingId': meetingId.toJson(),
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusTimetableEntry',
      if (id != null) 'id': id?.toJson(),
      'timetableId': timetableId.toJson(),
      'meetingId': meetingId.toJson(),
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusTimetableEntryInclude include() {
    return CampusTimetableEntryInclude._();
  }

  static CampusTimetableEntryIncludeList includeList({
    _is.WhereExpressionBuilder<CampusTimetableEntryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusTimetableEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusTimetableEntryTable>? orderByList,
    CampusTimetableEntryInclude? include,
  }) {
    return CampusTimetableEntryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusTimetableEntry.t),
      orderByList: orderByList?.call(CampusTimetableEntry.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusTimetableEntryImpl extends CampusTimetableEntry {
  _CampusTimetableEntryImpl({
    _is.UuidValue? id,
    required _is.UuidValue timetableId,
    required _is.UuidValue meetingId,
    required int sequence,
    DateTime? createdAt,
  }) : super._(
         id: id,
         timetableId: timetableId,
         meetingId: meetingId,
         sequence: sequence,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusTimetableEntry]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusTimetableEntry copyWith({
    Object? id = _Undefined,
    _is.UuidValue? timetableId,
    _is.UuidValue? meetingId,
    int? sequence,
    DateTime? createdAt,
  }) {
    return CampusTimetableEntry(
      id: id is _is.UuidValue? ? id : this.id,
      timetableId: timetableId ?? this.timetableId,
      meetingId: meetingId ?? this.meetingId,
      sequence: sequence ?? this.sequence,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusTimetableEntryUpdateTable
    extends _is.UpdateTable<CampusTimetableEntryTable> {
  CampusTimetableEntryUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> timetableId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.timetableId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> meetingId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.meetingId,
    value,
  );

  _is.ColumnValue<int, int> sequence(int value) => _is.ColumnValue(
    table.sequence,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusTimetableEntryTable extends _is.Table<_is.UuidValue?> {
  CampusTimetableEntryTable({super.tableRelation})
    : super(tableName: 'campus_timetable_entries') {
    updateTable = CampusTimetableEntryUpdateTable(this);
    timetableId = _is.ColumnUuid(
      'timetableId',
      this,
    );
    meetingId = _is.ColumnUuid(
      'meetingId',
      this,
    );
    sequence = _is.ColumnInt(
      'sequence',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusTimetableEntryUpdateTable updateTable;

  late final _is.ColumnUuid timetableId;

  late final _is.ColumnUuid meetingId;

  late final _is.ColumnInt sequence;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    timetableId,
    meetingId,
    sequence,
    createdAt,
  ];
}

class CampusTimetableEntryInclude extends _is.IncludeObject {
  CampusTimetableEntryInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusTimetableEntry.t;
}

class CampusTimetableEntryIncludeList extends _is.IncludeList {
  CampusTimetableEntryIncludeList._({
    _is.WhereExpressionBuilder<CampusTimetableEntryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusTimetableEntry.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusTimetableEntry.t;
}

class CampusTimetableEntryRepository {
  const CampusTimetableEntryRepository._();

  /// Returns a list of [CampusTimetableEntry]s matching the given query parameters.
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
  Future<List<CampusTimetableEntry>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusTimetableEntryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusTimetableEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusTimetableEntryTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusTimetableEntry>(
      where: where?.call(CampusTimetableEntry.t),
      orderBy: orderBy?.call(CampusTimetableEntry.t),
      orderByList: orderByList?.call(CampusTimetableEntry.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusTimetableEntry] matching the given query parameters.
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
  Future<CampusTimetableEntry?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusTimetableEntryTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusTimetableEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusTimetableEntryTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusTimetableEntry>(
      where: where?.call(CampusTimetableEntry.t),
      orderBy: orderBy?.call(CampusTimetableEntry.t),
      orderByList: orderByList?.call(CampusTimetableEntry.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusTimetableEntry] by its [id] or null if no such row exists.
  Future<CampusTimetableEntry?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusTimetableEntry>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusTimetableEntry]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusTimetableEntry]s will have their `id` fields set.
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
  Future<List<CampusTimetableEntry>> insert(
    _is.DatabaseSession session,
    List<CampusTimetableEntry> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusTimetableEntry>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusTimetableEntry] and returns the inserted row.
  ///
  /// The returned [CampusTimetableEntry] will have its `id` field set.
  Future<CampusTimetableEntry> insertRow(
    _is.DatabaseSession session,
    CampusTimetableEntry row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusTimetableEntry>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusTimetableEntry]s in the list and returns the resulting rows.
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
  /// The returned [CampusTimetableEntry]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusTimetableEntry>> upsert(
    _is.DatabaseSession session,
    List<CampusTimetableEntry> rows, {
    required _is.ColumnSelections<CampusTimetableEntryTable> conflictColumns,
    _is.ColumnSelections<CampusTimetableEntryTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusTimetableEntryTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusTimetableEntry>(
      rows,
      conflictColumns: conflictColumns(CampusTimetableEntry.t),
      updateColumns: updateColumns?.call(CampusTimetableEntry.t),
      updateWhere: updateWhere?.call(CampusTimetableEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusTimetableEntry] and returns the resulting row.
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
  /// The returned [CampusTimetableEntry] will have its `id` field set.
  Future<CampusTimetableEntry?> upsertRow(
    _is.DatabaseSession session,
    CampusTimetableEntry row, {
    required _is.ColumnSelections<CampusTimetableEntryTable> conflictColumns,
    _is.ColumnSelections<CampusTimetableEntryTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusTimetableEntryTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusTimetableEntry>(
      row,
      conflictColumns: conflictColumns(CampusTimetableEntry.t),
      updateColumns: updateColumns?.call(CampusTimetableEntry.t),
      updateWhere: updateWhere?.call(CampusTimetableEntry.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusTimetableEntry]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusTimetableEntry>> update(
    _is.DatabaseSession session,
    List<CampusTimetableEntry> rows, {
    _is.ColumnSelections<CampusTimetableEntryTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusTimetableEntry>(
      rows,
      columns: columns?.call(CampusTimetableEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusTimetableEntry]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusTimetableEntry> updateRow(
    _is.DatabaseSession session,
    CampusTimetableEntry row, {
    _is.ColumnSelections<CampusTimetableEntryTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusTimetableEntry>(
      row,
      columns: columns?.call(CampusTimetableEntry.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusTimetableEntry] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusTimetableEntry?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusTimetableEntryUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusTimetableEntry>(
      id,
      columnValues: columnValues(CampusTimetableEntry.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusTimetableEntry]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusTimetableEntry>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusTimetableEntryUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusTimetableEntryTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusTimetableEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusTimetableEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusTimetableEntry>(
      columnValues: columnValues(CampusTimetableEntry.t.updateTable),
      where: where(CampusTimetableEntry.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusTimetableEntry.t),
      orderByList: orderByList?.call(CampusTimetableEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusTimetableEntry]s in the list and returns the deleted rows.
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
  Future<List<CampusTimetableEntry>> delete(
    _is.DatabaseSession session,
    List<CampusTimetableEntry> rows, {
    _is.OrderByBuilder<CampusTimetableEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusTimetableEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusTimetableEntry>(
      rows,
      orderBy: orderBy?.call(CampusTimetableEntry.t),
      orderByList: orderByList?.call(CampusTimetableEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusTimetableEntry].
  Future<CampusTimetableEntry> deleteRow(
    _is.DatabaseSession session,
    CampusTimetableEntry row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusTimetableEntry>(
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
  Future<List<CampusTimetableEntry>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusTimetableEntryTable> where,
    _is.OrderByBuilder<CampusTimetableEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusTimetableEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusTimetableEntry>(
      where: where(CampusTimetableEntry.t),
      orderBy: orderBy?.call(CampusTimetableEntry.t),
      orderByList: orderByList?.call(CampusTimetableEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusTimetableEntryTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusTimetableEntry>(
      where: where?.call(CampusTimetableEntry.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusTimetableEntry] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusTimetableEntryTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusTimetableEntry>(
      where: where(CampusTimetableEntry.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
