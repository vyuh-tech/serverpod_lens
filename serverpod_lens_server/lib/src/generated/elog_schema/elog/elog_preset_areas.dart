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

abstract class ElogPresetAreas
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPresetAreas._({
    this.id,
    required this.industryId,
    required this.code,
    required this.name,
    required this.categoryCode,
    this.description,
    this.floorNumber,
    this.roomNumber,
    this.capacity,
    required this.displayOrder,
  });

  factory ElogPresetAreas({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
    required String categoryCode,
    String? description,
    int? floorNumber,
    int? roomNumber,
    int? capacity,
    required int displayOrder,
  }) = _ElogPresetAreasImpl;

  factory ElogPresetAreas.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPresetAreas(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      categoryCode: jsonSerialization['categoryCode'] as String,
      description: jsonSerialization['description'] as String?,
      floorNumber: jsonSerialization['floorNumber'] as int?,
      roomNumber: jsonSerialization['roomNumber'] as int?,
      capacity: jsonSerialization['capacity'] as int?,
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  static final t = ElogPresetAreasTable();

  static const db = ElogPresetAreasRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue industryId;

  String code;

  String name;

  String categoryCode;

  String? description;

  int? floorNumber;

  int? roomNumber;

  int? capacity;

  int displayOrder;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPresetAreas]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPresetAreas copyWith({
    _is.UuidValue? id,
    _is.UuidValue? industryId,
    String? code,
    String? name,
    String? categoryCode,
    String? description,
    int? floorNumber,
    int? roomNumber,
    int? capacity,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetAreas',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'categoryCode': categoryCode,
      if (description != null) 'description': description,
      if (floorNumber != null) 'floorNumber': floorNumber,
      if (roomNumber != null) 'roomNumber': roomNumber,
      if (capacity != null) 'capacity': capacity,
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetAreas',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'categoryCode': categoryCode,
      if (description != null) 'description': description,
      if (floorNumber != null) 'floorNumber': floorNumber,
      if (roomNumber != null) 'roomNumber': roomNumber,
      if (capacity != null) 'capacity': capacity,
      'displayOrder': displayOrder,
    };
  }

  static ElogPresetAreasInclude include() {
    return ElogPresetAreasInclude._();
  }

  static ElogPresetAreasIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPresetAreasTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetAreasTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetAreasTable>? orderByList,
    ElogPresetAreasInclude? include,
  }) {
    return ElogPresetAreasIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetAreas.t),
      orderByList: orderByList?.call(ElogPresetAreas.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetAreasImpl extends ElogPresetAreas {
  _ElogPresetAreasImpl({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
    required String categoryCode,
    String? description,
    int? floorNumber,
    int? roomNumber,
    int? capacity,
    required int displayOrder,
  }) : super._(
         id: id,
         industryId: industryId,
         code: code,
         name: name,
         categoryCode: categoryCode,
         description: description,
         floorNumber: floorNumber,
         roomNumber: roomNumber,
         capacity: capacity,
         displayOrder: displayOrder,
       );

  /// Returns a shallow copy of this [ElogPresetAreas]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPresetAreas copyWith({
    Object? id = _Undefined,
    _is.UuidValue? industryId,
    String? code,
    String? name,
    String? categoryCode,
    Object? description = _Undefined,
    Object? floorNumber = _Undefined,
    Object? roomNumber = _Undefined,
    Object? capacity = _Undefined,
    int? displayOrder,
  }) {
    return ElogPresetAreas(
      id: id is _is.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      code: code ?? this.code,
      name: name ?? this.name,
      categoryCode: categoryCode ?? this.categoryCode,
      description: description is String? ? description : this.description,
      floorNumber: floorNumber is int? ? floorNumber : this.floorNumber,
      roomNumber: roomNumber is int? ? roomNumber : this.roomNumber,
      capacity: capacity is int? ? capacity : this.capacity,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}

class ElogPresetAreasUpdateTable extends _is.UpdateTable<ElogPresetAreasTable> {
  ElogPresetAreasUpdateTable(super.table);

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

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<int, int> floorNumber(int? value) => _is.ColumnValue(
    table.floorNumber,
    value,
  );

  _is.ColumnValue<int, int> roomNumber(int? value) => _is.ColumnValue(
    table.roomNumber,
    value,
  );

  _is.ColumnValue<int, int> capacity(int? value) => _is.ColumnValue(
    table.capacity,
    value,
  );

  _is.ColumnValue<int, int> displayOrder(int value) => _is.ColumnValue(
    table.displayOrder,
    value,
  );
}

class ElogPresetAreasTable extends _is.Table<_is.UuidValue?> {
  ElogPresetAreasTable({super.tableRelation})
    : super(tableName: 'elog_preset_areas') {
    updateTable = ElogPresetAreasUpdateTable(this);
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
    description = _is.ColumnString(
      'description',
      this,
    );
    floorNumber = _is.ColumnInt(
      'floorNumber',
      this,
    );
    roomNumber = _is.ColumnInt(
      'roomNumber',
      this,
    );
    capacity = _is.ColumnInt(
      'capacity',
      this,
    );
    displayOrder = _is.ColumnInt(
      'displayOrder',
      this,
    );
  }

  late final ElogPresetAreasUpdateTable updateTable;

  late final _is.ColumnUuid industryId;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString categoryCode;

  late final _is.ColumnString description;

  late final _is.ColumnInt floorNumber;

  late final _is.ColumnInt roomNumber;

  late final _is.ColumnInt capacity;

  late final _is.ColumnInt displayOrder;

  @override
  List<_is.Column> get columns => [
    id,
    industryId,
    code,
    name,
    categoryCode,
    description,
    floorNumber,
    roomNumber,
    capacity,
    displayOrder,
  ];
}

class ElogPresetAreasInclude extends _is.IncludeObject {
  ElogPresetAreasInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetAreas.t;
}

class ElogPresetAreasIncludeList extends _is.IncludeList {
  ElogPresetAreasIncludeList._({
    _is.WhereExpressionBuilder<ElogPresetAreasTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPresetAreas.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetAreas.t;
}

class ElogPresetAreasRepository {
  const ElogPresetAreasRepository._();

  /// Returns a list of [ElogPresetAreas]s matching the given query parameters.
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
  Future<List<ElogPresetAreas>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetAreasTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetAreasTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetAreasTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPresetAreas>(
      where: where?.call(ElogPresetAreas.t),
      orderBy: orderBy?.call(ElogPresetAreas.t),
      orderByList: orderByList?.call(ElogPresetAreas.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPresetAreas] matching the given query parameters.
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
  Future<ElogPresetAreas?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetAreasTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPresetAreasTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetAreasTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPresetAreas>(
      where: where?.call(ElogPresetAreas.t),
      orderBy: orderBy?.call(ElogPresetAreas.t),
      orderByList: orderByList?.call(ElogPresetAreas.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPresetAreas] by its [id] or null if no such row exists.
  Future<ElogPresetAreas?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPresetAreas>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPresetAreas]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPresetAreas]s will have their `id` fields set.
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
  Future<List<ElogPresetAreas>> insert(
    _is.DatabaseSession session,
    List<ElogPresetAreas> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPresetAreas>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPresetAreas] and returns the inserted row.
  ///
  /// The returned [ElogPresetAreas] will have its `id` field set.
  Future<ElogPresetAreas> insertRow(
    _is.DatabaseSession session,
    ElogPresetAreas row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPresetAreas>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPresetAreas]s in the list and returns the resulting rows.
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
  /// The returned [ElogPresetAreas]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetAreas>> upsert(
    _is.DatabaseSession session,
    List<ElogPresetAreas> rows, {
    required _is.ColumnSelections<ElogPresetAreasTable> conflictColumns,
    _is.ColumnSelections<ElogPresetAreasTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetAreasTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPresetAreas>(
      rows,
      conflictColumns: conflictColumns(ElogPresetAreas.t),
      updateColumns: updateColumns?.call(ElogPresetAreas.t),
      updateWhere: updateWhere?.call(ElogPresetAreas.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPresetAreas] and returns the resulting row.
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
  /// The returned [ElogPresetAreas] will have its `id` field set.
  Future<ElogPresetAreas?> upsertRow(
    _is.DatabaseSession session,
    ElogPresetAreas row, {
    required _is.ColumnSelections<ElogPresetAreasTable> conflictColumns,
    _is.ColumnSelections<ElogPresetAreasTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetAreasTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPresetAreas>(
      row,
      conflictColumns: conflictColumns(ElogPresetAreas.t),
      updateColumns: updateColumns?.call(ElogPresetAreas.t),
      updateWhere: updateWhere?.call(ElogPresetAreas.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetAreas]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetAreas>> update(
    _is.DatabaseSession session,
    List<ElogPresetAreas> rows, {
    _is.ColumnSelections<ElogPresetAreasTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPresetAreas>(
      rows,
      columns: columns?.call(ElogPresetAreas.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPresetAreas]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPresetAreas> updateRow(
    _is.DatabaseSession session,
    ElogPresetAreas row, {
    _is.ColumnSelections<ElogPresetAreasTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPresetAreas>(
      row,
      columns: columns?.call(ElogPresetAreas.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPresetAreas] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPresetAreas?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPresetAreasUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPresetAreas>(
      id,
      columnValues: columnValues(ElogPresetAreas.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetAreas]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetAreas>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPresetAreasUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPresetAreasTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetAreasTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetAreasTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPresetAreas>(
      columnValues: columnValues(ElogPresetAreas.t.updateTable),
      where: where(ElogPresetAreas.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetAreas.t),
      orderByList: orderByList?.call(ElogPresetAreas.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPresetAreas]s in the list and returns the deleted rows.
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
  Future<List<ElogPresetAreas>> delete(
    _is.DatabaseSession session,
    List<ElogPresetAreas> rows, {
    _is.OrderByBuilder<ElogPresetAreasTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetAreasTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPresetAreas>(
      rows,
      orderBy: orderBy?.call(ElogPresetAreas.t),
      orderByList: orderByList?.call(ElogPresetAreas.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPresetAreas].
  Future<ElogPresetAreas> deleteRow(
    _is.DatabaseSession session,
    ElogPresetAreas row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPresetAreas>(
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
  Future<List<ElogPresetAreas>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetAreasTable> where,
    _is.OrderByBuilder<ElogPresetAreasTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetAreasTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPresetAreas>(
      where: where(ElogPresetAreas.t),
      orderBy: orderBy?.call(ElogPresetAreas.t),
      orderByList: orderByList?.call(ElogPresetAreas.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetAreasTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPresetAreas>(
      where: where?.call(ElogPresetAreas.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPresetAreas] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetAreasTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPresetAreas>(
      where: where(ElogPresetAreas.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
