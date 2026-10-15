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

abstract class ShopSharedPreference
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  ShopSharedPreference._({this.id, required this.key, required this.value});

  factory ShopSharedPreference({
    int? id,
    required String key,
    required String value,
  }) = _ShopSharedPreferenceImpl;

  factory ShopSharedPreference.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ShopSharedPreference(
      id: jsonSerialization['id'] as int?,
      key: jsonSerialization['key'] as String,
      value: jsonSerialization['value'] as String,
    );
  }

  static final t = ShopSharedPreferenceTable();

  static const db = ShopSharedPreferenceRepository._();

  @override
  int? id;

  String key;

  String value;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [ShopSharedPreference]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ShopSharedPreference copyWith({int? id, String? key, String? value});
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopSharedPreference',
      if (id != null) 'id': id,
      'key': key,
      'value': value,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopSharedPreference',
      if (id != null) 'id': id,
      'key': key,
      'value': value,
    };
  }

  static ShopSharedPreferenceInclude include() {
    return ShopSharedPreferenceInclude._();
  }

  static ShopSharedPreferenceIncludeList includeList({
    _is.WhereExpressionBuilder<ShopSharedPreferenceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopSharedPreferenceTable>? orderBy,
    _is.OrderByListBuilder<ShopSharedPreferenceTable>? orderByList,
    ShopSharedPreferenceInclude? include,
  }) {
    return ShopSharedPreferenceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopSharedPreference.t),
      orderByList: orderByList?.call(ShopSharedPreference.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopSharedPreferenceImpl extends ShopSharedPreference {
  _ShopSharedPreferenceImpl({
    int? id,
    required String key,
    required String value,
  }) : super._(id: id, key: key, value: value);

  /// Returns a shallow copy of this [ShopSharedPreference]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ShopSharedPreference copyWith({
    Object? id = _Undefined,
    String? key,
    String? value,
  }) {
    return ShopSharedPreference(
      id: id is int? ? id : this.id,
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }
}

class ShopSharedPreferenceUpdateTable
    extends _is.UpdateTable<ShopSharedPreferenceTable> {
  ShopSharedPreferenceUpdateTable(super.table);

  _is.ColumnValue<String, String> key(String value) =>
      _is.ColumnValue(table.key, value);

  _is.ColumnValue<String, String> value(String value) =>
      _is.ColumnValue(table.value, value);
}

class ShopSharedPreferenceTable extends _is.Table<int?> {
  ShopSharedPreferenceTable({super.tableRelation})
    : super(tableName: 'shop_shared_preferences') {
    updateTable = ShopSharedPreferenceUpdateTable(this);
    key = _is.ColumnString('key', this);
    value = _is.ColumnString('value', this);
  }

  late final ShopSharedPreferenceUpdateTable updateTable;

  late final _is.ColumnString key;

  late final _is.ColumnString value;

  @override
  List<_is.Column> get columns => [id, key, value];
}

class ShopSharedPreferenceInclude extends _is.IncludeObject {
  ShopSharedPreferenceInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => ShopSharedPreference.t;
}

