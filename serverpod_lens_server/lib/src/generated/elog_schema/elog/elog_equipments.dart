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

abstract class ElogEquipments
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogEquipments._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.manufacturer,
    this.modelNumber,
    this.serialNumber,
    this.purchaseDate,
    this.installationDate,
    this.warrantyExpiry,
    this.equipmentCategoryId,
  });

  factory ElogEquipments({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? manufacturer,
    String? modelNumber,
    String? serialNumber,
    DateTime? purchaseDate,
    DateTime? installationDate,
    DateTime? warrantyExpiry,
    _is.UuidValue? equipmentCategoryId,
  }) = _ElogEquipmentsImpl;

  factory ElogEquipments.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogEquipments(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      manufacturer: jsonSerialization['manufacturer'] as String?,
      modelNumber: jsonSerialization['modelNumber'] as String?,
      serialNumber: jsonSerialization['serialNumber'] as String?,
      purchaseDate: jsonSerialization['purchaseDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['purchaseDate'],
            ),
      installationDate: jsonSerialization['installationDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['installationDate'],
            ),
      warrantyExpiry: jsonSerialization['warrantyExpiry'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['warrantyExpiry'],
            ),
      equipmentCategoryId: jsonSerialization['equipmentCategoryId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['equipmentCategoryId'],
            ),
    );
  }

  static final t = ElogEquipmentsTable();

  static const db = ElogEquipmentsRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String? manufacturer;

  String? modelNumber;

  String? serialNumber;

  DateTime? purchaseDate;

  DateTime? installationDate;

  DateTime? warrantyExpiry;

  _is.UuidValue? equipmentCategoryId;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogEquipments]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogEquipments copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? manufacturer,
    String? modelNumber,
    String? serialNumber,
    DateTime? purchaseDate,
    DateTime? installationDate,
    DateTime? warrantyExpiry,
    _is.UuidValue? equipmentCategoryId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogEquipments',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (modelNumber != null) 'modelNumber': modelNumber,
      if (serialNumber != null) 'serialNumber': serialNumber,
      if (purchaseDate != null) 'purchaseDate': purchaseDate?.toJson(),
      if (installationDate != null)
        'installationDate': installationDate?.toJson(),
      if (warrantyExpiry != null) 'warrantyExpiry': warrantyExpiry?.toJson(),
      if (equipmentCategoryId != null)
        'equipmentCategoryId': equipmentCategoryId?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogEquipments',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (modelNumber != null) 'modelNumber': modelNumber,
      if (serialNumber != null) 'serialNumber': serialNumber,
      if (purchaseDate != null) 'purchaseDate': purchaseDate?.toJson(),
      if (installationDate != null)
        'installationDate': installationDate?.toJson(),
      if (warrantyExpiry != null) 'warrantyExpiry': warrantyExpiry?.toJson(),
      if (equipmentCategoryId != null)
        'equipmentCategoryId': equipmentCategoryId?.toJson(),
    };
  }

  static ElogEquipmentsInclude include() {
    return ElogEquipmentsInclude._();
  }

  static ElogEquipmentsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogEquipmentsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentsTable>? orderByList,
    ElogEquipmentsInclude? include,
  }) {
    return ElogEquipmentsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEquipments.t),
      orderByList: orderByList?.call(ElogEquipments.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogEquipmentsImpl extends ElogEquipments {
  _ElogEquipmentsImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? manufacturer,
    String? modelNumber,
    String? serialNumber,
    DateTime? purchaseDate,
    DateTime? installationDate,
    DateTime? warrantyExpiry,
    _is.UuidValue? equipmentCategoryId,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         manufacturer: manufacturer,
         modelNumber: modelNumber,
         serialNumber: serialNumber,
         purchaseDate: purchaseDate,
         installationDate: installationDate,
         warrantyExpiry: warrantyExpiry,
         equipmentCategoryId: equipmentCategoryId,
       );

  /// Returns a shallow copy of this [ElogEquipments]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogEquipments copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? manufacturer = _Undefined,
    Object? modelNumber = _Undefined,
    Object? serialNumber = _Undefined,
    Object? purchaseDate = _Undefined,
    Object? installationDate = _Undefined,
    Object? warrantyExpiry = _Undefined,
    Object? equipmentCategoryId = _Undefined,
  }) {
    return ElogEquipments(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      manufacturer: manufacturer is String? ? manufacturer : this.manufacturer,
      modelNumber: modelNumber is String? ? modelNumber : this.modelNumber,
      serialNumber: serialNumber is String? ? serialNumber : this.serialNumber,
      purchaseDate: purchaseDate is DateTime?
          ? purchaseDate
          : this.purchaseDate,
      installationDate: installationDate is DateTime?
          ? installationDate
          : this.installationDate,
      warrantyExpiry: warrantyExpiry is DateTime?
          ? warrantyExpiry
          : this.warrantyExpiry,
      equipmentCategoryId: equipmentCategoryId is _is.UuidValue?
          ? equipmentCategoryId
          : this.equipmentCategoryId,
    );
  }
}

