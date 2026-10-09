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

abstract class SsoRoleDashboards
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoRoleDashboards._({
    this.id,
    required this.roleId,
    required this.dashboardId,
    required this.isDefault,
    required this.displayOrder,
    required this.isActive,
  });

  factory SsoRoleDashboards({
    _is.UuidValue? id,
    required _is.UuidValue roleId,
    required _is.UuidValue dashboardId,
    required bool isDefault,
    required int displayOrder,
    required bool isActive,
  }) = _SsoRoleDashboardsImpl;

  factory SsoRoleDashboards.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoRoleDashboards(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      roleId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['roleId']),
      dashboardId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['dashboardId'],
      ),
      isDefault: _is.BoolJsonExtension.fromJson(jsonSerialization['isDefault']),
      displayOrder: jsonSerialization['displayOrder'] as int,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = SsoRoleDashboardsTable();

  static const db = SsoRoleDashboardsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue roleId;

  _is.UuidValue dashboardId;

  bool isDefault;

  int displayOrder;

  bool isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoRoleDashboards]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoRoleDashboards copyWith({
    _is.UuidValue? id,
    _is.UuidValue? roleId,
    _is.UuidValue? dashboardId,
    bool? isDefault,
    int? displayOrder,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoRoleDashboards',
      if (id != null) 'id': id?.toJson(),
      'roleId': roleId.toJson(),
      'dashboardId': dashboardId.toJson(),
      'isDefault': isDefault,
      'displayOrder': displayOrder,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoRoleDashboards',
      if (id != null) 'id': id?.toJson(),
      'roleId': roleId.toJson(),
      'dashboardId': dashboardId.toJson(),
      'isDefault': isDefault,
      'displayOrder': displayOrder,
      'isActive': isActive,
    };
  }

  static SsoRoleDashboardsInclude include() {
    return SsoRoleDashboardsInclude._();
  }

  static SsoRoleDashboardsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoRoleDashboardsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoRoleDashboardsTable>? orderBy,
    _is.OrderByListBuilder<SsoRoleDashboardsTable>? orderByList,
    SsoRoleDashboardsInclude? include,
  }) {
    return SsoRoleDashboardsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoRoleDashboards.t),
      orderByList: orderByList?.call(SsoRoleDashboards.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoRoleDashboardsImpl extends SsoRoleDashboards {
  _SsoRoleDashboardsImpl({
    _is.UuidValue? id,
    required _is.UuidValue roleId,
    required _is.UuidValue dashboardId,
    required bool isDefault,
    required int displayOrder,
    required bool isActive,
  }) : super._(
         id: id,
         roleId: roleId,
         dashboardId: dashboardId,
         isDefault: isDefault,
         displayOrder: displayOrder,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [SsoRoleDashboards]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoRoleDashboards copyWith({
    Object? id = _Undefined,
    _is.UuidValue? roleId,
    _is.UuidValue? dashboardId,
    bool? isDefault,
    int? displayOrder,
    bool? isActive,
  }) {
    return SsoRoleDashboards(
      id: id is _is.UuidValue? ? id : this.id,
      roleId: roleId ?? this.roleId,
      dashboardId: dashboardId ?? this.dashboardId,
      isDefault: isDefault ?? this.isDefault,
      displayOrder: displayOrder ?? this.displayOrder,
      isActive: isActive ?? this.isActive,
    );
  }
}

class SsoRoleDashboardsUpdateTable
    extends _is.UpdateTable<SsoRoleDashboardsTable> {
  SsoRoleDashboardsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> roleId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.roleId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> dashboardId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.dashboardId,
    value,
  );

  _is.ColumnValue<bool, bool> isDefault(bool value) => _is.ColumnValue(
    table.isDefault,
    value,
  );

  _is.ColumnValue<int, int> displayOrder(int value) => _is.ColumnValue(
    table.displayOrder,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class SsoRoleDashboardsTable extends _is.Table<_is.UuidValue?> {
  SsoRoleDashboardsTable({super.tableRelation})
    : super(tableName: 'sso_role_dashboards') {
    updateTable = SsoRoleDashboardsUpdateTable(this);
    roleId = _is.ColumnUuid(
      'roleId',
      this,
    );
    dashboardId = _is.ColumnUuid(
      'dashboardId',
      this,
    );
    isDefault = _is.ColumnBool(
      'isDefault',
      this,
    );
    displayOrder = _is.ColumnInt(
      'displayOrder',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final SsoRoleDashboardsUpdateTable updateTable;

  late final _is.ColumnUuid roleId;

  late final _is.ColumnUuid dashboardId;

  late final _is.ColumnBool isDefault;

  late final _is.ColumnInt displayOrder;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    roleId,
    dashboardId,
    isDefault,
    displayOrder,
    isActive,
  ];
}

class SsoRoleDashboardsInclude extends _is.IncludeObject {
  SsoRoleDashboardsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoRoleDashboards.t;
}

class SsoRoleDashboardsIncludeList extends _is.IncludeList {
  SsoRoleDashboardsIncludeList._({
    _is.WhereExpressionBuilder<SsoRoleDashboardsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoRoleDashboards.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoRoleDashboards.t;
}

class SsoRoleDashboardsRepository {
  const SsoRoleDashboardsRepository._();

  /// Returns a list of [SsoRoleDashboards]s matching the given query parameters.
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
  Future<List<SsoRoleDashboards>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoRoleDashboardsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoRoleDashboardsTable>? orderBy,
    _is.OrderByListBuilder<SsoRoleDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoRoleDashboards>(
      where: where?.call(SsoRoleDashboards.t),
      orderBy: orderBy?.call(SsoRoleDashboards.t),
      orderByList: orderByList?.call(SsoRoleDashboards.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoRoleDashboards] matching the given query parameters.
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
  Future<SsoRoleDashboards?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoRoleDashboardsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoRoleDashboardsTable>? orderBy,
    _is.OrderByListBuilder<SsoRoleDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoRoleDashboards>(
      where: where?.call(SsoRoleDashboards.t),
      orderBy: orderBy?.call(SsoRoleDashboards.t),
      orderByList: orderByList?.call(SsoRoleDashboards.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoRoleDashboards] by its [id] or null if no such row exists.
  Future<SsoRoleDashboards?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoRoleDashboards>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoRoleDashboards]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoRoleDashboards]s will have their `id` fields set.
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
  Future<List<SsoRoleDashboards>> insert(
    _is.DatabaseSession session,
    List<SsoRoleDashboards> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoRoleDashboards>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoRoleDashboards] and returns the inserted row.
  ///
  /// The returned [SsoRoleDashboards] will have its `id` field set.
  Future<SsoRoleDashboards> insertRow(
    _is.DatabaseSession session,
    SsoRoleDashboards row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoRoleDashboards>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoRoleDashboards]s in the list and returns the resulting rows.
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
  /// The returned [SsoRoleDashboards]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoRoleDashboards>> upsert(
    _is.DatabaseSession session,
    List<SsoRoleDashboards> rows, {
    required _is.ColumnSelections<SsoRoleDashboardsTable> conflictColumns,
    _is.ColumnSelections<SsoRoleDashboardsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoRoleDashboardsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoRoleDashboards>(
      rows,
      conflictColumns: conflictColumns(SsoRoleDashboards.t),
      updateColumns: updateColumns?.call(SsoRoleDashboards.t),
      updateWhere: updateWhere?.call(SsoRoleDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoRoleDashboards] and returns the resulting row.
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
  /// The returned [SsoRoleDashboards] will have its `id` field set.
  Future<SsoRoleDashboards?> upsertRow(
    _is.DatabaseSession session,
    SsoRoleDashboards row, {
    required _is.ColumnSelections<SsoRoleDashboardsTable> conflictColumns,
    _is.ColumnSelections<SsoRoleDashboardsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoRoleDashboardsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoRoleDashboards>(
      row,
      conflictColumns: conflictColumns(SsoRoleDashboards.t),
      updateColumns: updateColumns?.call(SsoRoleDashboards.t),
      updateWhere: updateWhere?.call(SsoRoleDashboards.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoRoleDashboards]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoRoleDashboards>> update(
    _is.DatabaseSession session,
    List<SsoRoleDashboards> rows, {
    _is.ColumnSelections<SsoRoleDashboardsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoRoleDashboards>(
      rows,
      columns: columns?.call(SsoRoleDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoRoleDashboards]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoRoleDashboards> updateRow(
    _is.DatabaseSession session,
    SsoRoleDashboards row, {
    _is.ColumnSelections<SsoRoleDashboardsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoRoleDashboards>(
      row,
      columns: columns?.call(SsoRoleDashboards.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoRoleDashboards] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoRoleDashboards?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoRoleDashboardsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoRoleDashboards>(
      id,
      columnValues: columnValues(SsoRoleDashboards.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoRoleDashboards]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoRoleDashboards>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoRoleDashboardsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoRoleDashboardsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoRoleDashboardsTable>? orderBy,
    _is.OrderByListBuilder<SsoRoleDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoRoleDashboards>(
      columnValues: columnValues(SsoRoleDashboards.t.updateTable),
      where: where(SsoRoleDashboards.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoRoleDashboards.t),
      orderByList: orderByList?.call(SsoRoleDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoRoleDashboards]s in the list and returns the deleted rows.
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
  Future<List<SsoRoleDashboards>> delete(
    _is.DatabaseSession session,
    List<SsoRoleDashboards> rows, {
    _is.OrderByBuilder<SsoRoleDashboardsTable>? orderBy,
    _is.OrderByListBuilder<SsoRoleDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoRoleDashboards>(
      rows,
      orderBy: orderBy?.call(SsoRoleDashboards.t),
      orderByList: orderByList?.call(SsoRoleDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoRoleDashboards].
  Future<SsoRoleDashboards> deleteRow(
    _is.DatabaseSession session,
    SsoRoleDashboards row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoRoleDashboards>(
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
  Future<List<SsoRoleDashboards>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoRoleDashboardsTable> where,
    _is.OrderByBuilder<SsoRoleDashboardsTable>? orderBy,
    _is.OrderByListBuilder<SsoRoleDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoRoleDashboards>(
      where: where(SsoRoleDashboards.t),
      orderBy: orderBy?.call(SsoRoleDashboards.t),
      orderByList: orderByList?.call(SsoRoleDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoRoleDashboardsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoRoleDashboards>(
      where: where?.call(SsoRoleDashboards.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoRoleDashboards] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoRoleDashboardsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoRoleDashboards>(
      where: where(SsoRoleDashboards.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
