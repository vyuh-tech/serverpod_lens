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

abstract class ElogPresetRoles
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPresetRoles._({
    this.id,
    required this.industryId,
    required this.code,
    required this.name,
    required this.level,
    required this.categoryCode,
    this.description,
    required this.isDefaultEnabled,
    required this.displayOrder,
  });

  factory ElogPresetRoles({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
    required int level,
    required String categoryCode,
    String? description,
    required bool isDefaultEnabled,
    required int displayOrder,
  }) = _ElogPresetRolesImpl;

  factory ElogPresetRoles.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPresetRoles(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      level: jsonSerialization['level'] as int,
      categoryCode: jsonSerialization['categoryCode'] as String,
      description: jsonSerialization['description'] as String?,
      isDefaultEnabled: _is.BoolJsonExtension.fromJson(
        jsonSerialization['isDefaultEnabled'],
      ),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  static final t = ElogPresetRolesTable();

  static const db = ElogPresetRolesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue industryId;

  String code;

  String name;

  int level;

  String categoryCode;

  String? description;

  bool isDefaultEnabled;

  int displayOrder;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPresetRoles]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPresetRoles copyWith({
    _is.UuidValue? id,
    _is.UuidValue? industryId,
    String? code,
    String? name,
    int? level,
    String? categoryCode,
    String? description,
    bool? isDefaultEnabled,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetRoles',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'level': level,
      'categoryCode': categoryCode,
      if (description != null) 'description': description,
      'isDefaultEnabled': isDefaultEnabled,
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetRoles',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'level': level,
      'categoryCode': categoryCode,
      if (description != null) 'description': description,
      'isDefaultEnabled': isDefaultEnabled,
      'displayOrder': displayOrder,
    };
  }

  static ElogPresetRolesInclude include() {
    return ElogPresetRolesInclude._();
  }

  static ElogPresetRolesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPresetRolesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetRolesTable>? orderByList,
    ElogPresetRolesInclude? include,
  }) {
    return ElogPresetRolesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetRoles.t),
      orderByList: orderByList?.call(ElogPresetRoles.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetRolesImpl extends ElogPresetRoles {
  _ElogPresetRolesImpl({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
    required int level,
    required String categoryCode,
    String? description,
    required bool isDefaultEnabled,
    required int displayOrder,
  }) : super._(
         id: id,
         industryId: industryId,
         code: code,
         name: name,
         level: level,
         categoryCode: categoryCode,
         description: description,
         isDefaultEnabled: isDefaultEnabled,
         displayOrder: displayOrder,
       );

  /// Returns a shallow copy of this [ElogPresetRoles]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPresetRoles copyWith({
    Object? id = _Undefined,
    _is.UuidValue? industryId,
    String? code,
    String? name,
    int? level,
    String? categoryCode,
    Object? description = _Undefined,
    bool? isDefaultEnabled,
    int? displayOrder,
  }) {
    return ElogPresetRoles(
      id: id is _is.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      code: code ?? this.code,
      name: name ?? this.name,
      level: level ?? this.level,
      categoryCode: categoryCode ?? this.categoryCode,
      description: description is String? ? description : this.description,
      isDefaultEnabled: isDefaultEnabled ?? this.isDefaultEnabled,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}

class ElogPresetRolesUpdateTable extends _is.UpdateTable<ElogPresetRolesTable> {
  ElogPresetRolesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> industryId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.industryId,
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

  _is.ColumnValue<int, int> level(int value) => _is.ColumnValue(
    table.level,
    value,
  );

  _is.ColumnValue<String, String> categoryCode(String value) => _is.ColumnValue(
    table.categoryCode,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<bool, bool> isDefaultEnabled(bool value) => _is.ColumnValue(
    table.isDefaultEnabled,
    value,
  );

  _is.ColumnValue<int, int> displayOrder(int value) => _is.ColumnValue(
    table.displayOrder,
    value,
  );
}

class ElogPresetRolesTable extends _is.Table<_is.UuidValue?> {
  ElogPresetRolesTable({super.tableRelation})
    : super(tableName: 'elog_preset_roles') {
    updateTable = ElogPresetRolesUpdateTable(this);
    industryId = _is.ColumnUuid(
      'industryId',
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
    level = _is.ColumnInt(
      'level',
      this,
    );
    categoryCode = _is.ColumnString(
      'categoryCode',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    isDefaultEnabled = _is.ColumnBool(
      'isDefaultEnabled',
      this,
    );
    displayOrder = _is.ColumnInt(
      'displayOrder',
      this,
    );
  }

  late final ElogPresetRolesUpdateTable updateTable;

  late final _is.ColumnUuid industryId;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnInt level;

  late final _is.ColumnString categoryCode;

  late final _is.ColumnString description;

  late final _is.ColumnBool isDefaultEnabled;

  late final _is.ColumnInt displayOrder;

  @override
  List<_is.Column> get columns => [
    id,
    industryId,
    code,
    name,
    level,
    categoryCode,
    description,
    isDefaultEnabled,
    displayOrder,
  ];
}

class ElogPresetRolesInclude extends _is.IncludeObject {
  ElogPresetRolesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetRoles.t;
}

class ElogPresetRolesIncludeList extends _is.IncludeList {
  ElogPresetRolesIncludeList._({
    _is.WhereExpressionBuilder<ElogPresetRolesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPresetRoles.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetRoles.t;
}

class ElogPresetRolesRepository {
  const ElogPresetRolesRepository._();

  /// Returns a list of [ElogPresetRoles]s matching the given query parameters.
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
  Future<List<ElogPresetRoles>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetRolesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetRolesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPresetRoles>(
      where: where?.call(ElogPresetRoles.t),
      orderBy: orderBy?.call(ElogPresetRoles.t),
      orderByList: orderByList?.call(ElogPresetRoles.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPresetRoles] matching the given query parameters.
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
  Future<ElogPresetRoles?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetRolesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPresetRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetRolesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPresetRoles>(
      where: where?.call(ElogPresetRoles.t),
      orderBy: orderBy?.call(ElogPresetRoles.t),
      orderByList: orderByList?.call(ElogPresetRoles.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPresetRoles] by its [id] or null if no such row exists.
  Future<ElogPresetRoles?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPresetRoles>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPresetRoles]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPresetRoles]s will have their `id` fields set.
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
  Future<List<ElogPresetRoles>> insert(
    _is.DatabaseSession session,
    List<ElogPresetRoles> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPresetRoles>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPresetRoles] and returns the inserted row.
  ///
  /// The returned [ElogPresetRoles] will have its `id` field set.
  Future<ElogPresetRoles> insertRow(
    _is.DatabaseSession session,
    ElogPresetRoles row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPresetRoles>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPresetRoles]s in the list and returns the resulting rows.
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
  /// The returned [ElogPresetRoles]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetRoles>> upsert(
    _is.DatabaseSession session,
    List<ElogPresetRoles> rows, {
    required _is.ColumnSelections<ElogPresetRolesTable> conflictColumns,
    _is.ColumnSelections<ElogPresetRolesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetRolesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPresetRoles>(
      rows,
      conflictColumns: conflictColumns(ElogPresetRoles.t),
      updateColumns: updateColumns?.call(ElogPresetRoles.t),
      updateWhere: updateWhere?.call(ElogPresetRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPresetRoles] and returns the resulting row.
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
  /// The returned [ElogPresetRoles] will have its `id` field set.
  Future<ElogPresetRoles?> upsertRow(
    _is.DatabaseSession session,
    ElogPresetRoles row, {
    required _is.ColumnSelections<ElogPresetRolesTable> conflictColumns,
    _is.ColumnSelections<ElogPresetRolesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetRolesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPresetRoles>(
      row,
      conflictColumns: conflictColumns(ElogPresetRoles.t),
      updateColumns: updateColumns?.call(ElogPresetRoles.t),
      updateWhere: updateWhere?.call(ElogPresetRoles.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetRoles]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetRoles>> update(
    _is.DatabaseSession session,
    List<ElogPresetRoles> rows, {
    _is.ColumnSelections<ElogPresetRolesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPresetRoles>(
      rows,
      columns: columns?.call(ElogPresetRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPresetRoles]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPresetRoles> updateRow(
    _is.DatabaseSession session,
    ElogPresetRoles row, {
    _is.ColumnSelections<ElogPresetRolesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPresetRoles>(
      row,
      columns: columns?.call(ElogPresetRoles.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPresetRoles] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPresetRoles?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPresetRolesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPresetRoles>(
      id,
      columnValues: columnValues(ElogPresetRoles.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetRoles]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetRoles>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPresetRolesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPresetRolesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPresetRoles>(
      columnValues: columnValues(ElogPresetRoles.t.updateTable),
      where: where(ElogPresetRoles.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetRoles.t),
      orderByList: orderByList?.call(ElogPresetRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPresetRoles]s in the list and returns the deleted rows.
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
  Future<List<ElogPresetRoles>> delete(
    _is.DatabaseSession session,
    List<ElogPresetRoles> rows, {
    _is.OrderByBuilder<ElogPresetRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPresetRoles>(
      rows,
      orderBy: orderBy?.call(ElogPresetRoles.t),
      orderByList: orderByList?.call(ElogPresetRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPresetRoles].
  Future<ElogPresetRoles> deleteRow(
    _is.DatabaseSession session,
    ElogPresetRoles row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPresetRoles>(
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
  Future<List<ElogPresetRoles>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetRolesTable> where,
    _is.OrderByBuilder<ElogPresetRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPresetRoles>(
      where: where(ElogPresetRoles.t),
      orderBy: orderBy?.call(ElogPresetRoles.t),
      orderByList: orderByList?.call(ElogPresetRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetRolesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPresetRoles>(
      where: where?.call(ElogPresetRoles.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPresetRoles] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetRolesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPresetRoles>(
      where: where(ElogPresetRoles.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
