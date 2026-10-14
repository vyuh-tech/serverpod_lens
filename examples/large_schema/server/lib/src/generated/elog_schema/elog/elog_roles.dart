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

abstract class ElogRoles
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogRoles._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.roleCategoryId,
    required this.level,
  });

  factory ElogRoles({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    _is.UuidValue? roleCategoryId,
    required int level,
  }) = _ElogRolesImpl;

  factory ElogRoles.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogRoles(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      roleCategoryId: jsonSerialization['roleCategoryId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['roleCategoryId'],
            ),
      level: jsonSerialization['level'] as int,
    );
  }

  static final t = ElogRolesTable();

  static const db = ElogRolesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  _is.UuidValue? roleCategoryId;

  int level;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogRoles]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogRoles copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    _is.UuidValue? roleCategoryId,
    int? level,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogRoles',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (roleCategoryId != null) 'roleCategoryId': roleCategoryId?.toJson(),
      'level': level,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogRoles',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (roleCategoryId != null) 'roleCategoryId': roleCategoryId?.toJson(),
      'level': level,
    };
  }

  static ElogRolesInclude include() {
    return ElogRolesInclude._();
  }

  static ElogRolesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogRolesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogRolesTable>? orderByList,
    ElogRolesInclude? include,
  }) {
    return ElogRolesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogRoles.t),
      orderByList: orderByList?.call(ElogRoles.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogRolesImpl extends ElogRoles {
  _ElogRolesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    _is.UuidValue? roleCategoryId,
    required int level,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         roleCategoryId: roleCategoryId,
         level: level,
       );

  /// Returns a shallow copy of this [ElogRoles]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogRoles copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? roleCategoryId = _Undefined,
    int? level,
  }) {
    return ElogRoles(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      roleCategoryId: roleCategoryId is _is.UuidValue?
          ? roleCategoryId
          : this.roleCategoryId,
      level: level ?? this.level,
    );
  }
}

class ElogRolesUpdateTable extends _is.UpdateTable<ElogRolesTable> {
  ElogRolesUpdateTable(super.table);

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

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> roleCategoryId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.roleCategoryId,
    value,
  );

  _is.ColumnValue<int, int> level(int value) => _is.ColumnValue(
    table.level,
    value,
  );
}

class ElogRolesTable extends _is.Table<_is.UuidValue?> {
  ElogRolesTable({super.tableRelation}) : super(tableName: 'elog_roles') {
    updateTable = ElogRolesUpdateTable(this);
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
    roleCategoryId = _is.ColumnUuid(
      'roleCategoryId',
      this,
    );
    level = _is.ColumnInt(
      'level',
      this,
    );
  }

  late final ElogRolesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnUuid roleCategoryId;

  late final _is.ColumnInt level;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    roleCategoryId,
    level,
  ];
}

class ElogRolesInclude extends _is.IncludeObject {
  ElogRolesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogRoles.t;
}

class ElogRolesIncludeList extends _is.IncludeList {
  ElogRolesIncludeList._({
    _is.WhereExpressionBuilder<ElogRolesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogRoles.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogRoles.t;
}

class ElogRolesRepository {
  const ElogRolesRepository._();

  /// Returns a list of [ElogRoles]s matching the given query parameters.
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
  Future<List<ElogRoles>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogRolesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogRolesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogRoles>(
      where: where?.call(ElogRoles.t),
      orderBy: orderBy?.call(ElogRoles.t),
      orderByList: orderByList?.call(ElogRoles.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogRoles] matching the given query parameters.
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
  Future<ElogRoles?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogRolesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogRolesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogRoles>(
      where: where?.call(ElogRoles.t),
      orderBy: orderBy?.call(ElogRoles.t),
      orderByList: orderByList?.call(ElogRoles.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogRoles] by its [id] or null if no such row exists.
  Future<ElogRoles?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogRoles>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogRoles]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogRoles]s will have their `id` fields set.
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
  Future<List<ElogRoles>> insert(
    _is.DatabaseSession session,
    List<ElogRoles> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogRoles>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogRoles] and returns the inserted row.
  ///
  /// The returned [ElogRoles] will have its `id` field set.
  Future<ElogRoles> insertRow(
    _is.DatabaseSession session,
    ElogRoles row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogRoles>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogRoles]s in the list and returns the resulting rows.
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
  /// The returned [ElogRoles]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogRoles>> upsert(
    _is.DatabaseSession session,
    List<ElogRoles> rows, {
    required _is.ColumnSelections<ElogRolesTable> conflictColumns,
    _is.ColumnSelections<ElogRolesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogRolesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogRoles>(
      rows,
      conflictColumns: conflictColumns(ElogRoles.t),
      updateColumns: updateColumns?.call(ElogRoles.t),
      updateWhere: updateWhere?.call(ElogRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogRoles] and returns the resulting row.
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
  /// The returned [ElogRoles] will have its `id` field set.
  Future<ElogRoles?> upsertRow(
    _is.DatabaseSession session,
    ElogRoles row, {
    required _is.ColumnSelections<ElogRolesTable> conflictColumns,
    _is.ColumnSelections<ElogRolesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogRolesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogRoles>(
      row,
      conflictColumns: conflictColumns(ElogRoles.t),
      updateColumns: updateColumns?.call(ElogRoles.t),
      updateWhere: updateWhere?.call(ElogRoles.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogRoles]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogRoles>> update(
    _is.DatabaseSession session,
    List<ElogRoles> rows, {
    _is.ColumnSelections<ElogRolesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogRoles>(
      rows,
      columns: columns?.call(ElogRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogRoles]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogRoles> updateRow(
    _is.DatabaseSession session,
    ElogRoles row, {
    _is.ColumnSelections<ElogRolesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogRoles>(
      row,
      columns: columns?.call(ElogRoles.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogRoles] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogRoles?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogRolesUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogRoles>(
      id,
      columnValues: columnValues(ElogRoles.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogRoles]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogRoles>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogRolesUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogRolesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogRoles>(
      columnValues: columnValues(ElogRoles.t.updateTable),
      where: where(ElogRoles.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogRoles.t),
      orderByList: orderByList?.call(ElogRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogRoles]s in the list and returns the deleted rows.
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
  Future<List<ElogRoles>> delete(
    _is.DatabaseSession session,
    List<ElogRoles> rows, {
    _is.OrderByBuilder<ElogRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogRoles>(
      rows,
      orderBy: orderBy?.call(ElogRoles.t),
      orderByList: orderByList?.call(ElogRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogRoles].
  Future<ElogRoles> deleteRow(
    _is.DatabaseSession session,
    ElogRoles row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogRoles>(
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
  Future<List<ElogRoles>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogRolesTable> where,
    _is.OrderByBuilder<ElogRolesTable>? orderBy,
    _is.OrderByListBuilder<ElogRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogRoles>(
      where: where(ElogRoles.t),
      orderBy: orderBy?.call(ElogRoles.t),
      orderByList: orderByList?.call(ElogRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogRolesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogRoles>(
      where: where?.call(ElogRoles.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogRoles] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogRolesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogRoles>(
      where: where(ElogRoles.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
