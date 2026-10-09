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

abstract class ElogPresetPolicies
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPresetPolicies._({
    this.id,
    required this.industryId,
    this.cleaningConfig,
    this.calibrationConfig,
    this.usageConfig,
    this.maintenanceConfig,
  });

  factory ElogPresetPolicies({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    String? cleaningConfig,
    String? calibrationConfig,
    String? usageConfig,
    String? maintenanceConfig,
  }) = _ElogPresetPoliciesImpl;

  factory ElogPresetPolicies.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPresetPolicies(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      cleaningConfig: jsonSerialization['cleaningConfig'] as String?,
      calibrationConfig: jsonSerialization['calibrationConfig'] as String?,
      usageConfig: jsonSerialization['usageConfig'] as String?,
      maintenanceConfig: jsonSerialization['maintenanceConfig'] as String?,
    );
  }

  static final t = ElogPresetPoliciesTable();

  static const db = ElogPresetPoliciesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue industryId;

  String? cleaningConfig;

  String? calibrationConfig;

  String? usageConfig;

  String? maintenanceConfig;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPresetPolicies]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPresetPolicies copyWith({
    _is.UuidValue? id,
    _is.UuidValue? industryId,
    String? cleaningConfig,
    String? calibrationConfig,
    String? usageConfig,
    String? maintenanceConfig,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetPolicies',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      if (cleaningConfig != null) 'cleaningConfig': cleaningConfig,
      if (calibrationConfig != null) 'calibrationConfig': calibrationConfig,
      if (usageConfig != null) 'usageConfig': usageConfig,
      if (maintenanceConfig != null) 'maintenanceConfig': maintenanceConfig,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetPolicies',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      if (cleaningConfig != null) 'cleaningConfig': cleaningConfig,
      if (calibrationConfig != null) 'calibrationConfig': calibrationConfig,
      if (usageConfig != null) 'usageConfig': usageConfig,
      if (maintenanceConfig != null) 'maintenanceConfig': maintenanceConfig,
    };
  }

  static ElogPresetPoliciesInclude include() {
    return ElogPresetPoliciesInclude._();
  }

  static ElogPresetPoliciesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPresetPoliciesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetPoliciesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetPoliciesTable>? orderByList,
    ElogPresetPoliciesInclude? include,
  }) {
    return ElogPresetPoliciesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetPolicies.t),
      orderByList: orderByList?.call(ElogPresetPolicies.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetPoliciesImpl extends ElogPresetPolicies {
  _ElogPresetPoliciesImpl({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    String? cleaningConfig,
    String? calibrationConfig,
    String? usageConfig,
    String? maintenanceConfig,
  }) : super._(
         id: id,
         industryId: industryId,
         cleaningConfig: cleaningConfig,
         calibrationConfig: calibrationConfig,
         usageConfig: usageConfig,
         maintenanceConfig: maintenanceConfig,
       );

  /// Returns a shallow copy of this [ElogPresetPolicies]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPresetPolicies copyWith({
    Object? id = _Undefined,
    _is.UuidValue? industryId,
    Object? cleaningConfig = _Undefined,
    Object? calibrationConfig = _Undefined,
    Object? usageConfig = _Undefined,
    Object? maintenanceConfig = _Undefined,
  }) {
    return ElogPresetPolicies(
      id: id is _is.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      cleaningConfig: cleaningConfig is String?
          ? cleaningConfig
          : this.cleaningConfig,
      calibrationConfig: calibrationConfig is String?
          ? calibrationConfig
          : this.calibrationConfig,
      usageConfig: usageConfig is String? ? usageConfig : this.usageConfig,
      maintenanceConfig: maintenanceConfig is String?
          ? maintenanceConfig
          : this.maintenanceConfig,
    );
  }
}

class ElogPresetPoliciesUpdateTable
    extends _is.UpdateTable<ElogPresetPoliciesTable> {
  ElogPresetPoliciesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> industryId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.industryId,
    value,
  );

  _is.ColumnValue<String, String> cleaningConfig(String? value) =>
      _is.ColumnValue(
        table.cleaningConfig,
        value,
      );

  _is.ColumnValue<String, String> calibrationConfig(String? value) =>
      _is.ColumnValue(
        table.calibrationConfig,
        value,
      );

  _is.ColumnValue<String, String> usageConfig(String? value) => _is.ColumnValue(
    table.usageConfig,
    value,
  );

  _is.ColumnValue<String, String> maintenanceConfig(String? value) =>
      _is.ColumnValue(
        table.maintenanceConfig,
        value,
      );
}

class ElogPresetPoliciesTable extends _is.Table<_is.UuidValue?> {
  ElogPresetPoliciesTable({super.tableRelation})
    : super(tableName: 'elog_preset_policies') {
    updateTable = ElogPresetPoliciesUpdateTable(this);
    industryId = _is.ColumnUuid(
      'industryId',
      this,
    );
    cleaningConfig = _is.ColumnString(
      'cleaningConfig',
      this,
    );
    calibrationConfig = _is.ColumnString(
      'calibrationConfig',
      this,
    );
    usageConfig = _is.ColumnString(
      'usageConfig',
      this,
    );
    maintenanceConfig = _is.ColumnString(
      'maintenanceConfig',
      this,
    );
  }

  late final ElogPresetPoliciesUpdateTable updateTable;

  late final _is.ColumnUuid industryId;

  late final _is.ColumnString cleaningConfig;

  late final _is.ColumnString calibrationConfig;

  late final _is.ColumnString usageConfig;

  late final _is.ColumnString maintenanceConfig;

