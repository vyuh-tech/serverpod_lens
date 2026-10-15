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
abstract class CampusBookEdition
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusBookEdition._({
    this.id,
    required this.bookId,
    required this.publisherId,
    required this.isbn,
    required this.publishedYear,
    required this.edition,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusBookEdition({
    _is.UuidValue? id,
    required _is.UuidValue bookId,
    required _is.UuidValue publisherId,
    required String isbn,
    required int publishedYear,
    required int edition,
    DateTime? createdAt,
  }) = _CampusBookEditionImpl;

  factory CampusBookEdition.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusBookEdition(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      bookId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['bookId']),
      publisherId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['publisherId'],
      ),
      isbn: jsonSerialization['isbn'] as String,
      publishedYear: jsonSerialization['publishedYear'] as int,
      edition: jsonSerialization['edition'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusBookEditionTable();

  static const db = CampusBookEditionRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue bookId;

  _is.UuidValue publisherId;

  String isbn;

  int publishedYear;

  int edition;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusBookEdition]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusBookEdition copyWith({
    _is.UuidValue? id,
    _is.UuidValue? bookId,
    _is.UuidValue? publisherId,
    String? isbn,
    int? publishedYear,
    int? edition,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusBookEdition',
      if (id != null) 'id': id?.toJson(),
      'bookId': bookId.toJson(),
      'publisherId': publisherId.toJson(),
      'isbn': isbn,
      'publishedYear': publishedYear,
      'edition': edition,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusBookEdition',
      if (id != null) 'id': id?.toJson(),
      'bookId': bookId.toJson(),
      'publisherId': publisherId.toJson(),
      'isbn': isbn,
      'publishedYear': publishedYear,
      'edition': edition,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusBookEditionInclude include() {
    return CampusBookEditionInclude._();
  }

  static CampusBookEditionIncludeList includeList({
    _is.WhereExpressionBuilder<CampusBookEditionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBookEditionTable>? orderBy,
    _is.OrderByListBuilder<CampusBookEditionTable>? orderByList,
    CampusBookEditionInclude? include,
  }) {
    return CampusBookEditionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusBookEdition.t),
      orderByList: orderByList?.call(CampusBookEdition.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusBookEditionImpl extends CampusBookEdition {
  _CampusBookEditionImpl({
    _is.UuidValue? id,
    required _is.UuidValue bookId,
    required _is.UuidValue publisherId,
    required String isbn,
    required int publishedYear,
    required int edition,
    DateTime? createdAt,
  }) : super._(
         id: id,
         bookId: bookId,
         publisherId: publisherId,
         isbn: isbn,
         publishedYear: publishedYear,
         edition: edition,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusBookEdition]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusBookEdition copyWith({
    Object? id = _Undefined,
    _is.UuidValue? bookId,
    _is.UuidValue? publisherId,
    String? isbn,
    int? publishedYear,
    int? edition,
    DateTime? createdAt,
  }) {
    return CampusBookEdition(
      id: id is _is.UuidValue? ? id : this.id,
      bookId: bookId ?? this.bookId,
      publisherId: publisherId ?? this.publisherId,
      isbn: isbn ?? this.isbn,
      publishedYear: publishedYear ?? this.publishedYear,
      edition: edition ?? this.edition,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusBookEditionUpdateTable
    extends _is.UpdateTable<CampusBookEditionTable> {
  CampusBookEditionUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> bookId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.bookId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> publisherId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.publisherId,
    value,
  );

  _is.ColumnValue<String, String> isbn(String value) => _is.ColumnValue(
    table.isbn,
    value,
  );

  _is.ColumnValue<int, int> publishedYear(int value) => _is.ColumnValue(
    table.publishedYear,
    value,
  );

  _is.ColumnValue<int, int> edition(int value) => _is.ColumnValue(
    table.edition,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusBookEditionTable extends _is.Table<_is.UuidValue?> {
  CampusBookEditionTable({super.tableRelation})
    : super(tableName: 'campus_book_editions') {
    updateTable = CampusBookEditionUpdateTable(this);
    bookId = _is.ColumnUuid(
      'bookId',
      this,
    );
    publisherId = _is.ColumnUuid(
      'publisherId',
      this,
    );
    isbn = _is.ColumnString(
      'isbn',
      this,
    );
    publishedYear = _is.ColumnInt(
      'publishedYear',
      this,
    );
    edition = _is.ColumnInt(
      'edition',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusBookEditionUpdateTable updateTable;

  late final _is.ColumnUuid bookId;

  late final _is.ColumnUuid publisherId;

  late final _is.ColumnString isbn;

  late final _is.ColumnInt publishedYear;

  late final _is.ColumnInt edition;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    bookId,
    publisherId,
    isbn,
    publishedYear,
    edition,
    createdAt,
  ];
}

class CampusBookEditionInclude extends _is.IncludeObject {
  CampusBookEditionInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusBookEdition.t;
}

class CampusBookEditionIncludeList extends _is.IncludeList {
  CampusBookEditionIncludeList._({
    _is.WhereExpressionBuilder<CampusBookEditionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusBookEdition.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusBookEdition.t;
}

class CampusBookEditionRepository {
  const CampusBookEditionRepository._();

  /// Returns a list of [CampusBookEdition]s matching the given query parameters.
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
  Future<List<CampusBookEdition>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBookEditionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBookEditionTable>? orderBy,
    _is.OrderByListBuilder<CampusBookEditionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusBookEdition>(
      where: where?.call(CampusBookEdition.t),
      orderBy: orderBy?.call(CampusBookEdition.t),
      orderByList: orderByList?.call(CampusBookEdition.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusBookEdition] matching the given query parameters.
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
  Future<CampusBookEdition?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBookEditionTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusBookEditionTable>? orderBy,
    _is.OrderByListBuilder<CampusBookEditionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusBookEdition>(
      where: where?.call(CampusBookEdition.t),
      orderBy: orderBy?.call(CampusBookEdition.t),
      orderByList: orderByList?.call(CampusBookEdition.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusBookEdition] by its [id] or null if no such row exists.
  Future<CampusBookEdition?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusBookEdition>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusBookEdition]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusBookEdition]s will have their `id` fields set.
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
  Future<List<CampusBookEdition>> insert(
    _is.DatabaseSession session,
    List<CampusBookEdition> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusBookEdition>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusBookEdition] and returns the inserted row.
  ///
  /// The returned [CampusBookEdition] will have its `id` field set.
  Future<CampusBookEdition> insertRow(
    _is.DatabaseSession session,
    CampusBookEdition row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusBookEdition>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusBookEdition]s in the list and returns the resulting rows.
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
  /// The returned [CampusBookEdition]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBookEdition>> upsert(
    _is.DatabaseSession session,
    List<CampusBookEdition> rows, {
    required _is.ColumnSelections<CampusBookEditionTable> conflictColumns,
    _is.ColumnSelections<CampusBookEditionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusBookEditionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusBookEdition>(
      rows,
      conflictColumns: conflictColumns(CampusBookEdition.t),
      updateColumns: updateColumns?.call(CampusBookEdition.t),
      updateWhere: updateWhere?.call(CampusBookEdition.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusBookEdition] and returns the resulting row.
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
  /// The returned [CampusBookEdition] will have its `id` field set.
  Future<CampusBookEdition?> upsertRow(
    _is.DatabaseSession session,
    CampusBookEdition row, {
    required _is.ColumnSelections<CampusBookEditionTable> conflictColumns,
    _is.ColumnSelections<CampusBookEditionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusBookEditionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusBookEdition>(
      row,
      conflictColumns: conflictColumns(CampusBookEdition.t),
      updateColumns: updateColumns?.call(CampusBookEdition.t),
      updateWhere: updateWhere?.call(CampusBookEdition.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusBookEdition]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBookEdition>> update(
    _is.DatabaseSession session,
    List<CampusBookEdition> rows, {
    _is.ColumnSelections<CampusBookEditionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusBookEdition>(
      rows,
      columns: columns?.call(CampusBookEdition.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusBookEdition]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusBookEdition> updateRow(
    _is.DatabaseSession session,
    CampusBookEdition row, {
    _is.ColumnSelections<CampusBookEditionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusBookEdition>(
      row,
      columns: columns?.call(CampusBookEdition.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusBookEdition] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusBookEdition?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusBookEditionUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusBookEdition>(
      id,
      columnValues: columnValues(CampusBookEdition.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusBookEdition]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBookEdition>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusBookEditionUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusBookEditionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBookEditionTable>? orderBy,
    _is.OrderByListBuilder<CampusBookEditionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusBookEdition>(
      columnValues: columnValues(CampusBookEdition.t.updateTable),
      where: where(CampusBookEdition.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusBookEdition.t),
      orderByList: orderByList?.call(CampusBookEdition.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusBookEdition]s in the list and returns the deleted rows.
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
  Future<List<CampusBookEdition>> delete(
    _is.DatabaseSession session,
    List<CampusBookEdition> rows, {
    _is.OrderByBuilder<CampusBookEditionTable>? orderBy,
    _is.OrderByListBuilder<CampusBookEditionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusBookEdition>(
      rows,
      orderBy: orderBy?.call(CampusBookEdition.t),
      orderByList: orderByList?.call(CampusBookEdition.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusBookEdition].
  Future<CampusBookEdition> deleteRow(
    _is.DatabaseSession session,
    CampusBookEdition row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusBookEdition>(
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
  Future<List<CampusBookEdition>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusBookEditionTable> where,
    _is.OrderByBuilder<CampusBookEditionTable>? orderBy,
    _is.OrderByListBuilder<CampusBookEditionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusBookEdition>(
      where: where(CampusBookEdition.t),
      orderBy: orderBy?.call(CampusBookEdition.t),
      orderByList: orderByList?.call(CampusBookEdition.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBookEditionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusBookEdition>(
      where: where?.call(CampusBookEdition.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusBookEdition] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusBookEditionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusBookEdition>(
      where: where(CampusBookEdition.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
