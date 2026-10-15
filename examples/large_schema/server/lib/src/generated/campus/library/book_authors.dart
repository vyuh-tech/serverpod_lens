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
abstract class CampusBookAuthor
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusBookAuthor._({
    this.id,
    required this.bookId,
    required this.authorId,
    required this.sequence,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusBookAuthor({
    _is.UuidValue? id,
    required _is.UuidValue bookId,
    required _is.UuidValue authorId,
    required int sequence,
    DateTime? createdAt,
  }) = _CampusBookAuthorImpl;

  factory CampusBookAuthor.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusBookAuthor(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      bookId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['bookId']),
      authorId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['authorId'],
      ),
      sequence: jsonSerialization['sequence'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusBookAuthorTable();

  static const db = CampusBookAuthorRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue bookId;

  _is.UuidValue authorId;

  int sequence;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusBookAuthor]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusBookAuthor copyWith({
    _is.UuidValue? id,
    _is.UuidValue? bookId,
    _is.UuidValue? authorId,
    int? sequence,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusBookAuthor',
      if (id != null) 'id': id?.toJson(),
      'bookId': bookId.toJson(),
      'authorId': authorId.toJson(),
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusBookAuthor',
      if (id != null) 'id': id?.toJson(),
      'bookId': bookId.toJson(),
      'authorId': authorId.toJson(),
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusBookAuthorInclude include() {
    return CampusBookAuthorInclude._();
  }

  static CampusBookAuthorIncludeList includeList({
    _is.WhereExpressionBuilder<CampusBookAuthorTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBookAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusBookAuthorTable>? orderByList,
    CampusBookAuthorInclude? include,
  }) {
    return CampusBookAuthorIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusBookAuthor.t),
      orderByList: orderByList?.call(CampusBookAuthor.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusBookAuthorImpl extends CampusBookAuthor {
  _CampusBookAuthorImpl({
    _is.UuidValue? id,
    required _is.UuidValue bookId,
    required _is.UuidValue authorId,
    required int sequence,
    DateTime? createdAt,
  }) : super._(
         id: id,
         bookId: bookId,
         authorId: authorId,
         sequence: sequence,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusBookAuthor]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusBookAuthor copyWith({
    Object? id = _Undefined,
    _is.UuidValue? bookId,
    _is.UuidValue? authorId,
    int? sequence,
    DateTime? createdAt,
  }) {
    return CampusBookAuthor(
      id: id is _is.UuidValue? ? id : this.id,
      bookId: bookId ?? this.bookId,
      authorId: authorId ?? this.authorId,
      sequence: sequence ?? this.sequence,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusBookAuthorUpdateTable
    extends _is.UpdateTable<CampusBookAuthorTable> {
  CampusBookAuthorUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> bookId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.bookId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> authorId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.authorId,
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

class CampusBookAuthorTable extends _is.Table<_is.UuidValue?> {
  CampusBookAuthorTable({super.tableRelation})
    : super(tableName: 'campus_book_authors') {
    updateTable = CampusBookAuthorUpdateTable(this);
    bookId = _is.ColumnUuid(
      'bookId',
      this,
    );
    authorId = _is.ColumnUuid(
      'authorId',
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

  late final CampusBookAuthorUpdateTable updateTable;

  late final _is.ColumnUuid bookId;

  late final _is.ColumnUuid authorId;

  late final _is.ColumnInt sequence;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    bookId,
    authorId,
    sequence,
    createdAt,
  ];
}

class CampusBookAuthorInclude extends _is.IncludeObject {
  CampusBookAuthorInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusBookAuthor.t;
}

class CampusBookAuthorIncludeList extends _is.IncludeList {
  CampusBookAuthorIncludeList._({
    _is.WhereExpressionBuilder<CampusBookAuthorTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusBookAuthor.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusBookAuthor.t;
}

class CampusBookAuthorRepository {
  const CampusBookAuthorRepository._();

  /// Returns a list of [CampusBookAuthor]s matching the given query parameters.
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
  Future<List<CampusBookAuthor>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBookAuthorTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBookAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusBookAuthorTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusBookAuthor>(
      where: where?.call(CampusBookAuthor.t),
      orderBy: orderBy?.call(CampusBookAuthor.t),
      orderByList: orderByList?.call(CampusBookAuthor.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusBookAuthor] matching the given query parameters.
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
  Future<CampusBookAuthor?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBookAuthorTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusBookAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusBookAuthorTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusBookAuthor>(
      where: where?.call(CampusBookAuthor.t),
      orderBy: orderBy?.call(CampusBookAuthor.t),
      orderByList: orderByList?.call(CampusBookAuthor.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusBookAuthor] by its [id] or null if no such row exists.
  Future<CampusBookAuthor?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusBookAuthor>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusBookAuthor]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusBookAuthor]s will have their `id` fields set.
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
  Future<List<CampusBookAuthor>> insert(
    _is.DatabaseSession session,
    List<CampusBookAuthor> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusBookAuthor>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusBookAuthor] and returns the inserted row.
  ///
  /// The returned [CampusBookAuthor] will have its `id` field set.
  Future<CampusBookAuthor> insertRow(
    _is.DatabaseSession session,
    CampusBookAuthor row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusBookAuthor>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusBookAuthor]s in the list and returns the resulting rows.
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
  /// The returned [CampusBookAuthor]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBookAuthor>> upsert(
    _is.DatabaseSession session,
    List<CampusBookAuthor> rows, {
    required _is.ColumnSelections<CampusBookAuthorTable> conflictColumns,
    _is.ColumnSelections<CampusBookAuthorTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusBookAuthorTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusBookAuthor>(
      rows,
      conflictColumns: conflictColumns(CampusBookAuthor.t),
      updateColumns: updateColumns?.call(CampusBookAuthor.t),
      updateWhere: updateWhere?.call(CampusBookAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusBookAuthor] and returns the resulting row.
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
  /// The returned [CampusBookAuthor] will have its `id` field set.
  Future<CampusBookAuthor?> upsertRow(
    _is.DatabaseSession session,
    CampusBookAuthor row, {
    required _is.ColumnSelections<CampusBookAuthorTable> conflictColumns,
    _is.ColumnSelections<CampusBookAuthorTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusBookAuthorTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusBookAuthor>(
      row,
      conflictColumns: conflictColumns(CampusBookAuthor.t),
      updateColumns: updateColumns?.call(CampusBookAuthor.t),
      updateWhere: updateWhere?.call(CampusBookAuthor.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusBookAuthor]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBookAuthor>> update(
    _is.DatabaseSession session,
    List<CampusBookAuthor> rows, {
    _is.ColumnSelections<CampusBookAuthorTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusBookAuthor>(
      rows,
      columns: columns?.call(CampusBookAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusBookAuthor]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusBookAuthor> updateRow(
    _is.DatabaseSession session,
    CampusBookAuthor row, {
    _is.ColumnSelections<CampusBookAuthorTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusBookAuthor>(
      row,
      columns: columns?.call(CampusBookAuthor.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusBookAuthor] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusBookAuthor?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusBookAuthorUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusBookAuthor>(
      id,
      columnValues: columnValues(CampusBookAuthor.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusBookAuthor]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBookAuthor>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusBookAuthorUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusBookAuthorTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBookAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusBookAuthorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusBookAuthor>(
      columnValues: columnValues(CampusBookAuthor.t.updateTable),
      where: where(CampusBookAuthor.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusBookAuthor.t),
      orderByList: orderByList?.call(CampusBookAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusBookAuthor]s in the list and returns the deleted rows.
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
  Future<List<CampusBookAuthor>> delete(
    _is.DatabaseSession session,
    List<CampusBookAuthor> rows, {
    _is.OrderByBuilder<CampusBookAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusBookAuthorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusBookAuthor>(
      rows,
      orderBy: orderBy?.call(CampusBookAuthor.t),
      orderByList: orderByList?.call(CampusBookAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusBookAuthor].
  Future<CampusBookAuthor> deleteRow(
    _is.DatabaseSession session,
    CampusBookAuthor row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusBookAuthor>(
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
  Future<List<CampusBookAuthor>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusBookAuthorTable> where,
    _is.OrderByBuilder<CampusBookAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusBookAuthorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusBookAuthor>(
      where: where(CampusBookAuthor.t),
      orderBy: orderBy?.call(CampusBookAuthor.t),
      orderByList: orderByList?.call(CampusBookAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBookAuthorTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusBookAuthor>(
      where: where?.call(CampusBookAuthor.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusBookAuthor] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusBookAuthorTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusBookAuthor>(
      where: where(CampusBookAuthor.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
