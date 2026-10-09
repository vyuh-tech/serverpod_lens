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
import 'package:serverpod_lens_server/src/generated/protocol.dart' as _ioh8es0p;

abstract class ElogProducts
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogProducts._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.brandName,
    this.productType,
    this.dosageForm,
    this.hazardClassifications,
    this.isActive,
  });

  factory ElogProducts({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? brandName,
    String? productType,
    String? dosageForm,
    List<String>? hazardClassifications,
    bool? isActive,
  }) = _ElogProductsImpl;

  factory ElogProducts.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogProducts(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      brandName: jsonSerialization['brandName'] as String?,
      productType: jsonSerialization['productType'] as String?,
      dosageForm: jsonSerialization['dosageForm'] as String?,
      hazardClassifications: jsonSerialization['hazardClassifications'] == null
          ? null
          : _ioh8es0p.Protocol().deserialize<List<String>>(
              jsonSerialization['hazardClassifications'],
            ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogProductsTable();

  static const db = ElogProductsRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String? brandName;

  String? productType;

  String? dosageForm;

  List<String>? hazardClassifications;

  bool? isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogProducts]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogProducts copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? brandName,
    String? productType,
    String? dosageForm,
    List<String>? hazardClassifications,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogProducts',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (brandName != null) 'brandName': brandName,
      if (productType != null) 'productType': productType,
      if (dosageForm != null) 'dosageForm': dosageForm,
      if (hazardClassifications != null)
        'hazardClassifications': hazardClassifications?.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogProducts',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (brandName != null) 'brandName': brandName,
      if (productType != null) 'productType': productType,
      if (dosageForm != null) 'dosageForm': dosageForm,
      if (hazardClassifications != null)
        'hazardClassifications': hazardClassifications?.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  static ElogProductsInclude include() {
    return ElogProductsInclude._();
  }

  static ElogProductsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogProductsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogProductsTable>? orderBy,
    _is.OrderByListBuilder<ElogProductsTable>? orderByList,
    ElogProductsInclude? include,
  }) {
    return ElogProductsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogProducts.t),
      orderByList: orderByList?.call(ElogProducts.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogProductsImpl extends ElogProducts {
  _ElogProductsImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? brandName,
    String? productType,
    String? dosageForm,
    List<String>? hazardClassifications,
    bool? isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         brandName: brandName,
         productType: productType,
         dosageForm: dosageForm,
         hazardClassifications: hazardClassifications,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogProducts]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogProducts copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? brandName = _Undefined,
    Object? productType = _Undefined,
    Object? dosageForm = _Undefined,
    Object? hazardClassifications = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return ElogProducts(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      brandName: brandName is String? ? brandName : this.brandName,
      productType: productType is String? ? productType : this.productType,
      dosageForm: dosageForm is String? ? dosageForm : this.dosageForm,
      hazardClassifications: hazardClassifications is List<String>?
          ? hazardClassifications
          : this.hazardClassifications?.map((e0) => e0).toList(),
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}

class ElogProductsUpdateTable extends _is.UpdateTable<ElogProductsTable> {
  ElogProductsUpdateTable(super.table);

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<String, String> brandName(String? value) => _is.ColumnValue(
    table.brandName,
    value,
  );

  _is.ColumnValue<String, String> productType(String? value) => _is.ColumnValue(
    table.productType,
    value,
  );

  _is.ColumnValue<String, String> dosageForm(String? value) => _is.ColumnValue(
    table.dosageForm,
    value,
  );

  _is.ColumnValue<List<String>, List<String>> hazardClassifications(
    List<String>? value,
  ) => _is.ColumnValue(
    table.hazardClassifications,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogProductsTable extends _is.Table<_is.UuidValue?> {
  ElogProductsTable({super.tableRelation}) : super(tableName: 'elog_products') {
    updateTable = ElogProductsUpdateTable(this);
    code = _is.ColumnString(
      'code',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    brandName = _is.ColumnString(
      'brandName',
      this,
    );
    productType = _is.ColumnString(
      'productType',
      this,
    );
    dosageForm = _is.ColumnString(
      'dosageForm',
      this,
    );
    hazardClassifications = _is.ColumnSerializable<List<String>>(
      'hazardClassifications',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogProductsUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString brandName;

  late final _is.ColumnString productType;

  late final _is.ColumnString dosageForm;

  late final _is.ColumnSerializable<List<String>> hazardClassifications;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    brandName,
    productType,
    dosageForm,
    hazardClassifications,
    isActive,
  ];
}

class ElogProductsInclude extends _is.IncludeObject {
  ElogProductsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogProducts.t;
}

class ElogProductsIncludeList extends _is.IncludeList {
  ElogProductsIncludeList._({
    _is.WhereExpressionBuilder<ElogProductsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogProducts.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogProducts.t;
}

class ElogProductsRepository {
  const ElogProductsRepository._();

  /// Returns a list of [ElogProducts]s matching the given query parameters.
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
  Future<List<ElogProducts>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogProductsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogProductsTable>? orderBy,
    _is.OrderByListBuilder<ElogProductsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogProducts>(
      where: where?.call(ElogProducts.t),
      orderBy: orderBy?.call(ElogProducts.t),
      orderByList: orderByList?.call(ElogProducts.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogProducts] matching the given query parameters.
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
  Future<ElogProducts?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogProductsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogProductsTable>? orderBy,
    _is.OrderByListBuilder<ElogProductsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogProducts>(
      where: where?.call(ElogProducts.t),
      orderBy: orderBy?.call(ElogProducts.t),
      orderByList: orderByList?.call(ElogProducts.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogProducts] by its [id] or null if no such row exists.
  Future<ElogProducts?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogProducts>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogProducts]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogProducts]s will have their `id` fields set.
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
  Future<List<ElogProducts>> insert(
    _is.DatabaseSession session,
    List<ElogProducts> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogProducts>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogProducts] and returns the inserted row.
  ///
  /// The returned [ElogProducts] will have its `id` field set.
  Future<ElogProducts> insertRow(
    _is.DatabaseSession session,
    ElogProducts row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogProducts>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogProducts]s in the list and returns the resulting rows.
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
  /// The returned [ElogProducts]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogProducts>> upsert(
    _is.DatabaseSession session,
    List<ElogProducts> rows, {
    required _is.ColumnSelections<ElogProductsTable> conflictColumns,
    _is.ColumnSelections<ElogProductsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogProductsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogProducts>(
      rows,
      conflictColumns: conflictColumns(ElogProducts.t),
      updateColumns: updateColumns?.call(ElogProducts.t),
      updateWhere: updateWhere?.call(ElogProducts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogProducts] and returns the resulting row.
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
  /// The returned [ElogProducts] will have its `id` field set.
  Future<ElogProducts?> upsertRow(
    _is.DatabaseSession session,
    ElogProducts row, {
    required _is.ColumnSelections<ElogProductsTable> conflictColumns,
    _is.ColumnSelections<ElogProductsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogProductsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogProducts>(
      row,
      conflictColumns: conflictColumns(ElogProducts.t),
      updateColumns: updateColumns?.call(ElogProducts.t),
      updateWhere: updateWhere?.call(ElogProducts.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogProducts]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogProducts>> update(
    _is.DatabaseSession session,
    List<ElogProducts> rows, {
    _is.ColumnSelections<ElogProductsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogProducts>(
      rows,
      columns: columns?.call(ElogProducts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogProducts]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogProducts> updateRow(
    _is.DatabaseSession session,
    ElogProducts row, {
    _is.ColumnSelections<ElogProductsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogProducts>(
      row,
      columns: columns?.call(ElogProducts.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogProducts] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogProducts?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogProductsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogProducts>(
      id,
      columnValues: columnValues(ElogProducts.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogProducts]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogProducts>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogProductsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogProductsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogProductsTable>? orderBy,
    _is.OrderByListBuilder<ElogProductsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogProducts>(
      columnValues: columnValues(ElogProducts.t.updateTable),
      where: where(ElogProducts.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogProducts.t),
      orderByList: orderByList?.call(ElogProducts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogProducts]s in the list and returns the deleted rows.
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
  Future<List<ElogProducts>> delete(
    _is.DatabaseSession session,
    List<ElogProducts> rows, {
    _is.OrderByBuilder<ElogProductsTable>? orderBy,
    _is.OrderByListBuilder<ElogProductsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogProducts>(
      rows,
      orderBy: orderBy?.call(ElogProducts.t),
      orderByList: orderByList?.call(ElogProducts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogProducts].
  Future<ElogProducts> deleteRow(
    _is.DatabaseSession session,
    ElogProducts row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogProducts>(
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
  Future<List<ElogProducts>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogProductsTable> where,
    _is.OrderByBuilder<ElogProductsTable>? orderBy,
    _is.OrderByListBuilder<ElogProductsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogProducts>(
      where: where(ElogProducts.t),
      orderBy: orderBy?.call(ElogProducts.t),
      orderByList: orderByList?.call(ElogProducts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogProductsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogProducts>(
      where: where?.call(ElogProducts.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogProducts] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogProductsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogProducts>(
      where: where(ElogProducts.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
