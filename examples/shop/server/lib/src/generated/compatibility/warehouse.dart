/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: dead_code, unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _is;
import 'package:shop_server/src/generated/protocol.dart' as _iicbhma1;
import '../compatibility/bin.dart' as _ixjhfbvu;

abstract class ShopWarehouse
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  ShopWarehouse._({this.id, required this.name, this.bins});

  factory ShopWarehouse({
    int? id,
    required String name,
    List<_ixjhfbvu.ShopBin>? bins,
  }) = _ShopWarehouseImpl;

  factory ShopWarehouse.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopWarehouse(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      bins: jsonSerialization['bins'] == null
          ? null
          : _iicbhma1.Protocol().deserialize<List<_ixjhfbvu.ShopBin>>(
              jsonSerialization['bins'],
            ),
    );
  }

  static final t = ShopWarehouseTable();

  static const db = ShopWarehouseRepository._();

  @override
  int? id;

  String name;

  List<_ixjhfbvu.ShopBin>? bins;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [ShopWarehouse]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ShopWarehouse copyWith({
    int? id,
    String? name,
    List<_ixjhfbvu.ShopBin>? bins,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopWarehouse',
      if (id != null) 'id': id,
      'name': name,
      if (bins != null) 'bins': bins?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopWarehouse',
      if (id != null) 'id': id,
      'name': name,
      if (bins != null)
        'bins': bins?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static ShopWarehouseInclude include({_ixjhfbvu.ShopBinIncludeList? bins}) {
    return ShopWarehouseInclude._(bins: bins);
  }

  static ShopWarehouseIncludeList includeList({
    _is.WhereExpressionBuilder<ShopWarehouseTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopWarehouseTable>? orderBy,
    _is.OrderByListBuilder<ShopWarehouseTable>? orderByList,
    ShopWarehouseInclude? include,
  }) {
    return ShopWarehouseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopWarehouse.t),
      orderByList: orderByList?.call(ShopWarehouse.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopWarehouseImpl extends ShopWarehouse {
  _ShopWarehouseImpl({
    int? id,
    required String name,
    List<_ixjhfbvu.ShopBin>? bins,
  }) : super._(id: id, name: name, bins: bins);

  /// Returns a shallow copy of this [ShopWarehouse]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ShopWarehouse copyWith({
    Object? id = _Undefined,
    String? name,
    Object? bins = _Undefined,
  }) {
    return ShopWarehouse(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      bins: bins is List<_ixjhfbvu.ShopBin>?
          ? bins
          : this.bins?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class ShopWarehouseUpdateTable extends _is.UpdateTable<ShopWarehouseTable> {
  ShopWarehouseUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) =>
      _is.ColumnValue(table.name, value);
}

class ShopWarehouseTable extends _is.Table<int?> {
  ShopWarehouseTable({super.tableRelation})
    : super(tableName: 'shop_warehouses') {
    updateTable = ShopWarehouseUpdateTable(this);
    name = _is.ColumnString('name', this);
  }

  late final ShopWarehouseUpdateTable updateTable;

  late final _is.ColumnString name;

  _ixjhfbvu.ShopBinTable? ___bins;

  _is.ManyRelation<_ixjhfbvu.ShopBinTable>? _bins;

  _ixjhfbvu.ShopBinTable get __bins {
    if (___bins != null) return ___bins!;
    ___bins = _is.createRelationTable(
      relationFieldName: '__bins',
      field: ShopWarehouse.t.id,
      foreignField: _ixjhfbvu.ShopBin.t.$_shopWarehousesBinsShopWarehousesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _ixjhfbvu.ShopBinTable(tableRelation: foreignTableRelation),
    );
    return ___bins!;
  }

  _is.ManyRelation<_ixjhfbvu.ShopBinTable> get bins {
    if (_bins != null) return _bins!;
    var relationTable = _is.createRelationTable(
      relationFieldName: 'bins',
      field: ShopWarehouse.t.id,
      foreignField: _ixjhfbvu.ShopBin.t.$_shopWarehousesBinsShopWarehousesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _ixjhfbvu.ShopBinTable(tableRelation: foreignTableRelation),
    );
    _bins = _is.ManyRelation<_ixjhfbvu.ShopBinTable>(
      tableWithRelations: relationTable,
      table: _ixjhfbvu.ShopBinTable(
        tableRelation: relationTable.tableRelation!.lastRelation,
      ),
    );
    return _bins!;
  }

  @override
  List<_is.Column> get columns => [id, name];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'bins') {
      return __bins;
    }
    return null;
  }
}

class ShopWarehouseInclude extends _is.IncludeObject {
  ShopWarehouseInclude._({_ixjhfbvu.ShopBinIncludeList? bins}) {
    _bins = bins;
  }

  _ixjhfbvu.ShopBinIncludeList? _bins;

  @override
  Map<String, _is.Include?> get includes => {'bins': _bins};

  @override
  _is.Table<int?> get table => ShopWarehouse.t;
}

class ShopWarehouseIncludeList extends _is.IncludeList {
  ShopWarehouseIncludeList._({
    _is.WhereExpressionBuilder<ShopWarehouseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShopWarehouse.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => ShopWarehouse.t;
}

class ShopWarehouseRepository {
  const ShopWarehouseRepository._();

  final attach = const ShopWarehouseAttachRepository._();

  final attachRow = const ShopWarehouseAttachRowRepository._();

  final detach = const ShopWarehouseDetachRepository._();

  final detachRow = const ShopWarehouseDetachRowRepository._();

  /// Returns a list of [ShopWarehouse]s matching the given query parameters.
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
  Future<List<ShopWarehouse>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopWarehouseTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopWarehouseTable>? orderBy,
    _is.OrderByListBuilder<ShopWarehouseTable>? orderByList,
    _is.Transaction? transaction,
    ShopWarehouseInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ShopWarehouse>(
      where: where?.call(ShopWarehouse.t),
      orderBy: orderBy?.call(ShopWarehouse.t),
      orderByList: orderByList?.call(ShopWarehouse.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ShopWarehouse] matching the given query parameters.
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
  Future<ShopWarehouse?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopWarehouseTable>? where,
    int? offset,
    _is.OrderByBuilder<ShopWarehouseTable>? orderBy,
    _is.OrderByListBuilder<ShopWarehouseTable>? orderByList,
    _is.Transaction? transaction,
    ShopWarehouseInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ShopWarehouse>(
      where: where?.call(ShopWarehouse.t),
      orderBy: orderBy?.call(ShopWarehouse.t),
      orderByList: orderByList?.call(ShopWarehouse.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ShopWarehouse] by its [id] or null if no such row exists.
  Future<ShopWarehouse?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    ShopWarehouseInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ShopWarehouse>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ShopWarehouse]s in the list and returns the inserted rows.
  ///
  /// The returned [ShopWarehouse]s will have their `id` fields set.
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
  Future<List<ShopWarehouse>> insert(
    _is.DatabaseSession session,
    List<ShopWarehouse> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ShopWarehouse>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ShopWarehouse] and returns the inserted row.
  ///
  /// The returned [ShopWarehouse] will have its `id` field set.
  Future<ShopWarehouse> insertRow(
    _is.DatabaseSession session,
    ShopWarehouse row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ShopWarehouse>(row, transaction: transaction);
  }

  /// Upserts all [ShopWarehouse]s in the list and returns the resulting rows.
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
  /// The returned [ShopWarehouse]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopWarehouse>> upsert(
    _is.DatabaseSession session,
    List<ShopWarehouse> rows, {
    required _is.ColumnSelections<ShopWarehouseTable> conflictColumns,
    _is.ColumnSelections<ShopWarehouseTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopWarehouseTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ShopWarehouse>(
      rows,
      conflictColumns: conflictColumns(ShopWarehouse.t),
      updateColumns: updateColumns?.call(ShopWarehouse.t),
      updateWhere: updateWhere?.call(ShopWarehouse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ShopWarehouse] and returns the resulting row.
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
  /// The returned [ShopWarehouse] will have its `id` field set.
  Future<ShopWarehouse?> upsertRow(
    _is.DatabaseSession session,
    ShopWarehouse row, {
    required _is.ColumnSelections<ShopWarehouseTable> conflictColumns,
    _is.ColumnSelections<ShopWarehouseTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopWarehouseTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ShopWarehouse>(
      row,
      conflictColumns: conflictColumns(ShopWarehouse.t),
      updateColumns: updateColumns?.call(ShopWarehouse.t),
      updateWhere: updateWhere?.call(ShopWarehouse.t),
      transaction: transaction,
    );
  }

  /// Updates all [ShopWarehouse]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopWarehouse>> update(
    _is.DatabaseSession session,
    List<ShopWarehouse> rows, {
    _is.ColumnSelections<ShopWarehouseTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ShopWarehouse>(
      rows,
      columns: columns?.call(ShopWarehouse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ShopWarehouse]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ShopWarehouse> updateRow(
    _is.DatabaseSession session,
    ShopWarehouse row, {
    _is.ColumnSelections<ShopWarehouseTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ShopWarehouse>(
      row,
      columns: columns?.call(ShopWarehouse.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ShopWarehouse] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ShopWarehouse?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<ShopWarehouseUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ShopWarehouse>(
      id,
      columnValues: columnValues(ShopWarehouse.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ShopWarehouse]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopWarehouse>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ShopWarehouseUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ShopWarehouseTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopWarehouseTable>? orderBy,
    _is.OrderByListBuilder<ShopWarehouseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ShopWarehouse>(
      columnValues: columnValues(ShopWarehouse.t.updateTable),
      where: where(ShopWarehouse.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopWarehouse.t),
      orderByList: orderByList?.call(ShopWarehouse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ShopWarehouse]s in the list and returns the deleted rows.
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
  Future<List<ShopWarehouse>> delete(
    _is.DatabaseSession session,
    List<ShopWarehouse> rows, {
    _is.OrderByBuilder<ShopWarehouseTable>? orderBy,
    _is.OrderByListBuilder<ShopWarehouseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ShopWarehouse>(
      rows,
      orderBy: orderBy?.call(ShopWarehouse.t),
      orderByList: orderByList?.call(ShopWarehouse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ShopWarehouse].
  Future<ShopWarehouse> deleteRow(
    _is.DatabaseSession session,
    ShopWarehouse row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ShopWarehouse>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopWarehouse>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopWarehouseTable> where,
    _is.OrderByBuilder<ShopWarehouseTable>? orderBy,
    _is.OrderByListBuilder<ShopWarehouseTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ShopWarehouse>(
      where: where(ShopWarehouse.t),
      orderBy: orderBy?.call(ShopWarehouse.t),
      orderByList: orderByList?.call(ShopWarehouse.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopWarehouseTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ShopWarehouse>(
      where: where?.call(ShopWarehouse.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ShopWarehouse] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopWarehouseTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ShopWarehouse>(
      where: where(ShopWarehouse.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class ShopWarehouseAttachRepository {
  const ShopWarehouseAttachRepository._();

  /// Creates a relation between this [ShopWarehouse] and the given [ShopBin]s
  /// by setting each [ShopBin]'s foreign key `_shopWarehousesBinsShopWarehousesId` to refer to this [ShopWarehouse].
  Future<void> bins(
    _is.DatabaseSession session,
    ShopWarehouse shopWarehouse,
    List<_ixjhfbvu.ShopBin> shopBin, {
    _is.Transaction? transaction,
  }) async {
    if (shopBin.any((e) => e.id == null)) {
      throw ArgumentError.notNull('shopBin.id');
    }
    if (shopWarehouse.id == null) {
      throw ArgumentError.notNull('shopWarehouse.id');
    }

    var $shopBin = shopBin
        .map(
          (e) => _ixjhfbvu.ShopBinImplicit(
            e,
            $_shopWarehousesBinsShopWarehousesId: shopWarehouse.id,
          ),
        )
        .toList();
    await session.db.update<_ixjhfbvu.ShopBin>(
      $shopBin,
      columns: [_ixjhfbvu.ShopBin.t.$_shopWarehousesBinsShopWarehousesId],
      transaction: transaction,
    );
  }
}

class ShopWarehouseAttachRowRepository {
  const ShopWarehouseAttachRowRepository._();

  /// Creates a relation between this [ShopWarehouse] and the given [ShopBin]
  /// by setting the [ShopBin]'s foreign key `_shopWarehousesBinsShopWarehousesId` to refer to this [ShopWarehouse].
  Future<void> bins(
    _is.DatabaseSession session,
    ShopWarehouse shopWarehouse,
    _ixjhfbvu.ShopBin shopBin, {
    _is.Transaction? transaction,
  }) async {
    if (shopBin.id == null) {
      throw ArgumentError.notNull('shopBin.id');
    }
    if (shopWarehouse.id == null) {
      throw ArgumentError.notNull('shopWarehouse.id');
    }

    var $shopBin = _ixjhfbvu.ShopBinImplicit(
      shopBin,
      $_shopWarehousesBinsShopWarehousesId: shopWarehouse.id,
    );
    await session.db.updateRow<_ixjhfbvu.ShopBin>(
      $shopBin,
      columns: [_ixjhfbvu.ShopBin.t.$_shopWarehousesBinsShopWarehousesId],
      transaction: transaction,
    );
  }
}

class ShopWarehouseDetachRepository {
  const ShopWarehouseDetachRepository._();

  /// Detaches the relation between this [ShopWarehouse] and the given [ShopBin]
  /// by setting the [ShopBin]'s foreign key `_shopWarehousesBinsShopWarehousesId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> bins(
    _is.DatabaseSession session,
    List<_ixjhfbvu.ShopBin> shopBin, {
    _is.Transaction? transaction,
  }) async {
    if (shopBin.any((e) => e.id == null)) {
      throw ArgumentError.notNull('shopBin.id');
    }

    var $shopBin = shopBin
        .map(
          (e) => _ixjhfbvu.ShopBinImplicit(
            e,
            $_shopWarehousesBinsShopWarehousesId: null,
          ),
        )
        .toList();
    await session.db.update<_ixjhfbvu.ShopBin>(
      $shopBin,
      columns: [_ixjhfbvu.ShopBin.t.$_shopWarehousesBinsShopWarehousesId],
      transaction: transaction,
    );
  }
}

class ShopWarehouseDetachRowRepository {
  const ShopWarehouseDetachRowRepository._();

  /// Detaches the relation between this [ShopWarehouse] and the given [ShopBin]
  /// by setting the [ShopBin]'s foreign key `_shopWarehousesBinsShopWarehousesId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> bins(
    _is.DatabaseSession session,
    _ixjhfbvu.ShopBin shopBin, {
    _is.Transaction? transaction,
  }) async {
    if (shopBin.id == null) {
      throw ArgumentError.notNull('shopBin.id');
    }

    var $shopBin = _ixjhfbvu.ShopBinImplicit(
      shopBin,
      $_shopWarehousesBinsShopWarehousesId: null,
    );
    await session.db.updateRow<_ixjhfbvu.ShopBin>(
      $shopBin,
      columns: [_ixjhfbvu.ShopBin.t.$_shopWarehousesBinsShopWarehousesId],
      transaction: transaction,
    );
  }
}
