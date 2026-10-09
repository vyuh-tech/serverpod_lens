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

abstract class ElogRoleDashboards
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogRoleDashboards._({
    this.id,
    required this.roleId,
    required this.dashboardId,
    this.isDefault,
    this.isActive,
    this.displayOrder,
    this.assignedAt,
    this.assignedBy,
  });

  factory ElogRoleDashboards({
    _is.UuidValue? id,
    required _is.UuidValue roleId,
    required _is.UuidValue dashboardId,
    bool? isDefault,
    bool? isActive,
    int? displayOrder,
    DateTime? assignedAt,
    _is.UuidValue? assignedBy,
  }) = _ElogRoleDashboardsImpl;

  factory ElogRoleDashboards.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogRoleDashboards(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      roleId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['roleId']),
      dashboardId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['dashboardId'],
      ),
      isDefault: jsonSerialization['isDefault'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isDefault']),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      displayOrder: jsonSerialization['displayOrder'] as int?,
      assignedAt: jsonSerialization['assignedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['assignedAt']),
      assignedBy: jsonSerialization['assignedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['assignedBy'],
            ),
    );
  }

  static final t = ElogRoleDashboardsTable();

  static const db = ElogRoleDashboardsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue roleId;

  _is.UuidValue dashboardId;

  bool? isDefault;

  bool? isActive;

  int? displayOrder;

  DateTime? assignedAt;

  _is.UuidValue? assignedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogRoleDashboards]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogRoleDashboards copyWith({
    _is.UuidValue? id,
    _is.UuidValue? roleId,
    _is.UuidValue? dashboardId,
    bool? isDefault,
    bool? isActive,
    int? displayOrder,
    DateTime? assignedAt,
    _is.UuidValue? assignedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogRoleDashboards',
      if (id != null) 'id': id?.toJson(),
      'roleId': roleId.toJson(),
      'dashboardId': dashboardId.toJson(),
      if (isDefault != null) 'isDefault': isDefault,
      if (isActive != null) 'isActive': isActive,
      if (displayOrder != null) 'displayOrder': displayOrder,
      if (assignedAt != null) 'assignedAt': assignedAt?.toJson(),
      if (assignedBy != null) 'assignedBy': assignedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogRoleDashboards',
      if (id != null) 'id': id?.toJson(),
      'roleId': roleId.toJson(),
      'dashboardId': dashboardId.toJson(),
      if (isDefault != null) 'isDefault': isDefault,
      if (isActive != null) 'isActive': isActive,
      if (displayOrder != null) 'displayOrder': displayOrder,
      if (assignedAt != null) 'assignedAt': assignedAt?.toJson(),
      if (assignedBy != null) 'assignedBy': assignedBy?.toJson(),
    };
  }

  static ElogRoleDashboardsInclude include() {
    return ElogRoleDashboardsInclude._();
  }

  static ElogRoleDashboardsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogRoleDashboardsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogRoleDashboardsTable>? orderBy,
    _is.OrderByListBuilder<ElogRoleDashboardsTable>? orderByList,
    ElogRoleDashboardsInclude? include,
  }) {
    return ElogRoleDashboardsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogRoleDashboards.t),
      orderByList: orderByList?.call(ElogRoleDashboards.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogRoleDashboardsImpl extends ElogRoleDashboards {
  _ElogRoleDashboardsImpl({
    _is.UuidValue? id,
    required _is.UuidValue roleId,
    required _is.UuidValue dashboardId,
    bool? isDefault,
    bool? isActive,
    int? displayOrder,
    DateTime? assignedAt,
    _is.UuidValue? assignedBy,
  }) : super._(
         id: id,
         roleId: roleId,
         dashboardId: dashboardId,
         isDefault: isDefault,
         isActive: isActive,
         displayOrder: displayOrder,
         assignedAt: assignedAt,
         assignedBy: assignedBy,
       );

  /// Returns a shallow copy of this [ElogRoleDashboards]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogRoleDashboards copyWith({
    Object? id = _Undefined,
    _is.UuidValue? roleId,
    _is.UuidValue? dashboardId,
    Object? isDefault = _Undefined,
    Object? isActive = _Undefined,
    Object? displayOrder = _Undefined,
    Object? assignedAt = _Undefined,
    Object? assignedBy = _Undefined,
  }) {
    return ElogRoleDashboards(
      id: id is _is.UuidValue? ? id : this.id,
      roleId: roleId ?? this.roleId,
      dashboardId: dashboardId ?? this.dashboardId,
      isDefault: isDefault is bool? ? isDefault : this.isDefault,
      isActive: isActive is bool? ? isActive : this.isActive,
      displayOrder: displayOrder is int? ? displayOrder : this.displayOrder,
      assignedAt: assignedAt is DateTime? ? assignedAt : this.assignedAt,
      assignedBy: assignedBy is _is.UuidValue? ? assignedBy : this.assignedBy,
    );
  }
}

