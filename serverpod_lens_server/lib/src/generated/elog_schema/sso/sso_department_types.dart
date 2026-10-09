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

abstract class SsoDepartmentTypes
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoDepartmentTypes._({
    this.id,
    required this.code,
    required this.name,
    this.description,
  });

  factory SsoDepartmentTypes({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
  }) = _SsoDepartmentTypesImpl;

  factory SsoDepartmentTypes.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoDepartmentTypes(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
    );
  }

  static final t = SsoDepartmentTypesTable();

  static const db = SsoDepartmentTypesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoDepartmentTypes]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoDepartmentTypes copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoDepartmentTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoDepartmentTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
    };
  }

  static SsoDepartmentTypesInclude include() {
    return SsoDepartmentTypesInclude._();
  }

  static SsoDepartmentTypesIncludeList includeList({
    _is.WhereExpressionBuilder<SsoDepartmentTypesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoDepartmentTypesTable>? orderBy,
    _is.OrderByListBuilder<SsoDepartmentTypesTable>? orderByList,
    SsoDepartmentTypesInclude? include,
  }) {
    return SsoDepartmentTypesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoDepartmentTypes.t),
      orderByList: orderByList?.call(SsoDepartmentTypes.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoDepartmentTypesImpl extends SsoDepartmentTypes {
  _SsoDepartmentTypesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
       );

  /// Returns a shallow copy of this [SsoDepartmentTypes]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoDepartmentTypes copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
  }) {
    return SsoDepartmentTypes(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
    );
  }
}

class SsoDepartmentTypesUpdateTable
    extends _is.UpdateTable<SsoDepartmentTypesTable> {
  SsoDepartmentTypesUpdateTable(super.table);

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
}

class SsoDepartmentTypesTable extends _is.Table<_is.UuidValue?> {
  SsoDepartmentTypesTable({super.tableRelation})
    : super(tableName: 'sso_department_types') {
    updateTable = SsoDepartmentTypesUpdateTable(this);
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
  }

  late final SsoDepartmentTypesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
  ];
}

class SsoDepartmentTypesInclude extends _is.IncludeObject {
  SsoDepartmentTypesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoDepartmentTypes.t;
}

