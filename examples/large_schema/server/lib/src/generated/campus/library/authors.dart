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
abstract class CampusAuthor
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusAuthor._({
    this.id,
    required this.name,
    this.biography,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAuthor({
    _is.UuidValue? id,
    required String name,
    String? biography,
    DateTime? createdAt,
  }) = _CampusAuthorImpl;

  factory CampusAuthor.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusAuthor(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      biography: jsonSerialization['biography'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusAuthorTable();

  static const db = CampusAuthorRepository._();

  @override
  _is.UuidValue? id;

  String name;

  String? biography;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusAuthor]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusAuthor copyWith({
    _is.UuidValue? id,
    String? name,
    String? biography,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAuthor',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (biography != null) 'biography': biography,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAuthor',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (biography != null) 'biography': biography,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusAuthorInclude include() {
    return CampusAuthorInclude._();
  }

  static CampusAuthorIncludeList includeList({
    _is.WhereExpressionBuilder<CampusAuthorTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusAuthorTable>? orderByList,
    CampusAuthorInclude? include,
  }) {
    return CampusAuthorIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAuthor.t),
      orderByList: orderByList?.call(CampusAuthor.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAuthorImpl extends CampusAuthor {
  _CampusAuthorImpl({
    _is.UuidValue? id,
    required String name,
    String? biography,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         biography: biography,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAuthor]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusAuthor copyWith({
    Object? id = _Undefined,
    String? name,
    Object? biography = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusAuthor(
      id: id is _is.UuidValue? ? id : this.id,
      name: name ?? this.name,
      biography: biography is String? ? biography : this.biography,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusAuthorUpdateTable extends _is.UpdateTable<CampusAuthorTable> {
  CampusAuthorUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> biography(String? value) => _is.ColumnValue(
    table.biography,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusAuthorTable extends _is.Table<_is.UuidValue?> {
  CampusAuthorTable({super.tableRelation})
    : super(tableName: 'campus_authors') {
    updateTable = CampusAuthorUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    biography = _is.ColumnString(
      'biography',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusAuthorUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString biography;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    biography,
    createdAt,
  ];
}

class CampusAuthorInclude extends _is.IncludeObject {
  CampusAuthorInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAuthor.t;
}

class CampusAuthorIncludeList extends _is.IncludeList {
  CampusAuthorIncludeList._({
    _is.WhereExpressionBuilder<CampusAuthorTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusAuthor.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAuthor.t;
}

class CampusAuthorRepository {
  const CampusAuthorRepository._();

  /// Returns a list of [CampusAuthor]s matching the given query parameters.
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
  Future<List<CampusAuthor>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAuthorTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusAuthorTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusAuthor>(
      where: where?.call(CampusAuthor.t),
      orderBy: orderBy?.call(CampusAuthor.t),
      orderByList: orderByList?.call(CampusAuthor.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusAuthor] matching the given query parameters.
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
  Future<CampusAuthor?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAuthorTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusAuthorTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusAuthor>(
      where: where?.call(CampusAuthor.t),
      orderBy: orderBy?.call(CampusAuthor.t),
      orderByList: orderByList?.call(CampusAuthor.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusAuthor] by its [id] or null if no such row exists.
  Future<CampusAuthor?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusAuthor>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusAuthor]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusAuthor]s will have their `id` fields set.
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
  Future<List<CampusAuthor>> insert(
    _is.DatabaseSession session,
    List<CampusAuthor> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusAuthor>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusAuthor] and returns the inserted row.
  ///
  /// The returned [CampusAuthor] will have its `id` field set.
  Future<CampusAuthor> insertRow(
    _is.DatabaseSession session,
    CampusAuthor row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusAuthor>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusAuthor]s in the list and returns the resulting rows.
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
  /// The returned [CampusAuthor]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAuthor>> upsert(
    _is.DatabaseSession session,
    List<CampusAuthor> rows, {
    required _is.ColumnSelections<CampusAuthorTable> conflictColumns,
    _is.ColumnSelections<CampusAuthorTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAuthorTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusAuthor>(
      rows,
      conflictColumns: conflictColumns(CampusAuthor.t),
      updateColumns: updateColumns?.call(CampusAuthor.t),
      updateWhere: updateWhere?.call(CampusAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusAuthor] and returns the resulting row.
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
  /// The returned [CampusAuthor] will have its `id` field set.
  Future<CampusAuthor?> upsertRow(
    _is.DatabaseSession session,
    CampusAuthor row, {
    required _is.ColumnSelections<CampusAuthorTable> conflictColumns,
    _is.ColumnSelections<CampusAuthorTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAuthorTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusAuthor>(
      row,
      conflictColumns: conflictColumns(CampusAuthor.t),
      updateColumns: updateColumns?.call(CampusAuthor.t),
      updateWhere: updateWhere?.call(CampusAuthor.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAuthor]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAuthor>> update(
    _is.DatabaseSession session,
    List<CampusAuthor> rows, {
    _is.ColumnSelections<CampusAuthorTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusAuthor>(
      rows,
      columns: columns?.call(CampusAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusAuthor]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusAuthor> updateRow(
    _is.DatabaseSession session,
    CampusAuthor row, {
    _is.ColumnSelections<CampusAuthorTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusAuthor>(
      row,
      columns: columns?.call(CampusAuthor.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusAuthor] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusAuthor?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusAuthorUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusAuthor>(
      id,
      columnValues: columnValues(CampusAuthor.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAuthor]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAuthor>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusAuthorUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusAuthorTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusAuthorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusAuthor>(
      columnValues: columnValues(CampusAuthor.t.updateTable),
      where: where(CampusAuthor.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAuthor.t),
      orderByList: orderByList?.call(CampusAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusAuthor]s in the list and returns the deleted rows.
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
  Future<List<CampusAuthor>> delete(
    _is.DatabaseSession session,
    List<CampusAuthor> rows, {
    _is.OrderByBuilder<CampusAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusAuthorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusAuthor>(
      rows,
      orderBy: orderBy?.call(CampusAuthor.t),
      orderByList: orderByList?.call(CampusAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusAuthor].
  Future<CampusAuthor> deleteRow(
    _is.DatabaseSession session,
    CampusAuthor row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusAuthor>(
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
  Future<List<CampusAuthor>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAuthorTable> where,
    _is.OrderByBuilder<CampusAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusAuthorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusAuthor>(
      where: where(CampusAuthor.t),
      orderBy: orderBy?.call(CampusAuthor.t),
      orderByList: orderByList?.call(CampusAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAuthorTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusAuthor>(
      where: where?.call(CampusAuthor.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusAuthor] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAuthorTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusAuthor>(
      where: where(CampusAuthor.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
