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
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'package:serverpod_database/serverpod_database.dart' as _isd;

abstract class ShopClientDraft
    implements _isd.TableRow<int?>, _isc.ProtocolSerialization {
  ShopClientDraft._({this.id, required this.title});

  factory ShopClientDraft({int? id, required String title}) =
      _ShopClientDraftImpl;

  factory ShopClientDraft.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopClientDraft(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
    );
  }

  static final t = ShopClientDraftTable();

  static const db = ShopClientDraftRepository._();

  @override
  int? id;

  String title;

  @override
  _isd.Table<int?> get table => t;

  /// Returns a shallow copy of this [ShopClientDraft]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ShopClientDraft copyWith({int? id, String? title});
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopClientDraft',
      if (id != null) 'id': id,
      'title': title,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopClientDraft',
      if (id != null) 'id': id,
      'title': title,
    };
  }

  static ShopClientDraftInclude include() {
    return ShopClientDraftInclude._();
  }

  static ShopClientDraftIncludeList includeList({
    _isd.WhereExpressionBuilder<ShopClientDraftTable>? where,
    int? limit,
    int? offset,
    _isd.OrderByBuilder<ShopClientDraftTable>? orderBy,
    _isd.OrderByListBuilder<ShopClientDraftTable>? orderByList,
    ShopClientDraftInclude? include,
  }) {
    return ShopClientDraftIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopClientDraft.t),
      orderByList: orderByList?.call(ShopClientDraft.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopClientDraftImpl extends ShopClientDraft {
  _ShopClientDraftImpl({int? id, required String title})
    : super._(id: id, title: title);

  /// Returns a shallow copy of this [ShopClientDraft]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ShopClientDraft copyWith({Object? id = _Undefined, String? title}) {
    return ShopClientDraft(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
    );
  }
}

class ShopClientDraftUpdateTable
    extends _isd.UpdateTable<ShopClientDraftTable> {
  ShopClientDraftUpdateTable(super.table);

  _isd.ColumnValue<String, String> title(String value) =>
      _isd.ColumnValue(table.title, value);
}

class ShopClientDraftTable extends _isd.Table<int?> {
  ShopClientDraftTable({super.tableRelation})
    : super(tableName: 'shop_client_drafts') {
    updateTable = ShopClientDraftUpdateTable(this);
    title = _isd.ColumnString('title', this);
  }

  late final ShopClientDraftUpdateTable updateTable;

  late final _isd.ColumnString title;

  @override
  List<_isd.Column> get columns => [id, title];
}

class ShopClientDraftInclude extends _isd.IncludeObject {
  ShopClientDraftInclude._();

  @override
  Map<String, _isd.Include?> get includes => {};

  @override
  _isd.Table<int?> get table => ShopClientDraft.t;
}

class ShopClientDraftIncludeList extends _isd.IncludeList {
  ShopClientDraftIncludeList._({
    _isd.WhereExpressionBuilder<ShopClientDraftTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShopClientDraft.t);
  }

  @override
  Map<String, _isd.Include?> get includes => include?.includes ?? {};

  @override
  _isd.Table<int?> get table => ShopClientDraft.t;
}

class ShopClientDraftRepository {
  const ShopClientDraftRepository._();

