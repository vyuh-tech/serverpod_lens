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
abstract class CampusReadingListEntry
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusReadingListEntry._({
    this.id,
    required this.readingListId,
    required this.bookId,
    required this.required,
    this.notes,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusReadingListEntry({
    _is.UuidValue? id,
    required _is.UuidValue readingListId,
    required _is.UuidValue bookId,
    required bool required,
    String? notes,
    DateTime? createdAt,
  }) = _CampusReadingListEntryImpl;

  factory CampusReadingListEntry.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusReadingListEntry(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      readingListId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['readingListId'],
      ),
      bookId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['bookId']),
      required: _is.BoolJsonExtension.fromJson(jsonSerialization['required']),
      notes: jsonSerialization['notes'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusReadingListEntryTable();

  static const db = CampusReadingListEntryRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue readingListId;

  _is.UuidValue bookId;

  bool required;

  String? notes;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusReadingListEntry]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusReadingListEntry copyWith({
    _is.UuidValue? id,
    _is.UuidValue? readingListId,
    _is.UuidValue? bookId,
    bool? required,
    String? notes,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusReadingListEntry',
      if (id != null) 'id': id?.toJson(),
      'readingListId': readingListId.toJson(),
      'bookId': bookId.toJson(),
      'required': required,
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusReadingListEntry',
      if (id != null) 'id': id?.toJson(),
      'readingListId': readingListId.toJson(),
      'bookId': bookId.toJson(),
      'required': required,
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusReadingListEntryInclude include() {
    return CampusReadingListEntryInclude._();
  }

  static CampusReadingListEntryIncludeList includeList({
    _is.WhereExpressionBuilder<CampusReadingListEntryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusReadingListEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusReadingListEntryTable>? orderByList,
    CampusReadingListEntryInclude? include,
  }) {
    return CampusReadingListEntryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusReadingListEntry.t),
      orderByList: orderByList?.call(CampusReadingListEntry.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusReadingListEntryImpl extends CampusReadingListEntry {
  _CampusReadingListEntryImpl({
    _is.UuidValue? id,
    required _is.UuidValue readingListId,
    required _is.UuidValue bookId,
    required bool required,
    String? notes,
    DateTime? createdAt,
  }) : super._(
         id: id,
         readingListId: readingListId,
         bookId: bookId,
         required: required,
         notes: notes,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusReadingListEntry]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusReadingListEntry copyWith({
    Object? id = _Undefined,
    _is.UuidValue? readingListId,
    _is.UuidValue? bookId,
    bool? required,
    Object? notes = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusReadingListEntry(
      id: id is _is.UuidValue? ? id : this.id,
      readingListId: readingListId ?? this.readingListId,
      bookId: bookId ?? this.bookId,
      required: required ?? this.required,
      notes: notes is String? ? notes : this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusReadingListEntryUpdateTable
    extends _is.UpdateTable<CampusReadingListEntryTable> {
  CampusReadingListEntryUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> readingListId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.readingListId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> bookId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.bookId,
        value,
      );

  _is.ColumnValue<bool, bool> required(bool value) => _is.ColumnValue(
    table.required,
    value,
  );

  _is.ColumnValue<String, String> notes(String? value) => _is.ColumnValue(
    table.notes,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusReadingListEntryTable extends _is.Table<_is.UuidValue?> {
  CampusReadingListEntryTable({super.tableRelation})
    : super(tableName: 'campus_reading_list_entries') {
    updateTable = CampusReadingListEntryUpdateTable(this);
    readingListId = _is.ColumnUuid(
      'readingListId',
      this,
    );
    bookId = _is.ColumnUuid(
      'bookId',
      this,
    );
    required = _is.ColumnBool(
      'required',
      this,
    );
    notes = _is.ColumnString(
      'notes',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusReadingListEntryUpdateTable updateTable;

  late final _is.ColumnUuid readingListId;

  late final _is.ColumnUuid bookId;

  late final _is.ColumnBool required;

  late final _is.ColumnString notes;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    readingListId,
    bookId,
    required,
    notes,
    createdAt,
  ];
}

class CampusReadingListEntryInclude extends _is.IncludeObject {
  CampusReadingListEntryInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusReadingListEntry.t;
}

class CampusReadingListEntryIncludeList extends _is.IncludeList {
  CampusReadingListEntryIncludeList._({
    _is.WhereExpressionBuilder<CampusReadingListEntryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusReadingListEntry.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusReadingListEntry.t;
}

class CampusReadingListEntryRepository {
  const CampusReadingListEntryRepository._();

  /// Returns a list of [CampusReadingListEntry]s matching the given query parameters.
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
  Future<List<CampusReadingListEntry>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusReadingListEntryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusReadingListEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusReadingListEntryTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusReadingListEntry>(
      where: where?.call(CampusReadingListEntry.t),
      orderBy: orderBy?.call(CampusReadingListEntry.t),
      orderByList: orderByList?.call(CampusReadingListEntry.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusReadingListEntry] matching the given query parameters.
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
  Future<CampusReadingListEntry?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusReadingListEntryTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusReadingListEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusReadingListEntryTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusReadingListEntry>(
      where: where?.call(CampusReadingListEntry.t),
      orderBy: orderBy?.call(CampusReadingListEntry.t),
      orderByList: orderByList?.call(CampusReadingListEntry.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusReadingListEntry] by its [id] or null if no such row exists.
  Future<CampusReadingListEntry?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusReadingListEntry>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusReadingListEntry]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusReadingListEntry]s will have their `id` fields set.
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
  Future<List<CampusReadingListEntry>> insert(
    _is.DatabaseSession session,
    List<CampusReadingListEntry> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusReadingListEntry>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusReadingListEntry] and returns the inserted row.
  ///
  /// The returned [CampusReadingListEntry] will have its `id` field set.
  Future<CampusReadingListEntry> insertRow(
    _is.DatabaseSession session,
    CampusReadingListEntry row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusReadingListEntry>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusReadingListEntry]s in the list and returns the resulting rows.
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
  /// The returned [CampusReadingListEntry]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusReadingListEntry>> upsert(
    _is.DatabaseSession session,
    List<CampusReadingListEntry> rows, {
    required _is.ColumnSelections<CampusReadingListEntryTable> conflictColumns,
    _is.ColumnSelections<CampusReadingListEntryTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusReadingListEntryTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusReadingListEntry>(
      rows,
      conflictColumns: conflictColumns(CampusReadingListEntry.t),
      updateColumns: updateColumns?.call(CampusReadingListEntry.t),
      updateWhere: updateWhere?.call(CampusReadingListEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusReadingListEntry] and returns the resulting row.
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
  /// The returned [CampusReadingListEntry] will have its `id` field set.
  Future<CampusReadingListEntry?> upsertRow(
    _is.DatabaseSession session,
    CampusReadingListEntry row, {
    required _is.ColumnSelections<CampusReadingListEntryTable> conflictColumns,
    _is.ColumnSelections<CampusReadingListEntryTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusReadingListEntryTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusReadingListEntry>(
      row,
      conflictColumns: conflictColumns(CampusReadingListEntry.t),
      updateColumns: updateColumns?.call(CampusReadingListEntry.t),
      updateWhere: updateWhere?.call(CampusReadingListEntry.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusReadingListEntry]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusReadingListEntry>> update(
    _is.DatabaseSession session,
    List<CampusReadingListEntry> rows, {
    _is.ColumnSelections<CampusReadingListEntryTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusReadingListEntry>(
      rows,
      columns: columns?.call(CampusReadingListEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusReadingListEntry]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusReadingListEntry> updateRow(
    _is.DatabaseSession session,
    CampusReadingListEntry row, {
    _is.ColumnSelections<CampusReadingListEntryTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusReadingListEntry>(
      row,
      columns: columns?.call(CampusReadingListEntry.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusReadingListEntry] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusReadingListEntry?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusReadingListEntryUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusReadingListEntry>(
      id,
      columnValues: columnValues(CampusReadingListEntry.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusReadingListEntry]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusReadingListEntry>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusReadingListEntryUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusReadingListEntryTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusReadingListEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusReadingListEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusReadingListEntry>(
      columnValues: columnValues(CampusReadingListEntry.t.updateTable),
      where: where(CampusReadingListEntry.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusReadingListEntry.t),
      orderByList: orderByList?.call(CampusReadingListEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusReadingListEntry]s in the list and returns the deleted rows.
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
  Future<List<CampusReadingListEntry>> delete(
    _is.DatabaseSession session,
    List<CampusReadingListEntry> rows, {
    _is.OrderByBuilder<CampusReadingListEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusReadingListEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusReadingListEntry>(
      rows,
      orderBy: orderBy?.call(CampusReadingListEntry.t),
      orderByList: orderByList?.call(CampusReadingListEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusReadingListEntry].
  Future<CampusReadingListEntry> deleteRow(
    _is.DatabaseSession session,
    CampusReadingListEntry row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusReadingListEntry>(
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
  Future<List<CampusReadingListEntry>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusReadingListEntryTable> where,
    _is.OrderByBuilder<CampusReadingListEntryTable>? orderBy,
    _is.OrderByListBuilder<CampusReadingListEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusReadingListEntry>(
      where: where(CampusReadingListEntry.t),
      orderBy: orderBy?.call(CampusReadingListEntry.t),
      orderByList: orderByList?.call(CampusReadingListEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusReadingListEntryTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusReadingListEntry>(
      where: where?.call(CampusReadingListEntry.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusReadingListEntry] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusReadingListEntryTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusReadingListEntry>(
      where: where(CampusReadingListEntry.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
