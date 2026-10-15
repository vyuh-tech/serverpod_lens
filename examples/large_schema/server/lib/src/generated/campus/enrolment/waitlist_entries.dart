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

/// Fictional university fixture: enrolment.
abstract class CampusWaitlistEntry
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusWaitlistEntry._({
    this.id,
    required this.studentId,
    required this.sectionId,
    required this.position,
    this.offeredAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusWaitlistEntry({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue sectionId,
    required int position,
    DateTime? offeredAt,
    DateTime? createdAt,
  }) = _CampusWaitlistEntryImpl;

  factory CampusWaitlistEntry.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusWaitlistEntry(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      sectionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      position: jsonSerialization['position'] as int,
      offeredAt: jsonSerialization['offeredAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['offeredAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusWaitlistEntryTable();

  static const db = CampusWaitlistEntryRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  _is.UuidValue sectionId;

  int position;

  DateTime? offeredAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusWaitlistEntry]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusWaitlistEntry copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    _is.UuidValue? sectionId,
    int? position,
    DateTime? offeredAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusWaitlistEntry',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'sectionId': sectionId.toJson(),
      'position': position,
      if (offeredAt != null) 'offeredAt': offeredAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusWaitlistEntry',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'sectionId': sectionId.toJson(),
      'position': position,
      if (offeredAt != null) 'offeredAt': offeredAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusWaitlistEntryInclude include() {
    return CampusWaitlistEntryInclude._();
  }

  static CampusWaitlistEntryIncludeList includeList({
    _is.WhereExpressionBuilder<CampusWaitlistEntryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusWaitlistEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusWaitlistEntryTable>? orderByList,
    CampusWaitlistEntryInclude? include,
  }) {
    return CampusWaitlistEntryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusWaitlistEntry.t),
      orderByList: orderByList?.call(CampusWaitlistEntry.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusWaitlistEntryImpl extends CampusWaitlistEntry {
  _CampusWaitlistEntryImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue sectionId,
    required int position,
    DateTime? offeredAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         sectionId: sectionId,
         position: position,
         offeredAt: offeredAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusWaitlistEntry]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusWaitlistEntry copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    _is.UuidValue? sectionId,
    int? position,
    Object? offeredAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusWaitlistEntry(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      sectionId: sectionId ?? this.sectionId,
      position: position ?? this.position,
      offeredAt: offeredAt is DateTime? ? offeredAt : this.offeredAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusWaitlistEntryUpdateTable
    extends _is.UpdateTable<CampusWaitlistEntryTable> {
  CampusWaitlistEntryUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> sectionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.sectionId,
    value,
  );

  _is.ColumnValue<int, int> position(int value) => _is.ColumnValue(
    table.position,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> offeredAt(DateTime? value) =>
      _is.ColumnValue(
        table.offeredAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusWaitlistEntryTable extends _is.Table<_is.UuidValue?> {
  CampusWaitlistEntryTable({super.tableRelation})
    : super(tableName: 'campus_waitlist_entries') {
    updateTable = CampusWaitlistEntryUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    sectionId = _is.ColumnUuid(
      'sectionId',
      this,
    );
    position = _is.ColumnInt(
      'position',
      this,
    );
    offeredAt = _is.ColumnDateTime(
      'offeredAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusWaitlistEntryUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid sectionId;

  late final _is.ColumnInt position;

  late final _is.ColumnDateTime offeredAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    sectionId,
    position,
    offeredAt,
    createdAt,
  ];
}

class CampusWaitlistEntryInclude extends _is.IncludeObject {
  CampusWaitlistEntryInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusWaitlistEntry.t;
}

class CampusWaitlistEntryIncludeList extends _is.IncludeList {
  CampusWaitlistEntryIncludeList._({
    _is.WhereExpressionBuilder<CampusWaitlistEntryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusWaitlistEntry.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusWaitlistEntry.t;
}

class CampusWaitlistEntryRepository {
  const CampusWaitlistEntryRepository._();

  /// Returns a list of [CampusWaitlistEntry]s matching the given query parameters.
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
  Future<List<CampusWaitlistEntry>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusWaitlistEntryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusWaitlistEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusWaitlistEntryTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusWaitlistEntry>(
      where: where?.call(CampusWaitlistEntry.t),
      orderBy: orderBy?.call(CampusWaitlistEntry.t),
      orderByList: orderByList?.call(CampusWaitlistEntry.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusWaitlistEntry] matching the given query parameters.
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
  Future<CampusWaitlistEntry?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusWaitlistEntryTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusWaitlistEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusWaitlistEntryTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusWaitlistEntry>(
      where: where?.call(CampusWaitlistEntry.t),
      orderBy: orderBy?.call(CampusWaitlistEntry.t),
      orderByList: orderByList?.call(CampusWaitlistEntry.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusWaitlistEntry] by its [id] or null if no such row exists.
  Future<CampusWaitlistEntry?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusWaitlistEntry>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusWaitlistEntry]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusWaitlistEntry]s will have their `id` fields set.
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
  Future<List<CampusWaitlistEntry>> insert(
    _is.DatabaseSession session,
    List<CampusWaitlistEntry> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusWaitlistEntry>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusWaitlistEntry] and returns the inserted row.
  ///
  /// The returned [CampusWaitlistEntry] will have its `id` field set.
  Future<CampusWaitlistEntry> insertRow(
    _is.DatabaseSession session,
    CampusWaitlistEntry row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusWaitlistEntry>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusWaitlistEntry]s in the list and returns the resulting rows.
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
  /// The returned [CampusWaitlistEntry]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusWaitlistEntry>> upsert(
    _is.DatabaseSession session,
    List<CampusWaitlistEntry> rows, {
    required _is.ColumnSelections<CampusWaitlistEntryTable> conflictColumns,
    _is.ColumnSelections<CampusWaitlistEntryTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusWaitlistEntryTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusWaitlistEntry>(
      rows,
      conflictColumns: conflictColumns(CampusWaitlistEntry.t),
      updateColumns: updateColumns?.call(CampusWaitlistEntry.t),
      updateWhere: updateWhere?.call(CampusWaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusWaitlistEntry] and returns the resulting row.
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
  /// The returned [CampusWaitlistEntry] will have its `id` field set.
  Future<CampusWaitlistEntry?> upsertRow(
    _is.DatabaseSession session,
    CampusWaitlistEntry row, {
    required _is.ColumnSelections<CampusWaitlistEntryTable> conflictColumns,
    _is.ColumnSelections<CampusWaitlistEntryTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusWaitlistEntryTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusWaitlistEntry>(
      row,
      conflictColumns: conflictColumns(CampusWaitlistEntry.t),
      updateColumns: updateColumns?.call(CampusWaitlistEntry.t),
      updateWhere: updateWhere?.call(CampusWaitlistEntry.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusWaitlistEntry]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusWaitlistEntry>> update(
    _is.DatabaseSession session,
    List<CampusWaitlistEntry> rows, {
    _is.ColumnSelections<CampusWaitlistEntryTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusWaitlistEntry>(
      rows,
      columns: columns?.call(CampusWaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusWaitlistEntry]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusWaitlistEntry> updateRow(
    _is.DatabaseSession session,
    CampusWaitlistEntry row, {
    _is.ColumnSelections<CampusWaitlistEntryTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusWaitlistEntry>(
      row,
      columns: columns?.call(CampusWaitlistEntry.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusWaitlistEntry] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusWaitlistEntry?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusWaitlistEntryUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusWaitlistEntry>(
      id,
      columnValues: columnValues(CampusWaitlistEntry.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusWaitlistEntry]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusWaitlistEntry>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusWaitlistEntryUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusWaitlistEntryTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusWaitlistEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusWaitlistEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusWaitlistEntry>(
      columnValues: columnValues(CampusWaitlistEntry.t.updateTable),
      where: where(CampusWaitlistEntry.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusWaitlistEntry.t),
      orderByList: orderByList?.call(CampusWaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusWaitlistEntry]s in the list and returns the deleted rows.
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
  Future<List<CampusWaitlistEntry>> delete(
    _is.DatabaseSession session,
    List<CampusWaitlistEntry> rows, {
    _is.OrderByBuilder<CampusWaitlistEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusWaitlistEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusWaitlistEntry>(
      rows,
      orderBy: orderBy?.call(CampusWaitlistEntry.t),
      orderByList: orderByList?.call(CampusWaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusWaitlistEntry].
  Future<CampusWaitlistEntry> deleteRow(
    _is.DatabaseSession session,
    CampusWaitlistEntry row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusWaitlistEntry>(
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
  Future<List<CampusWaitlistEntry>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusWaitlistEntryTable> where,
    _is.OrderByBuilder<CampusWaitlistEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusWaitlistEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusWaitlistEntry>(
      where: where(CampusWaitlistEntry.t),
      orderBy: orderBy?.call(CampusWaitlistEntry.t),
      orderByList: orderByList?.call(CampusWaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusWaitlistEntryTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusWaitlistEntry>(
      where: where?.call(CampusWaitlistEntry.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusWaitlistEntry] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusWaitlistEntryTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusWaitlistEntry>(
      where: where(CampusWaitlistEntry.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
