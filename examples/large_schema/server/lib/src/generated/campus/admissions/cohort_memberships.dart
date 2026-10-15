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
abstract class CampusCohortMembership
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusCohortMembership._({
    this.id,
    required this.cohortId,
    required this.studentId,
    required this.joinedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCohortMembership({
    _is.UuidValue? id,
    required _is.UuidValue cohortId,
    required _is.UuidValue studentId,
    required DateTime joinedAt,
    DateTime? createdAt,
  }) = _CampusCohortMembershipImpl;

  factory CampusCohortMembership.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusCohortMembership(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      cohortId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['cohortId'],
      ),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      joinedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['joinedAt'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusCohortMembershipTable();

  static const db = CampusCohortMembershipRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue cohortId;

  _is.UuidValue studentId;

  DateTime joinedAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusCohortMembership]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusCohortMembership copyWith({
    _is.UuidValue? id,
    _is.UuidValue? cohortId,
    _is.UuidValue? studentId,
    DateTime? joinedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCohortMembership',
      if (id != null) 'id': id?.toJson(),
      'cohortId': cohortId.toJson(),
      'studentId': studentId.toJson(),
      'joinedAt': joinedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCohortMembership',
      if (id != null) 'id': id?.toJson(),
      'cohortId': cohortId.toJson(),
      'studentId': studentId.toJson(),
      'joinedAt': joinedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusCohortMembershipInclude include() {
    return CampusCohortMembershipInclude._();
  }

  static CampusCohortMembershipIncludeList includeList({
    _is.WhereExpressionBuilder<CampusCohortMembershipTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCohortMembershipTable>? orderBy,
    _is.OrderByListBuilder<CampusCohortMembershipTable>? orderByList,
    CampusCohortMembershipInclude? include,
  }) {
    return CampusCohortMembershipIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCohortMembership.t),
      orderByList: orderByList?.call(CampusCohortMembership.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCohortMembershipImpl extends CampusCohortMembership {
  _CampusCohortMembershipImpl({
    _is.UuidValue? id,
    required _is.UuidValue cohortId,
    required _is.UuidValue studentId,
    required DateTime joinedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         cohortId: cohortId,
         studentId: studentId,
         joinedAt: joinedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCohortMembership]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusCohortMembership copyWith({
    Object? id = _Undefined,
    _is.UuidValue? cohortId,
    _is.UuidValue? studentId,
    DateTime? joinedAt,
    DateTime? createdAt,
  }) {
    return CampusCohortMembership(
      id: id is _is.UuidValue? ? id : this.id,
      cohortId: cohortId ?? this.cohortId,
      studentId: studentId ?? this.studentId,
      joinedAt: joinedAt ?? this.joinedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusCohortMembershipUpdateTable
    extends _is.UpdateTable<CampusCohortMembershipTable> {
  CampusCohortMembershipUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> cohortId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.cohortId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
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

class CampusCohortMembershipTable extends _is.Table<_is.UuidValue?> {
  CampusCohortMembershipTable({super.tableRelation})
    : super(tableName: 'campus_cohort_memberships') {
    updateTable = CampusCohortMembershipUpdateTable(this);
    cohortId = _is.ColumnUuid(
      'cohortId',
      this,
    );
    studentId = _is.ColumnUuid(
      'studentId',
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

  late final CampusCohortMembershipUpdateTable updateTable;

  late final _is.ColumnUuid cohortId;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnDateTime joinedAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    cohortId,
    studentId,
    joinedAt,
    createdAt,
  ];
}

class CampusCohortMembershipInclude extends _is.IncludeObject {
  CampusCohortMembershipInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCohortMembership.t;
}

class CampusCohortMembershipIncludeList extends _is.IncludeList {
  CampusCohortMembershipIncludeList._({
    _is.WhereExpressionBuilder<CampusCohortMembershipTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusCohortMembership.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusCohortMembership.t;
}

class CampusCohortMembershipRepository {
  const CampusCohortMembershipRepository._();

  /// Returns a list of [CampusCohortMembership]s matching the given query parameters.
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
  Future<List<CampusCohortMembership>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCohortMembershipTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCohortMembershipTable>? orderBy,
    _is.OrderByListBuilder<CampusCohortMembershipTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusCohortMembership>(
      where: where?.call(CampusCohortMembership.t),
      orderBy: orderBy?.call(CampusCohortMembership.t),
      orderByList: orderByList?.call(CampusCohortMembership.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusCohortMembership] matching the given query parameters.
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
  Future<CampusCohortMembership?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCohortMembershipTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusCohortMembershipTable>? orderBy,
    _is.OrderByListBuilder<CampusCohortMembershipTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusCohortMembership>(
      where: where?.call(CampusCohortMembership.t),
      orderBy: orderBy?.call(CampusCohortMembership.t),
      orderByList: orderByList?.call(CampusCohortMembership.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusCohortMembership] by its [id] or null if no such row exists.
  Future<CampusCohortMembership?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusCohortMembership>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusCohortMembership]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusCohortMembership]s will have their `id` fields set.
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
  Future<List<CampusCohortMembership>> insert(
    _is.DatabaseSession session,
    List<CampusCohortMembership> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusCohortMembership>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusCohortMembership] and returns the inserted row.
  ///
  /// The returned [CampusCohortMembership] will have its `id` field set.
  Future<CampusCohortMembership> insertRow(
    _is.DatabaseSession session,
    CampusCohortMembership row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusCohortMembership>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusCohortMembership]s in the list and returns the resulting rows.
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
  /// The returned [CampusCohortMembership]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCohortMembership>> upsert(
    _is.DatabaseSession session,
    List<CampusCohortMembership> rows, {
    required _is.ColumnSelections<CampusCohortMembershipTable> conflictColumns,
    _is.ColumnSelections<CampusCohortMembershipTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCohortMembershipTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusCohortMembership>(
      rows,
      conflictColumns: conflictColumns(CampusCohortMembership.t),
      updateColumns: updateColumns?.call(CampusCohortMembership.t),
      updateWhere: updateWhere?.call(CampusCohortMembership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusCohortMembership] and returns the resulting row.
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
  /// The returned [CampusCohortMembership] will have its `id` field set.
  Future<CampusCohortMembership?> upsertRow(
    _is.DatabaseSession session,
    CampusCohortMembership row, {
    required _is.ColumnSelections<CampusCohortMembershipTable> conflictColumns,
    _is.ColumnSelections<CampusCohortMembershipTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusCohortMembershipTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusCohortMembership>(
      row,
      conflictColumns: conflictColumns(CampusCohortMembership.t),
      updateColumns: updateColumns?.call(CampusCohortMembership.t),
      updateWhere: updateWhere?.call(CampusCohortMembership.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCohortMembership]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCohortMembership>> update(
    _is.DatabaseSession session,
    List<CampusCohortMembership> rows, {
    _is.ColumnSelections<CampusCohortMembershipTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusCohortMembership>(
      rows,
      columns: columns?.call(CampusCohortMembership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusCohortMembership]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusCohortMembership> updateRow(
    _is.DatabaseSession session,
    CampusCohortMembership row, {
    _is.ColumnSelections<CampusCohortMembershipTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusCohortMembership>(
      row,
      columns: columns?.call(CampusCohortMembership.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusCohortMembership] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusCohortMembership?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusCohortMembershipUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusCohortMembership>(
      id,
      columnValues: columnValues(CampusCohortMembership.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusCohortMembership]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusCohortMembership>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusCohortMembershipUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusCohortMembershipTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusCohortMembershipTable>? orderBy,
    _is.OrderByListBuilder<CampusCohortMembershipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusCohortMembership>(
      columnValues: columnValues(CampusCohortMembership.t.updateTable),
      where: where(CampusCohortMembership.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusCohortMembership.t),
      orderByList: orderByList?.call(CampusCohortMembership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusCohortMembership]s in the list and returns the deleted rows.
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
  Future<List<CampusCohortMembership>> delete(
    _is.DatabaseSession session,
    List<CampusCohortMembership> rows, {
    _is.OrderByBuilder<CampusCohortMembershipTable>? orderBy,
    _is.OrderByListBuilder<CampusCohortMembershipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusCohortMembership>(
      rows,
      orderBy: orderBy?.call(CampusCohortMembership.t),
      orderByList: orderByList?.call(CampusCohortMembership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusCohortMembership].
  Future<CampusCohortMembership> deleteRow(
    _is.DatabaseSession session,
    CampusCohortMembership row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusCohortMembership>(
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
  Future<List<CampusCohortMembership>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCohortMembershipTable> where,
    _is.OrderByBuilder<CampusCohortMembershipTable>? orderBy,
    _is.OrderByListBuilder<CampusCohortMembershipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusCohortMembership>(
      where: where(CampusCohortMembership.t),
      orderBy: orderBy?.call(CampusCohortMembership.t),
      orderByList: orderByList?.call(CampusCohortMembership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusCohortMembershipTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusCohortMembership>(
      where: where?.call(CampusCohortMembership.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusCohortMembership] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusCohortMembershipTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusCohortMembership>(
      where: where(CampusCohortMembership.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
