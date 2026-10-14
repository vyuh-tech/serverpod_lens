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

abstract class ElogPresetEquipment
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPresetEquipment._({
    this.id,
    required this.industryId,
    required this.code,
    required this.name,
    required this.categoryCode,
    this.manufacturer,
    this.description,
    required this.displayOrder,
  });

  factory ElogPresetEquipment({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
    required String categoryCode,
    String? manufacturer,
    String? description,
    required int displayOrder,
  }) = _ElogPresetEquipmentImpl;

  factory ElogPresetEquipment.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPresetEquipment(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      categoryCode: jsonSerialization['categoryCode'] as String,
      manufacturer: jsonSerialization['manufacturer'] as String?,
      description: jsonSerialization['description'] as String?,
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  static final t = ElogPresetEquipmentTable();

  static const db = ElogPresetEquipmentRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue industryId;

  String code;

  String name;

  String categoryCode;

  String? manufacturer;

  String? description;

  int displayOrder;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPresetEquipment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPresetEquipment copyWith({
    _is.UuidValue? id,
    _is.UuidValue? industryId,
    String? code,
    String? name,
    String? categoryCode,
    String? manufacturer,
    String? description,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetEquipment',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'categoryCode': categoryCode,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (description != null) 'description': description,
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetEquipment',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'categoryCode': categoryCode,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (description != null) 'description': description,
      'displayOrder': displayOrder,
    };
  }

  static ElogPresetEquipmentInclude include() {
    return ElogPresetEquipmentInclude._();
  }

  static ElogPresetEquipmentIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPresetEquipmentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetEquipmentTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetEquipmentTable>? orderByList,
    ElogPresetEquipmentInclude? include,
  }) {
    return ElogPresetEquipmentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetEquipment.t),
      orderByList: orderByList?.call(ElogPresetEquipment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetEquipmentImpl extends ElogPresetEquipment {
  _ElogPresetEquipmentImpl({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
    required String categoryCode,
    String? manufacturer,
    String? description,
    required int displayOrder,
  }) : super._(
         id: id,
         industryId: industryId,
         code: code,
         name: name,
         categoryCode: categoryCode,
         manufacturer: manufacturer,
         description: description,
         displayOrder: displayOrder,
       );

  /// Returns a shallow copy of this [ElogPresetEquipment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPresetEquipment copyWith({
    Object? id = _Undefined,
    _is.UuidValue? industryId,
    String? code,
    String? name,
    String? categoryCode,
    Object? manufacturer = _Undefined,
    Object? description = _Undefined,
    int? displayOrder,
  }) {
    return ElogPresetEquipment(
      id: id is _is.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      code: code ?? this.code,
      name: name ?? this.name,
      categoryCode: categoryCode ?? this.categoryCode,
      manufacturer: manufacturer is String? ? manufacturer : this.manufacturer,
      description: description is String? ? description : this.description,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}

class ElogPresetEquipmentUpdateTable
    extends _is.UpdateTable<ElogPresetEquipmentTable> {
  ElogPresetEquipmentUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> industryId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.industryId,
    value,
  );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> categoryCode(String value) => _is.ColumnValue(
    table.categoryCode,
    value,
  );

  _is.ColumnValue<String, String> manufacturer(String? value) =>
      _is.ColumnValue(
        table.manufacturer,
        value,
      );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<int, int> displayOrder(int value) => _is.ColumnValue(
    table.displayOrder,
    value,
  );
}

