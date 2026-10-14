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

abstract class SsoUserRoles
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoUserRoles._({
    this.id,
    required this.userId,
    required this.roleId,
    this.isActive,
  });

  factory SsoUserRoles({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required _is.UuidValue roleId,
    bool? isActive,
  }) = _SsoUserRolesImpl;

  factory SsoUserRoles.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoUserRoles(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      roleId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['roleId']),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = SsoUserRolesTable();

  static const db = SsoUserRolesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue userId;

  _is.UuidValue roleId;

  bool? isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoUserRoles]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoUserRoles copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _is.UuidValue? roleId,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoUserRoles',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'roleId': roleId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoUserRoles',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'roleId': roleId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  static SsoUserRolesInclude include() {
    return SsoUserRolesInclude._();
  }

  static SsoUserRolesIncludeList includeList({
    _is.WhereExpressionBuilder<SsoUserRolesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserRolesTable>? orderBy,
    _is.OrderByListBuilder<SsoUserRolesTable>? orderByList,
    SsoUserRolesInclude? include,
  }) {
    return SsoUserRolesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoUserRoles.t),
      orderByList: orderByList?.call(SsoUserRoles.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoUserRolesImpl extends SsoUserRoles {
  _SsoUserRolesImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required _is.UuidValue roleId,
    bool? isActive,
  }) : super._(
         id: id,
         userId: userId,
         roleId: roleId,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [SsoUserRoles]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoUserRoles copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    _is.UuidValue? roleId,
    Object? isActive = _Undefined,
  }) {
    return SsoUserRoles(
      id: id is _is.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      roleId: roleId ?? this.roleId,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}

class SsoUserRolesUpdateTable extends _is.UpdateTable<SsoUserRolesTable> {
  SsoUserRolesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> roleId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.roleId,
        value,
      );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class SsoUserRolesTable extends _is.Table<_is.UuidValue?> {
  SsoUserRolesTable({super.tableRelation})
    : super(tableName: 'sso_user_roles') {
    updateTable = SsoUserRolesUpdateTable(this);
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    roleId = _is.ColumnUuid(
      'roleId',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final SsoUserRolesUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnUuid roleId;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    roleId,
    isActive,
  ];
}

class SsoUserRolesInclude extends _is.IncludeObject {
  SsoUserRolesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoUserRoles.t;
}

class SsoUserRolesIncludeList extends _is.IncludeList {
  SsoUserRolesIncludeList._({
    _is.WhereExpressionBuilder<SsoUserRolesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoUserRoles.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoUserRoles.t;
}

class SsoUserRolesRepository {
  const SsoUserRolesRepository._();

  /// Returns a list of [SsoUserRoles]s matching the given query parameters.
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
  Future<List<SsoUserRoles>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserRolesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserRolesTable>? orderBy,
    _is.OrderByListBuilder<SsoUserRolesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoUserRoles>(
      where: where?.call(SsoUserRoles.t),
      orderBy: orderBy?.call(SsoUserRoles.t),
      orderByList: orderByList?.call(SsoUserRoles.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoUserRoles] matching the given query parameters.
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
  Future<SsoUserRoles?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserRolesTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoUserRolesTable>? orderBy,
    _is.OrderByListBuilder<SsoUserRolesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoUserRoles>(
      where: where?.call(SsoUserRoles.t),
      orderBy: orderBy?.call(SsoUserRoles.t),
      orderByList: orderByList?.call(SsoUserRoles.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoUserRoles] by its [id] or null if no such row exists.
  Future<SsoUserRoles?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoUserRoles>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoUserRoles]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoUserRoles]s will have their `id` fields set.
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
  Future<List<SsoUserRoles>> insert(
    _is.DatabaseSession session,
    List<SsoUserRoles> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoUserRoles>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoUserRoles] and returns the inserted row.
  ///
  /// The returned [SsoUserRoles] will have its `id` field set.
  Future<SsoUserRoles> insertRow(
    _is.DatabaseSession session,
    SsoUserRoles row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoUserRoles>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoUserRoles]s in the list and returns the resulting rows.
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
  /// The returned [SsoUserRoles]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserRoles>> upsert(
    _is.DatabaseSession session,
    List<SsoUserRoles> rows, {
    required _is.ColumnSelections<SsoUserRolesTable> conflictColumns,
    _is.ColumnSelections<SsoUserRolesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoUserRolesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoUserRoles>(
      rows,
      conflictColumns: conflictColumns(SsoUserRoles.t),
      updateColumns: updateColumns?.call(SsoUserRoles.t),
      updateWhere: updateWhere?.call(SsoUserRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoUserRoles] and returns the resulting row.
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
  /// The returned [SsoUserRoles] will have its `id` field set.
  Future<SsoUserRoles?> upsertRow(
    _is.DatabaseSession session,
    SsoUserRoles row, {
    required _is.ColumnSelections<SsoUserRolesTable> conflictColumns,
    _is.ColumnSelections<SsoUserRolesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoUserRolesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoUserRoles>(
      row,
      conflictColumns: conflictColumns(SsoUserRoles.t),
      updateColumns: updateColumns?.call(SsoUserRoles.t),
      updateWhere: updateWhere?.call(SsoUserRoles.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoUserRoles]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserRoles>> update(
    _is.DatabaseSession session,
    List<SsoUserRoles> rows, {
    _is.ColumnSelections<SsoUserRolesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoUserRoles>(
      rows,
      columns: columns?.call(SsoUserRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoUserRoles]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoUserRoles> updateRow(
    _is.DatabaseSession session,
    SsoUserRoles row, {
    _is.ColumnSelections<SsoUserRolesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoUserRoles>(
      row,
      columns: columns?.call(SsoUserRoles.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoUserRoles] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoUserRoles?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoUserRolesUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoUserRoles>(
      id,
      columnValues: columnValues(SsoUserRoles.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoUserRoles]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserRoles>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoUserRolesUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<SsoUserRolesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserRolesTable>? orderBy,
    _is.OrderByListBuilder<SsoUserRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoUserRoles>(
      columnValues: columnValues(SsoUserRoles.t.updateTable),
      where: where(SsoUserRoles.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoUserRoles.t),
      orderByList: orderByList?.call(SsoUserRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoUserRoles]s in the list and returns the deleted rows.
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
  Future<List<SsoUserRoles>> delete(
    _is.DatabaseSession session,
    List<SsoUserRoles> rows, {
    _is.OrderByBuilder<SsoUserRolesTable>? orderBy,
    _is.OrderByListBuilder<SsoUserRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoUserRoles>(
      rows,
      orderBy: orderBy?.call(SsoUserRoles.t),
      orderByList: orderByList?.call(SsoUserRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoUserRoles].
  Future<SsoUserRoles> deleteRow(
    _is.DatabaseSession session,
    SsoUserRoles row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoUserRoles>(
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
  Future<List<SsoUserRoles>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoUserRolesTable> where,
    _is.OrderByBuilder<SsoUserRolesTable>? orderBy,
    _is.OrderByListBuilder<SsoUserRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoUserRoles>(
      where: where(SsoUserRoles.t),
      orderBy: orderBy?.call(SsoUserRoles.t),
      orderByList: orderByList?.call(SsoUserRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserRolesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoUserRoles>(
      where: where?.call(SsoUserRoles.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoUserRoles] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoUserRolesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoUserRoles>(
      where: where(SsoUserRoles.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
