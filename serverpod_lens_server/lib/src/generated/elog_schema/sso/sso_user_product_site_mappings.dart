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

abstract class SsoUserProductSiteMappings
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoUserProductSiteMappings._({
    this.id,
    required this.userId,
    required this.productId,
    required this.siteId,
    this.productRole,
    this.metadata,
  });

  factory SsoUserProductSiteMappings({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required _is.UuidValue productId,
    required _is.UuidValue siteId,
    String? productRole,
    String? metadata,
  }) = _SsoUserProductSiteMappingsImpl;

  factory SsoUserProductSiteMappings.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return SsoUserProductSiteMappings(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      productId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['productId'],
      ),
      siteId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['siteId']),
      productRole: jsonSerialization['productRole'] as String?,
      metadata: jsonSerialization['metadata'] as String?,
    );
  }

  static final t = SsoUserProductSiteMappingsTable();

  static const db = SsoUserProductSiteMappingsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue userId;

  _is.UuidValue productId;

  _is.UuidValue siteId;

  String? productRole;

  String? metadata;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoUserProductSiteMappings]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoUserProductSiteMappings copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _is.UuidValue? productId,
    _is.UuidValue? siteId,
    String? productRole,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoUserProductSiteMappings',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'productId': productId.toJson(),
      'siteId': siteId.toJson(),
      if (productRole != null) 'productRole': productRole,
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoUserProductSiteMappings',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'productId': productId.toJson(),
      'siteId': siteId.toJson(),
      if (productRole != null) 'productRole': productRole,
      if (metadata != null) 'metadata': metadata,
    };
  }

  static SsoUserProductSiteMappingsInclude include() {
    return SsoUserProductSiteMappingsInclude._();
  }

  static SsoUserProductSiteMappingsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoUserProductSiteMappingsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserProductSiteMappingsTable>? orderBy,
    _is.OrderByListBuilder<SsoUserProductSiteMappingsTable>? orderByList,
    SsoUserProductSiteMappingsInclude? include,
  }) {
    return SsoUserProductSiteMappingsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoUserProductSiteMappings.t),
      orderByList: orderByList?.call(SsoUserProductSiteMappings.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoUserProductSiteMappingsImpl extends SsoUserProductSiteMappings {
  _SsoUserProductSiteMappingsImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required _is.UuidValue productId,
    required _is.UuidValue siteId,
    String? productRole,
    String? metadata,
  }) : super._(
         id: id,
         userId: userId,
         productId: productId,
         siteId: siteId,
         productRole: productRole,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [SsoUserProductSiteMappings]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoUserProductSiteMappings copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    _is.UuidValue? productId,
    _is.UuidValue? siteId,
    Object? productRole = _Undefined,
    Object? metadata = _Undefined,
  }) {
    return SsoUserProductSiteMappings(
      id: id is _is.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      productId: productId ?? this.productId,
      siteId: siteId ?? this.siteId,
      productRole: productRole is String? ? productRole : this.productRole,
      metadata: metadata is String? ? metadata : this.metadata,
    );
  }
}

class SsoUserProductSiteMappingsUpdateTable
    extends _is.UpdateTable<SsoUserProductSiteMappingsTable> {
  SsoUserProductSiteMappingsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> productId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.productId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> siteId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.siteId,
        value,
      );

  _is.ColumnValue<String, String> productRole(String? value) => _is.ColumnValue(
    table.productRole,
    value,
  );

  _is.ColumnValue<String, String> metadata(String? value) => _is.ColumnValue(
    table.metadata,
    value,
  );
}

class SsoUserProductSiteMappingsTable extends _is.Table<_is.UuidValue?> {
  SsoUserProductSiteMappingsTable({super.tableRelation})
    : super(tableName: 'sso_user_product_site_mappings') {
    updateTable = SsoUserProductSiteMappingsUpdateTable(this);
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    productId = _is.ColumnUuid(
      'productId',
      this,
    );
    siteId = _is.ColumnUuid(
      'siteId',
      this,
    );
    productRole = _is.ColumnString(
      'productRole',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
      this,
    );
  }

  late final SsoUserProductSiteMappingsUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnUuid productId;

  late final _is.ColumnUuid siteId;

  late final _is.ColumnString productRole;

  late final _is.ColumnString metadata;

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    productId,
    siteId,
    productRole,
    metadata,
  ];
}

class SsoUserProductSiteMappingsInclude extends _is.IncludeObject {
  SsoUserProductSiteMappingsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoUserProductSiteMappings.t;
}

