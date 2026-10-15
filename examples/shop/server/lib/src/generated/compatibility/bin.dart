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

abstract class ShopBin
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  ShopBin._({this.id, required this.label})
    : _shopWarehousesBinsShopWarehousesId = null;

  factory ShopBin({int? id, required String label}) = _ShopBinImpl;

  factory ShopBin.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopBinImplicit._(
      id: jsonSerialization['id'] as int?,
      label: jsonSerialization['label'] as String,
      $_shopWarehousesBinsShopWarehousesId:
          jsonSerialization['_shopWarehousesBinsShopWarehousesId'] as int?,
    );
  }

  static final t = ShopBinTable();

  static const db = ShopBinRepository._();

  @override
  int? id;

  String label;

  final int? _shopWarehousesBinsShopWarehousesId;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [ShopBin]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ShopBin copyWith({int? id, String? label});
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopBin',
      if (id != null) 'id': id,
      'label': label,
      if (_shopWarehousesBinsShopWarehousesId != null)
        '_shopWarehousesBinsShopWarehousesId':
            _shopWarehousesBinsShopWarehousesId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopBin',
      if (id != null) 'id': id,
      'label': label,
    };
  }

  static ShopBinInclude include() {
    return ShopBinInclude._();
  }

  static ShopBinIncludeList includeList({
    _is.WhereExpressionBuilder<ShopBinTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopBinTable>? orderBy,
    _is.OrderByListBuilder<ShopBinTable>? orderByList,
    ShopBinInclude? include,
  }) {
    return ShopBinIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopBin.t),
      orderByList: orderByList?.call(ShopBin.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopBinImpl extends ShopBin {
  _ShopBinImpl({int? id, required String label})
    : super._(id: id, label: label);

  /// Returns a shallow copy of this [ShopBin]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ShopBin copyWith({Object? id = _Undefined, String? label}) {
    return ShopBinImplicit._(
      id: id is int? ? id : this.id,
      label: label ?? this.label,
      $_shopWarehousesBinsShopWarehousesId:
          this._shopWarehousesBinsShopWarehousesId,
    );
  }
}

class ShopBinImplicit extends _ShopBinImpl {
  ShopBinImplicit._({
    int? id,
    required String label,
    int? $_shopWarehousesBinsShopWarehousesId,
  }) : _shopWarehousesBinsShopWarehousesId =
           $_shopWarehousesBinsShopWarehousesId,
       super(id: id, label: label);

  factory ShopBinImplicit(
    ShopBin shopBin, {
    int? $_shopWarehousesBinsShopWarehousesId,
  }) {
    return ShopBinImplicit._(
      id: shopBin.id,
      label: shopBin.label,
      $_shopWarehousesBinsShopWarehousesId:
          $_shopWarehousesBinsShopWarehousesId,
    );
  }

  @override
  final int? _shopWarehousesBinsShopWarehousesId;
}

class ShopBinUpdateTable extends _is.UpdateTable<ShopBinTable> {
  ShopBinUpdateTable(super.table);

  _is.ColumnValue<String, String> label(String value) =>
      _is.ColumnValue(table.label, value);

  _is.ColumnValue<int, int> $_shopWarehousesBinsShopWarehousesId(int? value) =>
      _is.ColumnValue(table.$_shopWarehousesBinsShopWarehousesId, value);
}

class ShopBinTable extends _is.Table<int?> {
  ShopBinTable({super.tableRelation}) : super(tableName: 'shop_bins') {
    updateTable = ShopBinUpdateTable(this);
    label = _is.ColumnString('label', this);
    $_shopWarehousesBinsShopWarehousesId = _is.ColumnInt(
      '_shopWarehousesBinsShopWarehousesId',
      this,
    );
  }

  late final ShopBinUpdateTable updateTable;

  late final _is.ColumnString label;

  late final _is.ColumnInt $_shopWarehousesBinsShopWarehousesId;

  @override
  List<_is.Column> get columns => [
    id,
    label,
    $_shopWarehousesBinsShopWarehousesId,
  ];

  @override
  List<_is.Column> get managedColumns => [id, label];
}

class ShopBinInclude extends _is.IncludeObject {
  ShopBinInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => ShopBin.t;
}