class ShopSharedPreferenceIncludeList extends _is.IncludeList {
  ShopSharedPreferenceIncludeList._({
    _is.WhereExpressionBuilder<ShopSharedPreferenceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShopSharedPreference.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => ShopSharedPreference.t;
}

class ShopSharedPreferenceRepository {
  const ShopSharedPreferenceRepository._();

  /// Returns a list of [ShopSharedPreference]s matching the given query parameters.
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
  Future<List<ShopSharedPreference>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopSharedPreferenceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopSharedPreferenceTable>? orderBy,
    _is.OrderByListBuilder<ShopSharedPreferenceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ShopSharedPreference>(
      where: where?.call(ShopSharedPreference.t),
      orderBy: orderBy?.call(ShopSharedPreference.t),
      orderByList: orderByList?.call(ShopSharedPreference.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ShopSharedPreference] matching the given query parameters.
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
  Future<ShopSharedPreference?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopSharedPreferenceTable>? where,
    int? offset,
    _is.OrderByBuilder<ShopSharedPreferenceTable>? orderBy,
    _is.OrderByListBuilder<ShopSharedPreferenceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ShopSharedPreference>(
      where: where?.call(ShopSharedPreference.t),
      orderBy: orderBy?.call(ShopSharedPreference.t),
      orderByList: orderByList?.call(ShopSharedPreference.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ShopSharedPreference] by its [id] or null if no such row exists.
  Future<ShopSharedPreference?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ShopSharedPreference>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ShopSharedPreference]s in the list and returns the inserted rows.
  ///
  /// The returned [ShopSharedPreference]s will have their `id` fields set.
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
  Future<List<ShopSharedPreference>> insert(
    _is.DatabaseSession session,
    List<ShopSharedPreference> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ShopSharedPreference>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ShopSharedPreference] and returns the inserted row.
  ///
  /// The returned [ShopSharedPreference] will have its `id` field set.
  Future<ShopSharedPreference> insertRow(
    _is.DatabaseSession session,
    ShopSharedPreference row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ShopSharedPreference>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ShopSharedPreference]s in the list and returns the resulting rows.
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
  /// The returned [ShopSharedPreference]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopSharedPreference>> upsert(
    _is.DatabaseSession session,
    List<ShopSharedPreference> rows, {
    required _is.ColumnSelections<ShopSharedPreferenceTable> conflictColumns,
    _is.ColumnSelections<ShopSharedPreferenceTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopSharedPreferenceTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ShopSharedPreference>(
      rows,
      conflictColumns: conflictColumns(ShopSharedPreference.t),
      updateColumns: updateColumns?.call(ShopSharedPreference.t),
      updateWhere: updateWhere?.call(ShopSharedPreference.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ShopSharedPreference] and returns the resulting row.
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
  /// The returned [ShopSharedPreference] will have its `id` field set.
  Future<ShopSharedPreference?> upsertRow(
    _is.DatabaseSession session,
    ShopSharedPreference row, {
    required _is.ColumnSelections<ShopSharedPreferenceTable> conflictColumns,
    _is.ColumnSelections<ShopSharedPreferenceTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopSharedPreferenceTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ShopSharedPreference>(
      row,
      conflictColumns: conflictColumns(ShopSharedPreference.t),
      updateColumns: updateColumns?.call(ShopSharedPreference.t),
      updateWhere: updateWhere?.call(ShopSharedPreference.t),
      transaction: transaction,
    );
  }

  /// Updates all [ShopSharedPreference]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopSharedPreference>> update(
    _is.DatabaseSession session,
    List<ShopSharedPreference> rows, {
    _is.ColumnSelections<ShopSharedPreferenceTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ShopSharedPreference>(
      rows,
      columns: columns?.call(ShopSharedPreference.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ShopSharedPreference]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ShopSharedPreference> updateRow(
    _is.DatabaseSession session,
    ShopSharedPreference row, {
    _is.ColumnSelections<ShopSharedPreferenceTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ShopSharedPreference>(
      row,
      columns: columns?.call(ShopSharedPreference.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ShopSharedPreference] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ShopSharedPreference?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<ShopSharedPreferenceUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ShopSharedPreference>(
      id,
      columnValues: columnValues(ShopSharedPreference.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ShopSharedPreference]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopSharedPreference>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ShopSharedPreferenceUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ShopSharedPreferenceTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopSharedPreferenceTable>? orderBy,
    _is.OrderByListBuilder<ShopSharedPreferenceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ShopSharedPreference>(
      columnValues: columnValues(ShopSharedPreference.t.updateTable),
      where: where(ShopSharedPreference.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopSharedPreference.t),
      orderByList: orderByList?.call(ShopSharedPreference.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ShopSharedPreference]s in the list and returns the deleted rows.
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
  Future<List<ShopSharedPreference>> delete(
    _is.DatabaseSession session,
    List<ShopSharedPreference> rows, {
    _is.OrderByBuilder<ShopSharedPreferenceTable>? orderBy,
    _is.OrderByListBuilder<ShopSharedPreferenceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ShopSharedPreference>(
      rows,
      orderBy: orderBy?.call(ShopSharedPreference.t),
      orderByList: orderByList?.call(ShopSharedPreference.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ShopSharedPreference].
  Future<ShopSharedPreference> deleteRow(
    _is.DatabaseSession session,
    ShopSharedPreference row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ShopSharedPreference>(
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
  Future<List<ShopSharedPreference>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopSharedPreferenceTable> where,
    _is.OrderByBuilder<ShopSharedPreferenceTable>? orderBy,
    _is.OrderByListBuilder<ShopSharedPreferenceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ShopSharedPreference>(
      where: where(ShopSharedPreference.t),
      orderBy: orderBy?.call(ShopSharedPreference.t),
      orderByList: orderByList?.call(ShopSharedPreference.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopSharedPreferenceTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ShopSharedPreference>(
      where: where?.call(ShopSharedPreference.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ShopSharedPreference] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopSharedPreferenceTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ShopSharedPreference>(
      where: where(ShopSharedPreference.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
