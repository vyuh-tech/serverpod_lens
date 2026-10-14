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

abstract class ElogDashboardConfigs
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogDashboardConfigs._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.dashboardCategory,
    required this.config,
  });

  factory ElogDashboardConfigs({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String dashboardCategory,
    required String config,
  }) = _ElogDashboardConfigsImpl;

  factory ElogDashboardConfigs.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogDashboardConfigs(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      dashboardCategory: jsonSerialization['dashboardCategory'] as String,
      config: jsonSerialization['config'] as String,
    );
  }

  static final t = ElogDashboardConfigsTable();

  static const db = ElogDashboardConfigsRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String dashboardCategory;

  String config;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogDashboardConfigs]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogDashboardConfigs copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? dashboardCategory,
    String? config,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogDashboardConfigs',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'dashboardCategory': dashboardCategory,
      'config': config,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogDashboardConfigs',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'dashboardCategory': dashboardCategory,
      'config': config,
    };
  }

  static ElogDashboardConfigsInclude include() {
    return ElogDashboardConfigsInclude._();
  }

  static ElogDashboardConfigsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogDashboardConfigsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogDashboardConfigsTable>? orderBy,
    _is.OrderByListBuilder<ElogDashboardConfigsTable>? orderByList,
    ElogDashboardConfigsInclude? include,
  }) {
    return ElogDashboardConfigsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogDashboardConfigs.t),
      orderByList: orderByList?.call(ElogDashboardConfigs.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogDashboardConfigsImpl extends ElogDashboardConfigs {
  _ElogDashboardConfigsImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String dashboardCategory,
    required String config,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         dashboardCategory: dashboardCategory,
         config: config,
       );

  /// Returns a shallow copy of this [ElogDashboardConfigs]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogDashboardConfigs copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? dashboardCategory,
    String? config,
  }) {
    return ElogDashboardConfigs(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      dashboardCategory: dashboardCategory ?? this.dashboardCategory,
      config: config ?? this.config,
    );
  }
}

class ElogDashboardConfigsUpdateTable
    extends _is.UpdateTable<ElogDashboardConfigsTable> {
  ElogDashboardConfigsUpdateTable(super.table);

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

  _is.ColumnValue<String, String> dashboardCategory(String value) =>
      _is.ColumnValue(
        table.dashboardCategory,
        value,
      );

  _is.ColumnValue<String, String> config(String value) => _is.ColumnValue(
    table.config,
    value,
  );
}

class ElogDashboardConfigsTable extends _is.Table<_is.UuidValue?> {
  ElogDashboardConfigsTable({super.tableRelation})
    : super(tableName: 'elog_dashboard_configs') {
    updateTable = ElogDashboardConfigsUpdateTable(this);
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
    dashboardCategory = _is.ColumnString(
      'dashboardCategory',
      this,
    );
    config = _is.ColumnString(
      'config',
      this,
    );
  }

  late final ElogDashboardConfigsUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString dashboardCategory;

  late final _is.ColumnString config;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    dashboardCategory,
    config,
  ];
}

class ElogDashboardConfigsInclude extends _is.IncludeObject {
  ElogDashboardConfigsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogDashboardConfigs.t;
}