  /// Returns a list of [ShopClientDraft]s matching the given query parameters.
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
  Future<List<ShopClientDraft>> find(
    _isd.DatabaseSession session, {
    _isd.WhereExpressionBuilder<ShopClientDraftTable>? where,
    int? limit,
    int? offset,
    _isd.OrderByBuilder<ShopClientDraftTable>? orderBy,
    _isd.OrderByListBuilder<ShopClientDraftTable>? orderByList,
    _isd.Transaction? transaction,
    _isd.LockMode? lockMode,
    _isd.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ShopClientDraft>(
      where: where?.call(ShopClientDraft.t),
      orderBy: orderBy?.call(ShopClientDraft.t),
      orderByList: orderByList?.call(ShopClientDraft.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ShopClientDraft] matching the given query parameters.
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
  Future<ShopClientDraft?> findFirstRow(
    _isd.DatabaseSession session, {
    _isd.WhereExpressionBuilder<ShopClientDraftTable>? where,
    int? offset,
    _isd.OrderByBuilder<ShopClientDraftTable>? orderBy,
    _isd.OrderByListBuilder<ShopClientDraftTable>? orderByList,
    _isd.Transaction? transaction,
    _isd.LockMode? lockMode,
    _isd.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ShopClientDraft>(
      where: where?.call(ShopClientDraft.t),
      orderBy: orderBy?.call(ShopClientDraft.t),
      orderByList: orderByList?.call(ShopClientDraft.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ShopClientDraft] by its [id] or null if no such row exists.
  Future<ShopClientDraft?> findById(
    _isd.DatabaseSession session,
    int id, {
    _isd.Transaction? transaction,
    _isd.LockMode? lockMode,
    _isd.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ShopClientDraft>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ShopClientDraft]s in the list and returns the inserted rows.
  ///
  /// The returned [ShopClientDraft]s will have their `id` fields set.
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
  Future<List<ShopClientDraft>> insert(
    _isd.DatabaseSession session,
    List<ShopClientDraft> rows, {
    _isd.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ShopClientDraft>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ShopClientDraft] and returns the inserted row.
  ///
  /// The returned [ShopClientDraft] will have its `id` field set.
  Future<ShopClientDraft> insertRow(
    _isd.DatabaseSession session,
    ShopClientDraft row, {
    _isd.Transaction? transaction,
  }) async {
    return session.db.insertRow<ShopClientDraft>(row, transaction: transaction);
  }

  /// Upserts all [ShopClientDraft]s in the list and returns the resulting rows.
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
  /// The returned [ShopClientDraft]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopClientDraft>> upsert(
    _isd.DatabaseSession session,
    List<ShopClientDraft> rows, {
    required _isd.ColumnSelections<ShopClientDraftTable> conflictColumns,
    _isd.ColumnSelections<ShopClientDraftTable>? updateColumns,
    _isd.WhereExpressionBuilder<ShopClientDraftTable>? updateWhere,
    _isd.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ShopClientDraft>(
      rows,
      conflictColumns: conflictColumns(ShopClientDraft.t),
      updateColumns: updateColumns?.call(ShopClientDraft.t),
      updateWhere: updateWhere?.call(ShopClientDraft.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ShopClientDraft] and returns the resulting row.
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
  /// The returned [ShopClientDraft] will have its `id` field set.
  Future<ShopClientDraft?> upsertRow(
    _isd.DatabaseSession session,
    ShopClientDraft row, {
    required _isd.ColumnSelections<ShopClientDraftTable> conflictColumns,
    _isd.ColumnSelections<ShopClientDraftTable>? updateColumns,
    _isd.WhereExpressionBuilder<ShopClientDraftTable>? updateWhere,
    _isd.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ShopClientDraft>(
      row,
      conflictColumns: conflictColumns(ShopClientDraft.t),
      updateColumns: updateColumns?.call(ShopClientDraft.t),
      updateWhere: updateWhere?.call(ShopClientDraft.t),
      transaction: transaction,
    );
  }

  /// Updates all [ShopClientDraft]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopClientDraft>> update(
    _isd.DatabaseSession session,
    List<ShopClientDraft> rows, {
    _isd.ColumnSelections<ShopClientDraftTable>? columns,
    _isd.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ShopClientDraft>(
      rows,
      columns: columns?.call(ShopClientDraft.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ShopClientDraft]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ShopClientDraft> updateRow(
    _isd.DatabaseSession session,
    ShopClientDraft row, {
    _isd.ColumnSelections<ShopClientDraftTable>? columns,
    _isd.Transaction? transaction,
  }) async {
    return session.db.updateRow<ShopClientDraft>(
      row,
      columns: columns?.call(ShopClientDraft.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ShopClientDraft] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ShopClientDraft?> updateById(
    _isd.DatabaseSession session,
    int id, {
    required _isd.ColumnValueListBuilder<ShopClientDraftUpdateTable>
    columnValues,
    _isd.Transaction? transaction,
  }) async {
    return session.db.updateById<ShopClientDraft>(
      id,
      columnValues: columnValues(ShopClientDraft.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ShopClientDraft]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopClientDraft>> updateWhere(
    _isd.DatabaseSession session, {
    required _isd.ColumnValueListBuilder<ShopClientDraftUpdateTable>
    columnValues,
    required _isd.WhereExpressionBuilder<ShopClientDraftTable> where,
    int? limit,
    int? offset,
    _isd.OrderByBuilder<ShopClientDraftTable>? orderBy,
    _isd.OrderByListBuilder<ShopClientDraftTable>? orderByList,
    _isd.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ShopClientDraft>(
      columnValues: columnValues(ShopClientDraft.t.updateTable),
      where: where(ShopClientDraft.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopClientDraft.t),
      orderByList: orderByList?.call(ShopClientDraft.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ShopClientDraft]s in the list and returns the deleted rows.
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
  Future<List<ShopClientDraft>> delete(
    _isd.DatabaseSession session,
    List<ShopClientDraft> rows, {
    _isd.OrderByBuilder<ShopClientDraftTable>? orderBy,
    _isd.OrderByListBuilder<ShopClientDraftTable>? orderByList,
    _isd.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ShopClientDraft>(
      rows,
      orderBy: orderBy?.call(ShopClientDraft.t),
      orderByList: orderByList?.call(ShopClientDraft.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ShopClientDraft].
  Future<ShopClientDraft> deleteRow(
    _isd.DatabaseSession session,
    ShopClientDraft row, {
    _isd.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ShopClientDraft>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopClientDraft>> deleteWhere(
    _isd.DatabaseSession session, {
    required _isd.WhereExpressionBuilder<ShopClientDraftTable> where,
    _isd.OrderByBuilder<ShopClientDraftTable>? orderBy,
    _isd.OrderByListBuilder<ShopClientDraftTable>? orderByList,
    _isd.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ShopClientDraft>(
      where: where(ShopClientDraft.t),
      orderBy: orderBy?.call(ShopClientDraft.t),
      orderByList: orderByList?.call(ShopClientDraft.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _isd.DatabaseSession session, {
    _isd.WhereExpressionBuilder<ShopClientDraftTable>? where,
    int? limit,
    _isd.Transaction? transaction,
  }) async {
    return session.db.count<ShopClientDraft>(
      where: where?.call(ShopClientDraft.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ShopClientDraft] rows matching the [where] expression.
  Future<void> lockRows(
    _isd.DatabaseSession session, {
    required _isd.WhereExpressionBuilder<ShopClientDraftTable> where,
    required _isd.LockMode lockMode,
    required _isd.Transaction transaction,
    _isd.LockBehavior lockBehavior = _isd.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ShopClientDraft>(
      where: where(ShopClientDraft.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
