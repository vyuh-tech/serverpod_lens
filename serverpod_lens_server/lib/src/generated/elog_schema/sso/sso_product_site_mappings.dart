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

abstract class SsoProductSiteMappings
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoProductSiteMappings._({
    this.id,
    required this.productId,
    required this.siteId,
    this.installedVersion,
    this.installationDate,
    this.expiryDate,
    this.metadata,
  });

  factory SsoProductSiteMappings({
    _is.UuidValue? id,
    required _is.UuidValue productId,
    required _is.UuidValue siteId,
    String? installedVersion,
    DateTime? installationDate,
    DateTime? expiryDate,
    String? metadata,
  }) = _SsoProductSiteMappingsImpl;

  factory SsoProductSiteMappings.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return SsoProductSiteMappings(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      productId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['productId'],
      ),
      siteId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['siteId']),
      installedVersion: jsonSerialization['installedVersion'] as String?,
      installationDate: jsonSerialization['installationDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['installationDate'],
            ),
      expiryDate: jsonSerialization['expiryDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['expiryDate']),
      metadata: jsonSerialization['metadata'] as String?,
    );
  }

  static final t = SsoProductSiteMappingsTable();

  static const db = SsoProductSiteMappingsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue productId;

  _is.UuidValue siteId;

  String? installedVersion;

  DateTime? installationDate;

  DateTime? expiryDate;

  String? metadata;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoProductSiteMappings]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoProductSiteMappings copyWith({
    _is.UuidValue? id,
    _is.UuidValue? productId,
    _is.UuidValue? siteId,
    String? installedVersion,
    DateTime? installationDate,
    DateTime? expiryDate,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoProductSiteMappings',
      if (id != null) 'id': id?.toJson(),
      'productId': productId.toJson(),
      'siteId': siteId.toJson(),
      if (installedVersion != null) 'installedVersion': installedVersion,
      if (installationDate != null)
        'installationDate': installationDate?.toJson(),
      if (expiryDate != null) 'expiryDate': expiryDate?.toJson(),
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoProductSiteMappings',
      if (id != null) 'id': id?.toJson(),
      'productId': productId.toJson(),
      'siteId': siteId.toJson(),
      if (installedVersion != null) 'installedVersion': installedVersion,
      if (installationDate != null)
        'installationDate': installationDate?.toJson(),
      if (expiryDate != null) 'expiryDate': expiryDate?.toJson(),
      if (metadata != null) 'metadata': metadata,
    };
  }

  static SsoProductSiteMappingsInclude include() {
    return SsoProductSiteMappingsInclude._();
  }

  static SsoProductSiteMappingsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoProductSiteMappingsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoProductSiteMappingsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductSiteMappingsTable>? orderByList,
    SsoProductSiteMappingsInclude? include,
  }) {
    return SsoProductSiteMappingsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoProductSiteMappings.t),
      orderByList: orderByList?.call(SsoProductSiteMappings.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoProductSiteMappingsImpl extends SsoProductSiteMappings {
  _SsoProductSiteMappingsImpl({
    _is.UuidValue? id,
    required _is.UuidValue productId,
    required _is.UuidValue siteId,
    String? installedVersion,
    DateTime? installationDate,
    DateTime? expiryDate,
    String? metadata,
  }) : super._(
         id: id,
         productId: productId,
         siteId: siteId,
         installedVersion: installedVersion,
         installationDate: installationDate,
         expiryDate: expiryDate,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [SsoProductSiteMappings]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoProductSiteMappings copyWith({
    Object? id = _Undefined,
    _is.UuidValue? productId,
    _is.UuidValue? siteId,
    Object? installedVersion = _Undefined,
    Object? installationDate = _Undefined,
    Object? expiryDate = _Undefined,
    Object? metadata = _Undefined,
  }) {
    return SsoProductSiteMappings(
      id: id is _is.UuidValue? ? id : this.id,
      productId: productId ?? this.productId,
      siteId: siteId ?? this.siteId,
      installedVersion: installedVersion is String?
          ? installedVersion
          : this.installedVersion,
      installationDate: installationDate is DateTime?
          ? installationDate
          : this.installationDate,
      expiryDate: expiryDate is DateTime? ? expiryDate : this.expiryDate,
      metadata: metadata is String? ? metadata : this.metadata,
    );
  }
}

class SsoProductSiteMappingsUpdateTable
    extends _is.UpdateTable<SsoProductSiteMappingsTable> {
  SsoProductSiteMappingsUpdateTable(super.table);

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

  _is.ColumnValue<String, String> installedVersion(String? value) =>
      _is.ColumnValue(
        table.installedVersion,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> installationDate(DateTime? value) =>
      _is.ColumnValue(
        table.installationDate,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> expiryDate(DateTime? value) =>
      _is.ColumnValue(
        table.expiryDate,
        value,
      );

  _is.ColumnValue<String, String> metadata(String? value) => _is.ColumnValue(
    table.metadata,
    value,
  );
}

class SsoProductSiteMappingsTable extends _is.Table<_is.UuidValue?> {
  SsoProductSiteMappingsTable({super.tableRelation})
    : super(tableName: 'sso_product_site_mappings') {
    updateTable = SsoProductSiteMappingsUpdateTable(this);
    productId = _is.ColumnUuid(
      'productId',
      this,
    );
    siteId = _is.ColumnUuid(
      'siteId',
      this,
    );
    installedVersion = _is.ColumnString(
      'installedVersion',
      this,
    );
    installationDate = _is.ColumnDateTime(
      'installationDate',
      this,
    );
    expiryDate = _is.ColumnDateTime(
      'expiryDate',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
      this,
    );
  }

  late final SsoProductSiteMappingsUpdateTable updateTable;

  late final _is.ColumnUuid productId;

  late final _is.ColumnUuid siteId;

  late final _is.ColumnString installedVersion;

  late final _is.ColumnDateTime installationDate;

  late final _is.ColumnDateTime expiryDate;

  late final _is.ColumnString metadata;

  @override
  List<_is.Column> get columns => [
    id,
    productId,
    siteId,
    installedVersion,
    installationDate,
    expiryDate,
    metadata,
  ];
}

class SsoProductSiteMappingsInclude extends _is.IncludeObject {
  SsoProductSiteMappingsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoProductSiteMappings.t;
}

class SsoProductSiteMappingsIncludeList extends _is.IncludeList {
  SsoProductSiteMappingsIncludeList._({
    _is.WhereExpressionBuilder<SsoProductSiteMappingsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoProductSiteMappings.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoProductSiteMappings.t;
}

class SsoProductSiteMappingsRepository {
  const SsoProductSiteMappingsRepository._();

  /// Returns a list of [SsoProductSiteMappings]s matching the given query parameters.
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
  Future<List<SsoProductSiteMappings>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoProductSiteMappingsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoProductSiteMappingsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductSiteMappingsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoProductSiteMappings>(
      where: where?.call(SsoProductSiteMappings.t),
      orderBy: orderBy?.call(SsoProductSiteMappings.t),
      orderByList: orderByList?.call(SsoProductSiteMappings.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoProductSiteMappings] matching the given query parameters.
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
  Future<SsoProductSiteMappings?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoProductSiteMappingsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoProductSiteMappingsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductSiteMappingsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoProductSiteMappings>(
      where: where?.call(SsoProductSiteMappings.t),
      orderBy: orderBy?.call(SsoProductSiteMappings.t),
      orderByList: orderByList?.call(SsoProductSiteMappings.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoProductSiteMappings] by its [id] or null if no such row exists.
  Future<SsoProductSiteMappings?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoProductSiteMappings>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoProductSiteMappings]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoProductSiteMappings]s will have their `id` fields set.
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
  Future<List<SsoProductSiteMappings>> insert(
    _is.DatabaseSession session,
    List<SsoProductSiteMappings> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoProductSiteMappings>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoProductSiteMappings] and returns the inserted row.
  ///
  /// The returned [SsoProductSiteMappings] will have its `id` field set.
  Future<SsoProductSiteMappings> insertRow(
    _is.DatabaseSession session,
    SsoProductSiteMappings row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoProductSiteMappings>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoProductSiteMappings]s in the list and returns the resulting rows.
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
  /// The returned [SsoProductSiteMappings]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoProductSiteMappings>> upsert(
    _is.DatabaseSession session,
    List<SsoProductSiteMappings> rows, {
    required _is.ColumnSelections<SsoProductSiteMappingsTable> conflictColumns,
    _is.ColumnSelections<SsoProductSiteMappingsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoProductSiteMappingsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoProductSiteMappings>(
      rows,
      conflictColumns: conflictColumns(SsoProductSiteMappings.t),
      updateColumns: updateColumns?.call(SsoProductSiteMappings.t),
      updateWhere: updateWhere?.call(SsoProductSiteMappings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoProductSiteMappings] and returns the resulting row.
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
  /// The returned [SsoProductSiteMappings] will have its `id` field set.
  Future<SsoProductSiteMappings?> upsertRow(
    _is.DatabaseSession session,
    SsoProductSiteMappings row, {
    required _is.ColumnSelections<SsoProductSiteMappingsTable> conflictColumns,
    _is.ColumnSelections<SsoProductSiteMappingsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoProductSiteMappingsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoProductSiteMappings>(
      row,
      conflictColumns: conflictColumns(SsoProductSiteMappings.t),
      updateColumns: updateColumns?.call(SsoProductSiteMappings.t),
      updateWhere: updateWhere?.call(SsoProductSiteMappings.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoProductSiteMappings]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoProductSiteMappings>> update(
    _is.DatabaseSession session,
    List<SsoProductSiteMappings> rows, {
    _is.ColumnSelections<SsoProductSiteMappingsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoProductSiteMappings>(
      rows,
      columns: columns?.call(SsoProductSiteMappings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoProductSiteMappings]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoProductSiteMappings> updateRow(
    _is.DatabaseSession session,
    SsoProductSiteMappings row, {
    _is.ColumnSelections<SsoProductSiteMappingsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoProductSiteMappings>(
      row,
      columns: columns?.call(SsoProductSiteMappings.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoProductSiteMappings] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoProductSiteMappings?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoProductSiteMappingsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoProductSiteMappings>(
      id,
      columnValues: columnValues(SsoProductSiteMappings.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoProductSiteMappings]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoProductSiteMappings>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoProductSiteMappingsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoProductSiteMappingsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoProductSiteMappingsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductSiteMappingsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoProductSiteMappings>(
      columnValues: columnValues(SsoProductSiteMappings.t.updateTable),
      where: where(SsoProductSiteMappings.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoProductSiteMappings.t),
      orderByList: orderByList?.call(SsoProductSiteMappings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoProductSiteMappings]s in the list and returns the deleted rows.
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
  Future<List<SsoProductSiteMappings>> delete(
    _is.DatabaseSession session,
    List<SsoProductSiteMappings> rows, {
    _is.OrderByBuilder<SsoProductSiteMappingsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductSiteMappingsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoProductSiteMappings>(
      rows,
      orderBy: orderBy?.call(SsoProductSiteMappings.t),
      orderByList: orderByList?.call(SsoProductSiteMappings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoProductSiteMappings].
  Future<SsoProductSiteMappings> deleteRow(
    _is.DatabaseSession session,
    SsoProductSiteMappings row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoProductSiteMappings>(
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
  Future<List<SsoProductSiteMappings>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoProductSiteMappingsTable> where,
    _is.OrderByBuilder<SsoProductSiteMappingsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductSiteMappingsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoProductSiteMappings>(
      where: where(SsoProductSiteMappings.t),
      orderBy: orderBy?.call(SsoProductSiteMappings.t),
      orderByList: orderByList?.call(SsoProductSiteMappings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoProductSiteMappingsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoProductSiteMappings>(
      where: where?.call(SsoProductSiteMappings.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoProductSiteMappings] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoProductSiteMappingsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoProductSiteMappings>(
      where: where(SsoProductSiteMappings.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
