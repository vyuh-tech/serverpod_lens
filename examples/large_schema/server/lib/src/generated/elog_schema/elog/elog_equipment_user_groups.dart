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

abstract class ElogEquipmentUserGroups
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogEquipmentUserGroups._({
    this.id,
    required this.equipmentId,
    required this.userGroupId,
    this.isActive,
  });

  factory ElogEquipmentUserGroups({
    _is.UuidValue? id,
    required _is.UuidValue equipmentId,
    required _is.UuidValue userGroupId,
    bool? isActive,
  }) = _ElogEquipmentUserGroupsImpl;

  factory ElogEquipmentUserGroups.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogEquipmentUserGroups(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      equipmentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['equipmentId'],
      ),
      userGroupId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['userGroupId'],
      ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogEquipmentUserGroupsTable();

  static const db = ElogEquipmentUserGroupsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue equipmentId;

  _is.UuidValue userGroupId;

  bool? isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogEquipmentUserGroups]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogEquipmentUserGroups copyWith({
    _is.UuidValue? id,
    _is.UuidValue? equipmentId,
    _is.UuidValue? userGroupId,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogEquipmentUserGroups',
      if (id != null) 'id': id?.toJson(),
      'equipmentId': equipmentId.toJson(),
      'userGroupId': userGroupId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogEquipmentUserGroups',
      if (id != null) 'id': id?.toJson(),
      'equipmentId': equipmentId.toJson(),
      'userGroupId': userGroupId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  static ElogEquipmentUserGroupsInclude include() {
    return ElogEquipmentUserGroupsInclude._();
  }

  static ElogEquipmentUserGroupsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogEquipmentUserGroupsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentUserGroupsTable>? orderByList,
    ElogEquipmentUserGroupsInclude? include,
  }) {
    return ElogEquipmentUserGroupsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEquipmentUserGroups.t),
      orderByList: orderByList?.call(ElogEquipmentUserGroups.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogEquipmentUserGroupsImpl extends ElogEquipmentUserGroups {
  _ElogEquipmentUserGroupsImpl({
    _is.UuidValue? id,
    required _is.UuidValue equipmentId,
    required _is.UuidValue userGroupId,
    bool? isActive,
  }) : super._(
         id: id,
         equipmentId: equipmentId,
         userGroupId: userGroupId,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogEquipmentUserGroups]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogEquipmentUserGroups copyWith({
    Object? id = _Undefined,
    _is.UuidValue? equipmentId,
    _is.UuidValue? userGroupId,
    Object? isActive = _Undefined,
  }) {
    return ElogEquipmentUserGroups(
      id: id is _is.UuidValue? ? id : this.id,
      equipmentId: equipmentId ?? this.equipmentId,
      userGroupId: userGroupId ?? this.userGroupId,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}

class ElogEquipmentUserGroupsUpdateTable
    extends _is.UpdateTable<ElogEquipmentUserGroupsTable> {
  ElogEquipmentUserGroupsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> equipmentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.equipmentId,
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

class ElogEquipmentUserGroupsTable extends _is.Table<_is.UuidValue?> {
  ElogEquipmentUserGroupsTable({super.tableRelation})
    : super(tableName: 'elog_equipment_user_groups') {
    updateTable = ElogEquipmentUserGroupsUpdateTable(this);
    equipmentId = _is.ColumnUuid(
      'equipmentId',
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

  late final ElogEquipmentUserGroupsUpdateTable updateTable;

  late final _is.ColumnUuid equipmentId;

  late final _is.ColumnUuid userGroupId;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    equipmentId,
    userGroupId,
    isActive,
  ];
}

class ElogEquipmentUserGroupsInclude extends _is.IncludeObject {
  ElogEquipmentUserGroupsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEquipmentUserGroups.t;
}

class ElogEquipmentUserGroupsIncludeList extends _is.IncludeList {
  ElogEquipmentUserGroupsIncludeList._({
    _is.WhereExpressionBuilder<ElogEquipmentUserGroupsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogEquipmentUserGroups.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEquipmentUserGroups.t;
}

class ElogEquipmentUserGroupsRepository {
  const ElogEquipmentUserGroupsRepository._();

  /// Returns a list of [ElogEquipmentUserGroups]s matching the given query parameters.
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
  Future<List<ElogEquipmentUserGroups>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentUserGroupsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogEquipmentUserGroups>(
      where: where?.call(ElogEquipmentUserGroups.t),
      orderBy: orderBy?.call(ElogEquipmentUserGroups.t),
      orderByList: orderByList?.call(ElogEquipmentUserGroups.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogEquipmentUserGroups] matching the given query parameters.
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
  Future<ElogEquipmentUserGroups?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentUserGroupsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogEquipmentUserGroups>(
      where: where?.call(ElogEquipmentUserGroups.t),
      orderBy: orderBy?.call(ElogEquipmentUserGroups.t),
      orderByList: orderByList?.call(ElogEquipmentUserGroups.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogEquipmentUserGroups] by its [id] or null if no such row exists.
  Future<ElogEquipmentUserGroups?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogEquipmentUserGroups>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogEquipmentUserGroups]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogEquipmentUserGroups]s will have their `id` fields set.
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
  Future<List<ElogEquipmentUserGroups>> insert(
    _is.DatabaseSession session,
    List<ElogEquipmentUserGroups> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogEquipmentUserGroups>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogEquipmentUserGroups] and returns the inserted row.
  ///
  /// The returned [ElogEquipmentUserGroups] will have its `id` field set.
  Future<ElogEquipmentUserGroups> insertRow(
    _is.DatabaseSession session,
    ElogEquipmentUserGroups row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogEquipmentUserGroups>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogEquipmentUserGroups]s in the list and returns the resulting rows.
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
  /// The returned [ElogEquipmentUserGroups]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipmentUserGroups>> upsert(
    _is.DatabaseSession session,
    List<ElogEquipmentUserGroups> rows, {
    required _is.ColumnSelections<ElogEquipmentUserGroupsTable> conflictColumns,
    _is.ColumnSelections<ElogEquipmentUserGroupsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEquipmentUserGroupsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogEquipmentUserGroups>(
      rows,
      conflictColumns: conflictColumns(ElogEquipmentUserGroups.t),
      updateColumns: updateColumns?.call(ElogEquipmentUserGroups.t),
      updateWhere: updateWhere?.call(ElogEquipmentUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogEquipmentUserGroups] and returns the resulting row.
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
  /// The returned [ElogEquipmentUserGroups] will have its `id` field set.
  Future<ElogEquipmentUserGroups?> upsertRow(
    _is.DatabaseSession session,
    ElogEquipmentUserGroups row, {
    required _is.ColumnSelections<ElogEquipmentUserGroupsTable> conflictColumns,
    _is.ColumnSelections<ElogEquipmentUserGroupsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEquipmentUserGroupsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogEquipmentUserGroups>(
      row,
      conflictColumns: conflictColumns(ElogEquipmentUserGroups.t),
      updateColumns: updateColumns?.call(ElogEquipmentUserGroups.t),
      updateWhere: updateWhere?.call(ElogEquipmentUserGroups.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEquipmentUserGroups]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipmentUserGroups>> update(
    _is.DatabaseSession session,
    List<ElogEquipmentUserGroups> rows, {
    _is.ColumnSelections<ElogEquipmentUserGroupsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogEquipmentUserGroups>(
      rows,
      columns: columns?.call(ElogEquipmentUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogEquipmentUserGroups]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogEquipmentUserGroups> updateRow(
    _is.DatabaseSession session,
    ElogEquipmentUserGroups row, {
    _is.ColumnSelections<ElogEquipmentUserGroupsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogEquipmentUserGroups>(
      row,
      columns: columns?.call(ElogEquipmentUserGroups.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogEquipmentUserGroups] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogEquipmentUserGroups?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogEquipmentUserGroupsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogEquipmentUserGroups>(
      id,
      columnValues: columnValues(ElogEquipmentUserGroups.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEquipmentUserGroups]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipmentUserGroups>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogEquipmentUserGroupsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogEquipmentUserGroupsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogEquipmentUserGroups>(
      columnValues: columnValues(ElogEquipmentUserGroups.t.updateTable),
      where: where(ElogEquipmentUserGroups.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEquipmentUserGroups.t),
      orderByList: orderByList?.call(ElogEquipmentUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogEquipmentUserGroups]s in the list and returns the deleted rows.
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
  Future<List<ElogEquipmentUserGroups>> delete(
    _is.DatabaseSession session,
    List<ElogEquipmentUserGroups> rows, {
    _is.OrderByBuilder<ElogEquipmentUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogEquipmentUserGroups>(
      rows,
      orderBy: orderBy?.call(ElogEquipmentUserGroups.t),
      orderByList: orderByList?.call(ElogEquipmentUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogEquipmentUserGroups].
  Future<ElogEquipmentUserGroups> deleteRow(
    _is.DatabaseSession session,
    ElogEquipmentUserGroups row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogEquipmentUserGroups>(
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
  Future<List<ElogEquipmentUserGroups>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEquipmentUserGroupsTable> where,
    _is.OrderByBuilder<ElogEquipmentUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogEquipmentUserGroups>(
      where: where(ElogEquipmentUserGroups.t),
      orderBy: orderBy?.call(ElogEquipmentUserGroups.t),
      orderByList: orderByList?.call(ElogEquipmentUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentUserGroupsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogEquipmentUserGroups>(
      where: where?.call(ElogEquipmentUserGroups.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogEquipmentUserGroups] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEquipmentUserGroupsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogEquipmentUserGroups>(
      where: where(ElogEquipmentUserGroups.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
