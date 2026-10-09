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

abstract class SsoRolePermissions
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoRolePermissions._({
    this.id,
    required this.roleId,
    required this.entity,
    required this.action,
    this.grantedAt,
    this.grantedBy,
  });

  factory SsoRolePermissions({
    _is.UuidValue? id,
    required _is.UuidValue roleId,
    required String entity,
    required String action,
    DateTime? grantedAt,
    _is.UuidValue? grantedBy,
  }) = _SsoRolePermissionsImpl;

  factory SsoRolePermissions.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoRolePermissions(
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

  static final t = SsoRolePermissionsTable();

  static const db = SsoRolePermissionsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue roleId;

  String entity;

  String action;

  DateTime? grantedAt;

  _is.UuidValue? grantedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoRolePermissions]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoRolePermissions copyWith({
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
      '__className__': 'SsoRolePermissions',
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
      '__className__': 'SsoRolePermissions',
      if (id != null) 'id': id?.toJson(),
      'roleId': roleId.toJson(),
      'entity': entity,
      'action': action,
      if (grantedAt != null) 'grantedAt': grantedAt?.toJson(),
      if (grantedBy != null) 'grantedBy': grantedBy?.toJson(),
    };
  }

  static SsoRolePermissionsInclude include() {
    return SsoRolePermissionsInclude._();
  }

  static SsoRolePermissionsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoRolePermissionsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoRolePermissionsTable>? orderBy,
    _is.OrderByListBuilder<SsoRolePermissionsTable>? orderByList,
    SsoRolePermissionsInclude? include,
  }) {
    return SsoRolePermissionsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoRolePermissions.t),
      orderByList: orderByList?.call(SsoRolePermissions.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoRolePermissionsImpl extends SsoRolePermissions {
  _SsoRolePermissionsImpl({
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

  /// Returns a shallow copy of this [SsoRolePermissions]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoRolePermissions copyWith({
    Object? id = _Undefined,
    _is.UuidValue? roleId,
    String? entity,
    String? action,
    Object? grantedAt = _Undefined,
    Object? grantedBy = _Undefined,
  }) {
    return SsoRolePermissions(
      id: id is _is.UuidValue? ? id : this.id,
      roleId: roleId ?? this.roleId,
      entity: entity ?? this.entity,
      action: action ?? this.action,
      grantedAt: grantedAt is DateTime? ? grantedAt : this.grantedAt,
      grantedBy: grantedBy is _is.UuidValue? ? grantedBy : this.grantedBy,
    );
  }
}

class SsoRolePermissionsUpdateTable
    extends _is.UpdateTable<SsoRolePermissionsTable> {
  SsoRolePermissionsUpdateTable(super.table);

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

class SsoRolePermissionsTable extends _is.Table<_is.UuidValue?> {
  SsoRolePermissionsTable({super.tableRelation})
    : super(tableName: 'sso_role_permissions') {
    updateTable = SsoRolePermissionsUpdateTable(this);
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

  late final SsoRolePermissionsUpdateTable updateTable;

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

class SsoRolePermissionsInclude extends _is.IncludeObject {
  SsoRolePermissionsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoRolePermissions.t;
}

class SsoRolePermissionsIncludeList extends _is.IncludeList {
  SsoRolePermissionsIncludeList._({
    _is.WhereExpressionBuilder<SsoRolePermissionsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoRolePermissions.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoRolePermissions.t;
}

class SsoRolePermissionsRepository {
  const SsoRolePermissionsRepository._();

  /// Returns a list of [SsoRolePermissions]s matching the given query parameters.
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
  Future<List<SsoRolePermissions>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoRolePermissionsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoRolePermissionsTable>? orderBy,
    _is.OrderByListBuilder<SsoRolePermissionsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoRolePermissions>(
      where: where?.call(SsoRolePermissions.t),
      orderBy: orderBy?.call(SsoRolePermissions.t),
      orderByList: orderByList?.call(SsoRolePermissions.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoRolePermissions] matching the given query parameters.
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
  Future<SsoRolePermissions?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoRolePermissionsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoRolePermissionsTable>? orderBy,
    _is.OrderByListBuilder<SsoRolePermissionsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoRolePermissions>(
      where: where?.call(SsoRolePermissions.t),
      orderBy: orderBy?.call(SsoRolePermissions.t),
      orderByList: orderByList?.call(SsoRolePermissions.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoRolePermissions] by its [id] or null if no such row exists.
  Future<SsoRolePermissions?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoRolePermissions>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoRolePermissions]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoRolePermissions]s will have their `id` fields set.
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
  Future<List<SsoRolePermissions>> insert(
    _is.DatabaseSession session,
    List<SsoRolePermissions> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoRolePermissions>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoRolePermissions] and returns the inserted row.
  ///
  /// The returned [SsoRolePermissions] will have its `id` field set.
  Future<SsoRolePermissions> insertRow(
    _is.DatabaseSession session,
    SsoRolePermissions row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoRolePermissions>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoRolePermissions]s in the list and returns the resulting rows.
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
  /// The returned [SsoRolePermissions]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoRolePermissions>> upsert(
    _is.DatabaseSession session,
    List<SsoRolePermissions> rows, {
    required _is.ColumnSelections<SsoRolePermissionsTable> conflictColumns,
    _is.ColumnSelections<SsoRolePermissionsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoRolePermissionsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoRolePermissions>(
      rows,
      conflictColumns: conflictColumns(SsoRolePermissions.t),
      updateColumns: updateColumns?.call(SsoRolePermissions.t),
      updateWhere: updateWhere?.call(SsoRolePermissions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoRolePermissions] and returns the resulting row.
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
  /// The returned [SsoRolePermissions] will have its `id` field set.
  Future<SsoRolePermissions?> upsertRow(
    _is.DatabaseSession session,
    SsoRolePermissions row, {
    required _is.ColumnSelections<SsoRolePermissionsTable> conflictColumns,
    _is.ColumnSelections<SsoRolePermissionsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoRolePermissionsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoRolePermissions>(
      row,
      conflictColumns: conflictColumns(SsoRolePermissions.t),
      updateColumns: updateColumns?.call(SsoRolePermissions.t),
      updateWhere: updateWhere?.call(SsoRolePermissions.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoRolePermissions]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoRolePermissions>> update(
    _is.DatabaseSession session,
    List<SsoRolePermissions> rows, {
    _is.ColumnSelections<SsoRolePermissionsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoRolePermissions>(
      rows,
      columns: columns?.call(SsoRolePermissions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoRolePermissions]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoRolePermissions> updateRow(
    _is.DatabaseSession session,
    SsoRolePermissions row, {
    _is.ColumnSelections<SsoRolePermissionsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoRolePermissions>(
      row,
      columns: columns?.call(SsoRolePermissions.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoRolePermissions] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoRolePermissions?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoRolePermissionsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoRolePermissions>(
      id,
      columnValues: columnValues(SsoRolePermissions.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoRolePermissions]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoRolePermissions>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoRolePermissionsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoRolePermissionsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoRolePermissionsTable>? orderBy,
    _is.OrderByListBuilder<SsoRolePermissionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoRolePermissions>(
      columnValues: columnValues(SsoRolePermissions.t.updateTable),
      where: where(SsoRolePermissions.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoRolePermissions.t),
      orderByList: orderByList?.call(SsoRolePermissions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoRolePermissions]s in the list and returns the deleted rows.
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
  Future<List<SsoRolePermissions>> delete(
    _is.DatabaseSession session,
    List<SsoRolePermissions> rows, {
    _is.OrderByBuilder<SsoRolePermissionsTable>? orderBy,
    _is.OrderByListBuilder<SsoRolePermissionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoRolePermissions>(
      rows,
      orderBy: orderBy?.call(SsoRolePermissions.t),
      orderByList: orderByList?.call(SsoRolePermissions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoRolePermissions].
  Future<SsoRolePermissions> deleteRow(
    _is.DatabaseSession session,
    SsoRolePermissions row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoRolePermissions>(
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
  Future<List<SsoRolePermissions>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoRolePermissionsTable> where,
    _is.OrderByBuilder<SsoRolePermissionsTable>? orderBy,
    _is.OrderByListBuilder<SsoRolePermissionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoRolePermissions>(
      where: where(SsoRolePermissions.t),
      orderBy: orderBy?.call(SsoRolePermissions.t),
      orderByList: orderByList?.call(SsoRolePermissions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoRolePermissionsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoRolePermissions>(
      where: where?.call(SsoRolePermissions.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoRolePermissions] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoRolePermissionsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoRolePermissions>(
      where: where(SsoRolePermissions.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
