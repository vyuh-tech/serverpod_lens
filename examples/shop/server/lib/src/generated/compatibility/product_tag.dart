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
import '../product.dart' as _iowwd3dh;

abstract class ShopProductTag
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  ShopProductTag._({
    this.id,
    required this.productId,
    this.product,
    required this.tagId,
  });

  factory ShopProductTag({
    int? id,
    required int productId,
    _iowwd3dh.Product? product,
    required int tagId,
  }) = _ShopProductTagImpl;

  factory ShopProductTag.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopProductTag(
      id: jsonSerialization['id'] as int?,
      productId: jsonSerialization['productId'] as int,
      product: jsonSerialization['product'] == null
          ? null
          : _iicbhma1.Protocol().deserialize<_iowwd3dh.Product>(
              jsonSerialization['product'],
            ),
      tagId: jsonSerialization['tagId'] as int,
    );
  }

  static final t = ShopProductTagTable();

  static const db = ShopProductTagRepository._();

  @override
  int? id;

  int productId;

  _iowwd3dh.Product? product;

  int tagId;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [ShopProductTag]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ShopProductTag copyWith({
    int? id,
    int? productId,
    _iowwd3dh.Product? product,
    int? tagId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopProductTag',
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJson(),
      'tagId': tagId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopProductTag',
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJsonForProtocol(),
      'tagId': tagId,
    };
  }

  static ShopProductTagInclude include({_iowwd3dh.ProductInclude? product}) {
    return ShopProductTagInclude._(product: product);
  }

  static ShopProductTagIncludeList includeList({
    _is.WhereExpressionBuilder<ShopProductTagTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopProductTagTable>? orderBy,
    _is.OrderByListBuilder<ShopProductTagTable>? orderByList,
    ShopProductTagInclude? include,
  }) {
    return ShopProductTagIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopProductTag.t),
      orderByList: orderByList?.call(ShopProductTag.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopProductTagImpl extends ShopProductTag {
  _ShopProductTagImpl({
    int? id,
    required int productId,
    _iowwd3dh.Product? product,
    required int tagId,
  }) : super._(id: id, productId: productId, product: product, tagId: tagId);

  /// Returns a shallow copy of this [ShopProductTag]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ShopProductTag copyWith({
    Object? id = _Undefined,
    int? productId,
    Object? product = _Undefined,
    int? tagId,
  }) {
    return ShopProductTag(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      product: product is _iowwd3dh.Product?
          ? product
          : this.product?.copyWith(),
      tagId: tagId ?? this.tagId,
    );
  }
}

class ShopProductTagUpdateTable extends _is.UpdateTable<ShopProductTagTable> {
  ShopProductTagUpdateTable(super.table);

  _is.ColumnValue<int, int> productId(int value) =>
      _is.ColumnValue(table.productId, value);

  _is.ColumnValue<int, int> tagId(int value) =>
      _is.ColumnValue(table.tagId, value);
}

class ShopProductTagTable extends _is.Table<int?> {
  ShopProductTagTable({super.tableRelation})
    : super(tableName: 'shop_product_tags') {
    updateTable = ShopProductTagUpdateTable(this);
    productId = _is.ColumnInt('productId', this);
    tagId = _is.ColumnInt('tag_id', this, fieldName: 'tagId');
  }

  late final ShopProductTagUpdateTable updateTable;

  late final _is.ColumnInt productId;

  _iowwd3dh.ProductTable? _product;

  late final _is.ColumnInt tagId;

  _iowwd3dh.ProductTable get product {
    if (_product != null) return _product!;
    _product = _is.createRelationTable(
      relationFieldName: 'product',
      field: ShopProductTag.t.productId,
      foreignField: _iowwd3dh.Product.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _iowwd3dh.ProductTable(tableRelation: foreignTableRelation),
    );
    return _product!;
  }

  @override
  List<_is.Column> get columns => [id, productId, tagId];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'product') {
      return product;
    }
    return null;
  }
}

class ShopProductTagInclude extends _is.IncludeObject {
  ShopProductTagInclude._({_iowwd3dh.ProductInclude? product}) {
    _product = product;
  }

  _iowwd3dh.ProductInclude? _product;

  @override
  Map<String, _is.Include?> get includes => {'product': _product};

  @override
  _is.Table<int?> get table => ShopProductTag.t;
}

