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

abstract class ElogPresetDashboards
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPresetDashboards._({
    this.id,
    required this.industryId,
    required this.roleCode,
    required this.code,
    required this.name,
    required this.config,
    required this.isDefault,
    required this.displayOrder,
  });

  factory ElogPresetDashboards({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String roleCode,
    required String code,
    required String name,
    required String config,
    required bool isDefault,
    required int displayOrder,
  }) = _ElogPresetDashboardsImpl;

  factory ElogPresetDashboards.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPresetDashboards(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      roleCode: jsonSerialization['roleCode'] as String,
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      config: jsonSerialization['config'] as String,
      isDefault: _is.BoolJsonExtension.fromJson(jsonSerialization['isDefault']),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  static final t = ElogPresetDashboardsTable();

  static const db = ElogPresetDashboardsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue industryId;

  String roleCode;

  String code;

  String name;

  String config;

  bool isDefault;

  int displayOrder;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPresetDashboards]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPresetDashboards copyWith({
    _is.UuidValue? id,
    _is.UuidValue? industryId,
    String? roleCode,
    String? code,
    String? name,
    String? config,
    bool? isDefault,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetDashboards',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'roleCode': roleCode,
      'code': code,
      'name': name,
      'config': config,
      'isDefault': isDefault,
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetDashboards',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'roleCode': roleCode,
      'code': code,
      'name': name,
      'config': config,
      'isDefault': isDefault,
      'displayOrder': displayOrder,
    };
  }

  static ElogPresetDashboardsInclude include() {
    return ElogPresetDashboardsInclude._();
  }

  static ElogPresetDashboardsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPresetDashboardsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetDashboardsTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetDashboardsTable>? orderByList,
    ElogPresetDashboardsInclude? include,
  }) {
    return ElogPresetDashboardsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetDashboards.t),
      orderByList: orderByList?.call(ElogPresetDashboards.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetDashboardsImpl extends ElogPresetDashboards {
  _ElogPresetDashboardsImpl({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String roleCode,
    required String code,
    required String name,
    required String config,
    required bool isDefault,
    required int displayOrder,
  }) : super._(
         id: id,
         industryId: industryId,
         roleCode: roleCode,
         code: code,
         name: name,
         config: config,
         isDefault: isDefault,
         displayOrder: displayOrder,
       );

  /// Returns a shallow copy of this [ElogPresetDashboards]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPresetDashboards copyWith({
    Object? id = _Undefined,
    _is.UuidValue? industryId,
    String? roleCode,
    String? code,
    String? name,
    String? config,
    bool? isDefault,
    int? displayOrder,
  }) {
    return ElogPresetDashboards(
      id: id is _is.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      roleCode: roleCode ?? this.roleCode,
      code: code ?? this.code,
      name: name ?? this.name,
      config: config ?? this.config,
      isDefault: isDefault ?? this.isDefault,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}

class ElogPresetDashboardsUpdateTable
    extends _is.UpdateTable<ElogPresetDashboardsTable> {
  ElogPresetDashboardsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> industryId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.industryId,
    value,
  );

  _is.ColumnValue<String, String> roleCode(String value) => _is.ColumnValue(
    table.roleCode,
    value,
  );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> config(String value) => _is.ColumnValue(
    table.config,
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
}

class ElogPresetDashboardsTable extends _is.Table<_is.UuidValue?> {
  ElogPresetDashboardsTable({super.tableRelation})
    : super(tableName: 'elog_preset_dashboards') {
    updateTable = ElogPresetDashboardsUpdateTable(this);
    industryId = _is.ColumnUuid(
      'industryId',
      this,
    );
    roleCode = _is.ColumnString(
      'roleCode',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    config = _is.ColumnString(
      'config',
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
  }

  late final ElogPresetDashboardsUpdateTable updateTable;

  late final _is.ColumnUuid industryId;

  late final _is.ColumnString roleCode;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString config;

  late final _is.ColumnBool isDefault;

  late final _is.ColumnInt displayOrder;

  @override
  List<_is.Column> get columns => [
    id,
    industryId,
    roleCode,
    code,
    name,
    config,
    isDefault,
    displayOrder,
  ];
}

class ElogPresetDashboardsInclude extends _is.IncludeObject {
  ElogPresetDashboardsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetDashboards.t;
}

class ElogPresetDashboardsIncludeList extends _is.IncludeList {
  ElogPresetDashboardsIncludeList._({
    _is.WhereExpressionBuilder<ElogPresetDashboardsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPresetDashboards.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetDashboards.t;
}

class ElogPresetDashboardsRepository {
  const ElogPresetDashboardsRepository._();

  /// Returns a list of [ElogPresetDashboards]s matching the given query parameters.
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
  Future<List<ElogPresetDashboards>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetDashboardsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetDashboardsTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPresetDashboards>(
      where: where?.call(ElogPresetDashboards.t),
      orderBy: orderBy?.call(ElogPresetDashboards.t),
      orderByList: orderByList?.call(ElogPresetDashboards.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPresetDashboards] matching the given query parameters.
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
  Future<ElogPresetDashboards?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetDashboardsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPresetDashboardsTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPresetDashboards>(
      where: where?.call(ElogPresetDashboards.t),
      orderBy: orderBy?.call(ElogPresetDashboards.t),
      orderByList: orderByList?.call(ElogPresetDashboards.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPresetDashboards] by its [id] or null if no such row exists.
  Future<ElogPresetDashboards?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPresetDashboards>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPresetDashboards]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPresetDashboards]s will have their `id` fields set.
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
  Future<List<ElogPresetDashboards>> insert(
    _is.DatabaseSession session,
    List<ElogPresetDashboards> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPresetDashboards>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPresetDashboards] and returns the inserted row.
  ///
  /// The returned [ElogPresetDashboards] will have its `id` field set.
  Future<ElogPresetDashboards> insertRow(
    _is.DatabaseSession session,
    ElogPresetDashboards row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPresetDashboards>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPresetDashboards]s in the list and returns the resulting rows.
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
  /// The returned [ElogPresetDashboards]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetDashboards>> upsert(
    _is.DatabaseSession session,
    List<ElogPresetDashboards> rows, {
    required _is.ColumnSelections<ElogPresetDashboardsTable> conflictColumns,
    _is.ColumnSelections<ElogPresetDashboardsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetDashboardsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPresetDashboards>(
      rows,
      conflictColumns: conflictColumns(ElogPresetDashboards.t),
      updateColumns: updateColumns?.call(ElogPresetDashboards.t),
      updateWhere: updateWhere?.call(ElogPresetDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPresetDashboards] and returns the resulting row.
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
  /// The returned [ElogPresetDashboards] will have its `id` field set.
  Future<ElogPresetDashboards?> upsertRow(
    _is.DatabaseSession session,
    ElogPresetDashboards row, {
    required _is.ColumnSelections<ElogPresetDashboardsTable> conflictColumns,
    _is.ColumnSelections<ElogPresetDashboardsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetDashboardsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPresetDashboards>(
      row,
      conflictColumns: conflictColumns(ElogPresetDashboards.t),
      updateColumns: updateColumns?.call(ElogPresetDashboards.t),
      updateWhere: updateWhere?.call(ElogPresetDashboards.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetDashboards]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetDashboards>> update(
    _is.DatabaseSession session,
    List<ElogPresetDashboards> rows, {
    _is.ColumnSelections<ElogPresetDashboardsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPresetDashboards>(
      rows,
      columns: columns?.call(ElogPresetDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPresetDashboards]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPresetDashboards> updateRow(
    _is.DatabaseSession session,
    ElogPresetDashboards row, {
    _is.ColumnSelections<ElogPresetDashboardsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPresetDashboards>(
      row,
      columns: columns?.call(ElogPresetDashboards.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPresetDashboards] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPresetDashboards?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPresetDashboardsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPresetDashboards>(
      id,
      columnValues: columnValues(ElogPresetDashboards.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetDashboards]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetDashboards>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPresetDashboardsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPresetDashboardsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetDashboardsTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPresetDashboards>(
      columnValues: columnValues(ElogPresetDashboards.t.updateTable),
      where: where(ElogPresetDashboards.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetDashboards.t),
      orderByList: orderByList?.call(ElogPresetDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPresetDashboards]s in the list and returns the deleted rows.
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
  Future<List<ElogPresetDashboards>> delete(
    _is.DatabaseSession session,
    List<ElogPresetDashboards> rows, {
    _is.OrderByBuilder<ElogPresetDashboardsTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPresetDashboards>(
      rows,
      orderBy: orderBy?.call(ElogPresetDashboards.t),
      orderByList: orderByList?.call(ElogPresetDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPresetDashboards].
  Future<ElogPresetDashboards> deleteRow(
    _is.DatabaseSession session,
    ElogPresetDashboards row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPresetDashboards>(
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
  Future<List<ElogPresetDashboards>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetDashboardsTable> where,
    _is.OrderByBuilder<ElogPresetDashboardsTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetDashboardsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPresetDashboards>(
      where: where(ElogPresetDashboards.t),
      orderBy: orderBy?.call(ElogPresetDashboards.t),
      orderByList: orderByList?.call(ElogPresetDashboards.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetDashboardsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPresetDashboards>(
      where: where?.call(ElogPresetDashboards.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPresetDashboards] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetDashboardsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPresetDashboards>(
      where: where(ElogPresetDashboards.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
