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

abstract class ElogRolePermissions
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogRolePermissions._({
    this.id,
    required this.roleId,
    required this.entity,
    required this.action,
    this.grantedAt,
    this.grantedBy,
  });

  factory ElogRolePermissions({
    _is.UuidValue? id,
    required _is.UuidValue roleId,
    required String entity,
    required String action,
    DateTime? grantedAt,
    _is.UuidValue? grantedBy,
  }) = _ElogRolePermissionsImpl;

  factory ElogRolePermissions.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogRolePermissions(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      roleId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['roleId']),
      entity: jsonSerialization['entity'] as String,
      action: jsonSerialization['action'] as String,
      grantedAt: jsonSerialization['grantedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['grantedAt']),
      grantedBy: jsonSerialization['grantedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['grantedBy']),
    );
  }

  static final t = ElogRolePermissionsTable();

  static const db = ElogRolePermissionsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue roleId;

  String entity;

  String action;

  DateTime? grantedAt;

  _is.UuidValue? grantedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogRolePermissions]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogRolePermissions copyWith({
    _is.UuidValue? id,
    _is.UuidValue? roleId,
    String? entity,
    String? action,
    DateTime? grantedAt,
    _is.UuidValue? grantedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogRolePermissions',
      if (id != null) 'id': id?.toJson(),
      'roleId': roleId.toJson(),
      'entity': entity,
      'action': action,
      if (grantedAt != null) 'grantedAt': grantedAt?.toJson(),
      if (grantedBy != null) 'grantedBy': grantedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogRolePermissions',
      if (id != null) 'id': id?.toJson(),
      'roleId': roleId.toJson(),
      'entity': entity,
      'action': action,
      if (grantedAt != null) 'grantedAt': grantedAt?.toJson(),
      if (grantedBy != null) 'grantedBy': grantedBy?.toJson(),
    };
  }

  static ElogRolePermissionsInclude include() {
    return ElogRolePermissionsInclude._();
  }

  static ElogRolePermissionsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogRolePermissionsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogRolePermissionsTable>? orderBy,
    _is.OrderByListBuilder<ElogRolePermissionsTable>? orderByList,
    ElogRolePermissionsInclude? include,
  }) {
    return ElogRolePermissionsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogRolePermissions.t),
      orderByList: orderByList?.call(ElogRolePermissions.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogRolePermissionsImpl extends ElogRolePermissions {
  _ElogRolePermissionsImpl({
    _is.UuidValue? id,
    required _is.UuidValue roleId,
    required String entity,
    required String action,
    DateTime? grantedAt,
    _is.UuidValue? grantedBy,
  }) : super._(
         id: id,
         roleId: roleId,
         entity: entity,
         action: action,
         grantedAt: grantedAt,
         grantedBy: grantedBy,
       );

  /// Returns a shallow copy of this [ElogRolePermissions]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogRolePermissions copyWith({
    Object? id = _Undefined,
    _is.UuidValue? roleId,
    String? entity,
    String? action,
    Object? grantedAt = _Undefined,
    Object? grantedBy = _Undefined,
  }) {
    return ElogRolePermissions(
      id: id is _is.UuidValue? ? id : this.id,
      roleId: roleId ?? this.roleId,
      entity: entity ?? this.entity,
      action: action ?? this.action,
      grantedAt: grantedAt is DateTime? ? grantedAt : this.grantedAt,
      grantedBy: grantedBy is _is.UuidValue? ? grantedBy : this.grantedBy,
    );
  }
}

class ElogRolePermissionsUpdateTable
    extends _is.UpdateTable<ElogRolePermissionsTable> {
  ElogRolePermissionsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> roleId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.roleId,
        value,
      );

  _is.ColumnValue<String, String> entity(String value) => _is.ColumnValue(
    table.entity,
    value,
  );

  _is.ColumnValue<String, String> action(String value) => _is.ColumnValue(
    table.action,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> grantedAt(DateTime? value) =>
      _is.ColumnValue(
        table.grantedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> grantedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.grantedBy,
    value,
  );
}

class ElogRolePermissionsTable extends _is.Table<_is.UuidValue?> {
  ElogRolePermissionsTable({super.tableRelation})
    : super(tableName: 'elog_role_permissions') {
    updateTable = ElogRolePermissionsUpdateTable(this);
    roleId = _is.ColumnUuid(
      'roleId',
      this,
    );
    entity = _is.ColumnString(
      'entity',
      this,
    );
    action = _is.ColumnString(
      'action',
      this,
    );
    grantedAt = _is.ColumnDateTime(
      'grantedAt',
      this,
    );
    grantedBy = _is.ColumnUuid(
      'grantedBy',
      this,
    );
  }

  late final ElogRolePermissionsUpdateTable updateTable;

  late final _is.ColumnUuid roleId;

  late final _is.ColumnString entity;

  late final _is.ColumnString action;

  late final _is.ColumnDateTime grantedAt;

  late final _is.ColumnUuid grantedBy;

  @override
  List<_is.Column> get columns => [
    id,
    roleId,
    entity,
    action,
    grantedAt,
    grantedBy,
  ];
}

class ElogRolePermissionsInclude extends _is.IncludeObject {
  ElogRolePermissionsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogRolePermissions.t;
}

