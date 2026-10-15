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

/// Fictional university fixture: assessment.
abstract class CampusExamSeat
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusExamSeat._({
    this.id,
    required this.examSessionId,
    required this.label,
    required this.accessible,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusExamSeat({
    _is.UuidValue? id,
    required _is.UuidValue examSessionId,
    required String label,
    required bool accessible,
    DateTime? createdAt,
  }) = _CampusExamSeatImpl;

  factory CampusExamSeat.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusExamSeat(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      examSessionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['examSessionId'],
      ),
      label: jsonSerialization['label'] as String,
      accessible: _is.BoolJsonExtension.fromJson(
        jsonSerialization['accessible'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusExamSeatTable();

  static const db = CampusExamSeatRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue examSessionId;

  String label;

  bool accessible;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusExamSeat]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusExamSeat copyWith({
    _is.UuidValue? id,
    _is.UuidValue? examSessionId,
    String? label,
    bool? accessible,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusExamSeat',
      if (id != null) 'id': id?.toJson(),
      'examSessionId': examSessionId.toJson(),
      'label': label,
      'accessible': accessible,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusExamSeat',
      if (id != null) 'id': id?.toJson(),
      'examSessionId': examSessionId.toJson(),
      'label': label,
      'accessible': accessible,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusExamSeatInclude include() {
    return CampusExamSeatInclude._();
  }

  static CampusExamSeatIncludeList includeList({
    _is.WhereExpressionBuilder<CampusExamSeatTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamSeatTable>? orderBy,
    _is.OrderByListBuilder<CampusExamSeatTable>? orderByList,
    CampusExamSeatInclude? include,
  }) {
    return CampusExamSeatIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusExamSeat.t),
      orderByList: orderByList?.call(CampusExamSeat.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusExamSeatImpl extends CampusExamSeat {
  _CampusExamSeatImpl({
    _is.UuidValue? id,
    required _is.UuidValue examSessionId,
    required String label,
    required bool accessible,
    DateTime? createdAt,
  }) : super._(
         id: id,
         examSessionId: examSessionId,
         label: label,
         accessible: accessible,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusExamSeat]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusExamSeat copyWith({
    Object? id = _Undefined,
    _is.UuidValue? examSessionId,
    String? label,
    bool? accessible,
    DateTime? createdAt,
  }) {
    return CampusExamSeat(
      id: id is _is.UuidValue? ? id : this.id,
      examSessionId: examSessionId ?? this.examSessionId,
      label: label ?? this.label,
      accessible: accessible ?? this.accessible,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusExamSeatUpdateTable extends _is.UpdateTable<CampusExamSeatTable> {
  CampusExamSeatUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> examSessionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.examSessionId,
    value,
  );

  _is.ColumnValue<String, String> label(String value) => _is.ColumnValue(
    table.label,
    value,
  );

  _is.ColumnValue<bool, bool> accessible(bool value) => _is.ColumnValue(
    table.accessible,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusExamSeatTable extends _is.Table<_is.UuidValue?> {
  CampusExamSeatTable({super.tableRelation})
    : super(tableName: 'campus_exam_seats') {
    updateTable = CampusExamSeatUpdateTable(this);
    examSessionId = _is.ColumnUuid(
      'examSessionId',
      this,
    );
    label = _is.ColumnString(
      'label',
      this,
    );
    accessible = _is.ColumnBool(
      'accessible',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusExamSeatUpdateTable updateTable;

  late final _is.ColumnUuid examSessionId;

  late final _is.ColumnString label;

  late final _is.ColumnBool accessible;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    examSessionId,
    label,
    accessible,
    createdAt,
  ];
}

class CampusExamSeatInclude extends _is.IncludeObject {
  CampusExamSeatInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusExamSeat.t;
}

class CampusExamSeatIncludeList extends _is.IncludeList {
  CampusExamSeatIncludeList._({
    _is.WhereExpressionBuilder<CampusExamSeatTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusExamSeat.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusExamSeat.t;
}

class CampusExamSeatRepository {
  const CampusExamSeatRepository._();

  /// Returns a list of [CampusExamSeat]s matching the given query parameters.
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
  Future<List<CampusExamSeat>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamSeatTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamSeatTable>? orderBy,
    _is.OrderByListBuilder<CampusExamSeatTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusExamSeat>(
      where: where?.call(CampusExamSeat.t),
      orderBy: orderBy?.call(CampusExamSeat.t),
      orderByList: orderByList?.call(CampusExamSeat.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusExamSeat] matching the given query parameters.
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
  Future<CampusExamSeat?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamSeatTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusExamSeatTable>? orderBy,
    _is.OrderByListBuilder<CampusExamSeatTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusExamSeat>(
      where: where?.call(CampusExamSeat.t),
      orderBy: orderBy?.call(CampusExamSeat.t),
      orderByList: orderByList?.call(CampusExamSeat.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusExamSeat] by its [id] or null if no such row exists.
  Future<CampusExamSeat?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusExamSeat>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusExamSeat]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusExamSeat]s will have their `id` fields set.
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
  Future<List<CampusExamSeat>> insert(
    _is.DatabaseSession session,
    List<CampusExamSeat> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusExamSeat>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusExamSeat] and returns the inserted row.
  ///
  /// The returned [CampusExamSeat] will have its `id` field set.
  Future<CampusExamSeat> insertRow(
    _is.DatabaseSession session,
    CampusExamSeat row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusExamSeat>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusExamSeat]s in the list and returns the resulting rows.
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
  /// The returned [CampusExamSeat]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExamSeat>> upsert(
    _is.DatabaseSession session,
    List<CampusExamSeat> rows, {
    required _is.ColumnSelections<CampusExamSeatTable> conflictColumns,
    _is.ColumnSelections<CampusExamSeatTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusExamSeatTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusExamSeat>(
      rows,
      conflictColumns: conflictColumns(CampusExamSeat.t),
      updateColumns: updateColumns?.call(CampusExamSeat.t),
      updateWhere: updateWhere?.call(CampusExamSeat.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusExamSeat] and returns the resulting row.
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
  /// The returned [CampusExamSeat] will have its `id` field set.
  Future<CampusExamSeat?> upsertRow(
    _is.DatabaseSession session,
    CampusExamSeat row, {
    required _is.ColumnSelections<CampusExamSeatTable> conflictColumns,
    _is.ColumnSelections<CampusExamSeatTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusExamSeatTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusExamSeat>(
      row,
      conflictColumns: conflictColumns(CampusExamSeat.t),
      updateColumns: updateColumns?.call(CampusExamSeat.t),
      updateWhere: updateWhere?.call(CampusExamSeat.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusExamSeat]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExamSeat>> update(
    _is.DatabaseSession session,
    List<CampusExamSeat> rows, {
    _is.ColumnSelections<CampusExamSeatTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusExamSeat>(
      rows,
      columns: columns?.call(CampusExamSeat.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusExamSeat]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusExamSeat> updateRow(
    _is.DatabaseSession session,
    CampusExamSeat row, {
    _is.ColumnSelections<CampusExamSeatTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusExamSeat>(
      row,
      columns: columns?.call(CampusExamSeat.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusExamSeat] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusExamSeat?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusExamSeatUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusExamSeat>(
      id,
      columnValues: columnValues(CampusExamSeat.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusExamSeat]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExamSeat>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusExamSeatUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusExamSeatTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamSeatTable>? orderBy,
    _is.OrderByListBuilder<CampusExamSeatTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusExamSeat>(
      columnValues: columnValues(CampusExamSeat.t.updateTable),
      where: where(CampusExamSeat.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusExamSeat.t),
      orderByList: orderByList?.call(CampusExamSeat.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusExamSeat]s in the list and returns the deleted rows.
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
  Future<List<CampusExamSeat>> delete(
    _is.DatabaseSession session,
    List<CampusExamSeat> rows, {
    _is.OrderByBuilder<CampusExamSeatTable>? orderBy,
    _is.OrderByListBuilder<CampusExamSeatTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusExamSeat>(
      rows,
      orderBy: orderBy?.call(CampusExamSeat.t),
      orderByList: orderByList?.call(CampusExamSeat.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusExamSeat].
  Future<CampusExamSeat> deleteRow(
    _is.DatabaseSession session,
    CampusExamSeat row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusExamSeat>(
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
  Future<List<CampusExamSeat>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusExamSeatTable> where,
    _is.OrderByBuilder<CampusExamSeatTable>? orderBy,
    _is.OrderByListBuilder<CampusExamSeatTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusExamSeat>(
      where: where(CampusExamSeat.t),
      orderBy: orderBy?.call(CampusExamSeat.t),
      orderByList: orderByList?.call(CampusExamSeat.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamSeatTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusExamSeat>(
      where: where?.call(CampusExamSeat.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusExamSeat] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusExamSeatTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusExamSeat>(
      where: where(CampusExamSeat.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
