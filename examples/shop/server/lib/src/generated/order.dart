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

abstract class Order implements _is.TableRow<int?>, _is.ProtocolSerialization {
  Order._({
    this.id,
    required this.customerId,
    required this.placedAt,
    required this.status,
    required this.total,
  });

  factory Order({
    int? id,
    required int customerId,
    required DateTime placedAt,
    required String status,
    required double total,
  }) = _OrderImpl;

  factory Order.fromJson(Map<String, dynamic> jsonSerialization) {
    return Order(
      id: jsonSerialization['id'] as int?,
      customerId: jsonSerialization['customerId'] as int,
      placedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['placedAt'],
      ),
      status: jsonSerialization['status'] as String,
      total: (jsonSerialization['total'] as num).toDouble(),
    );
  }

  static final t = OrderTable();

  static const db = OrderRepository._();

  @override
  int? id;

  int customerId;

  DateTime placedAt;

  String status;

  double total;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [Order]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Order copyWith({
    int? id,
    int? customerId,
    DateTime? placedAt,
    String? status,
    double? total,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Order',
      if (id != null) 'id': id,
      'customerId': customerId,
      'placedAt': placedAt.toJson(),
      'status': status,
      'total': total,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Order',
      if (id != null) 'id': id,
      'customerId': customerId,
      'placedAt': placedAt.toJson(),
      'status': status,
      'total': total,
    };
  }

  static OrderInclude include() {
    return OrderInclude._();
  }

  static OrderIncludeList includeList({
    _is.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<OrderTable>? orderBy,
    _is.OrderByListBuilder<OrderTable>? orderByList,
    OrderInclude? include,
  }) {
    return OrderIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Order.t),
      orderByList: orderByList?.call(Order.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OrderImpl extends Order {
  _OrderImpl({
    int? id,
    required int customerId,
    required DateTime placedAt,
    required String status,
    required double total,
  }) : super._(
         id: id,
         customerId: customerId,
         placedAt: placedAt,
         status: status,
         total: total,
       );

  /// Returns a shallow copy of this [Order]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  Order copyWith({
    Object? id = _Undefined,
    int? customerId,
    DateTime? placedAt,
    String? status,
    double? total,
  }) {
    return Order(
      id: id is int? ? id : this.id,
      customerId: customerId ?? this.customerId,
      placedAt: placedAt ?? this.placedAt,
      status: status ?? this.status,
      total: total ?? this.total,
    );
  }
}

class OrderUpdateTable extends _is.UpdateTable<OrderTable> {
  OrderUpdateTable(super.table);

  _is.ColumnValue<int, int> customerId(int value) =>
      _is.ColumnValue(table.customerId, value);

  _is.ColumnValue<DateTime, DateTime> placedAt(DateTime value) =>
      _is.ColumnValue(table.placedAt, value);

  _is.ColumnValue<String, String> status(String value) =>
      _is.ColumnValue(table.status, value);

  _is.ColumnValue<double, double> total(double value) =>
      _is.ColumnValue(table.total, value);
}

class OrderTable extends _is.Table<int?> {
  OrderTable({super.tableRelation}) : super(tableName: 'shop_orders') {
    updateTable = OrderUpdateTable(this);
    customerId = _is.ColumnInt('customerId', this);
    placedAt = _is.ColumnDateTime('placedAt', this);
    status = _is.ColumnString('status', this);
    total = _is.ColumnDouble('total', this);
  }

  late final OrderUpdateTable updateTable;

  late final _is.ColumnInt customerId;

  late final _is.ColumnDateTime placedAt;

  late final _is.ColumnString status;

  late final _is.ColumnDouble total;

  @override
  List<_is.Column> get columns => [id, customerId, placedAt, status, total];
}

class OrderInclude extends _is.IncludeObject {
  OrderInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => Order.t;
}

