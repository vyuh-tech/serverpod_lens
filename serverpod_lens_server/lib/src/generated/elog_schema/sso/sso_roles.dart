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

abstract class SsoRoles
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoRoles._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.level,
    required this.hasGlobalProductAccess,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory SsoRoles({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required int level,
    required bool hasGlobalProductAccess,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _SsoRolesImpl;

  factory SsoRoles.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoRoles(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      level: jsonSerialization['level'] as int,
      hasGlobalProductAccess: _is.BoolJsonExtension.fromJson(
        jsonSerialization['hasGlobalProductAccess'],
      ),
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

  static final t = SsoRolesTable();

  static const db = SsoRolesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  int level;

  bool hasGlobalProductAccess;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoRoles]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoRoles copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    int? level,
    bool? hasGlobalProductAccess,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoRoles',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'level': level,
      'hasGlobalProductAccess': hasGlobalProductAccess,
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
      '__className__': 'SsoRoles',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'level': level,
      'hasGlobalProductAccess': hasGlobalProductAccess,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static SsoRolesInclude include() {
    return SsoRolesInclude._();
  }

  static SsoRolesIncludeList includeList({
    _is.WhereExpressionBuilder<SsoRolesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoRolesTable>? orderBy,
    _is.OrderByListBuilder<SsoRolesTable>? orderByList,
    SsoRolesInclude? include,
  }) {
    return SsoRolesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoRoles.t),
      orderByList: orderByList?.call(SsoRoles.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoRolesImpl extends SsoRoles {
  _SsoRolesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required int level,
    required bool hasGlobalProductAccess,
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
         level: level,
         hasGlobalProductAccess: hasGlobalProductAccess,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [SsoRoles]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoRoles copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    int? level,
    bool? hasGlobalProductAccess,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return SsoRoles(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      level: level ?? this.level,
      hasGlobalProductAccess:
          hasGlobalProductAccess ?? this.hasGlobalProductAccess,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class SsoRolesUpdateTable extends _is.UpdateTable<SsoRolesTable> {
  SsoRolesUpdateTable(super.table);

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

  _is.ColumnValue<int, int> level(int value) => _is.ColumnValue(
    table.level,
    value,
  );

  _is.ColumnValue<bool, bool> hasGlobalProductAccess(bool value) =>
      _is.ColumnValue(
        table.hasGlobalProductAccess,
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

class SsoRolesTable extends _is.Table<_is.UuidValue?> {
  SsoRolesTable({super.tableRelation}) : super(tableName: 'sso_roles') {
    updateTable = SsoRolesUpdateTable(this);
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
    level = _is.ColumnInt(
      'level',
      this,
    );
    hasGlobalProductAccess = _is.ColumnBool(
      'hasGlobalProductAccess',
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

  late final SsoRolesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnInt level;

  late final _is.ColumnBool hasGlobalProductAccess;

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
    level,
    hasGlobalProductAccess,
    isActive,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class SsoRolesInclude extends _is.IncludeObject {
  SsoRolesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoRoles.t;
}

class SsoRolesIncludeList extends _is.IncludeList {
  SsoRolesIncludeList._({
    _is.WhereExpressionBuilder<SsoRolesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoRoles.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoRoles.t;
}

class SsoRolesRepository {
  const SsoRolesRepository._();

  /// Returns a list of [SsoRoles]s matching the given query parameters.
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
  Future<List<SsoRoles>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoRolesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoRolesTable>? orderBy,
    _is.OrderByListBuilder<SsoRolesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoRoles>(
      where: where?.call(SsoRoles.t),
      orderBy: orderBy?.call(SsoRoles.t),
      orderByList: orderByList?.call(SsoRoles.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoRoles] matching the given query parameters.
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
  Future<SsoRoles?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoRolesTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoRolesTable>? orderBy,
    _is.OrderByListBuilder<SsoRolesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoRoles>(
      where: where?.call(SsoRoles.t),
      orderBy: orderBy?.call(SsoRoles.t),
      orderByList: orderByList?.call(SsoRoles.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoRoles] by its [id] or null if no such row exists.
  Future<SsoRoles?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoRoles>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoRoles]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoRoles]s will have their `id` fields set.
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
  Future<List<SsoRoles>> insert(
    _is.DatabaseSession session,
    List<SsoRoles> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoRoles>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoRoles] and returns the inserted row.
  ///
  /// The returned [SsoRoles] will have its `id` field set.
  Future<SsoRoles> insertRow(
    _is.DatabaseSession session,
    SsoRoles row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoRoles>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoRoles]s in the list and returns the resulting rows.
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
  /// The returned [SsoRoles]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoRoles>> upsert(
    _is.DatabaseSession session,
    List<SsoRoles> rows, {
    required _is.ColumnSelections<SsoRolesTable> conflictColumns,
    _is.ColumnSelections<SsoRolesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoRolesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoRoles>(
      rows,
      conflictColumns: conflictColumns(SsoRoles.t),
      updateColumns: updateColumns?.call(SsoRoles.t),
      updateWhere: updateWhere?.call(SsoRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoRoles] and returns the resulting row.
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
  /// The returned [SsoRoles] will have its `id` field set.
  Future<SsoRoles?> upsertRow(
    _is.DatabaseSession session,
    SsoRoles row, {
    required _is.ColumnSelections<SsoRolesTable> conflictColumns,
    _is.ColumnSelections<SsoRolesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoRolesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoRoles>(
      row,
      conflictColumns: conflictColumns(SsoRoles.t),
      updateColumns: updateColumns?.call(SsoRoles.t),
      updateWhere: updateWhere?.call(SsoRoles.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoRoles]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoRoles>> update(
    _is.DatabaseSession session,
    List<SsoRoles> rows, {
    _is.ColumnSelections<SsoRolesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoRoles>(
      rows,
      columns: columns?.call(SsoRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoRoles]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoRoles> updateRow(
    _is.DatabaseSession session,
    SsoRoles row, {
    _is.ColumnSelections<SsoRolesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoRoles>(
      row,
      columns: columns?.call(SsoRoles.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoRoles] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoRoles?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoRolesUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoRoles>(
      id,
      columnValues: columnValues(SsoRoles.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoRoles]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoRoles>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoRolesUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<SsoRolesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoRolesTable>? orderBy,
    _is.OrderByListBuilder<SsoRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoRoles>(
      columnValues: columnValues(SsoRoles.t.updateTable),
      where: where(SsoRoles.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoRoles.t),
      orderByList: orderByList?.call(SsoRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoRoles]s in the list and returns the deleted rows.
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
  Future<List<SsoRoles>> delete(
    _is.DatabaseSession session,
    List<SsoRoles> rows, {
    _is.OrderByBuilder<SsoRolesTable>? orderBy,
    _is.OrderByListBuilder<SsoRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoRoles>(
      rows,
      orderBy: orderBy?.call(SsoRoles.t),
      orderByList: orderByList?.call(SsoRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoRoles].
  Future<SsoRoles> deleteRow(
    _is.DatabaseSession session,
    SsoRoles row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoRoles>(
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
  Future<List<SsoRoles>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoRolesTable> where,
    _is.OrderByBuilder<SsoRolesTable>? orderBy,
    _is.OrderByListBuilder<SsoRolesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoRoles>(
      where: where(SsoRoles.t),
      orderBy: orderBy?.call(SsoRoles.t),
      orderByList: orderByList?.call(SsoRoles.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoRolesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoRoles>(
      where: where?.call(SsoRoles.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoRoles] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoRolesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoRoles>(
      where: where(SsoRoles.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
