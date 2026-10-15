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

/// Fictional university fixture: research.
abstract class CampusPublicationAuthor
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusPublicationAuthor._({
    this.id,
    required this.publicationId,
    this.lecturerId,
    this.studentId,
    required this.sequence,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusPublicationAuthor({
    _is.UuidValue? id,
    required _is.UuidValue publicationId,
    _is.UuidValue? lecturerId,
    _is.UuidValue? studentId,
    required int sequence,
    DateTime? createdAt,
  }) = _CampusPublicationAuthorImpl;

  factory CampusPublicationAuthor.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusPublicationAuthor(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      publicationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['publicationId'],
      ),
      lecturerId: jsonSerialization['lecturerId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['lecturerId'],
            ),
      studentId: jsonSerialization['studentId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['studentId']),
      sequence: jsonSerialization['sequence'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusPublicationAuthorTable();

  static const db = CampusPublicationAuthorRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue publicationId;

  _is.UuidValue? lecturerId;

  _is.UuidValue? studentId;

  int sequence;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusPublicationAuthor]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusPublicationAuthor copyWith({
    _is.UuidValue? id,
    _is.UuidValue? publicationId,
    _is.UuidValue? lecturerId,
    _is.UuidValue? studentId,
    int? sequence,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusPublicationAuthor',
      if (id != null) 'id': id?.toJson(),
      'publicationId': publicationId.toJson(),
      if (lecturerId != null) 'lecturerId': lecturerId?.toJson(),
      if (studentId != null) 'studentId': studentId?.toJson(),
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusPublicationAuthor',
      if (id != null) 'id': id?.toJson(),
      'publicationId': publicationId.toJson(),
      if (lecturerId != null) 'lecturerId': lecturerId?.toJson(),
      if (studentId != null) 'studentId': studentId?.toJson(),
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusPublicationAuthorInclude include() {
    return CampusPublicationAuthorInclude._();
  }

  static CampusPublicationAuthorIncludeList includeList({
    _is.WhereExpressionBuilder<CampusPublicationAuthorTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPublicationAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusPublicationAuthorTable>? orderByList,
    CampusPublicationAuthorInclude? include,
  }) {
    return CampusPublicationAuthorIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusPublicationAuthor.t),
      orderByList: orderByList?.call(CampusPublicationAuthor.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusPublicationAuthorImpl extends CampusPublicationAuthor {
  _CampusPublicationAuthorImpl({
    _is.UuidValue? id,
    required _is.UuidValue publicationId,
    _is.UuidValue? lecturerId,
    _is.UuidValue? studentId,
    required int sequence,
    DateTime? createdAt,
  }) : super._(
         id: id,
         publicationId: publicationId,
         lecturerId: lecturerId,
         studentId: studentId,
         sequence: sequence,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusPublicationAuthor]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusPublicationAuthor copyWith({
    Object? id = _Undefined,
    _is.UuidValue? publicationId,
    Object? lecturerId = _Undefined,
    Object? studentId = _Undefined,
    int? sequence,
    DateTime? createdAt,
  }) {
    return CampusPublicationAuthor(
      id: id is _is.UuidValue? ? id : this.id,
      publicationId: publicationId ?? this.publicationId,
      lecturerId: lecturerId is _is.UuidValue? ? lecturerId : this.lecturerId,
      studentId: studentId is _is.UuidValue? ? studentId : this.studentId,
      sequence: sequence ?? this.sequence,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusPublicationAuthorUpdateTable
    extends _is.UpdateTable<CampusPublicationAuthorTable> {
  CampusPublicationAuthorUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> publicationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.publicationId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> lecturerId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.lecturerId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.studentId,
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

class CampusPublicationAuthorTable extends _is.Table<_is.UuidValue?> {
  CampusPublicationAuthorTable({super.tableRelation})
    : super(tableName: 'campus_publication_authors') {
    updateTable = CampusPublicationAuthorUpdateTable(this);
    publicationId = _is.ColumnUuid(
      'publicationId',
      this,
    );
    lecturerId = _is.ColumnUuid(
      'lecturerId',
      this,
    );
    studentId = _is.ColumnUuid(
      'studentId',
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

  late final CampusPublicationAuthorUpdateTable updateTable;

  late final _is.ColumnUuid publicationId;

  late final _is.ColumnUuid lecturerId;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnInt sequence;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    publicationId,
    lecturerId,
    studentId,
    sequence,
    createdAt,
  ];
}

class CampusPublicationAuthorInclude extends _is.IncludeObject {
  CampusPublicationAuthorInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusPublicationAuthor.t;
}

class CampusPublicationAuthorIncludeList extends _is.IncludeList {
  CampusPublicationAuthorIncludeList._({
    _is.WhereExpressionBuilder<CampusPublicationAuthorTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusPublicationAuthor.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusPublicationAuthor.t;
}

class CampusPublicationAuthorRepository {
  const CampusPublicationAuthorRepository._();

  /// Returns a list of [CampusPublicationAuthor]s matching the given query parameters.
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
  Future<List<CampusPublicationAuthor>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPublicationAuthorTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPublicationAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusPublicationAuthorTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusPublicationAuthor>(
      where: where?.call(CampusPublicationAuthor.t),
      orderBy: orderBy?.call(CampusPublicationAuthor.t),
      orderByList: orderByList?.call(CampusPublicationAuthor.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusPublicationAuthor] matching the given query parameters.
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
  Future<CampusPublicationAuthor?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPublicationAuthorTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusPublicationAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusPublicationAuthorTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusPublicationAuthor>(
      where: where?.call(CampusPublicationAuthor.t),
      orderBy: orderBy?.call(CampusPublicationAuthor.t),
      orderByList: orderByList?.call(CampusPublicationAuthor.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusPublicationAuthor] by its [id] or null if no such row exists.
  Future<CampusPublicationAuthor?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusPublicationAuthor>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusPublicationAuthor]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusPublicationAuthor]s will have their `id` fields set.
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
  Future<List<CampusPublicationAuthor>> insert(
    _is.DatabaseSession session,
    List<CampusPublicationAuthor> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusPublicationAuthor>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusPublicationAuthor] and returns the inserted row.
  ///
  /// The returned [CampusPublicationAuthor] will have its `id` field set.
  Future<CampusPublicationAuthor> insertRow(
    _is.DatabaseSession session,
    CampusPublicationAuthor row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusPublicationAuthor>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusPublicationAuthor]s in the list and returns the resulting rows.
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
  /// The returned [CampusPublicationAuthor]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPublicationAuthor>> upsert(
    _is.DatabaseSession session,
    List<CampusPublicationAuthor> rows, {
    required _is.ColumnSelections<CampusPublicationAuthorTable> conflictColumns,
    _is.ColumnSelections<CampusPublicationAuthorTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusPublicationAuthorTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusPublicationAuthor>(
      rows,
      conflictColumns: conflictColumns(CampusPublicationAuthor.t),
      updateColumns: updateColumns?.call(CampusPublicationAuthor.t),
      updateWhere: updateWhere?.call(CampusPublicationAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusPublicationAuthor] and returns the resulting row.
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
  /// The returned [CampusPublicationAuthor] will have its `id` field set.
  Future<CampusPublicationAuthor?> upsertRow(
    _is.DatabaseSession session,
    CampusPublicationAuthor row, {
    required _is.ColumnSelections<CampusPublicationAuthorTable> conflictColumns,
    _is.ColumnSelections<CampusPublicationAuthorTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusPublicationAuthorTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusPublicationAuthor>(
      row,
      conflictColumns: conflictColumns(CampusPublicationAuthor.t),
      updateColumns: updateColumns?.call(CampusPublicationAuthor.t),
      updateWhere: updateWhere?.call(CampusPublicationAuthor.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusPublicationAuthor]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPublicationAuthor>> update(
    _is.DatabaseSession session,
    List<CampusPublicationAuthor> rows, {
    _is.ColumnSelections<CampusPublicationAuthorTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusPublicationAuthor>(
      rows,
      columns: columns?.call(CampusPublicationAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusPublicationAuthor]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusPublicationAuthor> updateRow(
    _is.DatabaseSession session,
    CampusPublicationAuthor row, {
    _is.ColumnSelections<CampusPublicationAuthorTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusPublicationAuthor>(
      row,
      columns: columns?.call(CampusPublicationAuthor.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusPublicationAuthor] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusPublicationAuthor?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusPublicationAuthorUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusPublicationAuthor>(
      id,
      columnValues: columnValues(CampusPublicationAuthor.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusPublicationAuthor]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPublicationAuthor>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusPublicationAuthorUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusPublicationAuthorTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPublicationAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusPublicationAuthorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusPublicationAuthor>(
      columnValues: columnValues(CampusPublicationAuthor.t.updateTable),
      where: where(CampusPublicationAuthor.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusPublicationAuthor.t),
      orderByList: orderByList?.call(CampusPublicationAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusPublicationAuthor]s in the list and returns the deleted rows.
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
  Future<List<CampusPublicationAuthor>> delete(
    _is.DatabaseSession session,
    List<CampusPublicationAuthor> rows, {
    _is.OrderByBuilder<CampusPublicationAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusPublicationAuthorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusPublicationAuthor>(
      rows,
      orderBy: orderBy?.call(CampusPublicationAuthor.t),
      orderByList: orderByList?.call(CampusPublicationAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusPublicationAuthor].
  Future<CampusPublicationAuthor> deleteRow(
    _is.DatabaseSession session,
    CampusPublicationAuthor row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusPublicationAuthor>(
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
  Future<List<CampusPublicationAuthor>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusPublicationAuthorTable> where,
    _is.OrderByBuilder<CampusPublicationAuthorTable>? orderBy,
    _is.OrderByListBuilder<CampusPublicationAuthorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusPublicationAuthor>(
      where: where(CampusPublicationAuthor.t),
      orderBy: orderBy?.call(CampusPublicationAuthor.t),
      orderByList: orderByList?.call(CampusPublicationAuthor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPublicationAuthorTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusPublicationAuthor>(
      where: where?.call(CampusPublicationAuthor.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusPublicationAuthor] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusPublicationAuthorTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusPublicationAuthor>(
      where: where(CampusPublicationAuthor.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