class ElogEquipmentsUpdateTable extends _is.UpdateTable<ElogEquipmentsTable> {
  ElogEquipmentsUpdateTable(super.table);

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

  _is.ColumnValue<String, String> manufacturer(String? value) =>
      _is.ColumnValue(
        table.manufacturer,
        value,
      );

  _is.ColumnValue<String, String> modelNumber(String? value) => _is.ColumnValue(
    table.modelNumber,
    value,
  );

  _is.ColumnValue<String, String> serialNumber(String? value) =>
      _is.ColumnValue(
        table.serialNumber,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> purchaseDate(DateTime? value) =>
      _is.ColumnValue(
        table.purchaseDate,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> installationDate(DateTime? value) =>
      _is.ColumnValue(
        table.installationDate,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> warrantyExpiry(DateTime? value) =>
      _is.ColumnValue(
        table.warrantyExpiry,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> equipmentCategoryId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.equipmentCategoryId,
    value,
  );
}

class ElogEquipmentsTable extends _is.Table<_is.UuidValue?> {
  ElogEquipmentsTable({super.tableRelation})
    : super(tableName: 'elog_equipments') {
    updateTable = ElogEquipmentsUpdateTable(this);
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
    manufacturer = _is.ColumnString(
      'manufacturer',
      this,
    );
    modelNumber = _is.ColumnString(
      'modelNumber',
      this,
    );
    serialNumber = _is.ColumnString(
      'serialNumber',
      this,
    );
    purchaseDate = _is.ColumnDateTime(
      'purchaseDate',
      this,
    );
    installationDate = _is.ColumnDateTime(
      'installationDate',
      this,
    );
    warrantyExpiry = _is.ColumnDateTime(
      'warrantyExpiry',
      this,
    );
    equipmentCategoryId = _is.ColumnUuid(
      'equipmentCategoryId',
      this,
    );
  }

  late final ElogEquipmentsUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString manufacturer;

  late final _is.ColumnString modelNumber;

  late final _is.ColumnString serialNumber;

  late final _is.ColumnDateTime purchaseDate;

  late final _is.ColumnDateTime installationDate;

  late final _is.ColumnDateTime warrantyExpiry;

  late final _is.ColumnUuid equipmentCategoryId;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    manufacturer,
    modelNumber,
    serialNumber,
    purchaseDate,
    installationDate,
    warrantyExpiry,
    equipmentCategoryId,
  ];
}

class ElogEquipmentsInclude extends _is.IncludeObject {
  ElogEquipmentsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEquipments.t;
}

class ElogEquipmentsIncludeList extends _is.IncludeList {
  ElogEquipmentsIncludeList._({
    _is.WhereExpressionBuilder<ElogEquipmentsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogEquipments.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEquipments.t;
}

class ElogEquipmentsRepository {
  const ElogEquipmentsRepository._();

  /// Returns a list of [ElogEquipments]s matching the given query parameters.
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
  Future<List<ElogEquipments>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogEquipments>(
      where: where?.call(ElogEquipments.t),
      orderBy: orderBy?.call(ElogEquipments.t),
      orderByList: orderByList?.call(ElogEquipments.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogEquipments] matching the given query parameters.
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
  Future<ElogEquipments?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogEquipments>(
      where: where?.call(ElogEquipments.t),
      orderBy: orderBy?.call(ElogEquipments.t),
      orderByList: orderByList?.call(ElogEquipments.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogEquipments] by its [id] or null if no such row exists.
  Future<ElogEquipments?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogEquipments>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogEquipments]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogEquipments]s will have their `id` fields set.
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
  Future<List<ElogEquipments>> insert(
    _is.DatabaseSession session,
    List<ElogEquipments> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogEquipments>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogEquipments] and returns the inserted row.
  ///
  /// The returned [ElogEquipments] will have its `id` field set.
  Future<ElogEquipments> insertRow(
    _is.DatabaseSession session,
    ElogEquipments row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogEquipments>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogEquipments]s in the list and returns the resulting rows.
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
  /// The returned [ElogEquipments]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipments>> upsert(
    _is.DatabaseSession session,
    List<ElogEquipments> rows, {
    required _is.ColumnSelections<ElogEquipmentsTable> conflictColumns,
    _is.ColumnSelections<ElogEquipmentsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEquipmentsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogEquipments>(
      rows,
      conflictColumns: conflictColumns(ElogEquipments.t),
      updateColumns: updateColumns?.call(ElogEquipments.t),
      updateWhere: updateWhere?.call(ElogEquipments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogEquipments] and returns the resulting row.
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
  /// The returned [ElogEquipments] will have its `id` field set.
  Future<ElogEquipments?> upsertRow(
    _is.DatabaseSession session,
    ElogEquipments row, {
    required _is.ColumnSelections<ElogEquipmentsTable> conflictColumns,
    _is.ColumnSelections<ElogEquipmentsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEquipmentsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogEquipments>(
      row,
      conflictColumns: conflictColumns(ElogEquipments.t),
      updateColumns: updateColumns?.call(ElogEquipments.t),
      updateWhere: updateWhere?.call(ElogEquipments.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEquipments]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipments>> update(
    _is.DatabaseSession session,
    List<ElogEquipments> rows, {
    _is.ColumnSelections<ElogEquipmentsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogEquipments>(
      rows,
      columns: columns?.call(ElogEquipments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogEquipments]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogEquipments> updateRow(
    _is.DatabaseSession session,
    ElogEquipments row, {
    _is.ColumnSelections<ElogEquipmentsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogEquipments>(
      row,
      columns: columns?.call(ElogEquipments.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogEquipments] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogEquipments?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogEquipmentsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogEquipments>(
      id,
      columnValues: columnValues(ElogEquipments.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEquipments]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipments>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogEquipmentsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogEquipmentsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogEquipments>(
      columnValues: columnValues(ElogEquipments.t.updateTable),
      where: where(ElogEquipments.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEquipments.t),
      orderByList: orderByList?.call(ElogEquipments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogEquipments]s in the list and returns the deleted rows.
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
  Future<List<ElogEquipments>> delete(
    _is.DatabaseSession session,
    List<ElogEquipments> rows, {
    _is.OrderByBuilder<ElogEquipmentsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogEquipments>(
      rows,
      orderBy: orderBy?.call(ElogEquipments.t),
      orderByList: orderByList?.call(ElogEquipments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogEquipments].
  Future<ElogEquipments> deleteRow(
    _is.DatabaseSession session,
    ElogEquipments row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogEquipments>(
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
  Future<List<ElogEquipments>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEquipmentsTable> where,
    _is.OrderByBuilder<ElogEquipmentsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogEquipments>(
      where: where(ElogEquipments.t),
      orderBy: orderBy?.call(ElogEquipments.t),
      orderByList: orderByList?.call(ElogEquipments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogEquipments>(
      where: where?.call(ElogEquipments.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogEquipments] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEquipmentsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogEquipments>(
      where: where(ElogEquipments.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
