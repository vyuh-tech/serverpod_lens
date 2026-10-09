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

abstract class ElogUserGroups
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogUserGroups._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.groupType,
  });

  factory ElogUserGroups({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? groupType,
  }) = _ElogUserGroupsImpl;

  factory ElogUserGroups.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogUserGroups(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      groupType: jsonSerialization['groupType'] as String?,
    );
  }

  static final t = ElogUserGroupsTable();

  static const db = ElogUserGroupsRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String? groupType;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogUserGroups]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogUserGroups copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? groupType,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogUserGroups',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (groupType != null) 'groupType': groupType,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogUserGroups',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (groupType != null) 'groupType': groupType,
    };
  }

  static ElogUserGroupsInclude include() {
    return ElogUserGroupsInclude._();
  }

  static ElogUserGroupsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogUserGroupsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogUserGroupsTable>? orderByList,
    ElogUserGroupsInclude? include,
  }) {
    return ElogUserGroupsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogUserGroups.t),
      orderByList: orderByList?.call(ElogUserGroups.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogUserGroupsImpl extends ElogUserGroups {
  _ElogUserGroupsImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? groupType,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         groupType: groupType,
       );

  /// Returns a shallow copy of this [ElogUserGroups]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogUserGroups copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? groupType = _Undefined,
  }) {
    return ElogUserGroups(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      groupType: groupType is String? ? groupType : this.groupType,
    );
  }
}

class ElogUserGroupsUpdateTable extends _is.UpdateTable<ElogUserGroupsTable> {
  ElogUserGroupsUpdateTable(super.table);

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<String, String> groupType(String? value) => _is.ColumnValue(
    table.groupType,
    value,
  );
}

class ElogUserGroupsTable extends _is.Table<_is.UuidValue?> {
  ElogUserGroupsTable({super.tableRelation})
    : super(tableName: 'elog_user_groups') {
    updateTable = ElogUserGroupsUpdateTable(this);
    code = _is.ColumnString(
      'code',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    groupType = _is.ColumnString(
      'groupType',
      this,
    );
  }

  late final ElogUserGroupsUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString groupType;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    groupType,
  ];
}

class ElogUserGroupsInclude extends _is.IncludeObject {
  ElogUserGroupsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogUserGroups.t;
}

class ElogUserGroupsIncludeList extends _is.IncludeList {
  ElogUserGroupsIncludeList._({
    _is.WhereExpressionBuilder<ElogUserGroupsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogUserGroups.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogUserGroups.t;
}

class ElogUserGroupsRepository {
  const ElogUserGroupsRepository._();

  /// Returns a list of [ElogUserGroups]s matching the given query parameters.
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
  Future<List<ElogUserGroups>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogUserGroupsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogUserGroups>(
      where: where?.call(ElogUserGroups.t),
      orderBy: orderBy?.call(ElogUserGroups.t),
      orderByList: orderByList?.call(ElogUserGroups.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogUserGroups] matching the given query parameters.
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
  Future<ElogUserGroups?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogUserGroupsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogUserGroups>(
      where: where?.call(ElogUserGroups.t),
      orderBy: orderBy?.call(ElogUserGroups.t),
      orderByList: orderByList?.call(ElogUserGroups.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogUserGroups] by its [id] or null if no such row exists.
  Future<ElogUserGroups?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogUserGroups>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogUserGroups]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogUserGroups]s will have their `id` fields set.
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
  Future<List<ElogUserGroups>> insert(
    _is.DatabaseSession session,
    List<ElogUserGroups> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogUserGroups>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogUserGroups] and returns the inserted row.
  ///
  /// The returned [ElogUserGroups] will have its `id` field set.
  Future<ElogUserGroups> insertRow(
    _is.DatabaseSession session,
    ElogUserGroups row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogUserGroups>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogUserGroups]s in the list and returns the resulting rows.
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
  /// The returned [ElogUserGroups]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogUserGroups>> upsert(
    _is.DatabaseSession session,
    List<ElogUserGroups> rows, {
    required _is.ColumnSelections<ElogUserGroupsTable> conflictColumns,
    _is.ColumnSelections<ElogUserGroupsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogUserGroupsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogUserGroups>(
      rows,
      conflictColumns: conflictColumns(ElogUserGroups.t),
      updateColumns: updateColumns?.call(ElogUserGroups.t),
      updateWhere: updateWhere?.call(ElogUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogUserGroups] and returns the resulting row.
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
  /// The returned [ElogUserGroups] will have its `id` field set.
  Future<ElogUserGroups?> upsertRow(
    _is.DatabaseSession session,
    ElogUserGroups row, {
    required _is.ColumnSelections<ElogUserGroupsTable> conflictColumns,
    _is.ColumnSelections<ElogUserGroupsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogUserGroupsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogUserGroups>(
      row,
      conflictColumns: conflictColumns(ElogUserGroups.t),
      updateColumns: updateColumns?.call(ElogUserGroups.t),
      updateWhere: updateWhere?.call(ElogUserGroups.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogUserGroups]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogUserGroups>> update(
    _is.DatabaseSession session,
    List<ElogUserGroups> rows, {
    _is.ColumnSelections<ElogUserGroupsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogUserGroups>(
      rows,
      columns: columns?.call(ElogUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogUserGroups]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogUserGroups> updateRow(
    _is.DatabaseSession session,
    ElogUserGroups row, {
    _is.ColumnSelections<ElogUserGroupsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogUserGroups>(
      row,
      columns: columns?.call(ElogUserGroups.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogUserGroups] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogUserGroups?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogUserGroupsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogUserGroups>(
      id,
      columnValues: columnValues(ElogUserGroups.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogUserGroups]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogUserGroups>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogUserGroupsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogUserGroupsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogUserGroups>(
      columnValues: columnValues(ElogUserGroups.t.updateTable),
      where: where(ElogUserGroups.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogUserGroups.t),
      orderByList: orderByList?.call(ElogUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogUserGroups]s in the list and returns the deleted rows.
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
  Future<List<ElogUserGroups>> delete(
    _is.DatabaseSession session,
    List<ElogUserGroups> rows, {
    _is.OrderByBuilder<ElogUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogUserGroups>(
      rows,
      orderBy: orderBy?.call(ElogUserGroups.t),
      orderByList: orderByList?.call(ElogUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogUserGroups].
  Future<ElogUserGroups> deleteRow(
    _is.DatabaseSession session,
    ElogUserGroups row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogUserGroups>(
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
  Future<List<ElogUserGroups>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogUserGroupsTable> where,
    _is.OrderByBuilder<ElogUserGroupsTable>? orderBy,
    _is.OrderByListBuilder<ElogUserGroupsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogUserGroups>(
      where: where(ElogUserGroups.t),
      orderBy: orderBy?.call(ElogUserGroups.t),
      orderByList: orderByList?.call(ElogUserGroups.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogUserGroupsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogUserGroups>(
      where: where?.call(ElogUserGroups.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogUserGroups] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogUserGroupsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogUserGroups>(
      where: where(ElogUserGroups.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