class OrderIncludeList extends _is.IncludeList {
  OrderIncludeList._({
    _is.WhereExpressionBuilder<OrderTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Order.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => Order.t;
}

class OrderRepository {
  const OrderRepository._();

  /// Returns a list of [Order]s matching the given query parameters.
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
  Future<List<Order>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<OrderTable>? orderBy,
    _is.OrderByListBuilder<OrderTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Order>(
      where: where?.call(Order.t),
      orderBy: orderBy?.call(Order.t),
      orderByList: orderByList?.call(Order.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Order] matching the given query parameters.
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
  Future<Order?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<OrderTable>? where,
    int? offset,
    _is.OrderByBuilder<OrderTable>? orderBy,
    _is.OrderByListBuilder<OrderTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Order>(
      where: where?.call(Order.t),
      orderBy: orderBy?.call(Order.t),
      orderByList: orderByList?.call(Order.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Order] by its [id] or null if no such row exists.
  Future<Order?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Order>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Order]s in the list and returns the inserted rows.
  ///
  /// The returned [Order]s will have their `id` fields set.
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
  Future<List<Order>> insert(
    _is.DatabaseSession session,
    List<Order> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Order>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Order] and returns the inserted row.
  ///
  /// The returned [Order] will have its `id` field set.
  Future<Order> insertRow(
    _is.DatabaseSession session,
    Order row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Order>(row, transaction: transaction);
  }

  /// Upserts all [Order]s in the list and returns the resulting rows.
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
  /// The returned [Order]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Order>> upsert(
    _is.DatabaseSession session,
    List<Order> rows, {
    required _is.ColumnSelections<OrderTable> conflictColumns,
    _is.ColumnSelections<OrderTable>? updateColumns,
    _is.WhereExpressionBuilder<OrderTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Order>(
      rows,
      conflictColumns: conflictColumns(Order.t),
      updateColumns: updateColumns?.call(Order.t),
      updateWhere: updateWhere?.call(Order.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Order] and returns the resulting row.
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
  /// The returned [Order] will have its `id` field set.
  Future<Order?> upsertRow(
    _is.DatabaseSession session,
    Order row, {
    required _is.ColumnSelections<OrderTable> conflictColumns,
    _is.ColumnSelections<OrderTable>? updateColumns,
    _is.WhereExpressionBuilder<OrderTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Order>(
      row,
      conflictColumns: conflictColumns(Order.t),
      updateColumns: updateColumns?.call(Order.t),
      updateWhere: updateWhere?.call(Order.t),
      transaction: transaction,
    );
  }

  /// Updates all [Order]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Order>> update(
    _is.DatabaseSession session,
    List<Order> rows, {
    _is.ColumnSelections<OrderTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Order>(
      rows,
      columns: columns?.call(Order.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Order]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Order> updateRow(
    _is.DatabaseSession session,
    Order row, {
    _is.ColumnSelections<OrderTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<Order>(
      row,
      columns: columns?.call(Order.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Order] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Order?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<OrderUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Order>(
      id,
      columnValues: columnValues(Order.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Order]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Order>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<OrderUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<OrderTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<OrderTable>? orderBy,
    _is.OrderByListBuilder<OrderTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Order>(
      columnValues: columnValues(Order.t.updateTable),
      where: where(Order.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Order.t),
      orderByList: orderByList?.call(Order.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Order]s in the list and returns the deleted rows.
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
  Future<List<Order>> delete(
    _is.DatabaseSession session,
    List<Order> rows, {
    _is.OrderByBuilder<OrderTable>? orderBy,
    _is.OrderByListBuilder<OrderTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Order>(
      rows,
      orderBy: orderBy?.call(Order.t),
      orderByList: orderByList?.call(Order.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Order].
  Future<Order> deleteRow(
    _is.DatabaseSession session,
    Order row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Order>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Order>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<OrderTable> where,
    _is.OrderByBuilder<OrderTable>? orderBy,
    _is.OrderByListBuilder<OrderTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Order>(
      where: where(Order.t),
      orderBy: orderBy?.call(Order.t),
      orderByList: orderByList?.call(Order.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Order>(
      where: where?.call(Order.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Order] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<OrderTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Order>(
      where: where(Order.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
