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
abstract class CampusExamRegistration
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusExamRegistration._({
    this.id,
    required this.examSessionId,
    required this.studentId,
    this.seatId,
    required this.attended,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusExamRegistration({
    _is.UuidValue? id,
    required _is.UuidValue examSessionId,
    required _is.UuidValue studentId,
    _is.UuidValue? seatId,
    required bool attended,
    DateTime? createdAt,
  }) = _CampusExamRegistrationImpl;

  factory CampusExamRegistration.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusExamRegistration(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      examSessionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['examSessionId'],
      ),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      seatId: jsonSerialization['seatId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['seatId']),
      attended: _is.BoolJsonExtension.fromJson(jsonSerialization['attended']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusExamRegistrationTable();

  static const db = CampusExamRegistrationRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue examSessionId;

  _is.UuidValue studentId;

  _is.UuidValue? seatId;

  bool attended;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusExamRegistration]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusExamRegistration copyWith({
    _is.UuidValue? id,
    _is.UuidValue? examSessionId,
    _is.UuidValue? studentId,
    _is.UuidValue? seatId,
    bool? attended,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusExamRegistration',
      if (id != null) 'id': id?.toJson(),
      'examSessionId': examSessionId.toJson(),
      'studentId': studentId.toJson(),
      if (seatId != null) 'seatId': seatId?.toJson(),
      'attended': attended,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusExamRegistration',
      if (id != null) 'id': id?.toJson(),
      'examSessionId': examSessionId.toJson(),
      'studentId': studentId.toJson(),
      if (seatId != null) 'seatId': seatId?.toJson(),
      'attended': attended,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusExamRegistrationInclude include() {
    return CampusExamRegistrationInclude._();
  }

  static CampusExamRegistrationIncludeList includeList({
    _is.WhereExpressionBuilder<CampusExamRegistrationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamRegistrationTable>? orderBy,
    _is.OrderByListBuilder<CampusExamRegistrationTable>? orderByList,
    CampusExamRegistrationInclude? include,
  }) {
    return CampusExamRegistrationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusExamRegistration.t),
      orderByList: orderByList?.call(CampusExamRegistration.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusExamRegistrationImpl extends CampusExamRegistration {
  _CampusExamRegistrationImpl({
    _is.UuidValue? id,
    required _is.UuidValue examSessionId,
    required _is.UuidValue studentId,
    _is.UuidValue? seatId,
    required bool attended,
    DateTime? createdAt,
  }) : super._(
         id: id,
         examSessionId: examSessionId,
         studentId: studentId,
         seatId: seatId,
         attended: attended,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusExamRegistration]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusExamRegistration copyWith({
    Object? id = _Undefined,
    _is.UuidValue? examSessionId,
    _is.UuidValue? studentId,
    Object? seatId = _Undefined,
    bool? attended,
    DateTime? createdAt,
  }) {
    return CampusExamRegistration(
      id: id is _is.UuidValue? ? id : this.id,
      examSessionId: examSessionId ?? this.examSessionId,
      studentId: studentId ?? this.studentId,
      seatId: seatId is _is.UuidValue? ? seatId : this.seatId,
      attended: attended ?? this.attended,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusExamRegistrationUpdateTable
    extends _is.UpdateTable<CampusExamRegistrationTable> {
  CampusExamRegistrationUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> examSessionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.examSessionId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> seatId(_is.UuidValue? value) =>
      _is.ColumnValue(
        table.seatId,
        value,
      );

  _is.ColumnValue<bool, bool> attended(bool value) => _is.ColumnValue(
    table.attended,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusExamRegistrationTable extends _is.Table<_is.UuidValue?> {
  CampusExamRegistrationTable({super.tableRelation})
    : super(tableName: 'campus_exam_registrations') {
    updateTable = CampusExamRegistrationUpdateTable(this);
    examSessionId = _is.ColumnUuid(
      'examSessionId',
      this,
    );
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    seatId = _is.ColumnUuid(
      'seatId',
      this,
    );
    attended = _is.ColumnBool(
      'attended',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusExamRegistrationUpdateTable updateTable;

  late final _is.ColumnUuid examSessionId;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid seatId;

  late final _is.ColumnBool attended;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    examSessionId,
    studentId,
    seatId,
    attended,
    createdAt,
  ];
}

class CampusExamRegistrationInclude extends _is.IncludeObject {
  CampusExamRegistrationInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusExamRegistration.t;
}

class CampusExamRegistrationIncludeList extends _is.IncludeList {
  CampusExamRegistrationIncludeList._({
    _is.WhereExpressionBuilder<CampusExamRegistrationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusExamRegistration.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusExamRegistration.t;
}

class CampusExamRegistrationRepository {
  const CampusExamRegistrationRepository._();

  /// Returns a list of [CampusExamRegistration]s matching the given query parameters.
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
  Future<List<CampusExamRegistration>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamRegistrationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamRegistrationTable>? orderBy,
    _is.OrderByListBuilder<CampusExamRegistrationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusExamRegistration>(
      where: where?.call(CampusExamRegistration.t),
      orderBy: orderBy?.call(CampusExamRegistration.t),
      orderByList: orderByList?.call(CampusExamRegistration.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusExamRegistration] matching the given query parameters.
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
  Future<CampusExamRegistration?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamRegistrationTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusExamRegistrationTable>? orderBy,
    _is.OrderByListBuilder<CampusExamRegistrationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusExamRegistration>(
      where: where?.call(CampusExamRegistration.t),
      orderBy: orderBy?.call(CampusExamRegistration.t),
      orderByList: orderByList?.call(CampusExamRegistration.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusExamRegistration] by its [id] or null if no such row exists.
  Future<CampusExamRegistration?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusExamRegistration>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusExamRegistration]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusExamRegistration]s will have their `id` fields set.
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
  Future<List<CampusExamRegistration>> insert(
    _is.DatabaseSession session,
    List<CampusExamRegistration> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusExamRegistration>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusExamRegistration] and returns the inserted row.
  ///
  /// The returned [CampusExamRegistration] will have its `id` field set.
  Future<CampusExamRegistration> insertRow(
    _is.DatabaseSession session,
    CampusExamRegistration row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusExamRegistration>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusExamRegistration]s in the list and returns the resulting rows.
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
  /// The returned [CampusExamRegistration]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExamRegistration>> upsert(
    _is.DatabaseSession session,
    List<CampusExamRegistration> rows, {
    required _is.ColumnSelections<CampusExamRegistrationTable> conflictColumns,
    _is.ColumnSelections<CampusExamRegistrationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusExamRegistrationTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusExamRegistration>(
      rows,
      conflictColumns: conflictColumns(CampusExamRegistration.t),
      updateColumns: updateColumns?.call(CampusExamRegistration.t),
      updateWhere: updateWhere?.call(CampusExamRegistration.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusExamRegistration] and returns the resulting row.
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
  /// The returned [CampusExamRegistration] will have its `id` field set.
  Future<CampusExamRegistration?> upsertRow(
    _is.DatabaseSession session,
    CampusExamRegistration row, {
    required _is.ColumnSelections<CampusExamRegistrationTable> conflictColumns,
    _is.ColumnSelections<CampusExamRegistrationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusExamRegistrationTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusExamRegistration>(
      row,
      conflictColumns: conflictColumns(CampusExamRegistration.t),
      updateColumns: updateColumns?.call(CampusExamRegistration.t),
      updateWhere: updateWhere?.call(CampusExamRegistration.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusExamRegistration]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExamRegistration>> update(
    _is.DatabaseSession session,
    List<CampusExamRegistration> rows, {
    _is.ColumnSelections<CampusExamRegistrationTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusExamRegistration>(
      rows,
      columns: columns?.call(CampusExamRegistration.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusExamRegistration]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusExamRegistration> updateRow(
    _is.DatabaseSession session,
    CampusExamRegistration row, {
    _is.ColumnSelections<CampusExamRegistrationTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusExamRegistration>(
      row,
      columns: columns?.call(CampusExamRegistration.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusExamRegistration] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusExamRegistration?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusExamRegistrationUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusExamRegistration>(
      id,
      columnValues: columnValues(CampusExamRegistration.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusExamRegistration]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExamRegistration>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusExamRegistrationUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusExamRegistrationTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamRegistrationTable>? orderBy,
    _is.OrderByListBuilder<CampusExamRegistrationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusExamRegistration>(
      columnValues: columnValues(CampusExamRegistration.t.updateTable),
      where: where(CampusExamRegistration.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusExamRegistration.t),
      orderByList: orderByList?.call(CampusExamRegistration.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusExamRegistration]s in the list and returns the deleted rows.
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
  Future<List<CampusExamRegistration>> delete(
    _is.DatabaseSession session,
    List<CampusExamRegistration> rows, {
    _is.OrderByBuilder<CampusExamRegistrationTable>? orderBy,
    _is.OrderByListBuilder<CampusExamRegistrationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusExamRegistration>(
      rows,
      orderBy: orderBy?.call(CampusExamRegistration.t),
      orderByList: orderByList?.call(CampusExamRegistration.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusExamRegistration].
  Future<CampusExamRegistration> deleteRow(
    _is.DatabaseSession session,
    CampusExamRegistration row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusExamRegistration>(
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
  Future<List<CampusExamRegistration>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusExamRegistrationTable> where,
    _is.OrderByBuilder<CampusExamRegistrationTable>? orderBy,
    _is.OrderByListBuilder<CampusExamRegistrationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusExamRegistration>(
      where: where(CampusExamRegistration.t),
      orderBy: orderBy?.call(CampusExamRegistration.t),
      orderByList: orderByList?.call(CampusExamRegistration.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamRegistrationTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusExamRegistration>(
      where: where?.call(CampusExamRegistration.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusExamRegistration] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusExamRegistrationTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusExamRegistration>(
      where: where(CampusExamRegistration.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