class ElogDashboardConfigsIncludeList extends _is.IncludeList {
  ElogDashboardConfigsIncludeList._({
    _is.WhereExpressionBuilder<ElogDashboardConfigsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogDashboardConfigs.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogDashboardConfigs.t;
}

class ElogDashboardConfigsRepository {
  const ElogDashboardConfigsRepository._();

  /// Returns a list of [ElogDashboardConfigs]s matching the given query parameters.
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
  Future<List<ElogDashboardConfigs>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogDashboardConfigsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogDashboardConfigsTable>? orderBy,
    _is.OrderByListBuilder<ElogDashboardConfigsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogDashboardConfigs>(
      where: where?.call(ElogDashboardConfigs.t),
      orderBy: orderBy?.call(ElogDashboardConfigs.t),
      orderByList: orderByList?.call(ElogDashboardConfigs.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogDashboardConfigs] matching the given query parameters.
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
  Future<ElogDashboardConfigs?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogDashboardConfigsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogDashboardConfigsTable>? orderBy,
    _is.OrderByListBuilder<ElogDashboardConfigsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogDashboardConfigs>(
      where: where?.call(ElogDashboardConfigs.t),
      orderBy: orderBy?.call(ElogDashboardConfigs.t),
      orderByList: orderByList?.call(ElogDashboardConfigs.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogDashboardConfigs] by its [id] or null if no such row exists.
  Future<ElogDashboardConfigs?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogDashboardConfigs>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogDashboardConfigs]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogDashboardConfigs]s will have their `id` fields set.
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
  Future<List<ElogDashboardConfigs>> insert(
    _is.DatabaseSession session,
    List<ElogDashboardConfigs> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogDashboardConfigs>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogDashboardConfigs] and returns the inserted row.
  ///
  /// The returned [ElogDashboardConfigs] will have its `id` field set.
  Future<ElogDashboardConfigs> insertRow(
    _is.DatabaseSession session,
    ElogDashboardConfigs row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogDashboardConfigs>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogDashboardConfigs]s in the list and returns the resulting rows.
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
  /// The returned [ElogDashboardConfigs]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogDashboardConfigs>> upsert(
    _is.DatabaseSession session,
    List<ElogDashboardConfigs> rows, {
    required _is.ColumnSelections<ElogDashboardConfigsTable> conflictColumns,
    _is.ColumnSelections<ElogDashboardConfigsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogDashboardConfigsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogDashboardConfigs>(
      rows,
      conflictColumns: conflictColumns(ElogDashboardConfigs.t),
      updateColumns: updateColumns?.call(ElogDashboardConfigs.t),
      updateWhere: updateWhere?.call(ElogDashboardConfigs.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogDashboardConfigs] and returns the resulting row.
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
  /// The returned [ElogDashboardConfigs] will have its `id` field set.
  Future<ElogDashboardConfigs?> upsertRow(
    _is.DatabaseSession session,
    ElogDashboardConfigs row, {
    required _is.ColumnSelections<ElogDashboardConfigsTable> conflictColumns,
    _is.ColumnSelections<ElogDashboardConfigsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogDashboardConfigsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogDashboardConfigs>(
      row,
      conflictColumns: conflictColumns(ElogDashboardConfigs.t),
      updateColumns: updateColumns?.call(ElogDashboardConfigs.t),
      updateWhere: updateWhere?.call(ElogDashboardConfigs.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogDashboardConfigs]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogDashboardConfigs>> update(
    _is.DatabaseSession session,
    List<ElogDashboardConfigs> rows, {
    _is.ColumnSelections<ElogDashboardConfigsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogDashboardConfigs>(
      rows,
      columns: columns?.call(ElogDashboardConfigs.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogDashboardConfigs]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogDashboardConfigs> updateRow(
    _is.DatabaseSession session,
    ElogDashboardConfigs row, {
    _is.ColumnSelections<ElogDashboardConfigsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogDashboardConfigs>(
      row,
      columns: columns?.call(ElogDashboardConfigs.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogDashboardConfigs] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogDashboardConfigs?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogDashboardConfigsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogDashboardConfigs>(
      id,
      columnValues: columnValues(ElogDashboardConfigs.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogDashboardConfigs]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogDashboardConfigs>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogDashboardConfigsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogDashboardConfigsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogDashboardConfigsTable>? orderBy,
    _is.OrderByListBuilder<ElogDashboardConfigsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogDashboardConfigs>(
      columnValues: columnValues(ElogDashboardConfigs.t.updateTable),
      where: where(ElogDashboardConfigs.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogDashboardConfigs.t),
      orderByList: orderByList?.call(ElogDashboardConfigs.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogDashboardConfigs]s in the list and returns the deleted rows.
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
  Future<List<ElogDashboardConfigs>> delete(
    _is.DatabaseSession session,
    List<ElogDashboardConfigs> rows, {
    _is.OrderByBuilder<ElogDashboardConfigsTable>? orderBy,
    _is.OrderByListBuilder<ElogDashboardConfigsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogDashboardConfigs>(
      rows,
      orderBy: orderBy?.call(ElogDashboardConfigs.t),
      orderByList: orderByList?.call(ElogDashboardConfigs.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogDashboardConfigs].
  Future<ElogDashboardConfigs> deleteRow(
    _is.DatabaseSession session,
    ElogDashboardConfigs row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogDashboardConfigs>(
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
  Future<List<ElogDashboardConfigs>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogDashboardConfigsTable> where,
    _is.OrderByBuilder<ElogDashboardConfigsTable>? orderBy,
    _is.OrderByListBuilder<ElogDashboardConfigsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogDashboardConfigs>(
      where: where(ElogDashboardConfigs.t),
      orderBy: orderBy?.call(ElogDashboardConfigs.t),
      orderByList: orderByList?.call(ElogDashboardConfigs.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogDashboardConfigsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogDashboardConfigs>(
      where: where?.call(ElogDashboardConfigs.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogDashboardConfigs] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogDashboardConfigsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogDashboardConfigs>(
      where: where(ElogDashboardConfigs.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
