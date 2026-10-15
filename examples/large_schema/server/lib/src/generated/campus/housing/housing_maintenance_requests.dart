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
abstract class CampusHousingMaintenanceRequest
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusHousingMaintenanceRequest._({
    this.id,
    required this.residenceRoomId,
    required this.studentId,
    required this.description,
    required this.priority,
    this.resolvedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingMaintenanceRequest({
    _is.UuidValue? id,
    required _is.UuidValue residenceRoomId,
    required _is.UuidValue studentId,
    required String description,
    required String priority,
    DateTime? resolvedAt,
    DateTime? createdAt,
  }) = _CampusHousingMaintenanceRequestImpl;

  factory CampusHousingMaintenanceRequest.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusHousingMaintenanceRequest(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      residenceRoomId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['residenceRoomId'],
      ),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      description: jsonSerialization['description'] as String,
      priority: jsonSerialization['priority'] as String,
      resolvedAt: jsonSerialization['resolvedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['resolvedAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusHousingMaintenanceRequestTable();

  static const db = CampusHousingMaintenanceRequestRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue residenceRoomId;

  _is.UuidValue studentId;

  String description;

  String priority;

  DateTime? resolvedAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusHousingMaintenanceRequest]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusHousingMaintenanceRequest copyWith({
    _is.UuidValue? id,
    _is.UuidValue? residenceRoomId,
    _is.UuidValue? studentId,
    String? description,
    String? priority,
    DateTime? resolvedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingMaintenanceRequest',
      if (id != null) 'id': id?.toJson(),
      'residenceRoomId': residenceRoomId.toJson(),
      'studentId': studentId.toJson(),
      'description': description,
      'priority': priority,
      if (resolvedAt != null) 'resolvedAt': resolvedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingMaintenanceRequest',
      if (id != null) 'id': id?.toJson(),
      'residenceRoomId': residenceRoomId.toJson(),
      'studentId': studentId.toJson(),
      'description': description,
      'priority': priority,
      if (resolvedAt != null) 'resolvedAt': resolvedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusHousingMaintenanceRequestInclude include() {
    return CampusHousingMaintenanceRequestInclude._();
  }

  static CampusHousingMaintenanceRequestIncludeList includeList({
    _is.WhereExpressionBuilder<CampusHousingMaintenanceRequestTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingMaintenanceRequestTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingMaintenanceRequestTable>? orderByList,
    CampusHousingMaintenanceRequestInclude? include,
  }) {
    return CampusHousingMaintenanceRequestIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingMaintenanceRequest.t),
      orderByList: orderByList?.call(CampusHousingMaintenanceRequest.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingMaintenanceRequestImpl
    extends CampusHousingMaintenanceRequest {
  _CampusHousingMaintenanceRequestImpl({
    _is.UuidValue? id,
    required _is.UuidValue residenceRoomId,
    required _is.UuidValue studentId,
    required String description,
    required String priority,
    DateTime? resolvedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         residenceRoomId: residenceRoomId,
         studentId: studentId,
         description: description,
         priority: priority,
         resolvedAt: resolvedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingMaintenanceRequest]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusHousingMaintenanceRequest copyWith({
    Object? id = _Undefined,
    _is.UuidValue? residenceRoomId,
    _is.UuidValue? studentId,
    String? description,
    String? priority,
    Object? resolvedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusHousingMaintenanceRequest(
      id: id is _is.UuidValue? ? id : this.id,
      residenceRoomId: residenceRoomId ?? this.residenceRoomId,
      studentId: studentId ?? this.studentId,
      description: description ?? this.description,
      priority: priority ?? this.priority,
      resolvedAt: resolvedAt is DateTime? ? resolvedAt : this.resolvedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusHousingMaintenanceRequestUpdateTable
    extends _is.UpdateTable<CampusHousingMaintenanceRequestTable> {
  CampusHousingMaintenanceRequestUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> residenceRoomId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.residenceRoomId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<String, String> description(String value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<String, String> priority(String value) => _is.ColumnValue(
    table.priority,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> resolvedAt(DateTime? value) =>
      _is.ColumnValue(
        table.resolvedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusHousingMaintenanceRequestTable extends _is.Table<_is.UuidValue?> {
  CampusHousingMaintenanceRequestTable({super.tableRelation})
    : super(tableName: 'campus_housing_maintenance_requests') {
    updateTable = CampusHousingMaintenanceRequestUpdateTable(this);
    residenceRoomId = _is.ColumnUuid(
      'residenceRoomId',
      this,
    );
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    priority = _is.ColumnString(
      'priority',
      this,
    );
    resolvedAt = _is.ColumnDateTime(
      'resolvedAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusHousingMaintenanceRequestUpdateTable updateTable;

  late final _is.ColumnUuid residenceRoomId;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnString description;

  late final _is.ColumnString priority;

  late final _is.ColumnDateTime resolvedAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    residenceRoomId,
    studentId,
    description,
    priority,
    resolvedAt,
    createdAt,
  ];
}

class CampusHousingMaintenanceRequestInclude extends _is.IncludeObject {
  CampusHousingMaintenanceRequestInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingMaintenanceRequest.t;
}

class CampusHousingMaintenanceRequestIncludeList extends _is.IncludeList {
  CampusHousingMaintenanceRequestIncludeList._({
    _is.WhereExpressionBuilder<CampusHousingMaintenanceRequestTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusHousingMaintenanceRequest.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingMaintenanceRequest.t;
}

class CampusHousingMaintenanceRequestRepository {
  const CampusHousingMaintenanceRequestRepository._();

  /// Returns a list of [CampusHousingMaintenanceRequest]s matching the given query parameters.
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
  Future<List<CampusHousingMaintenanceRequest>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingMaintenanceRequestTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingMaintenanceRequestTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingMaintenanceRequestTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusHousingMaintenanceRequest>(
      where: where?.call(CampusHousingMaintenanceRequest.t),
      orderBy: orderBy?.call(CampusHousingMaintenanceRequest.t),
      orderByList: orderByList?.call(CampusHousingMaintenanceRequest.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusHousingMaintenanceRequest] matching the given query parameters.
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
  Future<CampusHousingMaintenanceRequest?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingMaintenanceRequestTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusHousingMaintenanceRequestTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingMaintenanceRequestTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusHousingMaintenanceRequest>(
      where: where?.call(CampusHousingMaintenanceRequest.t),
      orderBy: orderBy?.call(CampusHousingMaintenanceRequest.t),
      orderByList: orderByList?.call(CampusHousingMaintenanceRequest.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusHousingMaintenanceRequest] by its [id] or null if no such row exists.
  Future<CampusHousingMaintenanceRequest?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusHousingMaintenanceRequest>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusHousingMaintenanceRequest]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusHousingMaintenanceRequest]s will have their `id` fields set.
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
  Future<List<CampusHousingMaintenanceRequest>> insert(
    _is.DatabaseSession session,
    List<CampusHousingMaintenanceRequest> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusHousingMaintenanceRequest>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusHousingMaintenanceRequest] and returns the inserted row.
  ///
  /// The returned [CampusHousingMaintenanceRequest] will have its `id` field set.
  Future<CampusHousingMaintenanceRequest> insertRow(
    _is.DatabaseSession session,
    CampusHousingMaintenanceRequest row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusHousingMaintenanceRequest>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusHousingMaintenanceRequest]s in the list and returns the resulting rows.
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
  /// The returned [CampusHousingMaintenanceRequest]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingMaintenanceRequest>> upsert(
    _is.DatabaseSession session,
    List<CampusHousingMaintenanceRequest> rows, {
    required _is.ColumnSelections<CampusHousingMaintenanceRequestTable>
    conflictColumns,
    _is.ColumnSelections<CampusHousingMaintenanceRequestTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingMaintenanceRequestTable>?
    updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusHousingMaintenanceRequest>(
      rows,
      conflictColumns: conflictColumns(CampusHousingMaintenanceRequest.t),
      updateColumns: updateColumns?.call(CampusHousingMaintenanceRequest.t),
      updateWhere: updateWhere?.call(CampusHousingMaintenanceRequest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusHousingMaintenanceRequest] and returns the resulting row.
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
  /// The returned [CampusHousingMaintenanceRequest] will have its `id` field set.
  Future<CampusHousingMaintenanceRequest?> upsertRow(
    _is.DatabaseSession session,
    CampusHousingMaintenanceRequest row, {
    required _is.ColumnSelections<CampusHousingMaintenanceRequestTable>
    conflictColumns,
    _is.ColumnSelections<CampusHousingMaintenanceRequestTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingMaintenanceRequestTable>?
    updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusHousingMaintenanceRequest>(
      row,
      conflictColumns: conflictColumns(CampusHousingMaintenanceRequest.t),
      updateColumns: updateColumns?.call(CampusHousingMaintenanceRequest.t),
      updateWhere: updateWhere?.call(CampusHousingMaintenanceRequest.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingMaintenanceRequest]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingMaintenanceRequest>> update(
    _is.DatabaseSession session,
    List<CampusHousingMaintenanceRequest> rows, {
    _is.ColumnSelections<CampusHousingMaintenanceRequestTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusHousingMaintenanceRequest>(
      rows,
      columns: columns?.call(CampusHousingMaintenanceRequest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusHousingMaintenanceRequest]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusHousingMaintenanceRequest> updateRow(
    _is.DatabaseSession session,
    CampusHousingMaintenanceRequest row, {
    _is.ColumnSelections<CampusHousingMaintenanceRequestTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusHousingMaintenanceRequest>(
      row,
      columns: columns?.call(CampusHousingMaintenanceRequest.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusHousingMaintenanceRequest] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusHousingMaintenanceRequest?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<
      CampusHousingMaintenanceRequestUpdateTable
    >
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusHousingMaintenanceRequest>(
      id,
      columnValues: columnValues(CampusHousingMaintenanceRequest.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingMaintenanceRequest]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingMaintenanceRequest>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<
      CampusHousingMaintenanceRequestUpdateTable
    >
    columnValues,
    required _is.WhereExpressionBuilder<CampusHousingMaintenanceRequestTable>
    where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingMaintenanceRequestTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingMaintenanceRequestTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusHousingMaintenanceRequest>(
      columnValues: columnValues(CampusHousingMaintenanceRequest.t.updateTable),
      where: where(CampusHousingMaintenanceRequest.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingMaintenanceRequest.t),
      orderByList: orderByList?.call(CampusHousingMaintenanceRequest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusHousingMaintenanceRequest]s in the list and returns the deleted rows.
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
  Future<List<CampusHousingMaintenanceRequest>> delete(
    _is.DatabaseSession session,
    List<CampusHousingMaintenanceRequest> rows, {
    _is.OrderByBuilder<CampusHousingMaintenanceRequestTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingMaintenanceRequestTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusHousingMaintenanceRequest>(
      rows,
      orderBy: orderBy?.call(CampusHousingMaintenanceRequest.t),
      orderByList: orderByList?.call(CampusHousingMaintenanceRequest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusHousingMaintenanceRequest].
  Future<CampusHousingMaintenanceRequest> deleteRow(
    _is.DatabaseSession session,
    CampusHousingMaintenanceRequest row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusHousingMaintenanceRequest>(
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
  Future<List<CampusHousingMaintenanceRequest>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingMaintenanceRequestTable>
    where,
    _is.OrderByBuilder<CampusHousingMaintenanceRequestTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingMaintenanceRequestTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusHousingMaintenanceRequest>(
      where: where(CampusHousingMaintenanceRequest.t),
      orderBy: orderBy?.call(CampusHousingMaintenanceRequest.t),
      orderByList: orderByList?.call(CampusHousingMaintenanceRequest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingMaintenanceRequestTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusHousingMaintenanceRequest>(
      where: where?.call(CampusHousingMaintenanceRequest.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusHousingMaintenanceRequest] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingMaintenanceRequestTable>
    where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusHousingMaintenanceRequest>(
      where: where(CampusHousingMaintenanceRequest.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