class ShopProductTagIncludeList extends _is.IncludeList {
  ShopProductTagIncludeList._({
    _is.WhereExpressionBuilder<ShopProductTagTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShopProductTag.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => ShopProductTag.t;
}

class ShopProductTagRepository {
  const ShopProductTagRepository._();

  final attachRow = const ShopProductTagAttachRowRepository._();

  /// Returns a list of [ShopProductTag]s matching the given query parameters.
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
  Future<List<ShopProductTag>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopProductTagTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopProductTagTable>? orderBy,
    _is.OrderByListBuilder<ShopProductTagTable>? orderByList,
    _is.Transaction? transaction,
    ShopProductTagInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ShopProductTag>(
      where: where?.call(ShopProductTag.t),
      orderBy: orderBy?.call(ShopProductTag.t),
      orderByList: orderByList?.call(ShopProductTag.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ShopProductTag] matching the given query parameters.
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
  Future<ShopProductTag?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopProductTagTable>? where,
    int? offset,
    _is.OrderByBuilder<ShopProductTagTable>? orderBy,
    _is.OrderByListBuilder<ShopProductTagTable>? orderByList,
    _is.Transaction? transaction,
    ShopProductTagInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ShopProductTag>(
      where: where?.call(ShopProductTag.t),
      orderBy: orderBy?.call(ShopProductTag.t),
      orderByList: orderByList?.call(ShopProductTag.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ShopProductTag] by its [id] or null if no such row exists.
  Future<ShopProductTag?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    ShopProductTagInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ShopProductTag>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ShopProductTag]s in the list and returns the inserted rows.
  ///
  /// The returned [ShopProductTag]s will have their `id` fields set.
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
  Future<List<ShopProductTag>> insert(
    _is.DatabaseSession session,
    List<ShopProductTag> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ShopProductTag>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ShopProductTag] and returns the inserted row.
  ///
  /// The returned [ShopProductTag] will have its `id` field set.
  Future<ShopProductTag> insertRow(
    _is.DatabaseSession session,
    ShopProductTag row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ShopProductTag>(row, transaction: transaction);
  }

  /// Upserts all [ShopProductTag]s in the list and returns the resulting rows.
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
  /// The returned [ShopProductTag]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopProductTag>> upsert(
    _is.DatabaseSession session,
    List<ShopProductTag> rows, {
    required _is.ColumnSelections<ShopProductTagTable> conflictColumns,
    _is.ColumnSelections<ShopProductTagTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopProductTagTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ShopProductTag>(
      rows,
      conflictColumns: conflictColumns(ShopProductTag.t),
      updateColumns: updateColumns?.call(ShopProductTag.t),
      updateWhere: updateWhere?.call(ShopProductTag.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ShopProductTag] and returns the resulting row.
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
  /// The returned [ShopProductTag] will have its `id` field set.
  Future<ShopProductTag?> upsertRow(
    _is.DatabaseSession session,
    ShopProductTag row, {
    required _is.ColumnSelections<ShopProductTagTable> conflictColumns,
    _is.ColumnSelections<ShopProductTagTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopProductTagTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ShopProductTag>(
      row,
      conflictColumns: conflictColumns(ShopProductTag.t),
      updateColumns: updateColumns?.call(ShopProductTag.t),
      updateWhere: updateWhere?.call(ShopProductTag.t),
      transaction: transaction,
    );
  }

  /// Updates all [ShopProductTag]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopProductTag>> update(
    _is.DatabaseSession session,
    List<ShopProductTag> rows, {
    _is.ColumnSelections<ShopProductTagTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ShopProductTag>(
      rows,
      columns: columns?.call(ShopProductTag.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ShopProductTag]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ShopProductTag> updateRow(
    _is.DatabaseSession session,
    ShopProductTag row, {
    _is.ColumnSelections<ShopProductTagTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ShopProductTag>(
      row,
      columns: columns?.call(ShopProductTag.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ShopProductTag] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ShopProductTag?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<ShopProductTagUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ShopProductTag>(
      id,
      columnValues: columnValues(ShopProductTag.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ShopProductTag]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopProductTag>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ShopProductTagUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ShopProductTagTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopProductTagTable>? orderBy,
    _is.OrderByListBuilder<ShopProductTagTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ShopProductTag>(
      columnValues: columnValues(ShopProductTag.t.updateTable),
      where: where(ShopProductTag.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopProductTag.t),
      orderByList: orderByList?.call(ShopProductTag.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ShopProductTag]s in the list and returns the deleted rows.
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
  Future<List<ShopProductTag>> delete(
    _is.DatabaseSession session,
    List<ShopProductTag> rows, {
    _is.OrderByBuilder<ShopProductTagTable>? orderBy,
    _is.OrderByListBuilder<ShopProductTagTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ShopProductTag>(
      rows,
      orderBy: orderBy?.call(ShopProductTag.t),
      orderByList: orderByList?.call(ShopProductTag.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ShopProductTag].
  Future<ShopProductTag> deleteRow(
    _is.DatabaseSession session,
    ShopProductTag row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ShopProductTag>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopProductTag>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopProductTagTable> where,
    _is.OrderByBuilder<ShopProductTagTable>? orderBy,
    _is.OrderByListBuilder<ShopProductTagTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ShopProductTag>(
      where: where(ShopProductTag.t),
      orderBy: orderBy?.call(ShopProductTag.t),
      orderByList: orderByList?.call(ShopProductTag.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopProductTagTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ShopProductTag>(
      where: where?.call(ShopProductTag.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ShopProductTag] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopProductTagTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ShopProductTag>(
      where: where(ShopProductTag.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class ShopProductTagAttachRowRepository {
  const ShopProductTagAttachRowRepository._();

  /// Creates a relation between the given [ShopProductTag] and [Product]
  /// by setting the [ShopProductTag]'s foreign key `productId` to refer to the [Product].
  Future<void> product(
    _is.DatabaseSession session,
    ShopProductTag shopProductTag,
    _iowwd3dh.Product product, {
    _is.Transaction? transaction,
  }) async {
    if (shopProductTag.id == null) {
      throw ArgumentError.notNull('shopProductTag.id');
    }
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $shopProductTag = shopProductTag.copyWith(productId: product.id);
    await session.db.updateRow<ShopProductTag>(
      $shopProductTag,
      columns: [ShopProductTag.t.productId],
      transaction: transaction,
    );
  }
}
