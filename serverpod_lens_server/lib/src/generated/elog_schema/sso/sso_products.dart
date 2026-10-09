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

abstract class SsoProducts
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoProducts._({
    this.id,
    required this.name,
    required this.code,
    this.description,
    this.version,
    this.logoUrl,
    this.isActive,
    this.webhookUrl,
    this.productUrl,
    this.metadata,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory SsoProducts({
    _is.UuidValue? id,
    required String name,
    required String code,
    String? description,
    String? version,
    String? logoUrl,
    bool? isActive,
    String? webhookUrl,
    String? productUrl,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _SsoProductsImpl;

  factory SsoProducts.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoProducts(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      code: jsonSerialization['code'] as String,
      description: jsonSerialization['description'] as String?,
      version: jsonSerialization['version'] as String?,
      logoUrl: jsonSerialization['logoUrl'] as String?,
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      webhookUrl: jsonSerialization['webhookUrl'] as String?,
      productUrl: jsonSerialization['productUrl'] as String?,
      metadata: jsonSerialization['metadata'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['createdBy']),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['updatedBy']),
    );
  }

  static final t = SsoProductsTable();

  static const db = SsoProductsRepository._();

  @override
  _is.UuidValue? id;

  String name;

  String code;

  String? description;

  String? version;

  String? logoUrl;

  bool? isActive;

  String? webhookUrl;

  String? productUrl;

  String? metadata;

  DateTime? createdAt;

  DateTime? updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoProducts]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoProducts copyWith({
    _is.UuidValue? id,
    String? name,
    String? code,
    String? description,
    String? version,
    String? logoUrl,
    bool? isActive,
    String? webhookUrl,
    String? productUrl,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoProducts',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'code': code,
      if (description != null) 'description': description,
      if (version != null) 'version': version,
      if (logoUrl != null) 'logoUrl': logoUrl,
      if (isActive != null) 'isActive': isActive,
      if (webhookUrl != null) 'webhookUrl': webhookUrl,
      if (productUrl != null) 'productUrl': productUrl,
      if (metadata != null) 'metadata': metadata,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoProducts',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'code': code,
      if (description != null) 'description': description,
      if (version != null) 'version': version,
      if (logoUrl != null) 'logoUrl': logoUrl,
      if (isActive != null) 'isActive': isActive,
      if (webhookUrl != null) 'webhookUrl': webhookUrl,
      if (productUrl != null) 'productUrl': productUrl,
      if (metadata != null) 'metadata': metadata,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static SsoProductsInclude include() {
    return SsoProductsInclude._();
  }

  static SsoProductsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoProductsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoProductsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductsTable>? orderByList,
    SsoProductsInclude? include,
  }) {
    return SsoProductsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoProducts.t),
      orderByList: orderByList?.call(SsoProducts.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoProductsImpl extends SsoProducts {
  _SsoProductsImpl({
    _is.UuidValue? id,
    required String name,
    required String code,
    String? description,
    String? version,
    String? logoUrl,
    bool? isActive,
    String? webhookUrl,
    String? productUrl,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) : super._(
         id: id,
         name: name,
         code: code,
         description: description,
         version: version,
         logoUrl: logoUrl,
         isActive: isActive,
         webhookUrl: webhookUrl,
         productUrl: productUrl,
         metadata: metadata,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [SsoProducts]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoProducts copyWith({
    Object? id = _Undefined,
    String? name,
    String? code,
    Object? description = _Undefined,
    Object? version = _Undefined,
    Object? logoUrl = _Undefined,
    Object? isActive = _Undefined,
    Object? webhookUrl = _Undefined,
    Object? productUrl = _Undefined,
    Object? metadata = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return SsoProducts(
      id: id is _is.UuidValue? ? id : this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      description: description is String? ? description : this.description,
      version: version is String? ? version : this.version,
      logoUrl: logoUrl is String? ? logoUrl : this.logoUrl,
      isActive: isActive is bool? ? isActive : this.isActive,
      webhookUrl: webhookUrl is String? ? webhookUrl : this.webhookUrl,
      productUrl: productUrl is String? ? productUrl : this.productUrl,
      metadata: metadata is String? ? metadata : this.metadata,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class SsoProductsUpdateTable extends _is.UpdateTable<SsoProductsTable> {
  SsoProductsUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<String, String> version(String? value) => _is.ColumnValue(
    table.version,
    value,
  );

  _is.ColumnValue<String, String> logoUrl(String? value) => _is.ColumnValue(
    table.logoUrl,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<String, String> webhookUrl(String? value) => _is.ColumnValue(
    table.webhookUrl,
    value,
  );

  _is.ColumnValue<String, String> productUrl(String? value) => _is.ColumnValue(
    table.productUrl,
    value,
  );

  _is.ColumnValue<String, String> metadata(String? value) => _is.ColumnValue(
    table.metadata,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime? value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> createdBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.createdBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> updatedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.updatedBy,
    value,
  );
}

class SsoProductsTable extends _is.Table<_is.UuidValue?> {
  SsoProductsTable({super.tableRelation}) : super(tableName: 'sso_products') {
    updateTable = SsoProductsUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    version = _is.ColumnString(
      'version',
      this,
    );
    logoUrl = _is.ColumnString(
      'logoUrl',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
    webhookUrl = _is.ColumnString(
      'webhookUrl',
      this,
    );
    productUrl = _is.ColumnString(
      'productUrl',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
    );
    createdBy = _is.ColumnUuid(
      'createdBy',
      this,
    );
    updatedBy = _is.ColumnUuid(
      'updatedBy',
      this,
    );
  }

  late final SsoProductsUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString code;

  late final _is.ColumnString description;

  late final _is.ColumnString version;

  late final _is.ColumnString logoUrl;

  late final _is.ColumnBool isActive;

  late final _is.ColumnString webhookUrl;

  late final _is.ColumnString productUrl;

  late final _is.ColumnString metadata;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    code,
    description,
    version,
    logoUrl,
    isActive,
    webhookUrl,
    productUrl,
    metadata,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class SsoProductsInclude extends _is.IncludeObject {
  SsoProductsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoProducts.t;
}

class SsoProductsIncludeList extends _is.IncludeList {
  SsoProductsIncludeList._({
    _is.WhereExpressionBuilder<SsoProductsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoProducts.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoProducts.t;
}

class SsoProductsRepository {
  const SsoProductsRepository._();

  /// Returns a list of [SsoProducts]s matching the given query parameters.
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
  Future<List<SsoProducts>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoProductsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoProductsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoProducts>(
      where: where?.call(SsoProducts.t),
      orderBy: orderBy?.call(SsoProducts.t),
      orderByList: orderByList?.call(SsoProducts.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoProducts] matching the given query parameters.
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
  Future<SsoProducts?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoProductsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoProductsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoProducts>(
      where: where?.call(SsoProducts.t),
      orderBy: orderBy?.call(SsoProducts.t),
      orderByList: orderByList?.call(SsoProducts.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoProducts] by its [id] or null if no such row exists.
  Future<SsoProducts?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoProducts>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoProducts]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoProducts]s will have their `id` fields set.
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
  Future<List<SsoProducts>> insert(
    _is.DatabaseSession session,
    List<SsoProducts> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoProducts>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoProducts] and returns the inserted row.
  ///
  /// The returned [SsoProducts] will have its `id` field set.
  Future<SsoProducts> insertRow(
    _is.DatabaseSession session,
    SsoProducts row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoProducts>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoProducts]s in the list and returns the resulting rows.
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
  /// The returned [SsoProducts]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoProducts>> upsert(
    _is.DatabaseSession session,
    List<SsoProducts> rows, {
    required _is.ColumnSelections<SsoProductsTable> conflictColumns,
    _is.ColumnSelections<SsoProductsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoProductsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoProducts>(
      rows,
      conflictColumns: conflictColumns(SsoProducts.t),
      updateColumns: updateColumns?.call(SsoProducts.t),
      updateWhere: updateWhere?.call(SsoProducts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoProducts] and returns the resulting row.
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
  /// The returned [SsoProducts] will have its `id` field set.
  Future<SsoProducts?> upsertRow(
    _is.DatabaseSession session,
    SsoProducts row, {
    required _is.ColumnSelections<SsoProductsTable> conflictColumns,
    _is.ColumnSelections<SsoProductsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoProductsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoProducts>(
      row,
      conflictColumns: conflictColumns(SsoProducts.t),
      updateColumns: updateColumns?.call(SsoProducts.t),
      updateWhere: updateWhere?.call(SsoProducts.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoProducts]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoProducts>> update(
    _is.DatabaseSession session,
    List<SsoProducts> rows, {
    _is.ColumnSelections<SsoProductsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoProducts>(
      rows,
      columns: columns?.call(SsoProducts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoProducts]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoProducts> updateRow(
    _is.DatabaseSession session,
    SsoProducts row, {
    _is.ColumnSelections<SsoProductsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoProducts>(
      row,
      columns: columns?.call(SsoProducts.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoProducts] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoProducts?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoProductsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoProducts>(
      id,
      columnValues: columnValues(SsoProducts.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoProducts]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoProducts>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoProductsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<SsoProductsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoProductsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoProducts>(
      columnValues: columnValues(SsoProducts.t.updateTable),
      where: where(SsoProducts.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoProducts.t),
      orderByList: orderByList?.call(SsoProducts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoProducts]s in the list and returns the deleted rows.
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
  Future<List<SsoProducts>> delete(
    _is.DatabaseSession session,
    List<SsoProducts> rows, {
    _is.OrderByBuilder<SsoProductsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoProducts>(
      rows,
      orderBy: orderBy?.call(SsoProducts.t),
      orderByList: orderByList?.call(SsoProducts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoProducts].
  Future<SsoProducts> deleteRow(
    _is.DatabaseSession session,
    SsoProducts row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoProducts>(
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
  Future<List<SsoProducts>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoProductsTable> where,
    _is.OrderByBuilder<SsoProductsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoProducts>(
      where: where(SsoProducts.t),
      orderBy: orderBy?.call(SsoProducts.t),
      orderByList: orderByList?.call(SsoProducts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoProductsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoProducts>(
      where: where?.call(SsoProducts.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoProducts] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoProductsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoProducts>(
      where: where(SsoProducts.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
