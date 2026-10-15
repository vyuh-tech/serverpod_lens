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
import '../compatibility/category.dart' as _i8aqwuhn;

abstract class ShopCategory
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  ShopCategory._({this.id, required this.name, this.parentId, this.parent});

  factory ShopCategory({
    int? id,
    required String name,
    int? parentId,
    _i8aqwuhn.ShopCategory? parent,
  }) = _ShopCategoryImpl;

  factory ShopCategory.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopCategory(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      parentId: jsonSerialization['parentId'] as int?,
      parent: jsonSerialization['parent'] == null
          ? null
          : _iicbhma1.Protocol().deserialize<_i8aqwuhn.ShopCategory>(
              jsonSerialization['parent'],
            ),
    );
  }

  static final t = ShopCategoryTable();

  static const db = ShopCategoryRepository._();

  @override
  int? id;

  String name;

  int? parentId;

  _i8aqwuhn.ShopCategory? parent;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [ShopCategory]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ShopCategory copyWith({
    int? id,
    String? name,
    int? parentId,
    _i8aqwuhn.ShopCategory? parent,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopCategory',
      if (id != null) 'id': id,
      'name': name,
      if (parentId != null) 'parentId': parentId,
      if (parent != null) 'parent': parent?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopCategory',
      if (id != null) 'id': id,
      'name': name,
      if (parentId != null) 'parentId': parentId,
      if (parent != null) 'parent': parent?.toJsonForProtocol(),
    };
  }

  static ShopCategoryInclude include({_i8aqwuhn.ShopCategoryInclude? parent}) {
    return ShopCategoryInclude._(parent: parent);
  }

  static ShopCategoryIncludeList includeList({
    _is.WhereExpressionBuilder<ShopCategoryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopCategoryTable>? orderBy,
    _is.OrderByListBuilder<ShopCategoryTable>? orderByList,
    ShopCategoryInclude? include,
  }) {
    return ShopCategoryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopCategory.t),
      orderByList: orderByList?.call(ShopCategory.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopCategoryImpl extends ShopCategory {
  _ShopCategoryImpl({
    int? id,
    required String name,
    int? parentId,
    _i8aqwuhn.ShopCategory? parent,
  }) : super._(id: id, name: name, parentId: parentId, parent: parent);

  /// Returns a shallow copy of this [ShopCategory]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ShopCategory copyWith({
    Object? id = _Undefined,
    String? name,
    Object? parentId = _Undefined,
    Object? parent = _Undefined,
  }) {
    return ShopCategory(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      parentId: parentId is int? ? parentId : this.parentId,
      parent: parent is _i8aqwuhn.ShopCategory?
          ? parent
          : this.parent?.copyWith(),
    );
  }
}

class ShopCategoryUpdateTable extends _is.UpdateTable<ShopCategoryTable> {
  ShopCategoryUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) =>
      _is.ColumnValue(table.name, value);

  _is.ColumnValue<int, int> parentId(int? value) =>
      _is.ColumnValue(table.parentId, value);
}

class ShopCategoryTable extends _is.Table<int?> {
  ShopCategoryTable({super.tableRelation})
    : super(tableName: 'shop_categories') {
    updateTable = ShopCategoryUpdateTable(this);
    name = _is.ColumnString('name', this);
    parentId = _is.ColumnInt('parentId', this);
  }

  late final ShopCategoryUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnInt parentId;

  _i8aqwuhn.ShopCategoryTable? _parent;

  _i8aqwuhn.ShopCategoryTable get parent {
    if (_parent != null) return _parent!;
    _parent = _is.createRelationTable(
      relationFieldName: 'parent',
      field: ShopCategory.t.parentId,
      foreignField: _i8aqwuhn.ShopCategory.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i8aqwuhn.ShopCategoryTable(tableRelation: foreignTableRelation),
    );
    return _parent!;
  }

  @override
  List<_is.Column> get columns => [id, name, parentId];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'parent') {
      return parent;
    }
    return null;
  }
}

class ShopCategoryInclude extends _is.IncludeObject {
  ShopCategoryInclude._({_i8aqwuhn.ShopCategoryInclude? parent}) {
    _parent = parent;
  }

  _i8aqwuhn.ShopCategoryInclude? _parent;

  @override
  Map<String, _is.Include?> get includes => {'parent': _parent};

  @override
  _is.Table<int?> get table => ShopCategory.t;
}

