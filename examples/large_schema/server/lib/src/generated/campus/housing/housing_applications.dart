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

/// Fictional university fixture: housing.
abstract class CampusHousingApplication
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusHousingApplication._({
    this.id,
    required this.studentId,
    required this.termId,
    required this.submittedAt,
    required this.status,
    this.accessibilityNeeds,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingApplication({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue termId,
    required DateTime submittedAt,
    required String status,
    String? accessibilityNeeds,
    DateTime? createdAt,
  }) = _CampusHousingApplicationImpl;

  factory CampusHousingApplication.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusHousingApplication(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      termId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['termId']),
      submittedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['submittedAt'],
      ),
      status: jsonSerialization['status'] as String,
      accessibilityNeeds: jsonSerialization['accessibilityNeeds'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusHousingApplicationTable();

  static const db = CampusHousingApplicationRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  _is.UuidValue termId;

  DateTime submittedAt;

  String status;

  String? accessibilityNeeds;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusHousingApplication]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusHousingApplication copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    _is.UuidValue? termId,
    DateTime? submittedAt,
    String? status,
    String? accessibilityNeeds,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingApplication',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'termId': termId.toJson(),
      'submittedAt': submittedAt.toJson(),
      'status': status,
      if (accessibilityNeeds != null) 'accessibilityNeeds': accessibilityNeeds,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingApplication',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'termId': termId.toJson(),
      'submittedAt': submittedAt.toJson(),
      'status': status,
      if (accessibilityNeeds != null) 'accessibilityNeeds': accessibilityNeeds,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusHousingApplicationInclude include() {
    return CampusHousingApplicationInclude._();
  }

  static CampusHousingApplicationIncludeList includeList({
    _is.WhereExpressionBuilder<CampusHousingApplicationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingApplicationTable>? orderByList,
    CampusHousingApplicationInclude? include,
  }) {
    return CampusHousingApplicationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingApplication.t),
      orderByList: orderByList?.call(CampusHousingApplication.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingApplicationImpl extends CampusHousingApplication {
  _CampusHousingApplicationImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue termId,
    required DateTime submittedAt,
    required String status,
    String? accessibilityNeeds,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         termId: termId,
         submittedAt: submittedAt,
         status: status,
         accessibilityNeeds: accessibilityNeeds,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingApplication]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusHousingApplication copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    _is.UuidValue? termId,
    DateTime? submittedAt,
    String? status,
    Object? accessibilityNeeds = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusHousingApplication(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      termId: termId ?? this.termId,
      submittedAt: submittedAt ?? this.submittedAt,
      status: status ?? this.status,
      accessibilityNeeds: accessibilityNeeds is String?
          ? accessibilityNeeds
          : this.accessibilityNeeds,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusHousingApplicationUpdateTable
    extends _is.UpdateTable<CampusHousingApplicationTable> {
  CampusHousingApplicationUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> termId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.termId,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> submittedAt(DateTime value) =>
      _is.ColumnValue(
        table.submittedAt,
        value,
      );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<String, String> accessibilityNeeds(String? value) =>
      _is.ColumnValue(
        table.accessibilityNeeds,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusHousingApplicationTable extends _is.Table<_is.UuidValue?> {
  CampusHousingApplicationTable({super.tableRelation})
    : super(tableName: 'campus_housing_applications') {
    updateTable = CampusHousingApplicationUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    termId = _is.ColumnUuid(
      'termId',
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
    accessibilityNeeds = _is.ColumnString(
      'accessibilityNeeds',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusHousingApplicationUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid termId;

  late final _is.ColumnDateTime submittedAt;

  late final _is.ColumnString status;

  late final _is.ColumnString accessibilityNeeds;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    termId,
    submittedAt,
    status,
    accessibilityNeeds,
    createdAt,
  ];
}

class CampusHousingApplicationInclude extends _is.IncludeObject {
  CampusHousingApplicationInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingApplication.t;
}

class CampusHousingApplicationIncludeList extends _is.IncludeList {
  CampusHousingApplicationIncludeList._({
    _is.WhereExpressionBuilder<CampusHousingApplicationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusHousingApplication.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingApplication.t;
}

class CampusHousingApplicationRepository {
  const CampusHousingApplicationRepository._();

  /// Returns a list of [CampusHousingApplication]s matching the given query parameters.
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
  Future<List<CampusHousingApplication>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingApplicationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingApplicationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusHousingApplication>(
      where: where?.call(CampusHousingApplication.t),
      orderBy: orderBy?.call(CampusHousingApplication.t),
      orderByList: orderByList?.call(CampusHousingApplication.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusHousingApplication] matching the given query parameters.
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
  Future<CampusHousingApplication?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingApplicationTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusHousingApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingApplicationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusHousingApplication>(
      where: where?.call(CampusHousingApplication.t),
      orderBy: orderBy?.call(CampusHousingApplication.t),
      orderByList: orderByList?.call(CampusHousingApplication.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusHousingApplication] by its [id] or null if no such row exists.
  Future<CampusHousingApplication?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusHousingApplication>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusHousingApplication]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusHousingApplication]s will have their `id` fields set.
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
  Future<List<CampusHousingApplication>> insert(
    _is.DatabaseSession session,
    List<CampusHousingApplication> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusHousingApplication>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusHousingApplication] and returns the inserted row.
  ///
  /// The returned [CampusHousingApplication] will have its `id` field set.
  Future<CampusHousingApplication> insertRow(
    _is.DatabaseSession session,
    CampusHousingApplication row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusHousingApplication>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusHousingApplication]s in the list and returns the resulting rows.
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
  /// The returned [CampusHousingApplication]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingApplication>> upsert(
    _is.DatabaseSession session,
    List<CampusHousingApplication> rows, {
    required _is.ColumnSelections<CampusHousingApplicationTable>
    conflictColumns,
    _is.ColumnSelections<CampusHousingApplicationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingApplicationTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusHousingApplication>(
      rows,
      conflictColumns: conflictColumns(CampusHousingApplication.t),
      updateColumns: updateColumns?.call(CampusHousingApplication.t),
      updateWhere: updateWhere?.call(CampusHousingApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusHousingApplication] and returns the resulting row.
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
  /// The returned [CampusHousingApplication] will have its `id` field set.
  Future<CampusHousingApplication?> upsertRow(
    _is.DatabaseSession session,
    CampusHousingApplication row, {
    required _is.ColumnSelections<CampusHousingApplicationTable>
    conflictColumns,
    _is.ColumnSelections<CampusHousingApplicationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingApplicationTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusHousingApplication>(
      row,
      conflictColumns: conflictColumns(CampusHousingApplication.t),
      updateColumns: updateColumns?.call(CampusHousingApplication.t),
      updateWhere: updateWhere?.call(CampusHousingApplication.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingApplication]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingApplication>> update(
    _is.DatabaseSession session,
    List<CampusHousingApplication> rows, {
    _is.ColumnSelections<CampusHousingApplicationTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusHousingApplication>(
      rows,
      columns: columns?.call(CampusHousingApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusHousingApplication]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusHousingApplication> updateRow(
    _is.DatabaseSession session,
    CampusHousingApplication row, {
    _is.ColumnSelections<CampusHousingApplicationTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusHousingApplication>(
      row,
      columns: columns?.call(CampusHousingApplication.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusHousingApplication] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusHousingApplication?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusHousingApplicationUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusHousingApplication>(
      id,
      columnValues: columnValues(CampusHousingApplication.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingApplication]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingApplication>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusHousingApplicationUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusHousingApplicationTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingApplicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusHousingApplication>(
      columnValues: columnValues(CampusHousingApplication.t.updateTable),
      where: where(CampusHousingApplication.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingApplication.t),
      orderByList: orderByList?.call(CampusHousingApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusHousingApplication]s in the list and returns the deleted rows.
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
  Future<List<CampusHousingApplication>> delete(
    _is.DatabaseSession session,
    List<CampusHousingApplication> rows, {
    _is.OrderByBuilder<CampusHousingApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingApplicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusHousingApplication>(
      rows,
      orderBy: orderBy?.call(CampusHousingApplication.t),
      orderByList: orderByList?.call(CampusHousingApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusHousingApplication].
  Future<CampusHousingApplication> deleteRow(
    _is.DatabaseSession session,
    CampusHousingApplication row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusHousingApplication>(
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
  Future<List<CampusHousingApplication>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingApplicationTable> where,
    _is.OrderByBuilder<CampusHousingApplicationTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingApplicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusHousingApplication>(
      where: where(CampusHousingApplication.t),
      orderBy: orderBy?.call(CampusHousingApplication.t),
      orderByList: orderByList?.call(CampusHousingApplication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingApplicationTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusHousingApplication>(
      where: where?.call(CampusHousingApplication.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusHousingApplication] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingApplicationTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusHousingApplication>(
      where: where(CampusHousingApplication.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
