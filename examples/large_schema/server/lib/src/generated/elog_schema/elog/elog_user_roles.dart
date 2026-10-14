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

abstract class ElogUserRoles
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogUserRoles._({
    this.id,
    required this.userId,
    required this.roleId,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.isActive,
  });

  factory ElogUserRoles({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required _is.UuidValue roleId,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    bool? isActive,
  }) = _ElogUserRolesImpl;

  factory ElogUserRoles.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogUserRoles(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      roleId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['roleId']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['createdBy']),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['updatedBy']),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogUserRolesTable();

  static const db = ElogUserRolesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue userId;

  _is.UuidValue roleId;

  DateTime? createdAt;

  DateTime? updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  bool? isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogUserRoles]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogUserRoles copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _is.UuidValue? roleId,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogUserRoles',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'roleId': roleId.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogUserRoles',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'roleId': roleId.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  static ElogUserRolesInclude include() {
    return ElogUserRolesInclude._();
  }

  static ElogUserRolesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogUserRolesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogUserRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogUserRolesTable>? orderByList,
    ElogUserRolesInclude? include,
  }) {
    return ElogUserRolesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogUserRoles.t),
      orderByList: orderByList?.call(ElogUserRoles.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogUserRolesImpl extends ElogUserRoles {
  _ElogUserRolesImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required _is.UuidValue roleId,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    bool? isActive,
  }) : super._(
         id: id,
         userId: userId,
         roleId: roleId,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogUserRoles]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogUserRoles copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    _is.UuidValue? roleId,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return ElogUserRoles(
      id: id is _is.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      roleId: roleId ?? this.roleId,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}

class ElogUserRolesUpdateTable extends _is.UpdateTable<ElogUserRolesTable> {
  ElogUserRolesUpdateTable(super.table);

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

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime? value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> createdBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.createdBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> updatedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.updatedBy,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogUserRolesTable extends _is.Table<_is.UuidValue?> {
  ElogUserRolesTable({super.tableRelation})
    : super(tableName: 'elog_user_roles') {
    updateTable = ElogUserRolesUpdateTable(this);
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    roleId = _is.ColumnUuid(
      'roleId',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
    );
    createdBy = _is.ColumnUuid(
      'createdBy',
      this,
    );
    updatedBy = _is.ColumnUuid(
      'updatedBy',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogUserRolesUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnUuid roleId;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    roleId,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
    isActive,
  ];
}

class ElogUserRolesInclude extends _is.IncludeObject {
  ElogUserRolesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogUserRoles.t;
}

class ElogUserRolesIncludeList extends _is.IncludeList {
  ElogUserRolesIncludeList._({
    _is.WhereExpressionBuilder<ElogUserRolesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogUserRoles.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogUserRoles.t;
}

class ElogUserRolesRepository {
  const ElogUserRolesRepository._();

  /// Returns a list of [ElogUserRoles]s matching the given query parameters.
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
  Future<List<ElogUserRoles>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogUserRolesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogUserRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogUserRolesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogUserRoles>(
      where: where?.call(ElogUserRoles.t),
      orderBy: orderBy?.call(ElogUserRoles.t),
      orderByList: orderByList?.call(ElogUserRoles.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogUserRoles] matching the given query parameters.
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
  Future<ElogUserRoles?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogUserRolesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogUserRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogUserRolesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogUserRoles>(
      where: where?.call(ElogUserRoles.t),
      orderBy: orderBy?.call(ElogUserRoles.t),
      orderByList: orderByList?.call(ElogUserRoles.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogUserRoles] by its [id] or null if no such row exists.
  Future<ElogUserRoles?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogUserRoles>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogUserRoles]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogUserRoles]s will have their `id` fields set.
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
  Future<List<ElogUserRoles>> insert(
    _is.DatabaseSession session,
    List<ElogUserRoles> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogUserRoles>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogUserRoles] and returns the inserted row.
  ///
  /// The returned [ElogUserRoles] will have its `id` field set.
  Future<ElogUserRoles> insertRow(
    _is.DatabaseSession session,
    ElogUserRoles row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogUserRoles>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogUserRoles]s in the list and returns the resulting rows.
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
  /// The returned [ElogUserRoles]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogUserRoles>> upsert(
    _is.DatabaseSession session,
    List<ElogUserRoles> rows, {
    required _is.ColumnSelections<ElogUserRolesTable> conflictColumns,
    _is.ColumnSelections<ElogUserRolesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogUserRolesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogUserRoles>(
      rows,
      conflictColumns: conflictColumns(ElogUserRoles.t),
      updateColumns: updateColumns?.call(ElogUserRoles.t),
      updateWhere: updateWhere?.call(ElogUserRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogUserRoles] and returns the resulting row.
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
  /// The returned [ElogUserRoles] will have its `id` field set.
  Future<ElogUserRoles?> upsertRow(
    _is.DatabaseSession session,
    ElogUserRoles row, {
    required _is.ColumnSelections<ElogUserRolesTable> conflictColumns,
    _is.ColumnSelections<ElogUserRolesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogUserRolesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogUserRoles>(
      row,
      conflictColumns: conflictColumns(ElogUserRoles.t),
      updateColumns: updateColumns?.call(ElogUserRoles.t),
      updateWhere: updateWhere?.call(ElogUserRoles.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogUserRoles]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogUserRoles>> update(
    _is.DatabaseSession session,
    List<ElogUserRoles> rows, {
    _is.ColumnSelections<ElogUserRolesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogUserRoles>(
      rows,
      columns: columns?.call(ElogUserRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogUserRoles]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogUserRoles> updateRow(
    _is.DatabaseSession session,
    ElogUserRoles row, {
    _is.ColumnSelections<ElogUserRolesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogUserRoles>(
      row,
      columns: columns?.call(ElogUserRoles.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogUserRoles] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogUserRoles?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogUserRolesUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogUserRoles>(
      id,
      columnValues: columnValues(ElogUserRoles.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogUserRoles]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogUserRoles>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogUserRolesUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogUserRolesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogUserRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogUserRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogUserRoles>(
      columnValues: columnValues(ElogUserRoles.t.updateTable),
      where: where(ElogUserRoles.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogUserRoles.t),
      orderByList: orderByList?.call(ElogUserRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogUserRoles]s in the list and returns the deleted rows.
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
  Future<List<ElogUserRoles>> delete(
    _is.DatabaseSession session,
    List<ElogUserRoles> rows, {
    _is.OrderByBuilder<ElogUserRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogUserRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogUserRoles>(
      rows,
      orderBy: orderBy?.call(ElogUserRoles.t),
      orderByList: orderByList?.call(ElogUserRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogUserRoles].
  Future<ElogUserRoles> deleteRow(
    _is.DatabaseSession session,
    ElogUserRoles row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogUserRoles>(
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
  Future<List<ElogUserRoles>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogUserRolesTable> where,
    _is.OrderByBuilder<ElogUserRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogUserRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogUserRoles>(
      where: where(ElogUserRoles.t),
      orderBy: orderBy?.call(ElogUserRoles.t),
      orderByList: orderByList?.call(ElogUserRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogUserRolesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogUserRoles>(
      where: where?.call(ElogUserRoles.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogUserRoles] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogUserRolesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogUserRoles>(
      where: where(ElogUserRoles.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
