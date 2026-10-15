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

/// Fictional university fixture: admissions.
abstract class CampusApplication
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusApplication._({
    this.id,
    required this.studentId,
    required this.academicYearId,
    required this.reference,
    this.submittedAt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusApplication({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue academicYearId,
    required String reference,
    DateTime? submittedAt,
    required String status,
    DateTime? createdAt,
  }) = _CampusApplicationImpl;

  factory CampusApplication.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusApplication(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      academicYearId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['academicYearId'],
      ),
      reference: jsonSerialization['reference'] as String,
      submittedAt: jsonSerialization['submittedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['submittedAt'],
            ),
      status: jsonSerialization['status'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusApplicationTable();

  static const db = CampusApplicationRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  _is.UuidValue academicYearId;

  String reference;

  DateTime? submittedAt;

  String status;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusApplication]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusApplication copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    _is.UuidValue? academicYearId,
    String? reference,
    DateTime? submittedAt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusApplication',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'reference': reference,
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusApplication',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'reference': reference,
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusApplicationInclude include() {
    return CampusApplicationInclude._();
  }

  static CampusApplicationIncludeList includeList({
    _is.WhereExpressionBuilder<CampusApplicationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationTable>? orderByList,
    CampusApplicationInclude? include,
  }) {
    return CampusApplicationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusApplication.t),
      orderByList: orderByList?.call(CampusApplication.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusApplicationImpl extends CampusApplication {
  _CampusApplicationImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue academicYearId,
    required String reference,
    DateTime? submittedAt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         academicYearId: academicYearId,
         reference: reference,
         submittedAt: submittedAt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusApplication]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusApplication copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    _is.UuidValue? academicYearId,
    String? reference,
    Object? submittedAt = _Undefined,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusApplication(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      academicYearId: academicYearId ?? this.academicYearId,
      reference: reference ?? this.reference,
      submittedAt: submittedAt is DateTime? ? submittedAt : this.submittedAt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusApplicationUpdateTable
    extends _is.UpdateTable<CampusApplicationTable> {
  CampusApplicationUpdateTable(super.table);

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

  _is.ColumnValue<String, String> reference(String value) => _is.ColumnValue(
    table.reference,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> submittedAt(DateTime? value) =>
      _is.ColumnValue(
        table.submittedAt,
        value,
      );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusApplicationTable extends _is.Table<_is.UuidValue?> {
  CampusApplicationTable({super.tableRelation})
    : super(tableName: 'campus_applications') {
    updateTable = CampusApplicationUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    academicYearId = _is.ColumnUuid(
      'academicYearId',
      this,
    );
    reference = _is.ColumnString(
      'reference',
      this,
    );
    submittedAt = _is.ColumnDateTime(
      'submittedAt',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusApplicationUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid academicYearId;

  late final _is.ColumnString reference;

  late final _is.ColumnDateTime submittedAt;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    academicYearId,
    reference,
    submittedAt,
    status,
    createdAt,
  ];
}

class CampusApplicationInclude extends _is.IncludeObject {
  CampusApplicationInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusApplication.t;
}

class CampusApplicationIncludeList extends _is.IncludeList {
  CampusApplicationIncludeList._({
    _is.WhereExpressionBuilder<CampusApplicationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusApplication.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusApplication.t;
}

class CampusApplicationRepository {
  const CampusApplicationRepository._();

  /// Returns a list of [CampusApplication]s matching the given query parameters.
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
  Future<List<CampusApplication>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusApplicationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusApplication>(
      where: where?.call(CampusApplication.t),
      orderBy: orderBy?.call(CampusApplication.t),
      orderByList: orderByList?.call(CampusApplication.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusApplication] matching the given query parameters.
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
  Future<CampusApplication?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusApplicationTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusApplication>(
      where: where?.call(CampusApplication.t),
      orderBy: orderBy?.call(CampusApplication.t),
      orderByList: orderByList?.call(CampusApplication.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusApplication] by its [id] or null if no such row exists.
  Future<CampusApplication?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusApplication>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusApplication]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusApplication]s will have their `id` fields set.
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
  Future<List<CampusApplication>> insert(
    _is.DatabaseSession session,
    List<CampusApplication> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusApplication>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusApplication] and returns the inserted row.
  ///
  /// The returned [CampusApplication] will have its `id` field set.
  Future<CampusApplication> insertRow(
    _is.DatabaseSession session,
    CampusApplication row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusApplication>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusApplication]s in the list and returns the resulting rows.
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
  /// The returned [CampusApplication]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusApplication>> upsert(
    _is.DatabaseSession session,
    List<CampusApplication> rows, {
    required _is.ColumnSelections<CampusApplicationTable> conflictColumns,
    _is.ColumnSelections<CampusApplicationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusApplicationTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusApplication>(
      rows,
      conflictColumns: conflictColumns(CampusApplication.t),
      updateColumns: updateColumns?.call(CampusApplication.t),
      updateWhere: updateWhere?.call(CampusApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusApplication] and returns the resulting row.
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
  /// The returned [CampusApplication] will have its `id` field set.
  Future<CampusApplication?> upsertRow(
    _is.DatabaseSession session,
    CampusApplication row, {
    required _is.ColumnSelections<CampusApplicationTable> conflictColumns,
    _is.ColumnSelections<CampusApplicationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusApplicationTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusApplication>(
      row,
      conflictColumns: conflictColumns(CampusApplication.t),
      updateColumns: updateColumns?.call(CampusApplication.t),
      updateWhere: updateWhere?.call(CampusApplication.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusApplication]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusApplication>> update(
    _is.DatabaseSession session,
    List<CampusApplication> rows, {
    _is.ColumnSelections<CampusApplicationTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusApplication>(
      rows,
      columns: columns?.call(CampusApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusApplication]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusApplication> updateRow(
    _is.DatabaseSession session,
    CampusApplication row, {
    _is.ColumnSelections<CampusApplicationTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusApplication>(
      row,
      columns: columns?.call(CampusApplication.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusApplication] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusApplication?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusApplicationUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusApplication>(
      id,
      columnValues: columnValues(CampusApplication.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusApplication]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusApplication>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusApplicationUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusApplicationTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusApplication>(
      columnValues: columnValues(CampusApplication.t.updateTable),
      where: where(CampusApplication.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusApplication.t),
      orderByList: orderByList?.call(CampusApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusApplication]s in the list and returns the deleted rows.
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
  Future<List<CampusApplication>> delete(
    _is.DatabaseSession session,
    List<CampusApplication> rows, {
    _is.OrderByBuilder<CampusApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusApplication>(
      rows,
      orderBy: orderBy?.call(CampusApplication.t),
      orderByList: orderByList?.call(CampusApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusApplication].
  Future<CampusApplication> deleteRow(
    _is.DatabaseSession session,
    CampusApplication row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusApplication>(
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
  Future<List<CampusApplication>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusApplicationTable> where,
    _is.OrderByBuilder<CampusApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusApplication>(
      where: where(CampusApplication.t),
      orderBy: orderBy?.call(CampusApplication.t),
      orderByList: orderByList?.call(CampusApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusApplicationTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusApplication>(
      where: where?.call(CampusApplication.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusApplication] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusApplicationTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusApplication>(
      where: where(CampusApplication.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