class SsoDepartmentTypesIncludeList extends _is.IncludeList {
  SsoDepartmentTypesIncludeList._({
    _is.WhereExpressionBuilder<SsoDepartmentTypesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoDepartmentTypes.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoDepartmentTypes.t;
}

class SsoDepartmentTypesRepository {
  const SsoDepartmentTypesRepository._();

  /// Returns a list of [SsoDepartmentTypes]s matching the given query parameters.
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
  Future<List<SsoDepartmentTypes>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoDepartmentTypesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoDepartmentTypesTable>? orderBy,
    _is.OrderByListBuilder<SsoDepartmentTypesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoDepartmentTypes>(
      where: where?.call(SsoDepartmentTypes.t),
      orderBy: orderBy?.call(SsoDepartmentTypes.t),
      orderByList: orderByList?.call(SsoDepartmentTypes.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoDepartmentTypes] matching the given query parameters.
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
  Future<SsoDepartmentTypes?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoDepartmentTypesTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoDepartmentTypesTable>? orderBy,
    _is.OrderByListBuilder<SsoDepartmentTypesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoDepartmentTypes>(
      where: where?.call(SsoDepartmentTypes.t),
      orderBy: orderBy?.call(SsoDepartmentTypes.t),
      orderByList: orderByList?.call(SsoDepartmentTypes.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoDepartmentTypes] by its [id] or null if no such row exists.
  Future<SsoDepartmentTypes?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoDepartmentTypes>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoDepartmentTypes]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoDepartmentTypes]s will have their `id` fields set.
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
  Future<List<SsoDepartmentTypes>> insert(
    _is.DatabaseSession session,
    List<SsoDepartmentTypes> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoDepartmentTypes>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoDepartmentTypes] and returns the inserted row.
  ///
  /// The returned [SsoDepartmentTypes] will have its `id` field set.
  Future<SsoDepartmentTypes> insertRow(
    _is.DatabaseSession session,
    SsoDepartmentTypes row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoDepartmentTypes>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoDepartmentTypes]s in the list and returns the resulting rows.
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
  /// The returned [SsoDepartmentTypes]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoDepartmentTypes>> upsert(
    _is.DatabaseSession session,
    List<SsoDepartmentTypes> rows, {
    required _is.ColumnSelections<SsoDepartmentTypesTable> conflictColumns,
    _is.ColumnSelections<SsoDepartmentTypesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoDepartmentTypesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoDepartmentTypes>(
      rows,
      conflictColumns: conflictColumns(SsoDepartmentTypes.t),
      updateColumns: updateColumns?.call(SsoDepartmentTypes.t),
      updateWhere: updateWhere?.call(SsoDepartmentTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoDepartmentTypes] and returns the resulting row.
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
  /// The returned [SsoDepartmentTypes] will have its `id` field set.
  Future<SsoDepartmentTypes?> upsertRow(
    _is.DatabaseSession session,
    SsoDepartmentTypes row, {
    required _is.ColumnSelections<SsoDepartmentTypesTable> conflictColumns,
    _is.ColumnSelections<SsoDepartmentTypesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoDepartmentTypesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoDepartmentTypes>(
      row,
      conflictColumns: conflictColumns(SsoDepartmentTypes.t),
      updateColumns: updateColumns?.call(SsoDepartmentTypes.t),
      updateWhere: updateWhere?.call(SsoDepartmentTypes.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoDepartmentTypes]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoDepartmentTypes>> update(
    _is.DatabaseSession session,
    List<SsoDepartmentTypes> rows, {
    _is.ColumnSelections<SsoDepartmentTypesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoDepartmentTypes>(
      rows,
      columns: columns?.call(SsoDepartmentTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoDepartmentTypes]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoDepartmentTypes> updateRow(
    _is.DatabaseSession session,
    SsoDepartmentTypes row, {
    _is.ColumnSelections<SsoDepartmentTypesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoDepartmentTypes>(
      row,
      columns: columns?.call(SsoDepartmentTypes.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoDepartmentTypes] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoDepartmentTypes?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoDepartmentTypesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoDepartmentTypes>(
      id,
      columnValues: columnValues(SsoDepartmentTypes.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoDepartmentTypes]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoDepartmentTypes>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoDepartmentTypesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoDepartmentTypesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoDepartmentTypesTable>? orderBy,
    _is.OrderByListBuilder<SsoDepartmentTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoDepartmentTypes>(
      columnValues: columnValues(SsoDepartmentTypes.t.updateTable),
      where: where(SsoDepartmentTypes.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoDepartmentTypes.t),
      orderByList: orderByList?.call(SsoDepartmentTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoDepartmentTypes]s in the list and returns the deleted rows.
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
  Future<List<SsoDepartmentTypes>> delete(
    _is.DatabaseSession session,
    List<SsoDepartmentTypes> rows, {
    _is.OrderByBuilder<SsoDepartmentTypesTable>? orderBy,
    _is.OrderByListBuilder<SsoDepartmentTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoDepartmentTypes>(
      rows,
      orderBy: orderBy?.call(SsoDepartmentTypes.t),
      orderByList: orderByList?.call(SsoDepartmentTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoDepartmentTypes].
  Future<SsoDepartmentTypes> deleteRow(
    _is.DatabaseSession session,
    SsoDepartmentTypes row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoDepartmentTypes>(
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
  Future<List<SsoDepartmentTypes>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoDepartmentTypesTable> where,
    _is.OrderByBuilder<SsoDepartmentTypesTable>? orderBy,
    _is.OrderByListBuilder<SsoDepartmentTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoDepartmentTypes>(
      where: where(SsoDepartmentTypes.t),
      orderBy: orderBy?.call(SsoDepartmentTypes.t),
      orderByList: orderByList?.call(SsoDepartmentTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoDepartmentTypesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoDepartmentTypes>(
      where: where?.call(SsoDepartmentTypes.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoDepartmentTypes] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoDepartmentTypesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoDepartmentTypes>(
      where: where(SsoDepartmentTypes.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
