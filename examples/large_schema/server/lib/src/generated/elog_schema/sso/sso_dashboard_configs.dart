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

abstract class SsoDashboardConfigs
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoDashboardConfigs._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.config,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory SsoDashboardConfigs({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String config,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _SsoDashboardConfigsImpl;

  factory SsoDashboardConfigs.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoDashboardConfigs(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      config: jsonSerialization['config'] as String,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['createdBy']),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['updatedBy']),
    );
  }

  static final t = SsoDashboardConfigsTable();

  static const db = SsoDashboardConfigsRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String config;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoDashboardConfigs]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoDashboardConfigs copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? config,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoDashboardConfigs',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'config': config,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoDashboardConfigs',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'config': config,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static SsoDashboardConfigsInclude include() {
    return SsoDashboardConfigsInclude._();
  }

  static SsoDashboardConfigsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoDashboardConfigsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoDashboardConfigsTable>? orderBy,
    _is.OrderByListBuilder<SsoDashboardConfigsTable>? orderByList,
    SsoDashboardConfigsInclude? include,
  }) {
    return SsoDashboardConfigsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoDashboardConfigs.t),
      orderByList: orderByList?.call(SsoDashboardConfigs.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoDashboardConfigsImpl extends SsoDashboardConfigs {
  _SsoDashboardConfigsImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String config,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         config: config,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [SsoDashboardConfigs]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoDashboardConfigs copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? config,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return SsoDashboardConfigs(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      config: config ?? this.config,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class SsoDashboardConfigsUpdateTable
    extends _is.UpdateTable<SsoDashboardConfigsTable> {
  SsoDashboardConfigsUpdateTable(super.table);

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

  _is.ColumnValue<String, String> config(String value) => _is.ColumnValue(
    table.config,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
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
}

class SsoDashboardConfigsTable extends _is.Table<_is.UuidValue?> {
  SsoDashboardConfigsTable({super.tableRelation})
    : super(tableName: 'sso_dashboard_configs') {
    updateTable = SsoDashboardConfigsUpdateTable(this);
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
    config = _is.ColumnString(
      'config',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
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
  }

  late final SsoDashboardConfigsUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString config;

  late final _is.ColumnBool isActive;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    config,
    isActive,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class SsoDashboardConfigsInclude extends _is.IncludeObject {
  SsoDashboardConfigsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoDashboardConfigs.t;
}

class SsoDashboardConfigsIncludeList extends _is.IncludeList {
  SsoDashboardConfigsIncludeList._({
    _is.WhereExpressionBuilder<SsoDashboardConfigsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoDashboardConfigs.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoDashboardConfigs.t;
}

class SsoDashboardConfigsRepository {
  const SsoDashboardConfigsRepository._();

  /// Returns a list of [SsoDashboardConfigs]s matching the given query parameters.
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
  Future<List<SsoDashboardConfigs>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoDashboardConfigsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoDashboardConfigsTable>? orderBy,
    _is.OrderByListBuilder<SsoDashboardConfigsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoDashboardConfigs>(
      where: where?.call(SsoDashboardConfigs.t),
      orderBy: orderBy?.call(SsoDashboardConfigs.t),
      orderByList: orderByList?.call(SsoDashboardConfigs.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoDashboardConfigs] matching the given query parameters.
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
  Future<SsoDashboardConfigs?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoDashboardConfigsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoDashboardConfigsTable>? orderBy,
    _is.OrderByListBuilder<SsoDashboardConfigsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoDashboardConfigs>(
      where: where?.call(SsoDashboardConfigs.t),
      orderBy: orderBy?.call(SsoDashboardConfigs.t),
      orderByList: orderByList?.call(SsoDashboardConfigs.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoDashboardConfigs] by its [id] or null if no such row exists.
  Future<SsoDashboardConfigs?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoDashboardConfigs>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoDashboardConfigs]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoDashboardConfigs]s will have their `id` fields set.
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
  Future<List<SsoDashboardConfigs>> insert(
    _is.DatabaseSession session,
    List<SsoDashboardConfigs> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoDashboardConfigs>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoDashboardConfigs] and returns the inserted row.
  ///
  /// The returned [SsoDashboardConfigs] will have its `id` field set.
  Future<SsoDashboardConfigs> insertRow(
    _is.DatabaseSession session,
    SsoDashboardConfigs row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoDashboardConfigs>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoDashboardConfigs]s in the list and returns the resulting rows.
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
  /// The returned [SsoDashboardConfigs]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoDashboardConfigs>> upsert(
    _is.DatabaseSession session,
    List<SsoDashboardConfigs> rows, {
    required _is.ColumnSelections<SsoDashboardConfigsTable> conflictColumns,
    _is.ColumnSelections<SsoDashboardConfigsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoDashboardConfigsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoDashboardConfigs>(
      rows,
      conflictColumns: conflictColumns(SsoDashboardConfigs.t),
      updateColumns: updateColumns?.call(SsoDashboardConfigs.t),
      updateWhere: updateWhere?.call(SsoDashboardConfigs.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoDashboardConfigs] and returns the resulting row.
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
  /// The returned [SsoDashboardConfigs] will have its `id` field set.
  Future<SsoDashboardConfigs?> upsertRow(
    _is.DatabaseSession session,
    SsoDashboardConfigs row, {
    required _is.ColumnSelections<SsoDashboardConfigsTable> conflictColumns,
    _is.ColumnSelections<SsoDashboardConfigsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoDashboardConfigsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoDashboardConfigs>(
      row,
      conflictColumns: conflictColumns(SsoDashboardConfigs.t),
      updateColumns: updateColumns?.call(SsoDashboardConfigs.t),
      updateWhere: updateWhere?.call(SsoDashboardConfigs.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoDashboardConfigs]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoDashboardConfigs>> update(
    _is.DatabaseSession session,
    List<SsoDashboardConfigs> rows, {
    _is.ColumnSelections<SsoDashboardConfigsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoDashboardConfigs>(
      rows,
      columns: columns?.call(SsoDashboardConfigs.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoDashboardConfigs]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoDashboardConfigs> updateRow(
    _is.DatabaseSession session,
    SsoDashboardConfigs row, {
    _is.ColumnSelections<SsoDashboardConfigsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoDashboardConfigs>(
      row,
      columns: columns?.call(SsoDashboardConfigs.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoDashboardConfigs] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoDashboardConfigs?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoDashboardConfigsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoDashboardConfigs>(
      id,
      columnValues: columnValues(SsoDashboardConfigs.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoDashboardConfigs]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoDashboardConfigs>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoDashboardConfigsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoDashboardConfigsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoDashboardConfigsTable>? orderBy,
    _is.OrderByListBuilder<SsoDashboardConfigsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoDashboardConfigs>(
      columnValues: columnValues(SsoDashboardConfigs.t.updateTable),
      where: where(SsoDashboardConfigs.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoDashboardConfigs.t),
      orderByList: orderByList?.call(SsoDashboardConfigs.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoDashboardConfigs]s in the list and returns the deleted rows.
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
  Future<List<SsoDashboardConfigs>> delete(
    _is.DatabaseSession session,
    List<SsoDashboardConfigs> rows, {
    _is.OrderByBuilder<SsoDashboardConfigsTable>? orderBy,
    _is.OrderByListBuilder<SsoDashboardConfigsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoDashboardConfigs>(
      rows,
      orderBy: orderBy?.call(SsoDashboardConfigs.t),
      orderByList: orderByList?.call(SsoDashboardConfigs.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoDashboardConfigs].
  Future<SsoDashboardConfigs> deleteRow(
    _is.DatabaseSession session,
    SsoDashboardConfigs row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoDashboardConfigs>(
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
  Future<List<SsoDashboardConfigs>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoDashboardConfigsTable> where,
    _is.OrderByBuilder<SsoDashboardConfigsTable>? orderBy,
    _is.OrderByListBuilder<SsoDashboardConfigsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoDashboardConfigs>(
      where: where(SsoDashboardConfigs.t),
      orderBy: orderBy?.call(SsoDashboardConfigs.t),
      orderByList: orderByList?.call(SsoDashboardConfigs.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoDashboardConfigsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoDashboardConfigs>(
      where: where?.call(SsoDashboardConfigs.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoDashboardConfigs] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoDashboardConfigsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoDashboardConfigs>(
      where: where(SsoDashboardConfigs.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
