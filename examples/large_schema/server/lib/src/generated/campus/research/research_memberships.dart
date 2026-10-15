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
abstract class CampusResearchMembership
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusResearchMembership._({
    this.id,
    required this.projectId,
    this.studentId,
    this.lecturerId,
    required this.role,
    required this.joinedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResearchMembership({
    _is.UuidValue? id,
    required _is.UuidValue projectId,
    _is.UuidValue? studentId,
    _is.UuidValue? lecturerId,
    required String role,
    required DateTime joinedAt,
    DateTime? createdAt,
  }) = _CampusResearchMembershipImpl;

  factory CampusResearchMembership.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusResearchMembership(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      projectId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['projectId'],
      ),
      studentId: jsonSerialization['studentId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['studentId']),
      lecturerId: jsonSerialization['lecturerId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['lecturerId'],
            ),
      role: jsonSerialization['role'] as String,
      joinedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['joinedAt'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusResearchMembershipTable();

  static const db = CampusResearchMembershipRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue projectId;

  _is.UuidValue? studentId;

  _is.UuidValue? lecturerId;

  String role;

  DateTime joinedAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusResearchMembership]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusResearchMembership copyWith({
    _is.UuidValue? id,
    _is.UuidValue? projectId,
    _is.UuidValue? studentId,
    _is.UuidValue? lecturerId,
    String? role,
    DateTime? joinedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResearchMembership',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      if (studentId != null) 'studentId': studentId?.toJson(),
      if (lecturerId != null) 'lecturerId': lecturerId?.toJson(),
      'role': role,
      'joinedAt': joinedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResearchMembership',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      if (studentId != null) 'studentId': studentId?.toJson(),
      if (lecturerId != null) 'lecturerId': lecturerId?.toJson(),
      'role': role,
      'joinedAt': joinedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusResearchMembershipInclude include() {
    return CampusResearchMembershipInclude._();
  }

  static CampusResearchMembershipIncludeList includeList({
    _is.WhereExpressionBuilder<CampusResearchMembershipTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResearchMembershipTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchMembershipTable>? orderByList,
    CampusResearchMembershipInclude? include,
  }) {
    return CampusResearchMembershipIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResearchMembership.t),
      orderByList: orderByList?.call(CampusResearchMembership.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusResearchMembershipImpl extends CampusResearchMembership {
  _CampusResearchMembershipImpl({
    _is.UuidValue? id,
    required _is.UuidValue projectId,
    _is.UuidValue? studentId,
    _is.UuidValue? lecturerId,
    required String role,
    required DateTime joinedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         projectId: projectId,
         studentId: studentId,
         lecturerId: lecturerId,
         role: role,
         joinedAt: joinedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResearchMembership]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusResearchMembership copyWith({
    Object? id = _Undefined,
    _is.UuidValue? projectId,
    Object? studentId = _Undefined,
    Object? lecturerId = _Undefined,
    String? role,
    DateTime? joinedAt,
    DateTime? createdAt,
  }) {
    return CampusResearchMembership(
      id: id is _is.UuidValue? ? id : this.id,
      projectId: projectId ?? this.projectId,
      studentId: studentId is _is.UuidValue? ? studentId : this.studentId,
      lecturerId: lecturerId is _is.UuidValue? ? lecturerId : this.lecturerId,
      role: role ?? this.role,
      joinedAt: joinedAt ?? this.joinedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusResearchMembershipUpdateTable
    extends _is.UpdateTable<CampusResearchMembershipTable> {
  CampusResearchMembershipUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> projectId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.projectId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> lecturerId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.lecturerId,
    value,
  );

  _is.ColumnValue<String, String> role(String value) => _is.ColumnValue(
    table.role,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> joinedAt(DateTime value) =>
      _is.ColumnValue(
        table.joinedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusResearchMembershipTable extends _is.Table<_is.UuidValue?> {
  CampusResearchMembershipTable({super.tableRelation})
    : super(tableName: 'campus_research_memberships') {
    updateTable = CampusResearchMembershipUpdateTable(this);
    projectId = _is.ColumnUuid(
      'projectId',
      this,
    );
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    lecturerId = _is.ColumnUuid(
      'lecturerId',
      this,
    );
    role = _is.ColumnString(
      'role',
      this,
    );
    joinedAt = _is.ColumnDateTime(
      'joinedAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusResearchMembershipUpdateTable updateTable;

  late final _is.ColumnUuid projectId;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid lecturerId;

  late final _is.ColumnString role;

  late final _is.ColumnDateTime joinedAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    projectId,
    studentId,
    lecturerId,
    role,
    joinedAt,
    createdAt,
  ];
}

class CampusResearchMembershipInclude extends _is.IncludeObject {
  CampusResearchMembershipInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResearchMembership.t;
}

class CampusResearchMembershipIncludeList extends _is.IncludeList {
  CampusResearchMembershipIncludeList._({
    _is.WhereExpressionBuilder<CampusResearchMembershipTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusResearchMembership.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResearchMembership.t;
}

class CampusResearchMembershipRepository {
  const CampusResearchMembershipRepository._();

  /// Returns a list of [CampusResearchMembership]s matching the given query parameters.
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
  Future<List<CampusResearchMembership>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResearchMembershipTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResearchMembershipTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchMembershipTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusResearchMembership>(
      where: where?.call(CampusResearchMembership.t),
      orderBy: orderBy?.call(CampusResearchMembership.t),
      orderByList: orderByList?.call(CampusResearchMembership.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusResearchMembership] matching the given query parameters.
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
  Future<CampusResearchMembership?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResearchMembershipTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusResearchMembershipTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchMembershipTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusResearchMembership>(
      where: where?.call(CampusResearchMembership.t),
      orderBy: orderBy?.call(CampusResearchMembership.t),
      orderByList: orderByList?.call(CampusResearchMembership.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusResearchMembership] by its [id] or null if no such row exists.
  Future<CampusResearchMembership?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusResearchMembership>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusResearchMembership]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusResearchMembership]s will have their `id` fields set.
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
  Future<List<CampusResearchMembership>> insert(
    _is.DatabaseSession session,
    List<CampusResearchMembership> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusResearchMembership>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusResearchMembership] and returns the inserted row.
  ///
  /// The returned [CampusResearchMembership] will have its `id` field set.
  Future<CampusResearchMembership> insertRow(
    _is.DatabaseSession session,
    CampusResearchMembership row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusResearchMembership>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusResearchMembership]s in the list and returns the resulting rows.
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
  /// The returned [CampusResearchMembership]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResearchMembership>> upsert(
    _is.DatabaseSession session,
    List<CampusResearchMembership> rows, {
    required _is.ColumnSelections<CampusResearchMembershipTable>
    conflictColumns,
    _is.ColumnSelections<CampusResearchMembershipTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResearchMembershipTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusResearchMembership>(
      rows,
      conflictColumns: conflictColumns(CampusResearchMembership.t),
      updateColumns: updateColumns?.call(CampusResearchMembership.t),
      updateWhere: updateWhere?.call(CampusResearchMembership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusResearchMembership] and returns the resulting row.
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
  /// The returned [CampusResearchMembership] will have its `id` field set.
  Future<CampusResearchMembership?> upsertRow(
    _is.DatabaseSession session,
    CampusResearchMembership row, {
    required _is.ColumnSelections<CampusResearchMembershipTable>
    conflictColumns,
    _is.ColumnSelections<CampusResearchMembershipTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResearchMembershipTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusResearchMembership>(
      row,
      conflictColumns: conflictColumns(CampusResearchMembership.t),
      updateColumns: updateColumns?.call(CampusResearchMembership.t),
      updateWhere: updateWhere?.call(CampusResearchMembership.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResearchMembership]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResearchMembership>> update(
    _is.DatabaseSession session,
    List<CampusResearchMembership> rows, {
    _is.ColumnSelections<CampusResearchMembershipTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusResearchMembership>(
      rows,
      columns: columns?.call(CampusResearchMembership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusResearchMembership]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusResearchMembership> updateRow(
    _is.DatabaseSession session,
    CampusResearchMembership row, {
    _is.ColumnSelections<CampusResearchMembershipTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusResearchMembership>(
      row,
      columns: columns?.call(CampusResearchMembership.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusResearchMembership] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusResearchMembership?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusResearchMembershipUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusResearchMembership>(
      id,
      columnValues: columnValues(CampusResearchMembership.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResearchMembership]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResearchMembership>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusResearchMembershipUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusResearchMembershipTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResearchMembershipTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchMembershipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusResearchMembership>(
      columnValues: columnValues(CampusResearchMembership.t.updateTable),
      where: where(CampusResearchMembership.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResearchMembership.t),
      orderByList: orderByList?.call(CampusResearchMembership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusResearchMembership]s in the list and returns the deleted rows.
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
  Future<List<CampusResearchMembership>> delete(
    _is.DatabaseSession session,
    List<CampusResearchMembership> rows, {
    _is.OrderByBuilder<CampusResearchMembershipTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchMembershipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusResearchMembership>(
      rows,
      orderBy: orderBy?.call(CampusResearchMembership.t),
      orderByList: orderByList?.call(CampusResearchMembership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusResearchMembership].
  Future<CampusResearchMembership> deleteRow(
    _is.DatabaseSession session,
    CampusResearchMembership row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusResearchMembership>(
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
  Future<List<CampusResearchMembership>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResearchMembershipTable> where,
    _is.OrderByBuilder<CampusResearchMembershipTable>? orderBy,
    _is.OrderByListBuilder<CampusResearchMembershipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusResearchMembership>(
      where: where(CampusResearchMembership.t),
      orderBy: orderBy?.call(CampusResearchMembership.t),
      orderByList: orderByList?.call(CampusResearchMembership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResearchMembershipTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusResearchMembership>(
      where: where?.call(CampusResearchMembership.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusResearchMembership] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResearchMembershipTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusResearchMembership>(
      where: where(CampusResearchMembership.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