class ElogPresetEquipmentTable extends _is.Table<_is.UuidValue?> {
  ElogPresetEquipmentTable({super.tableRelation})
    : super(tableName: 'elog_preset_equipment') {
    updateTable = ElogPresetEquipmentUpdateTable(this);
    industryId = _is.ColumnUuid(
      'industryId',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    categoryCode = _is.ColumnString(
      'categoryCode',
      this,
    );
    manufacturer = _is.ColumnString(
      'manufacturer',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    displayOrder = _is.ColumnInt(
      'displayOrder',
      this,
    );
  }

  late final ElogPresetEquipmentUpdateTable updateTable;

  late final _is.ColumnUuid industryId;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString categoryCode;

  late final _is.ColumnString manufacturer;

  late final _is.ColumnString description;

  late final _is.ColumnInt displayOrder;

  @override
  List<_is.Column> get columns => [
    id,
    industryId,
    code,
    name,
    categoryCode,
    manufacturer,
    description,
    displayOrder,
  ];
}

class ElogPresetEquipmentInclude extends _is.IncludeObject {
  ElogPresetEquipmentInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetEquipment.t;
}

class ElogPresetEquipmentIncludeList extends _is.IncludeList {
  ElogPresetEquipmentIncludeList._({
    _is.WhereExpressionBuilder<ElogPresetEquipmentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPresetEquipment.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetEquipment.t;
}

class ElogPresetEquipmentRepository {
  const ElogPresetEquipmentRepository._();

  /// Returns a list of [ElogPresetEquipment]s matching the given query parameters.
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
  Future<List<ElogPresetEquipment>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetEquipmentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetEquipmentTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetEquipmentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPresetEquipment>(
      where: where?.call(ElogPresetEquipment.t),
      orderBy: orderBy?.call(ElogPresetEquipment.t),
      orderByList: orderByList?.call(ElogPresetEquipment.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPresetEquipment] matching the given query parameters.
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
  Future<ElogPresetEquipment?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetEquipmentTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPresetEquipmentTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetEquipmentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPresetEquipment>(
      where: where?.call(ElogPresetEquipment.t),
      orderBy: orderBy?.call(ElogPresetEquipment.t),
      orderByList: orderByList?.call(ElogPresetEquipment.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPresetEquipment] by its [id] or null if no such row exists.
  Future<ElogPresetEquipment?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPresetEquipment>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPresetEquipment]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPresetEquipment]s will have their `id` fields set.
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
  Future<List<ElogPresetEquipment>> insert(
    _is.DatabaseSession session,
    List<ElogPresetEquipment> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPresetEquipment>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPresetEquipment] and returns the inserted row.
  ///
  /// The returned [ElogPresetEquipment] will have its `id` field set.
  Future<ElogPresetEquipment> insertRow(
    _is.DatabaseSession session,
    ElogPresetEquipment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPresetEquipment>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPresetEquipment]s in the list and returns the resulting rows.
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
  /// The returned [ElogPresetEquipment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetEquipment>> upsert(
    _is.DatabaseSession session,
    List<ElogPresetEquipment> rows, {
    required _is.ColumnSelections<ElogPresetEquipmentTable> conflictColumns,
    _is.ColumnSelections<ElogPresetEquipmentTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetEquipmentTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPresetEquipment>(
      rows,
      conflictColumns: conflictColumns(ElogPresetEquipment.t),
      updateColumns: updateColumns?.call(ElogPresetEquipment.t),
      updateWhere: updateWhere?.call(ElogPresetEquipment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPresetEquipment] and returns the resulting row.
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
  /// The returned [ElogPresetEquipment] will have its `id` field set.
  Future<ElogPresetEquipment?> upsertRow(
    _is.DatabaseSession session,
    ElogPresetEquipment row, {
    required _is.ColumnSelections<ElogPresetEquipmentTable> conflictColumns,
    _is.ColumnSelections<ElogPresetEquipmentTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetEquipmentTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPresetEquipment>(
      row,
      conflictColumns: conflictColumns(ElogPresetEquipment.t),
      updateColumns: updateColumns?.call(ElogPresetEquipment.t),
      updateWhere: updateWhere?.call(ElogPresetEquipment.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetEquipment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetEquipment>> update(
    _is.DatabaseSession session,
    List<ElogPresetEquipment> rows, {
    _is.ColumnSelections<ElogPresetEquipmentTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPresetEquipment>(
      rows,
      columns: columns?.call(ElogPresetEquipment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPresetEquipment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPresetEquipment> updateRow(
    _is.DatabaseSession session,
    ElogPresetEquipment row, {
    _is.ColumnSelections<ElogPresetEquipmentTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPresetEquipment>(
      row,
      columns: columns?.call(ElogPresetEquipment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPresetEquipment] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPresetEquipment?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPresetEquipmentUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPresetEquipment>(
      id,
      columnValues: columnValues(ElogPresetEquipment.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetEquipment]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetEquipment>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPresetEquipmentUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPresetEquipmentTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetEquipmentTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetEquipmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPresetEquipment>(
      columnValues: columnValues(ElogPresetEquipment.t.updateTable),
      where: where(ElogPresetEquipment.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetEquipment.t),
      orderByList: orderByList?.call(ElogPresetEquipment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPresetEquipment]s in the list and returns the deleted rows.
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
  Future<List<ElogPresetEquipment>> delete(
    _is.DatabaseSession session,
    List<ElogPresetEquipment> rows, {
    _is.OrderByBuilder<ElogPresetEquipmentTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetEquipmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPresetEquipment>(
      rows,
      orderBy: orderBy?.call(ElogPresetEquipment.t),
      orderByList: orderByList?.call(ElogPresetEquipment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPresetEquipment].
  Future<ElogPresetEquipment> deleteRow(
    _is.DatabaseSession session,
    ElogPresetEquipment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPresetEquipment>(
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
  Future<List<ElogPresetEquipment>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetEquipmentTable> where,
    _is.OrderByBuilder<ElogPresetEquipmentTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetEquipmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPresetEquipment>(
      where: where(ElogPresetEquipment.t),
      orderBy: orderBy?.call(ElogPresetEquipment.t),
      orderByList: orderByList?.call(ElogPresetEquipment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetEquipmentTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPresetEquipment>(
      where: where?.call(ElogPresetEquipment.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPresetEquipment] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetEquipmentTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPresetEquipment>(
      where: where(ElogPresetEquipment.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