class SsoUserProductSiteMappingsIncludeList extends _is.IncludeList {
  SsoUserProductSiteMappingsIncludeList._({
    _is.WhereExpressionBuilder<SsoUserProductSiteMappingsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoUserProductSiteMappings.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoUserProductSiteMappings.t;
}

class SsoUserProductSiteMappingsRepository {
  const SsoUserProductSiteMappingsRepository._();

  /// Returns a list of [SsoUserProductSiteMappings]s matching the given query parameters.
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
  Future<List<SsoUserProductSiteMappings>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserProductSiteMappingsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserProductSiteMappingsTable>? orderBy,
    _is.OrderByListBuilder<SsoUserProductSiteMappingsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoUserProductSiteMappings>(
      where: where?.call(SsoUserProductSiteMappings.t),
      orderBy: orderBy?.call(SsoUserProductSiteMappings.t),
      orderByList: orderByList?.call(SsoUserProductSiteMappings.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoUserProductSiteMappings] matching the given query parameters.
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
  Future<SsoUserProductSiteMappings?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserProductSiteMappingsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoUserProductSiteMappingsTable>? orderBy,
    _is.OrderByListBuilder<SsoUserProductSiteMappingsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoUserProductSiteMappings>(
      where: where?.call(SsoUserProductSiteMappings.t),
      orderBy: orderBy?.call(SsoUserProductSiteMappings.t),
      orderByList: orderByList?.call(SsoUserProductSiteMappings.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoUserProductSiteMappings] by its [id] or null if no such row exists.
  Future<SsoUserProductSiteMappings?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoUserProductSiteMappings>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoUserProductSiteMappings]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoUserProductSiteMappings]s will have their `id` fields set.
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
  Future<List<SsoUserProductSiteMappings>> insert(
    _is.DatabaseSession session,
    List<SsoUserProductSiteMappings> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoUserProductSiteMappings>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoUserProductSiteMappings] and returns the inserted row.
  ///
  /// The returned [SsoUserProductSiteMappings] will have its `id` field set.
  Future<SsoUserProductSiteMappings> insertRow(
    _is.DatabaseSession session,
    SsoUserProductSiteMappings row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoUserProductSiteMappings>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoUserProductSiteMappings]s in the list and returns the resulting rows.
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
  /// The returned [SsoUserProductSiteMappings]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserProductSiteMappings>> upsert(
    _is.DatabaseSession session,
    List<SsoUserProductSiteMappings> rows, {
    required _is.ColumnSelections<SsoUserProductSiteMappingsTable>
    conflictColumns,
    _is.ColumnSelections<SsoUserProductSiteMappingsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoUserProductSiteMappingsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoUserProductSiteMappings>(
      rows,
      conflictColumns: conflictColumns(SsoUserProductSiteMappings.t),
      updateColumns: updateColumns?.call(SsoUserProductSiteMappings.t),
      updateWhere: updateWhere?.call(SsoUserProductSiteMappings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoUserProductSiteMappings] and returns the resulting row.
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
  /// The returned [SsoUserProductSiteMappings] will have its `id` field set.
  Future<SsoUserProductSiteMappings?> upsertRow(
    _is.DatabaseSession session,
    SsoUserProductSiteMappings row, {
    required _is.ColumnSelections<SsoUserProductSiteMappingsTable>
    conflictColumns,
    _is.ColumnSelections<SsoUserProductSiteMappingsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoUserProductSiteMappingsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoUserProductSiteMappings>(
      row,
      conflictColumns: conflictColumns(SsoUserProductSiteMappings.t),
      updateColumns: updateColumns?.call(SsoUserProductSiteMappings.t),
      updateWhere: updateWhere?.call(SsoUserProductSiteMappings.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoUserProductSiteMappings]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserProductSiteMappings>> update(
    _is.DatabaseSession session,
    List<SsoUserProductSiteMappings> rows, {
    _is.ColumnSelections<SsoUserProductSiteMappingsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoUserProductSiteMappings>(
      rows,
      columns: columns?.call(SsoUserProductSiteMappings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoUserProductSiteMappings]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoUserProductSiteMappings> updateRow(
    _is.DatabaseSession session,
    SsoUserProductSiteMappings row, {
    _is.ColumnSelections<SsoUserProductSiteMappingsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoUserProductSiteMappings>(
      row,
      columns: columns?.call(SsoUserProductSiteMappings.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoUserProductSiteMappings] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoUserProductSiteMappings?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoUserProductSiteMappingsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoUserProductSiteMappings>(
      id,
      columnValues: columnValues(SsoUserProductSiteMappings.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoUserProductSiteMappings]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserProductSiteMappings>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoUserProductSiteMappingsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoUserProductSiteMappingsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserProductSiteMappingsTable>? orderBy,
    _is.OrderByListBuilder<SsoUserProductSiteMappingsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoUserProductSiteMappings>(
      columnValues: columnValues(SsoUserProductSiteMappings.t.updateTable),
      where: where(SsoUserProductSiteMappings.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoUserProductSiteMappings.t),
      orderByList: orderByList?.call(SsoUserProductSiteMappings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoUserProductSiteMappings]s in the list and returns the deleted rows.
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
  Future<List<SsoUserProductSiteMappings>> delete(
    _is.DatabaseSession session,
    List<SsoUserProductSiteMappings> rows, {
    _is.OrderByBuilder<SsoUserProductSiteMappingsTable>? orderBy,
    _is.OrderByListBuilder<SsoUserProductSiteMappingsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoUserProductSiteMappings>(
      rows,
      orderBy: orderBy?.call(SsoUserProductSiteMappings.t),
      orderByList: orderByList?.call(SsoUserProductSiteMappings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoUserProductSiteMappings].
  Future<SsoUserProductSiteMappings> deleteRow(
    _is.DatabaseSession session,
    SsoUserProductSiteMappings row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoUserProductSiteMappings>(
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
  Future<List<SsoUserProductSiteMappings>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoUserProductSiteMappingsTable> where,
    _is.OrderByBuilder<SsoUserProductSiteMappingsTable>? orderBy,
    _is.OrderByListBuilder<SsoUserProductSiteMappingsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoUserProductSiteMappings>(
      where: where(SsoUserProductSiteMappings.t),
      orderBy: orderBy?.call(SsoUserProductSiteMappings.t),
      orderByList: orderByList?.call(SsoUserProductSiteMappings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserProductSiteMappingsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoUserProductSiteMappings>(
      where: where?.call(SsoUserProductSiteMappings.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoUserProductSiteMappings] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoUserProductSiteMappingsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoUserProductSiteMappings>(
      where: where(SsoUserProductSiteMappings.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
