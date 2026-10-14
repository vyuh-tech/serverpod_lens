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

abstract class ElogAreaUserGroups
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogAreaUserGroups._({
    this.id,
    required this.areaId,
    required this.userGroupId,
    this.isActive,
  });

  factory ElogAreaUserGroups({
    _is.UuidValue? id,
    required _is.UuidValue areaId,
    required _is.UuidValue userGroupId,
    bool? isActive,
  }) = _ElogAreaUserGroupsImpl;

  factory ElogAreaUserGroups.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogAreaUserGroups(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      areaId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['areaId']),
      userGroupId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['userGroupId'],
      ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogAreaUserGroupsTable();

  static const db = ElogAreaUserGroupsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue areaId;

  _is.UuidValue userGroupId;

  bool? isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogAreaUserGroups]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogAreaUserGroups copyWith({
    _is.UuidValue? id,
    _is.UuidValue? areaId,
    _is.UuidValue? userGroupId,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogAreaUserGroups',
      if (id != null) 'id': id?.toJson(),
      'areaId': areaId.toJson(),
      'userGroupId': userGroupId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogAreaUserGroups',
      if (id != null) 'id': id?.toJson(),
      'areaId': areaId.toJson(),
      'userGroupId': userGroupId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  static ElogAreaUserGroupsInclude include() {
    return ElogAreaUserGroupsInclude._();
  }

  static ElogAreaUserGroupsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogAreaUserGroupsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreaUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaUserGroupsTable>? orderByList,
    ElogAreaUserGroupsInclude? include,
  }) {
    return ElogAreaUserGroupsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogAreaUserGroups.t),
      orderByList: orderByList?.call(ElogAreaUserGroups.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogAreaUserGroupsImpl extends ElogAreaUserGroups {
  _ElogAreaUserGroupsImpl({
    _is.UuidValue? id,
    required _is.UuidValue areaId,
    required _is.UuidValue userGroupId,
    bool? isActive,
  }) : super._(
         id: id,
         areaId: areaId,
         userGroupId: userGroupId,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogAreaUserGroups]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogAreaUserGroups copyWith({
    Object? id = _Undefined,
    _is.UuidValue? areaId,
    _is.UuidValue? userGroupId,
    Object? isActive = _Undefined,
  }) {
    return ElogAreaUserGroups(
      id: id is _is.UuidValue? ? id : this.id,
      areaId: areaId ?? this.areaId,
      userGroupId: userGroupId ?? this.userGroupId,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}

class ElogAreaUserGroupsUpdateTable
    extends _is.UpdateTable<ElogAreaUserGroupsTable> {
  ElogAreaUserGroupsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> areaId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.areaId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userGroupId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.userGroupId,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogAreaUserGroupsTable extends _is.Table<_is.UuidValue?> {
  ElogAreaUserGroupsTable({super.tableRelation})
    : super(tableName: 'elog_area_user_groups') {
    updateTable = ElogAreaUserGroupsUpdateTable(this);
    areaId = _is.ColumnUuid(
      'areaId',
      this,
    );
    userGroupId = _is.ColumnUuid(
      'userGroupId',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogAreaUserGroupsUpdateTable updateTable;

  late final _is.ColumnUuid areaId;

  late final _is.ColumnUuid userGroupId;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    areaId,
    userGroupId,
    isActive,
  ];
}

class ElogAreaUserGroupsInclude extends _is.IncludeObject {
  ElogAreaUserGroupsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogAreaUserGroups.t;
}

class ElogAreaUserGroupsIncludeList extends _is.IncludeList {
  ElogAreaUserGroupsIncludeList._({
    _is.WhereExpressionBuilder<ElogAreaUserGroupsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogAreaUserGroups.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogAreaUserGroups.t;
}

class ElogAreaUserGroupsRepository {
  const ElogAreaUserGroupsRepository._();

  /// Returns a list of [ElogAreaUserGroups]s matching the given query parameters.
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
  Future<List<ElogAreaUserGroups>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreaUserGroupsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreaUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogAreaUserGroups>(
      where: where?.call(ElogAreaUserGroups.t),
      orderBy: orderBy?.call(ElogAreaUserGroups.t),
      orderByList: orderByList?.call(ElogAreaUserGroups.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogAreaUserGroups] matching the given query parameters.
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
  Future<ElogAreaUserGroups?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreaUserGroupsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogAreaUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogAreaUserGroups>(
      where: where?.call(ElogAreaUserGroups.t),
      orderBy: orderBy?.call(ElogAreaUserGroups.t),
      orderByList: orderByList?.call(ElogAreaUserGroups.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogAreaUserGroups] by its [id] or null if no such row exists.
  Future<ElogAreaUserGroups?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogAreaUserGroups>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogAreaUserGroups]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogAreaUserGroups]s will have their `id` fields set.
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
  Future<List<ElogAreaUserGroups>> insert(
    _is.DatabaseSession session,
    List<ElogAreaUserGroups> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogAreaUserGroups>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogAreaUserGroups] and returns the inserted row.
  ///
  /// The returned [ElogAreaUserGroups] will have its `id` field set.
  Future<ElogAreaUserGroups> insertRow(
    _is.DatabaseSession session,
    ElogAreaUserGroups row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogAreaUserGroups>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogAreaUserGroups]s in the list and returns the resulting rows.
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
  /// The returned [ElogAreaUserGroups]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreaUserGroups>> upsert(
    _is.DatabaseSession session,
    List<ElogAreaUserGroups> rows, {
    required _is.ColumnSelections<ElogAreaUserGroupsTable> conflictColumns,
    _is.ColumnSelections<ElogAreaUserGroupsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogAreaUserGroupsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogAreaUserGroups>(
      rows,
      conflictColumns: conflictColumns(ElogAreaUserGroups.t),
      updateColumns: updateColumns?.call(ElogAreaUserGroups.t),
      updateWhere: updateWhere?.call(ElogAreaUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogAreaUserGroups] and returns the resulting row.
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
  /// The returned [ElogAreaUserGroups] will have its `id` field set.
  Future<ElogAreaUserGroups?> upsertRow(
    _is.DatabaseSession session,
    ElogAreaUserGroups row, {
    required _is.ColumnSelections<ElogAreaUserGroupsTable> conflictColumns,
    _is.ColumnSelections<ElogAreaUserGroupsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogAreaUserGroupsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogAreaUserGroups>(
      row,
      conflictColumns: conflictColumns(ElogAreaUserGroups.t),
      updateColumns: updateColumns?.call(ElogAreaUserGroups.t),
      updateWhere: updateWhere?.call(ElogAreaUserGroups.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogAreaUserGroups]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreaUserGroups>> update(
    _is.DatabaseSession session,
    List<ElogAreaUserGroups> rows, {
    _is.ColumnSelections<ElogAreaUserGroupsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogAreaUserGroups>(
      rows,
      columns: columns?.call(ElogAreaUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogAreaUserGroups]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogAreaUserGroups> updateRow(
    _is.DatabaseSession session,
    ElogAreaUserGroups row, {
    _is.ColumnSelections<ElogAreaUserGroupsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogAreaUserGroups>(
      row,
      columns: columns?.call(ElogAreaUserGroups.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogAreaUserGroups] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogAreaUserGroups?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogAreaUserGroupsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogAreaUserGroups>(
      id,
      columnValues: columnValues(ElogAreaUserGroups.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogAreaUserGroups]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreaUserGroups>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogAreaUserGroupsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogAreaUserGroupsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreaUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogAreaUserGroups>(
      columnValues: columnValues(ElogAreaUserGroups.t.updateTable),
      where: where(ElogAreaUserGroups.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogAreaUserGroups.t),
      orderByList: orderByList?.call(ElogAreaUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogAreaUserGroups]s in the list and returns the deleted rows.
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
  Future<List<ElogAreaUserGroups>> delete(
    _is.DatabaseSession session,
    List<ElogAreaUserGroups> rows, {
    _is.OrderByBuilder<ElogAreaUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogAreaUserGroups>(
      rows,
      orderBy: orderBy?.call(ElogAreaUserGroups.t),
      orderByList: orderByList?.call(ElogAreaUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogAreaUserGroups].
  Future<ElogAreaUserGroups> deleteRow(
    _is.DatabaseSession session,
    ElogAreaUserGroups row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogAreaUserGroups>(
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
  Future<List<ElogAreaUserGroups>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogAreaUserGroupsTable> where,
    _is.OrderByBuilder<ElogAreaUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogAreaUserGroups>(
      where: where(ElogAreaUserGroups.t),
      orderBy: orderBy?.call(ElogAreaUserGroups.t),
      orderByList: orderByList?.call(ElogAreaUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreaUserGroupsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogAreaUserGroups>(
      where: where?.call(ElogAreaUserGroups.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogAreaUserGroups] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogAreaUserGroupsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogAreaUserGroups>(
      where: where(ElogAreaUserGroups.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