class ShopBinIncludeList extends _is.IncludeList {
  ShopBinIncludeList._({
    _is.WhereExpressionBuilder<ShopBinTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShopBin.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => ShopBin.t;
}

class ShopBinRepository {
  const ShopBinRepository._();

  /// Returns a list of [ShopBin]s matching the given query parameters.
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
  Future<List<ShopBin>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopBinTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopBinTable>? orderBy,
    _is.OrderByListBuilder<ShopBinTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ShopBin>(
      where: where?.call(ShopBin.t),
      orderBy: orderBy?.call(ShopBin.t),
      orderByList: orderByList?.call(ShopBin.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ShopBin] matching the given query parameters.
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
  Future<ShopBin?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopBinTable>? where,
    int? offset,
    _is.OrderByBuilder<ShopBinTable>? orderBy,
    _is.OrderByListBuilder<ShopBinTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ShopBin>(
      where: where?.call(ShopBin.t),
      orderBy: orderBy?.call(ShopBin.t),
      orderByList: orderByList?.call(ShopBin.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ShopBin] by its [id] or null if no such row exists.
  Future<ShopBin?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ShopBin>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ShopBin]s in the list and returns the inserted rows.
  ///
  /// The returned [ShopBin]s will have their `id` fields set.
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
  Future<List<ShopBin>> insert(
    _is.DatabaseSession session,
    List<ShopBin> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ShopBin>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ShopBin] and returns the inserted row.
  ///
  /// The returned [ShopBin] will have its `id` field set.
  Future<ShopBin> insertRow(
    _is.DatabaseSession session,
    ShopBin row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ShopBin>(row, transaction: transaction);
  }

  /// Upserts all [ShopBin]s in the list and returns the resulting rows.
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
  /// The returned [ShopBin]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopBin>> upsert(
    _is.DatabaseSession session,
    List<ShopBin> rows, {
    required _is.ColumnSelections<ShopBinTable> conflictColumns,
    _is.ColumnSelections<ShopBinTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopBinTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ShopBin>(
      rows,
      conflictColumns: conflictColumns(ShopBin.t),
      updateColumns: updateColumns?.call(ShopBin.t),
      updateWhere: updateWhere?.call(ShopBin.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ShopBin] and returns the resulting row.
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
  /// The returned [ShopBin] will have its `id` field set.
  Future<ShopBin?> upsertRow(
    _is.DatabaseSession session,
    ShopBin row, {
    required _is.ColumnSelections<ShopBinTable> conflictColumns,
    _is.ColumnSelections<ShopBinTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopBinTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ShopBin>(
      row,
      conflictColumns: conflictColumns(ShopBin.t),
      updateColumns: updateColumns?.call(ShopBin.t),
      updateWhere: updateWhere?.call(ShopBin.t),
      transaction: transaction,
    );
  }

  /// Updates all [ShopBin]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopBin>> update(
    _is.DatabaseSession session,
    List<ShopBin> rows, {
    _is.ColumnSelections<ShopBinTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ShopBin>(
      rows,
      columns: columns?.call(ShopBin.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ShopBin]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ShopBin> updateRow(
    _is.DatabaseSession session,
    ShopBin row, {
    _is.ColumnSelections<ShopBinTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ShopBin>(
      row,
      columns: columns?.call(ShopBin.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ShopBin] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ShopBin?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<ShopBinUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ShopBin>(
      id,
      columnValues: columnValues(ShopBin.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ShopBin]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopBin>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ShopBinUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ShopBinTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopBinTable>? orderBy,
    _is.OrderByListBuilder<ShopBinTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ShopBin>(
      columnValues: columnValues(ShopBin.t.updateTable),
      where: where(ShopBin.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopBin.t),
      orderByList: orderByList?.call(ShopBin.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ShopBin]s in the list and returns the deleted rows.
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
  Future<List<ShopBin>> delete(
    _is.DatabaseSession session,
    List<ShopBin> rows, {
    _is.OrderByBuilder<ShopBinTable>? orderBy,
    _is.OrderByListBuilder<ShopBinTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ShopBin>(
      rows,
      orderBy: orderBy?.call(ShopBin.t),
      orderByList: orderByList?.call(ShopBin.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ShopBin].
  Future<ShopBin> deleteRow(
    _is.DatabaseSession session,
    ShopBin row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ShopBin>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopBin>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopBinTable> where,
    _is.OrderByBuilder<ShopBinTable>? orderBy,
    _is.OrderByListBuilder<ShopBinTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ShopBin>(
      where: where(ShopBin.t),
      orderBy: orderBy?.call(ShopBin.t),
      orderByList: orderByList?.call(ShopBin.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopBinTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ShopBin>(
      where: where?.call(ShopBin.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ShopBin] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopBinTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ShopBin>(
      where: where(ShopBin.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
