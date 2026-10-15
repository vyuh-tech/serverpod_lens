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

abstract class ShopTag
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  ShopTag._({this.id, required this.label});

  factory ShopTag({int? id, required String label}) = _ShopTagImpl;

  factory ShopTag.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopTag(
      id: jsonSerialization['id'] as int?,
      label: jsonSerialization['label'] as String,
    );
  }

  static final t = ShopTagTable();

  static const db = ShopTagRepository._();

  @override
  int? id;

  String label;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [ShopTag]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ShopTag copyWith({int? id, String? label});
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopTag',
      if (id != null) 'id': id,
      'label': label,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopTag',
      if (id != null) 'id': id,
      'label': label,
    };
  }

  static ShopTagInclude include() {
    return ShopTagInclude._();
  }

  static ShopTagIncludeList includeList({
    _is.WhereExpressionBuilder<ShopTagTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopTagTable>? orderBy,
    _is.OrderByListBuilder<ShopTagTable>? orderByList,
    ShopTagInclude? include,
  }) {
    return ShopTagIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopTag.t),
      orderByList: orderByList?.call(ShopTag.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopTagImpl extends ShopTag {
  _ShopTagImpl({int? id, required String label})
    : super._(id: id, label: label);

  /// Returns a shallow copy of this [ShopTag]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ShopTag copyWith({Object? id = _Undefined, String? label}) {
    return ShopTag(id: id is int? ? id : this.id, label: label ?? this.label);
  }
}

class ShopTagUpdateTable extends _is.UpdateTable<ShopTagTable> {
  ShopTagUpdateTable(super.table);

  _is.ColumnValue<String, String> label(String value) =>
      _is.ColumnValue(table.label, value);
}

class ShopTagTable extends _is.Table<int?> {
  ShopTagTable({super.tableRelation}) : super(tableName: 'shop_tags') {
    updateTable = ShopTagUpdateTable(this);
    label = _is.ColumnString('label', this);
  }

  late final ShopTagUpdateTable updateTable;

  late final _is.ColumnString label;

  @override
  List<_is.Column> get columns => [id, label];
}

class ShopTagInclude extends _is.IncludeObject {
  ShopTagInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => ShopTag.t;
}

class ShopTagIncludeList extends _is.IncludeList {
  ShopTagIncludeList._({
    _is.WhereExpressionBuilder<ShopTagTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShopTag.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => ShopTag.t;
}

class ShopTagRepository {
  const ShopTagRepository._();

  /// Returns a list of [ShopTag]s matching the given query parameters.
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
  Future<List<ShopTag>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopTagTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopTagTable>? orderBy,
    _is.OrderByListBuilder<ShopTagTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ShopTag>(
      where: where?.call(ShopTag.t),
      orderBy: orderBy?.call(ShopTag.t),
      orderByList: orderByList?.call(ShopTag.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ShopTag] matching the given query parameters.
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
  Future<ShopTag?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopTagTable>? where,
    int? offset,
    _is.OrderByBuilder<ShopTagTable>? orderBy,
    _is.OrderByListBuilder<ShopTagTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ShopTag>(
      where: where?.call(ShopTag.t),
      orderBy: orderBy?.call(ShopTag.t),
      orderByList: orderByList?.call(ShopTag.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ShopTag] by its [id] or null if no such row exists.
  Future<ShopTag?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ShopTag>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ShopTag]s in the list and returns the inserted rows.
  ///
  /// The returned [ShopTag]s will have their `id` fields set.
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
  Future<List<ShopTag>> insert(
    _is.DatabaseSession session,
    List<ShopTag> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ShopTag>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ShopTag] and returns the inserted row.
  ///
  /// The returned [ShopTag] will have its `id` field set.
  Future<ShopTag> insertRow(
    _is.DatabaseSession session,
    ShopTag row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ShopTag>(row, transaction: transaction);
  }

  /// Upserts all [ShopTag]s in the list and returns the resulting rows.
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
  /// The returned [ShopTag]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopTag>> upsert(
    _is.DatabaseSession session,
    List<ShopTag> rows, {
    required _is.ColumnSelections<ShopTagTable> conflictColumns,
    _is.ColumnSelections<ShopTagTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopTagTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ShopTag>(
      rows,
      conflictColumns: conflictColumns(ShopTag.t),
      updateColumns: updateColumns?.call(ShopTag.t),
      updateWhere: updateWhere?.call(ShopTag.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ShopTag] and returns the resulting row.
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
  /// The returned [ShopTag] will have its `id` field set.
  Future<ShopTag?> upsertRow(
    _is.DatabaseSession session,
    ShopTag row, {
    required _is.ColumnSelections<ShopTagTable> conflictColumns,
    _is.ColumnSelections<ShopTagTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopTagTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ShopTag>(
      row,
      conflictColumns: conflictColumns(ShopTag.t),
      updateColumns: updateColumns?.call(ShopTag.t),
      updateWhere: updateWhere?.call(ShopTag.t),
      transaction: transaction,
    );
  }

  /// Updates all [ShopTag]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopTag>> update(
    _is.DatabaseSession session,
    List<ShopTag> rows, {
    _is.ColumnSelections<ShopTagTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ShopTag>(
      rows,
      columns: columns?.call(ShopTag.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ShopTag]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ShopTag> updateRow(
    _is.DatabaseSession session,
    ShopTag row, {
    _is.ColumnSelections<ShopTagTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ShopTag>(
      row,
      columns: columns?.call(ShopTag.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ShopTag] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ShopTag?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<ShopTagUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ShopTag>(
      id,
      columnValues: columnValues(ShopTag.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ShopTag]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopTag>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ShopTagUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ShopTagTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopTagTable>? orderBy,
    _is.OrderByListBuilder<ShopTagTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ShopTag>(
      columnValues: columnValues(ShopTag.t.updateTable),
      where: where(ShopTag.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopTag.t),
      orderByList: orderByList?.call(ShopTag.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ShopTag]s in the list and returns the deleted rows.
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
  Future<List<ShopTag>> delete(
    _is.DatabaseSession session,
    List<ShopTag> rows, {
    _is.OrderByBuilder<ShopTagTable>? orderBy,
    _is.OrderByListBuilder<ShopTagTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ShopTag>(
      rows,
      orderBy: orderBy?.call(ShopTag.t),
      orderByList: orderByList?.call(ShopTag.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ShopTag].
  Future<ShopTag> deleteRow(
    _is.DatabaseSession session,
    ShopTag row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ShopTag>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopTag>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopTagTable> where,
    _is.OrderByBuilder<ShopTagTable>? orderBy,
    _is.OrderByListBuilder<ShopTagTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ShopTag>(
      where: where(ShopTag.t),
      orderBy: orderBy?.call(ShopTag.t),
      orderByList: orderByList?.call(ShopTag.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopTagTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ShopTag>(
      where: where?.call(ShopTag.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ShopTag] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopTagTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ShopTag>(
      where: where(ShopTag.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