  @override
  List<_is.Column> get columns => [
    id,
    industryId,
    cleaningConfig,
    calibrationConfig,
    usageConfig,
    maintenanceConfig,
  ];
}

class ElogPresetPoliciesInclude extends _is.IncludeObject {
  ElogPresetPoliciesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetPolicies.t;
}

class ElogPresetPoliciesIncludeList extends _is.IncludeList {
  ElogPresetPoliciesIncludeList._({
    _is.WhereExpressionBuilder<ElogPresetPoliciesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPresetPolicies.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetPolicies.t;
}

class ElogPresetPoliciesRepository {
  const ElogPresetPoliciesRepository._();

  /// Returns a list of [ElogPresetPolicies]s matching the given query parameters.
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
  Future<List<ElogPresetPolicies>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetPoliciesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetPoliciesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetPoliciesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPresetPolicies>(
      where: where?.call(ElogPresetPolicies.t),
      orderBy: orderBy?.call(ElogPresetPolicies.t),
      orderByList: orderByList?.call(ElogPresetPolicies.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPresetPolicies] matching the given query parameters.
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
  Future<ElogPresetPolicies?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetPoliciesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPresetPoliciesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetPoliciesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPresetPolicies>(
      where: where?.call(ElogPresetPolicies.t),
      orderBy: orderBy?.call(ElogPresetPolicies.t),
      orderByList: orderByList?.call(ElogPresetPolicies.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPresetPolicies] by its [id] or null if no such row exists.
  Future<ElogPresetPolicies?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPresetPolicies>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPresetPolicies]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPresetPolicies]s will have their `id` fields set.
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
  Future<List<ElogPresetPolicies>> insert(
    _is.DatabaseSession session,
    List<ElogPresetPolicies> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPresetPolicies>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPresetPolicies] and returns the inserted row.
  ///
  /// The returned [ElogPresetPolicies] will have its `id` field set.
  Future<ElogPresetPolicies> insertRow(
    _is.DatabaseSession session,
    ElogPresetPolicies row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPresetPolicies>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPresetPolicies]s in the list and returns the resulting rows.
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
  /// The returned [ElogPresetPolicies]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetPolicies>> upsert(
    _is.DatabaseSession session,
    List<ElogPresetPolicies> rows, {
    required _is.ColumnSelections<ElogPresetPoliciesTable> conflictColumns,
    _is.ColumnSelections<ElogPresetPoliciesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetPoliciesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPresetPolicies>(
      rows,
      conflictColumns: conflictColumns(ElogPresetPolicies.t),
      updateColumns: updateColumns?.call(ElogPresetPolicies.t),
      updateWhere: updateWhere?.call(ElogPresetPolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPresetPolicies] and returns the resulting row.
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
  /// The returned [ElogPresetPolicies] will have its `id` field set.
  Future<ElogPresetPolicies?> upsertRow(
    _is.DatabaseSession session,
    ElogPresetPolicies row, {
    required _is.ColumnSelections<ElogPresetPoliciesTable> conflictColumns,
    _is.ColumnSelections<ElogPresetPoliciesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetPoliciesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPresetPolicies>(
      row,
      conflictColumns: conflictColumns(ElogPresetPolicies.t),
      updateColumns: updateColumns?.call(ElogPresetPolicies.t),
      updateWhere: updateWhere?.call(ElogPresetPolicies.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetPolicies]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetPolicies>> update(
    _is.DatabaseSession session,
    List<ElogPresetPolicies> rows, {
    _is.ColumnSelections<ElogPresetPoliciesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPresetPolicies>(
      rows,
      columns: columns?.call(ElogPresetPolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPresetPolicies]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPresetPolicies> updateRow(
    _is.DatabaseSession session,
    ElogPresetPolicies row, {
    _is.ColumnSelections<ElogPresetPoliciesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPresetPolicies>(
      row,
      columns: columns?.call(ElogPresetPolicies.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPresetPolicies] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPresetPolicies?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPresetPoliciesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPresetPolicies>(
      id,
      columnValues: columnValues(ElogPresetPolicies.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetPolicies]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetPolicies>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPresetPoliciesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPresetPoliciesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetPoliciesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetPoliciesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPresetPolicies>(
      columnValues: columnValues(ElogPresetPolicies.t.updateTable),
      where: where(ElogPresetPolicies.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetPolicies.t),
      orderByList: orderByList?.call(ElogPresetPolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPresetPolicies]s in the list and returns the deleted rows.
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
  Future<List<ElogPresetPolicies>> delete(
    _is.DatabaseSession session,
    List<ElogPresetPolicies> rows, {
    _is.OrderByBuilder<ElogPresetPoliciesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetPoliciesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPresetPolicies>(
      rows,
      orderBy: orderBy?.call(ElogPresetPolicies.t),
      orderByList: orderByList?.call(ElogPresetPolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPresetPolicies].
  Future<ElogPresetPolicies> deleteRow(
    _is.DatabaseSession session,
    ElogPresetPolicies row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPresetPolicies>(
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
  Future<List<ElogPresetPolicies>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetPoliciesTable> where,
    _is.OrderByBuilder<ElogPresetPoliciesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetPoliciesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPresetPolicies>(
      where: where(ElogPresetPolicies.t),
      orderBy: orderBy?.call(ElogPresetPolicies.t),
      orderByList: orderByList?.call(ElogPresetPolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetPoliciesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPresetPolicies>(
      where: where?.call(ElogPresetPolicies.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPresetPolicies] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetPoliciesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPresetPolicies>(
      where: where(ElogPresetPolicies.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