class ShopCategoryIncludeList extends _is.IncludeList {
  ShopCategoryIncludeList._({
    _is.WhereExpressionBuilder<ShopCategoryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShopCategory.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => ShopCategory.t;
}

class ShopCategoryRepository {
  const ShopCategoryRepository._();

  final attachRow = const ShopCategoryAttachRowRepository._();

  final detachRow = const ShopCategoryDetachRowRepository._();

  /// Returns a list of [ShopCategory]s matching the given query parameters.
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
  Future<List<ShopCategory>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopCategoryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopCategoryTable>? orderBy,
    _is.OrderByListBuilder<ShopCategoryTable>? orderByList,
    _is.Transaction? transaction,
    ShopCategoryInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ShopCategory>(
      where: where?.call(ShopCategory.t),
      orderBy: orderBy?.call(ShopCategory.t),
      orderByList: orderByList?.call(ShopCategory.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ShopCategory] matching the given query parameters.
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
  Future<ShopCategory?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopCategoryTable>? where,
    int? offset,
    _is.OrderByBuilder<ShopCategoryTable>? orderBy,
    _is.OrderByListBuilder<ShopCategoryTable>? orderByList,
    _is.Transaction? transaction,
    ShopCategoryInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ShopCategory>(
      where: where?.call(ShopCategory.t),
      orderBy: orderBy?.call(ShopCategory.t),
      orderByList: orderByList?.call(ShopCategory.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ShopCategory] by its [id] or null if no such row exists.
  Future<ShopCategory?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    ShopCategoryInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ShopCategory>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ShopCategory]s in the list and returns the inserted rows.
  ///
  /// The returned [ShopCategory]s will have their `id` fields set.
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
  Future<List<ShopCategory>> insert(
    _is.DatabaseSession session,
    List<ShopCategory> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ShopCategory>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ShopCategory] and returns the inserted row.
  ///
  /// The returned [ShopCategory] will have its `id` field set.
  Future<ShopCategory> insertRow(
    _is.DatabaseSession session,
    ShopCategory row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ShopCategory>(row, transaction: transaction);
  }

  /// Upserts all [ShopCategory]s in the list and returns the resulting rows.
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
  /// The returned [ShopCategory]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopCategory>> upsert(
    _is.DatabaseSession session,
    List<ShopCategory> rows, {
    required _is.ColumnSelections<ShopCategoryTable> conflictColumns,
    _is.ColumnSelections<ShopCategoryTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopCategoryTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ShopCategory>(
      rows,
      conflictColumns: conflictColumns(ShopCategory.t),
      updateColumns: updateColumns?.call(ShopCategory.t),
      updateWhere: updateWhere?.call(ShopCategory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ShopCategory] and returns the resulting row.
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
  /// The returned [ShopCategory] will have its `id` field set.
  Future<ShopCategory?> upsertRow(
    _is.DatabaseSession session,
    ShopCategory row, {
    required _is.ColumnSelections<ShopCategoryTable> conflictColumns,
    _is.ColumnSelections<ShopCategoryTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopCategoryTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ShopCategory>(
      row,
      conflictColumns: conflictColumns(ShopCategory.t),
      updateColumns: updateColumns?.call(ShopCategory.t),
      updateWhere: updateWhere?.call(ShopCategory.t),
      transaction: transaction,
    );
  }

  /// Updates all [ShopCategory]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopCategory>> update(
    _is.DatabaseSession session,
    List<ShopCategory> rows, {
    _is.ColumnSelections<ShopCategoryTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ShopCategory>(
      rows,
      columns: columns?.call(ShopCategory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ShopCategory]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ShopCategory> updateRow(
    _is.DatabaseSession session,
    ShopCategory row, {
    _is.ColumnSelections<ShopCategoryTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ShopCategory>(
      row,
      columns: columns?.call(ShopCategory.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ShopCategory] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ShopCategory?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<ShopCategoryUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ShopCategory>(
      id,
      columnValues: columnValues(ShopCategory.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ShopCategory]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopCategory>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ShopCategoryUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ShopCategoryTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopCategoryTable>? orderBy,
    _is.OrderByListBuilder<ShopCategoryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ShopCategory>(
      columnValues: columnValues(ShopCategory.t.updateTable),
      where: where(ShopCategory.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopCategory.t),
      orderByList: orderByList?.call(ShopCategory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ShopCategory]s in the list and returns the deleted rows.
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
  Future<List<ShopCategory>> delete(
    _is.DatabaseSession session,
    List<ShopCategory> rows, {
    _is.OrderByBuilder<ShopCategoryTable>? orderBy,
    _is.OrderByListBuilder<ShopCategoryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ShopCategory>(
      rows,
      orderBy: orderBy?.call(ShopCategory.t),
      orderByList: orderByList?.call(ShopCategory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ShopCategory].
  Future<ShopCategory> deleteRow(
    _is.DatabaseSession session,
    ShopCategory row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ShopCategory>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopCategory>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopCategoryTable> where,
    _is.OrderByBuilder<ShopCategoryTable>? orderBy,
    _is.OrderByListBuilder<ShopCategoryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ShopCategory>(
      where: where(ShopCategory.t),
      orderBy: orderBy?.call(ShopCategory.t),
      orderByList: orderByList?.call(ShopCategory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopCategoryTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ShopCategory>(
      where: where?.call(ShopCategory.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ShopCategory] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopCategoryTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ShopCategory>(
      where: where(ShopCategory.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class ShopCategoryAttachRowRepository {
  const ShopCategoryAttachRowRepository._();

  /// Creates a relation between the given [ShopCategory] and [ShopCategory]
  /// by setting the [ShopCategory]'s foreign key `parentId` to refer to the [ShopCategory].
  Future<void> parent(
    _is.DatabaseSession session,
    ShopCategory shopCategory,
    _i8aqwuhn.ShopCategory parent, {
    _is.Transaction? transaction,
  }) async {
    if (shopCategory.id == null) {
      throw ArgumentError.notNull('shopCategory.id');
    }
    if (parent.id == null) {
      throw ArgumentError.notNull('parent.id');
    }

    var $shopCategory = shopCategory.copyWith(parentId: parent.id);
    await session.db.updateRow<ShopCategory>(
      $shopCategory,
      columns: [ShopCategory.t.parentId],
      transaction: transaction,
    );
  }
}

class ShopCategoryDetachRowRepository {
  const ShopCategoryDetachRowRepository._();

  /// Detaches the relation between this [ShopCategory] and the [ShopCategory] set in `parent`
  /// by setting the [ShopCategory]'s foreign key `parentId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> parent(
    _is.DatabaseSession session,
    ShopCategory shopCategory, {
    _is.Transaction? transaction,
  }) async {
    if (shopCategory.id == null) {
      throw ArgumentError.notNull('shopCategory.id');
    }

    var $shopCategory = shopCategory.copyWith(parentId: null);
    await session.db.updateRow<ShopCategory>(
      $shopCategory,
      columns: [ShopCategory.t.parentId],
      transaction: transaction,
    );
  }
}