class ElogRoleDashboardsUpdateTable
    extends _is.UpdateTable<ElogRoleDashboardsTable> {
  ElogRoleDashboardsUpdateTable(super.table);

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

  _is.ColumnValue<bool, bool> isDefault(bool? value) => _is.ColumnValue(
    table.isDefault,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<int, int> displayOrder(int? value) => _is.ColumnValue(
    table.displayOrder,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> assignedAt(DateTime? value) =>
      _is.ColumnValue(
        table.assignedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> assignedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.assignedBy,
    value,
  );
}

class ElogRoleDashboardsTable extends _is.Table<_is.UuidValue?> {
  ElogRoleDashboardsTable({super.tableRelation})
    : super(tableName: 'elog_role_dashboards') {
    updateTable = ElogRoleDashboardsUpdateTable(this);
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
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
    displayOrder = _is.ColumnInt(
      'displayOrder',
      this,
    );
    assignedAt = _is.ColumnDateTime(
      'assignedAt',
      this,
    );
    assignedBy = _is.ColumnUuid(
      'assignedBy',
      this,
    );
  }

  late final ElogRoleDashboardsUpdateTable updateTable;

  late final _is.ColumnUuid roleId;

  late final _is.ColumnUuid dashboardId;

  late final _is.ColumnBool isDefault;

  late final _is.ColumnBool isActive;

  late final _is.ColumnInt displayOrder;

  late final _is.ColumnDateTime assignedAt;

  late final _is.ColumnUuid assignedBy;

  @override
  List<_is.Column> get columns => [
    id,
    roleId,
    dashboardId,
    isDefault,
    isActive,
    displayOrder,
    assignedAt,
    assignedBy,
  ];
}

class ElogRoleDashboardsInclude extends _is.IncludeObject {
  ElogRoleDashboardsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogRoleDashboards.t;
}

class ElogRoleDashboardsIncludeList extends _is.IncludeList {
  ElogRoleDashboardsIncludeList._({
    _is.WhereExpressionBuilder<ElogRoleDashboardsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogRoleDashboards.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogRoleDashboards.t;
}

class ElogRoleDashboardsRepository {
  const ElogRoleDashboardsRepository._();

  /// Returns a list of [ElogRoleDashboards]s matching the given query parameters.
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
  Future<List<ElogRoleDashboards>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogRoleDashboardsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogRoleDashboardsTable>? orderBy,
    _is.OrderByListBuilder<ElogRoleDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogRoleDashboards>(
      where: where?.call(ElogRoleDashboards.t),
      orderBy: orderBy?.call(ElogRoleDashboards.t),
      orderByList: orderByList?.call(ElogRoleDashboards.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogRoleDashboards] matching the given query parameters.
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
  Future<ElogRoleDashboards?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogRoleDashboardsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogRoleDashboardsTable>? orderBy,
    _is.OrderByListBuilder<ElogRoleDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogRoleDashboards>(
      where: where?.call(ElogRoleDashboards.t),
      orderBy: orderBy?.call(ElogRoleDashboards.t),
      orderByList: orderByList?.call(ElogRoleDashboards.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogRoleDashboards] by its [id] or null if no such row exists.
  Future<ElogRoleDashboards?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogRoleDashboards>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogRoleDashboards]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogRoleDashboards]s will have their `id` fields set.
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
  Future<List<ElogRoleDashboards>> insert(
    _is.DatabaseSession session,
    List<ElogRoleDashboards> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogRoleDashboards>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogRoleDashboards] and returns the inserted row.
  ///
  /// The returned [ElogRoleDashboards] will have its `id` field set.
  Future<ElogRoleDashboards> insertRow(
    _is.DatabaseSession session,
    ElogRoleDashboards row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogRoleDashboards>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogRoleDashboards]s in the list and returns the resulting rows.
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
  /// The returned [ElogRoleDashboards]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogRoleDashboards>> upsert(
    _is.DatabaseSession session,
    List<ElogRoleDashboards> rows, {
    required _is.ColumnSelections<ElogRoleDashboardsTable> conflictColumns,
    _is.ColumnSelections<ElogRoleDashboardsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogRoleDashboardsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogRoleDashboards>(
      rows,
      conflictColumns: conflictColumns(ElogRoleDashboards.t),
      updateColumns: updateColumns?.call(ElogRoleDashboards.t),
      updateWhere: updateWhere?.call(ElogRoleDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogRoleDashboards] and returns the resulting row.
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
  /// The returned [ElogRoleDashboards] will have its `id` field set.
  Future<ElogRoleDashboards?> upsertRow(
    _is.DatabaseSession session,
    ElogRoleDashboards row, {
    required _is.ColumnSelections<ElogRoleDashboardsTable> conflictColumns,
    _is.ColumnSelections<ElogRoleDashboardsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogRoleDashboardsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogRoleDashboards>(
      row,
      conflictColumns: conflictColumns(ElogRoleDashboards.t),
      updateColumns: updateColumns?.call(ElogRoleDashboards.t),
      updateWhere: updateWhere?.call(ElogRoleDashboards.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogRoleDashboards]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogRoleDashboards>> update(
    _is.DatabaseSession session,
    List<ElogRoleDashboards> rows, {
    _is.ColumnSelections<ElogRoleDashboardsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogRoleDashboards>(
      rows,
      columns: columns?.call(ElogRoleDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogRoleDashboards]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogRoleDashboards> updateRow(
    _is.DatabaseSession session,
    ElogRoleDashboards row, {
    _is.ColumnSelections<ElogRoleDashboardsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogRoleDashboards>(
      row,
      columns: columns?.call(ElogRoleDashboards.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogRoleDashboards] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogRoleDashboards?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogRoleDashboardsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogRoleDashboards>(
      id,
      columnValues: columnValues(ElogRoleDashboards.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogRoleDashboards]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogRoleDashboards>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogRoleDashboardsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogRoleDashboardsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogRoleDashboardsTable>? orderBy,
    _is.OrderByListBuilder<ElogRoleDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogRoleDashboards>(
      columnValues: columnValues(ElogRoleDashboards.t.updateTable),
      where: where(ElogRoleDashboards.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogRoleDashboards.t),
      orderByList: orderByList?.call(ElogRoleDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogRoleDashboards]s in the list and returns the deleted rows.
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
  Future<List<ElogRoleDashboards>> delete(
    _is.DatabaseSession session,
    List<ElogRoleDashboards> rows, {
    _is.OrderByBuilder<ElogRoleDashboardsTable>? orderBy,
    _is.OrderByListBuilder<ElogRoleDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogRoleDashboards>(
      rows,
      orderBy: orderBy?.call(ElogRoleDashboards.t),
      orderByList: orderByList?.call(ElogRoleDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogRoleDashboards].
  Future<ElogRoleDashboards> deleteRow(
    _is.DatabaseSession session,
    ElogRoleDashboards row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogRoleDashboards>(
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
  Future<List<ElogRoleDashboards>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogRoleDashboardsTable> where,
    _is.OrderByBuilder<ElogRoleDashboardsTable>? orderBy,
    _is.OrderByListBuilder<ElogRoleDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogRoleDashboards>(
      where: where(ElogRoleDashboards.t),
      orderBy: orderBy?.call(ElogRoleDashboards.t),
      orderByList: orderByList?.call(ElogRoleDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogRoleDashboardsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogRoleDashboards>(
      where: where?.call(ElogRoleDashboards.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogRoleDashboards] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogRoleDashboardsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogRoleDashboards>(
      where: where(ElogRoleDashboards.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