class ElogRolePermissionsIncludeList extends _is.IncludeList {
  ElogRolePermissionsIncludeList._({
    _is.WhereExpressionBuilder<ElogRolePermissionsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogRolePermissions.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogRolePermissions.t;
}

class ElogRolePermissionsRepository {
  const ElogRolePermissionsRepository._();

  /// Returns a list of [ElogRolePermissions]s matching the given query parameters.
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
  Future<List<ElogRolePermissions>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogRolePermissionsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogRolePermissionsTable>? orderBy,
    _is.OrderByListBuilder<ElogRolePermissionsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogRolePermissions>(
      where: where?.call(ElogRolePermissions.t),
      orderBy: orderBy?.call(ElogRolePermissions.t),
      orderByList: orderByList?.call(ElogRolePermissions.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogRolePermissions] matching the given query parameters.
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
  Future<ElogRolePermissions?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogRolePermissionsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogRolePermissionsTable>? orderBy,
    _is.OrderByListBuilder<ElogRolePermissionsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogRolePermissions>(
      where: where?.call(ElogRolePermissions.t),
      orderBy: orderBy?.call(ElogRolePermissions.t),
      orderByList: orderByList?.call(ElogRolePermissions.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogRolePermissions] by its [id] or null if no such row exists.
  Future<ElogRolePermissions?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogRolePermissions>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogRolePermissions]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogRolePermissions]s will have their `id` fields set.
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
  Future<List<ElogRolePermissions>> insert(
    _is.DatabaseSession session,
    List<ElogRolePermissions> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogRolePermissions>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogRolePermissions] and returns the inserted row.
  ///
  /// The returned [ElogRolePermissions] will have its `id` field set.
  Future<ElogRolePermissions> insertRow(
    _is.DatabaseSession session,
    ElogRolePermissions row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogRolePermissions>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogRolePermissions]s in the list and returns the resulting rows.
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
  /// The returned [ElogRolePermissions]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogRolePermissions>> upsert(
    _is.DatabaseSession session,
    List<ElogRolePermissions> rows, {
    required _is.ColumnSelections<ElogRolePermissionsTable> conflictColumns,
    _is.ColumnSelections<ElogRolePermissionsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogRolePermissionsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogRolePermissions>(
      rows,
      conflictColumns: conflictColumns(ElogRolePermissions.t),
      updateColumns: updateColumns?.call(ElogRolePermissions.t),
      updateWhere: updateWhere?.call(ElogRolePermissions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogRolePermissions] and returns the resulting row.
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
  /// The returned [ElogRolePermissions] will have its `id` field set.
  Future<ElogRolePermissions?> upsertRow(
    _is.DatabaseSession session,
    ElogRolePermissions row, {
    required _is.ColumnSelections<ElogRolePermissionsTable> conflictColumns,
    _is.ColumnSelections<ElogRolePermissionsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogRolePermissionsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogRolePermissions>(
      row,
      conflictColumns: conflictColumns(ElogRolePermissions.t),
      updateColumns: updateColumns?.call(ElogRolePermissions.t),
      updateWhere: updateWhere?.call(ElogRolePermissions.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogRolePermissions]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogRolePermissions>> update(
    _is.DatabaseSession session,
    List<ElogRolePermissions> rows, {
    _is.ColumnSelections<ElogRolePermissionsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogRolePermissions>(
      rows,
      columns: columns?.call(ElogRolePermissions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogRolePermissions]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogRolePermissions> updateRow(
    _is.DatabaseSession session,
    ElogRolePermissions row, {
    _is.ColumnSelections<ElogRolePermissionsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogRolePermissions>(
      row,
      columns: columns?.call(ElogRolePermissions.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogRolePermissions] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogRolePermissions?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogRolePermissionsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogRolePermissions>(
      id,
      columnValues: columnValues(ElogRolePermissions.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogRolePermissions]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogRolePermissions>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogRolePermissionsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogRolePermissionsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogRolePermissionsTable>? orderBy,
    _is.OrderByListBuilder<ElogRolePermissionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogRolePermissions>(
      columnValues: columnValues(ElogRolePermissions.t.updateTable),
      where: where(ElogRolePermissions.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogRolePermissions.t),
      orderByList: orderByList?.call(ElogRolePermissions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogRolePermissions]s in the list and returns the deleted rows.
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
  Future<List<ElogRolePermissions>> delete(
    _is.DatabaseSession session,
    List<ElogRolePermissions> rows, {
    _is.OrderByBuilder<ElogRolePermissionsTable>? orderBy,
    _is.OrderByListBuilder<ElogRolePermissionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogRolePermissions>(
      rows,
      orderBy: orderBy?.call(ElogRolePermissions.t),
      orderByList: orderByList?.call(ElogRolePermissions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogRolePermissions].
  Future<ElogRolePermissions> deleteRow(
    _is.DatabaseSession session,
    ElogRolePermissions row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogRolePermissions>(
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
  Future<List<ElogRolePermissions>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogRolePermissionsTable> where,
    _is.OrderByBuilder<ElogRolePermissionsTable>? orderBy,
    _is.OrderByListBuilder<ElogRolePermissionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogRolePermissions>(
      where: where(ElogRolePermissions.t),
      orderBy: orderBy?.call(ElogRolePermissions.t),
      orderByList: orderByList?.call(ElogRolePermissions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogRolePermissionsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogRolePermissions>(
      where: where?.call(ElogRolePermissions.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogRolePermissions] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogRolePermissionsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogRolePermissions>(
      where: where(ElogRolePermissions.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
