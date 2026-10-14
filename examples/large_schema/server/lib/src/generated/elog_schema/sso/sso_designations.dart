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

abstract class SsoDesignations
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoDesignations._({
    this.id,
    required this.companyId,
    required this.name,
    this.description,
    required this.code,
    required this.level,
  });

  factory SsoDesignations({
    _is.UuidValue? id,
    required _is.UuidValue companyId,
    required String name,
    String? description,
    required String code,
    required int level,
  }) = _SsoDesignationsImpl;

  factory SsoDesignations.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoDesignations(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      companyId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['companyId'],
      ),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      code: jsonSerialization['code'] as String,
      level: jsonSerialization['level'] as int,
    );
  }

  static final t = SsoDesignationsTable();

  static const db = SsoDesignationsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue companyId;

  String name;

  String? description;

  String code;

  int level;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoDesignations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoDesignations copyWith({
    _is.UuidValue? id,
    _is.UuidValue? companyId,
    String? name,
    String? description,
    String? code,
    int? level,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoDesignations',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'code': code,
      'level': level,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoDesignations',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'code': code,
      'level': level,
    };
  }

  static SsoDesignationsInclude include() {
    return SsoDesignationsInclude._();
  }

  static SsoDesignationsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoDesignationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoDesignationsTable>? orderBy,
    _is.OrderByListBuilder<SsoDesignationsTable>? orderByList,
    SsoDesignationsInclude? include,
  }) {
    return SsoDesignationsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoDesignations.t),
      orderByList: orderByList?.call(SsoDesignations.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoDesignationsImpl extends SsoDesignations {
  _SsoDesignationsImpl({
    _is.UuidValue? id,
    required _is.UuidValue companyId,
    required String name,
    String? description,
    required String code,
    required int level,
  }) : super._(
         id: id,
         companyId: companyId,
         name: name,
         description: description,
         code: code,
         level: level,
       );

  /// Returns a shallow copy of this [SsoDesignations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoDesignations copyWith({
    Object? id = _Undefined,
    _is.UuidValue? companyId,
    String? name,
    Object? description = _Undefined,
    String? code,
    int? level,
  }) {
    return SsoDesignations(
      id: id is _is.UuidValue? ? id : this.id,
      companyId: companyId ?? this.companyId,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      code: code ?? this.code,
      level: level ?? this.level,
    );
  }
}

class SsoDesignationsUpdateTable extends _is.UpdateTable<SsoDesignationsTable> {
  SsoDesignationsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.companyId,
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

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<int, int> level(int value) => _is.ColumnValue(
    table.level,
    value,
  );
}

