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

abstract class ElogEquipmentParts
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogEquipmentParts._({
    this.id,
    required this.punchSetId,
    required this.code,
    required this.name,
    required this.partType,
    this.serialNumber,
    required this.condition,
    required this.metadata,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ElogEquipmentParts({
    _is.UuidValue? id,
    required _is.UuidValue punchSetId,
    required String code,
    required String name,
    required String partType,
    String? serialNumber,
    required String condition,
    required String metadata,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ElogEquipmentPartsImpl;

  factory ElogEquipmentParts.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogEquipmentParts(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      punchSetId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['punchSetId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      partType: jsonSerialization['partType'] as String,
      serialNumber: jsonSerialization['serialNumber'] as String?,
      condition: jsonSerialization['condition'] as String,
      metadata: jsonSerialization['metadata'] as String,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = ElogEquipmentPartsTable();

  static const db = ElogEquipmentPartsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue punchSetId;

  String code;

  String name;

  String partType;

  String? serialNumber;

  String condition;

  String metadata;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogEquipmentParts]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogEquipmentParts copyWith({
    _is.UuidValue? id,
    _is.UuidValue? punchSetId,
    String? code,
    String? name,
    String? partType,
    String? serialNumber,
    String? condition,
    String? metadata,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogEquipmentParts',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'code': code,
      'name': name,
      'partType': partType,
      if (serialNumber != null) 'serialNumber': serialNumber,
      'condition': condition,
      'metadata': metadata,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogEquipmentParts',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'code': code,
      'name': name,
      'partType': partType,
      if (serialNumber != null) 'serialNumber': serialNumber,
      'condition': condition,
      'metadata': metadata,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static ElogEquipmentPartsInclude include() {
    return ElogEquipmentPartsInclude._();
  }

  static ElogEquipmentPartsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogEquipmentPartsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentPartsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentPartsTable>? orderByList,
    ElogEquipmentPartsInclude? include,
  }) {
    return ElogEquipmentPartsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEquipmentParts.t),
      orderByList: orderByList?.call(ElogEquipmentParts.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogEquipmentPartsImpl extends ElogEquipmentParts {
  _ElogEquipmentPartsImpl({
    _is.UuidValue? id,
    required _is.UuidValue punchSetId,
    required String code,
    required String name,
    required String partType,
    String? serialNumber,
    required String condition,
    required String metadata,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         punchSetId: punchSetId,
         code: code,
         name: name,
         partType: partType,
         serialNumber: serialNumber,
         condition: condition,
         metadata: metadata,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [ElogEquipmentParts]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogEquipmentParts copyWith({
    Object? id = _Undefined,
    _is.UuidValue? punchSetId,
    String? code,
    String? name,
    String? partType,
    Object? serialNumber = _Undefined,
    String? condition,
    String? metadata,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ElogEquipmentParts(
      id: id is _is.UuidValue? ? id : this.id,
      punchSetId: punchSetId ?? this.punchSetId,
      code: code ?? this.code,
      name: name ?? this.name,
      partType: partType ?? this.partType,
      serialNumber: serialNumber is String? ? serialNumber : this.serialNumber,
      condition: condition ?? this.condition,
      metadata: metadata ?? this.metadata,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class ElogEquipmentPartsUpdateTable
    extends _is.UpdateTable<ElogEquipmentPartsTable> {
  ElogEquipmentPartsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> punchSetId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.punchSetId,
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

  _is.ColumnValue<String, String> partType(String value) => _is.ColumnValue(
    table.partType,
    value,
  );

  _is.ColumnValue<String, String> serialNumber(String? value) =>
      _is.ColumnValue(
        table.serialNumber,
        value,
      );

  _is.ColumnValue<String, String> condition(String value) => _is.ColumnValue(
    table.condition,
    value,
  );

  _is.ColumnValue<String, String> metadata(String value) => _is.ColumnValue(
    table.metadata,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );
}

class ElogEquipmentPartsTable extends _is.Table<_is.UuidValue?> {
  ElogEquipmentPartsTable({super.tableRelation})
    : super(tableName: 'elog_equipment_parts') {
    updateTable = ElogEquipmentPartsUpdateTable(this);
    punchSetId = _is.ColumnUuid(
      'punchSetId',
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
    partType = _is.ColumnString(
      'partType',
      this,
    );
    serialNumber = _is.ColumnString(
      'serialNumber',
      this,
    );
    condition = _is.ColumnString(
      'condition',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
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
  }

  late final ElogEquipmentPartsUpdateTable updateTable;

  late final _is.ColumnUuid punchSetId;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString partType;

  late final _is.ColumnString serialNumber;

  late final _is.ColumnString condition;

  late final _is.ColumnString metadata;

  late final _is.ColumnBool isActive;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    punchSetId,
    code,
    name,
    partType,
    serialNumber,
    condition,
    metadata,
    isActive,
    createdAt,
    updatedAt,
  ];
}

class ElogEquipmentPartsInclude extends _is.IncludeObject {
  ElogEquipmentPartsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEquipmentParts.t;
}

class ElogEquipmentPartsIncludeList extends _is.IncludeList {
  ElogEquipmentPartsIncludeList._({
    _is.WhereExpressionBuilder<ElogEquipmentPartsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogEquipmentParts.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEquipmentParts.t;
}

class ElogEquipmentPartsRepository {
  const ElogEquipmentPartsRepository._();

  /// Returns a list of [ElogEquipmentParts]s matching the given query parameters.
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
  Future<List<ElogEquipmentParts>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentPartsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentPartsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentPartsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogEquipmentParts>(
      where: where?.call(ElogEquipmentParts.t),
      orderBy: orderBy?.call(ElogEquipmentParts.t),
      orderByList: orderByList?.call(ElogEquipmentParts.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogEquipmentParts] matching the given query parameters.
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
  Future<ElogEquipmentParts?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentPartsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentPartsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentPartsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogEquipmentParts>(
      where: where?.call(ElogEquipmentParts.t),
      orderBy: orderBy?.call(ElogEquipmentParts.t),
      orderByList: orderByList?.call(ElogEquipmentParts.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogEquipmentParts] by its [id] or null if no such row exists.
  Future<ElogEquipmentParts?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogEquipmentParts>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogEquipmentParts]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogEquipmentParts]s will have their `id` fields set.
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
  Future<List<ElogEquipmentParts>> insert(
    _is.DatabaseSession session,
    List<ElogEquipmentParts> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogEquipmentParts>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogEquipmentParts] and returns the inserted row.
  ///
  /// The returned [ElogEquipmentParts] will have its `id` field set.
  Future<ElogEquipmentParts> insertRow(
    _is.DatabaseSession session,
    ElogEquipmentParts row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogEquipmentParts>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogEquipmentParts]s in the list and returns the resulting rows.
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
  /// The returned [ElogEquipmentParts]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipmentParts>> upsert(
    _is.DatabaseSession session,
    List<ElogEquipmentParts> rows, {
    required _is.ColumnSelections<ElogEquipmentPartsTable> conflictColumns,
    _is.ColumnSelections<ElogEquipmentPartsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEquipmentPartsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogEquipmentParts>(
      rows,
      conflictColumns: conflictColumns(ElogEquipmentParts.t),
      updateColumns: updateColumns?.call(ElogEquipmentParts.t),
      updateWhere: updateWhere?.call(ElogEquipmentParts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogEquipmentParts] and returns the resulting row.
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
  /// The returned [ElogEquipmentParts] will have its `id` field set.
  Future<ElogEquipmentParts?> upsertRow(
    _is.DatabaseSession session,
    ElogEquipmentParts row, {
    required _is.ColumnSelections<ElogEquipmentPartsTable> conflictColumns,
    _is.ColumnSelections<ElogEquipmentPartsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEquipmentPartsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogEquipmentParts>(
      row,
      conflictColumns: conflictColumns(ElogEquipmentParts.t),
      updateColumns: updateColumns?.call(ElogEquipmentParts.t),
      updateWhere: updateWhere?.call(ElogEquipmentParts.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEquipmentParts]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipmentParts>> update(
    _is.DatabaseSession session,
    List<ElogEquipmentParts> rows, {
    _is.ColumnSelections<ElogEquipmentPartsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogEquipmentParts>(
      rows,
      columns: columns?.call(ElogEquipmentParts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogEquipmentParts]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogEquipmentParts> updateRow(
    _is.DatabaseSession session,
    ElogEquipmentParts row, {
    _is.ColumnSelections<ElogEquipmentPartsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogEquipmentParts>(
      row,
      columns: columns?.call(ElogEquipmentParts.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogEquipmentParts] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogEquipmentParts?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogEquipmentPartsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogEquipmentParts>(
      id,
      columnValues: columnValues(ElogEquipmentParts.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEquipmentParts]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipmentParts>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogEquipmentPartsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogEquipmentPartsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentPartsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentPartsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogEquipmentParts>(
      columnValues: columnValues(ElogEquipmentParts.t.updateTable),
      where: where(ElogEquipmentParts.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEquipmentParts.t),
      orderByList: orderByList?.call(ElogEquipmentParts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogEquipmentParts]s in the list and returns the deleted rows.
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
  Future<List<ElogEquipmentParts>> delete(
    _is.DatabaseSession session,
    List<ElogEquipmentParts> rows, {
    _is.OrderByBuilder<ElogEquipmentPartsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentPartsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogEquipmentParts>(
      rows,
      orderBy: orderBy?.call(ElogEquipmentParts.t),
      orderByList: orderByList?.call(ElogEquipmentParts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogEquipmentParts].
  Future<ElogEquipmentParts> deleteRow(
    _is.DatabaseSession session,
    ElogEquipmentParts row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogEquipmentParts>(
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
  Future<List<ElogEquipmentParts>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEquipmentPartsTable> where,
    _is.OrderByBuilder<ElogEquipmentPartsTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentPartsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogEquipmentParts>(
      where: where(ElogEquipmentParts.t),
      orderBy: orderBy?.call(ElogEquipmentParts.t),
      orderByList: orderByList?.call(ElogEquipmentParts.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentPartsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogEquipmentParts>(
      where: where?.call(ElogEquipmentParts.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogEquipmentParts] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEquipmentPartsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogEquipmentParts>(
      where: where(ElogEquipmentParts.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
