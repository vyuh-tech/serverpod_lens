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

/// Fictional university fixture: finance.
abstract class CampusScholarshipAward
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusScholarshipAward._({
    this.id,
    required this.scholarshipId,
    required this.studentId,
    required this.academicYearId,
    required this.amountMinor,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusScholarshipAward({
    _is.UuidValue? id,
    required _is.UuidValue scholarshipId,
    required _is.UuidValue studentId,
    required _is.UuidValue academicYearId,
    required int amountMinor,
    DateTime? createdAt,
  }) = _CampusScholarshipAwardImpl;

  factory CampusScholarshipAward.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusScholarshipAward(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      scholarshipId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['scholarshipId'],
      ),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      academicYearId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['academicYearId'],
      ),
      amountMinor: jsonSerialization['amountMinor'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusScholarshipAwardTable();

  static const db = CampusScholarshipAwardRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue scholarshipId;

  _is.UuidValue studentId;

  _is.UuidValue academicYearId;

  int amountMinor;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusScholarshipAward]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusScholarshipAward copyWith({
    _is.UuidValue? id,
    _is.UuidValue? scholarshipId,
    _is.UuidValue? studentId,
    _is.UuidValue? academicYearId,
    int? amountMinor,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusScholarshipAward',
      if (id != null) 'id': id?.toJson(),
      'scholarshipId': scholarshipId.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusScholarshipAward',
      if (id != null) 'id': id?.toJson(),
      'scholarshipId': scholarshipId.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusScholarshipAwardInclude include() {
    return CampusScholarshipAwardInclude._();
  }

  static CampusScholarshipAwardIncludeList includeList({
    _is.WhereExpressionBuilder<CampusScholarshipAwardTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusScholarshipAwardTable>? orderBy,
    _is.OrderByListBuilder<CampusScholarshipAwardTable>? orderByList,
    CampusScholarshipAwardInclude? include,
  }) {
    return CampusScholarshipAwardIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusScholarshipAward.t),
      orderByList: orderByList?.call(CampusScholarshipAward.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusScholarshipAwardImpl extends CampusScholarshipAward {
  _CampusScholarshipAwardImpl({
    _is.UuidValue? id,
    required _is.UuidValue scholarshipId,
    required _is.UuidValue studentId,
    required _is.UuidValue academicYearId,
    required int amountMinor,
    DateTime? createdAt,
  }) : super._(
         id: id,
         scholarshipId: scholarshipId,
         studentId: studentId,
         academicYearId: academicYearId,
         amountMinor: amountMinor,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusScholarshipAward]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusScholarshipAward copyWith({
    Object? id = _Undefined,
    _is.UuidValue? scholarshipId,
    _is.UuidValue? studentId,
    _is.UuidValue? academicYearId,
    int? amountMinor,
    DateTime? createdAt,
  }) {
    return CampusScholarshipAward(
      id: id is _is.UuidValue? ? id : this.id,
      scholarshipId: scholarshipId ?? this.scholarshipId,
      studentId: studentId ?? this.studentId,
      academicYearId: academicYearId ?? this.academicYearId,
      amountMinor: amountMinor ?? this.amountMinor,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusScholarshipAwardUpdateTable
    extends _is.UpdateTable<CampusScholarshipAwardTable> {
  CampusScholarshipAwardUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> scholarshipId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.scholarshipId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> academicYearId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.academicYearId,
    value,
  );

  _is.ColumnValue<int, int> amountMinor(int value) => _is.ColumnValue(
    table.amountMinor,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusScholarshipAwardTable extends _is.Table<_is.UuidValue?> {
  CampusScholarshipAwardTable({super.tableRelation})
    : super(tableName: 'campus_scholarship_awards') {
    updateTable = CampusScholarshipAwardUpdateTable(this);
    scholarshipId = _is.ColumnUuid(
      'scholarshipId',
      this,
    );
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    academicYearId = _is.ColumnUuid(
      'academicYearId',
      this,
    );
    amountMinor = _is.ColumnInt(
      'amountMinor',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusScholarshipAwardUpdateTable updateTable;

  late final _is.ColumnUuid scholarshipId;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid academicYearId;

  late final _is.ColumnInt amountMinor;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    scholarshipId,
    studentId,
    academicYearId,
    amountMinor,
    createdAt,
  ];
}

class CampusScholarshipAwardInclude extends _is.IncludeObject {
  CampusScholarshipAwardInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusScholarshipAward.t;
}

class CampusScholarshipAwardIncludeList extends _is.IncludeList {
  CampusScholarshipAwardIncludeList._({
    _is.WhereExpressionBuilder<CampusScholarshipAwardTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusScholarshipAward.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusScholarshipAward.t;
}

class CampusScholarshipAwardRepository {
  const CampusScholarshipAwardRepository._();

  /// Returns a list of [CampusScholarshipAward]s matching the given query parameters.
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
  Future<List<CampusScholarshipAward>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusScholarshipAwardTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusScholarshipAwardTable>? orderBy,
    _is.OrderByListBuilder<CampusScholarshipAwardTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusScholarshipAward>(
      where: where?.call(CampusScholarshipAward.t),
      orderBy: orderBy?.call(CampusScholarshipAward.t),
      orderByList: orderByList?.call(CampusScholarshipAward.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusScholarshipAward] matching the given query parameters.
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
  Future<CampusScholarshipAward?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusScholarshipAwardTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusScholarshipAwardTable>? orderBy,
    _is.OrderByListBuilder<CampusScholarshipAwardTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusScholarshipAward>(
      where: where?.call(CampusScholarshipAward.t),
      orderBy: orderBy?.call(CampusScholarshipAward.t),
      orderByList: orderByList?.call(CampusScholarshipAward.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusScholarshipAward] by its [id] or null if no such row exists.
  Future<CampusScholarshipAward?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusScholarshipAward>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusScholarshipAward]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusScholarshipAward]s will have their `id` fields set.
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
  Future<List<CampusScholarshipAward>> insert(
    _is.DatabaseSession session,
    List<CampusScholarshipAward> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusScholarshipAward>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusScholarshipAward] and returns the inserted row.
  ///
  /// The returned [CampusScholarshipAward] will have its `id` field set.
  Future<CampusScholarshipAward> insertRow(
    _is.DatabaseSession session,
    CampusScholarshipAward row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusScholarshipAward>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusScholarshipAward]s in the list and returns the resulting rows.
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
  /// The returned [CampusScholarshipAward]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusScholarshipAward>> upsert(
    _is.DatabaseSession session,
    List<CampusScholarshipAward> rows, {
    required _is.ColumnSelections<CampusScholarshipAwardTable> conflictColumns,
    _is.ColumnSelections<CampusScholarshipAwardTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusScholarshipAwardTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusScholarshipAward>(
      rows,
      conflictColumns: conflictColumns(CampusScholarshipAward.t),
      updateColumns: updateColumns?.call(CampusScholarshipAward.t),
      updateWhere: updateWhere?.call(CampusScholarshipAward.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusScholarshipAward] and returns the resulting row.
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
  /// The returned [CampusScholarshipAward] will have its `id` field set.
  Future<CampusScholarshipAward?> upsertRow(
    _is.DatabaseSession session,
    CampusScholarshipAward row, {
    required _is.ColumnSelections<CampusScholarshipAwardTable> conflictColumns,
    _is.ColumnSelections<CampusScholarshipAwardTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusScholarshipAwardTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusScholarshipAward>(
      row,
      conflictColumns: conflictColumns(CampusScholarshipAward.t),
      updateColumns: updateColumns?.call(CampusScholarshipAward.t),
      updateWhere: updateWhere?.call(CampusScholarshipAward.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusScholarshipAward]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusScholarshipAward>> update(
    _is.DatabaseSession session,
    List<CampusScholarshipAward> rows, {
    _is.ColumnSelections<CampusScholarshipAwardTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusScholarshipAward>(
      rows,
      columns: columns?.call(CampusScholarshipAward.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusScholarshipAward]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusScholarshipAward> updateRow(
    _is.DatabaseSession session,
    CampusScholarshipAward row, {
    _is.ColumnSelections<CampusScholarshipAwardTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusScholarshipAward>(
      row,
      columns: columns?.call(CampusScholarshipAward.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusScholarshipAward] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusScholarshipAward?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusScholarshipAwardUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusScholarshipAward>(
      id,
      columnValues: columnValues(CampusScholarshipAward.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusScholarshipAward]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusScholarshipAward>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusScholarshipAwardUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusScholarshipAwardTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusScholarshipAwardTable>? orderBy,
    _is.OrderByListBuilder<CampusScholarshipAwardTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusScholarshipAward>(
      columnValues: columnValues(CampusScholarshipAward.t.updateTable),
      where: where(CampusScholarshipAward.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusScholarshipAward.t),
      orderByList: orderByList?.call(CampusScholarshipAward.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusScholarshipAward]s in the list and returns the deleted rows.
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
  Future<List<CampusScholarshipAward>> delete(
    _is.DatabaseSession session,
    List<CampusScholarshipAward> rows, {
    _is.OrderByBuilder<CampusScholarshipAwardTable>? orderBy,
    _is.OrderByListBuilder<CampusScholarshipAwardTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusScholarshipAward>(
      rows,
      orderBy: orderBy?.call(CampusScholarshipAward.t),
      orderByList: orderByList?.call(CampusScholarshipAward.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusScholarshipAward].
  Future<CampusScholarshipAward> deleteRow(
    _is.DatabaseSession session,
    CampusScholarshipAward row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusScholarshipAward>(
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
  Future<List<CampusScholarshipAward>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusScholarshipAwardTable> where,
    _is.OrderByBuilder<CampusScholarshipAwardTable>? orderBy,
    _is.OrderByListBuilder<CampusScholarshipAwardTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusScholarshipAward>(
      where: where(CampusScholarshipAward.t),
      orderBy: orderBy?.call(CampusScholarshipAward.t),
      orderByList: orderByList?.call(CampusScholarshipAward.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusScholarshipAwardTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusScholarshipAward>(
      where: where?.call(CampusScholarshipAward.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusScholarshipAward] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusScholarshipAwardTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusScholarshipAward>(
      where: where(CampusScholarshipAward.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