class SsoDesignationsTable extends _is.Table<_is.UuidValue?> {
  SsoDesignationsTable({super.tableRelation})
    : super(tableName: 'sso_designations') {
    updateTable = SsoDesignationsUpdateTable(this);
    companyId = _is.ColumnUuid(
      'companyId',
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
    code = _is.ColumnString(
      'code',
      this,
    );
    level = _is.ColumnInt(
      'level',
      this,
    );
  }

  late final SsoDesignationsUpdateTable updateTable;

  late final _is.ColumnUuid companyId;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString code;

  late final _is.ColumnInt level;

  @override
  List<_is.Column> get columns => [
    id,
    companyId,
    name,
    description,
    code,
    level,
  ];
}

class SsoDesignationsInclude extends _is.IncludeObject {
  SsoDesignationsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoDesignations.t;
}

class SsoDesignationsIncludeList extends _is.IncludeList {
  SsoDesignationsIncludeList._({
    _is.WhereExpressionBuilder<SsoDesignationsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoDesignations.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoDesignations.t;
}

class SsoDesignationsRepository {
  const SsoDesignationsRepository._();

  /// Returns a list of [SsoDesignations]s matching the given query parameters.
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
  Future<List<SsoDesignations>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoDesignationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoDesignationsTable>? orderBy,
    _is.OrderByListBuilder<SsoDesignationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoDesignations>(
      where: where?.call(SsoDesignations.t),
      orderBy: orderBy?.call(SsoDesignations.t),
      orderByList: orderByList?.call(SsoDesignations.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoDesignations] matching the given query parameters.
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
  Future<SsoDesignations?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoDesignationsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoDesignationsTable>? orderBy,
    _is.OrderByListBuilder<SsoDesignationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoDesignations>(
      where: where?.call(SsoDesignations.t),
      orderBy: orderBy?.call(SsoDesignations.t),
      orderByList: orderByList?.call(SsoDesignations.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoDesignations] by its [id] or null if no such row exists.
  Future<SsoDesignations?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoDesignations>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoDesignations]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoDesignations]s will have their `id` fields set.
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
  Future<List<SsoDesignations>> insert(
    _is.DatabaseSession session,
    List<SsoDesignations> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoDesignations>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoDesignations] and returns the inserted row.
  ///
  /// The returned [SsoDesignations] will have its `id` field set.
  Future<SsoDesignations> insertRow(
    _is.DatabaseSession session,
    SsoDesignations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoDesignations>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoDesignations]s in the list and returns the resulting rows.
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
  /// The returned [SsoDesignations]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoDesignations>> upsert(
    _is.DatabaseSession session,
    List<SsoDesignations> rows, {
    required _is.ColumnSelections<SsoDesignationsTable> conflictColumns,
    _is.ColumnSelections<SsoDesignationsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoDesignationsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoDesignations>(
      rows,
      conflictColumns: conflictColumns(SsoDesignations.t),
      updateColumns: updateColumns?.call(SsoDesignations.t),
      updateWhere: updateWhere?.call(SsoDesignations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoDesignations] and returns the resulting row.
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
  /// The returned [SsoDesignations] will have its `id` field set.
  Future<SsoDesignations?> upsertRow(
    _is.DatabaseSession session,
    SsoDesignations row, {
    required _is.ColumnSelections<SsoDesignationsTable> conflictColumns,
    _is.ColumnSelections<SsoDesignationsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoDesignationsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoDesignations>(
      row,
      conflictColumns: conflictColumns(SsoDesignations.t),
      updateColumns: updateColumns?.call(SsoDesignations.t),
      updateWhere: updateWhere?.call(SsoDesignations.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoDesignations]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoDesignations>> update(
    _is.DatabaseSession session,
    List<SsoDesignations> rows, {
    _is.ColumnSelections<SsoDesignationsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoDesignations>(
      rows,
      columns: columns?.call(SsoDesignations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoDesignations]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoDesignations> updateRow(
    _is.DatabaseSession session,
    SsoDesignations row, {
    _is.ColumnSelections<SsoDesignationsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoDesignations>(
      row,
      columns: columns?.call(SsoDesignations.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoDesignations] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoDesignations?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoDesignationsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoDesignations>(
      id,
      columnValues: columnValues(SsoDesignations.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoDesignations]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoDesignations>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoDesignationsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoDesignationsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoDesignationsTable>? orderBy,
    _is.OrderByListBuilder<SsoDesignationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoDesignations>(
      columnValues: columnValues(SsoDesignations.t.updateTable),
      where: where(SsoDesignations.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoDesignations.t),
      orderByList: orderByList?.call(SsoDesignations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoDesignations]s in the list and returns the deleted rows.
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
  Future<List<SsoDesignations>> delete(
    _is.DatabaseSession session,
    List<SsoDesignations> rows, {
    _is.OrderByBuilder<SsoDesignationsTable>? orderBy,
    _is.OrderByListBuilder<SsoDesignationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoDesignations>(
      rows,
      orderBy: orderBy?.call(SsoDesignations.t),
      orderByList: orderByList?.call(SsoDesignations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoDesignations].
  Future<SsoDesignations> deleteRow(
    _is.DatabaseSession session,
    SsoDesignations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoDesignations>(
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
  Future<List<SsoDesignations>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoDesignationsTable> where,
    _is.OrderByBuilder<SsoDesignationsTable>? orderBy,
    _is.OrderByListBuilder<SsoDesignationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoDesignations>(
      where: where(SsoDesignations.t),
      orderBy: orderBy?.call(SsoDesignations.t),
      orderByList: orderByList?.call(SsoDesignations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoDesignationsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoDesignations>(
      where: where?.call(SsoDesignations.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoDesignations] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoDesignationsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoDesignations>(
      where: where(SsoDesignations.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
