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

abstract class ElogAreas
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogAreas._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.parentAreaId,
    this.capacity,
    this.floorNumber,
    this.roomNumber,
    this.areaCategoryId,
  });

  factory ElogAreas({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    _is.UuidValue? parentAreaId,
    int? capacity,
    int? floorNumber,
    String? roomNumber,
    _is.UuidValue? areaCategoryId,
  }) = _ElogAreasImpl;

  factory ElogAreas.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogAreas(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      parentAreaId: jsonSerialization['parentAreaId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['parentAreaId'],
            ),
      capacity: jsonSerialization['capacity'] as int?,
      floorNumber: jsonSerialization['floorNumber'] as int?,
      roomNumber: jsonSerialization['roomNumber'] as String?,
      areaCategoryId: jsonSerialization['areaCategoryId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['areaCategoryId'],
            ),
    );
  }

  static final t = ElogAreasTable();

  static const db = ElogAreasRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  _is.UuidValue? parentAreaId;

  int? capacity;

  int? floorNumber;

  String? roomNumber;

  _is.UuidValue? areaCategoryId;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogAreas]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogAreas copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    _is.UuidValue? parentAreaId,
    int? capacity,
    int? floorNumber,
    String? roomNumber,
    _is.UuidValue? areaCategoryId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogAreas',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (parentAreaId != null) 'parentAreaId': parentAreaId?.toJson(),
      if (capacity != null) 'capacity': capacity,
      if (floorNumber != null) 'floorNumber': floorNumber,
      if (roomNumber != null) 'roomNumber': roomNumber,
      if (areaCategoryId != null) 'areaCategoryId': areaCategoryId?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogAreas',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (parentAreaId != null) 'parentAreaId': parentAreaId?.toJson(),
      if (capacity != null) 'capacity': capacity,
      if (floorNumber != null) 'floorNumber': floorNumber,
      if (roomNumber != null) 'roomNumber': roomNumber,
      if (areaCategoryId != null) 'areaCategoryId': areaCategoryId?.toJson(),
    };
  }

  static ElogAreasInclude include() {
    return ElogAreasInclude._();
  }

  static ElogAreasIncludeList includeList({
    _is.WhereExpressionBuilder<ElogAreasTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreasTable>? orderBy,
    _is.OrderByListBuilder<ElogAreasTable>? orderByList,
    ElogAreasInclude? include,
  }) {
    return ElogAreasIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogAreas.t),
      orderByList: orderByList?.call(ElogAreas.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogAreasImpl extends ElogAreas {
  _ElogAreasImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    _is.UuidValue? parentAreaId,
    int? capacity,
    int? floorNumber,
    String? roomNumber,
    _is.UuidValue? areaCategoryId,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         parentAreaId: parentAreaId,
         capacity: capacity,
         floorNumber: floorNumber,
         roomNumber: roomNumber,
         areaCategoryId: areaCategoryId,
       );

  /// Returns a shallow copy of this [ElogAreas]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogAreas copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? parentAreaId = _Undefined,
    Object? capacity = _Undefined,
    Object? floorNumber = _Undefined,
    Object? roomNumber = _Undefined,
    Object? areaCategoryId = _Undefined,
  }) {
    return ElogAreas(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      parentAreaId: parentAreaId is _is.UuidValue?
          ? parentAreaId
          : this.parentAreaId,
      capacity: capacity is int? ? capacity : this.capacity,
      floorNumber: floorNumber is int? ? floorNumber : this.floorNumber,
      roomNumber: roomNumber is String? ? roomNumber : this.roomNumber,
      areaCategoryId: areaCategoryId is _is.UuidValue?
          ? areaCategoryId
          : this.areaCategoryId,
    );
  }
}

class ElogAreasUpdateTable extends _is.UpdateTable<ElogAreasTable> {
  ElogAreasUpdateTable(super.table);

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

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> parentAreaId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.parentAreaId,
    value,
  );

  _is.ColumnValue<int, int> capacity(int? value) => _is.ColumnValue(
    table.capacity,
    value,
  );

  _is.ColumnValue<int, int> floorNumber(int? value) => _is.ColumnValue(
    table.floorNumber,
    value,
  );

  _is.ColumnValue<String, String> roomNumber(String? value) => _is.ColumnValue(
    table.roomNumber,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> areaCategoryId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.areaCategoryId,
    value,
  );
}

class ElogAreasTable extends _is.Table<_is.UuidValue?> {
  ElogAreasTable({super.tableRelation}) : super(tableName: 'elog_areas') {
    updateTable = ElogAreasUpdateTable(this);
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
    parentAreaId = _is.ColumnUuid(
      'parentAreaId',
      this,
    );
    capacity = _is.ColumnInt(
      'capacity',
      this,
    );
    floorNumber = _is.ColumnInt(
      'floorNumber',
      this,
    );
    roomNumber = _is.ColumnString(
      'roomNumber',
      this,
    );
    areaCategoryId = _is.ColumnUuid(
      'areaCategoryId',
      this,
    );
  }

  late final ElogAreasUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnUuid parentAreaId;

  late final _is.ColumnInt capacity;

  late final _is.ColumnInt floorNumber;

  late final _is.ColumnString roomNumber;

  late final _is.ColumnUuid areaCategoryId;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    parentAreaId,
    capacity,
    floorNumber,
    roomNumber,
    areaCategoryId,
  ];
}

class ElogAreasInclude extends _is.IncludeObject {
  ElogAreasInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogAreas.t;
}

class ElogAreasIncludeList extends _is.IncludeList {
  ElogAreasIncludeList._({
    _is.WhereExpressionBuilder<ElogAreasTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogAreas.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogAreas.t;
}

class ElogAreasRepository {
  const ElogAreasRepository._();

  /// Returns a list of [ElogAreas]s matching the given query parameters.
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
  Future<List<ElogAreas>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreasTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreasTable>? orderBy,
    _is.OrderByListBuilder<ElogAreasTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogAreas>(
      where: where?.call(ElogAreas.t),
      orderBy: orderBy?.call(ElogAreas.t),
      orderByList: orderByList?.call(ElogAreas.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogAreas] matching the given query parameters.
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
  Future<ElogAreas?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreasTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogAreasTable>? orderBy,
    _is.OrderByListBuilder<ElogAreasTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogAreas>(
      where: where?.call(ElogAreas.t),
      orderBy: orderBy?.call(ElogAreas.t),
      orderByList: orderByList?.call(ElogAreas.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogAreas] by its [id] or null if no such row exists.
  Future<ElogAreas?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogAreas>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogAreas]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogAreas]s will have their `id` fields set.
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
  Future<List<ElogAreas>> insert(
    _is.DatabaseSession session,
    List<ElogAreas> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogAreas>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogAreas] and returns the inserted row.
  ///
  /// The returned [ElogAreas] will have its `id` field set.
  Future<ElogAreas> insertRow(
    _is.DatabaseSession session,
    ElogAreas row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogAreas>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogAreas]s in the list and returns the resulting rows.
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
  /// The returned [ElogAreas]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreas>> upsert(
    _is.DatabaseSession session,
    List<ElogAreas> rows, {
    required _is.ColumnSelections<ElogAreasTable> conflictColumns,
    _is.ColumnSelections<ElogAreasTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogAreasTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogAreas>(
      rows,
      conflictColumns: conflictColumns(ElogAreas.t),
      updateColumns: updateColumns?.call(ElogAreas.t),
      updateWhere: updateWhere?.call(ElogAreas.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogAreas] and returns the resulting row.
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
  /// The returned [ElogAreas] will have its `id` field set.
  Future<ElogAreas?> upsertRow(
    _is.DatabaseSession session,
    ElogAreas row, {
    required _is.ColumnSelections<ElogAreasTable> conflictColumns,
    _is.ColumnSelections<ElogAreasTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogAreasTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogAreas>(
      row,
      conflictColumns: conflictColumns(ElogAreas.t),
      updateColumns: updateColumns?.call(ElogAreas.t),
      updateWhere: updateWhere?.call(ElogAreas.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogAreas]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreas>> update(
    _is.DatabaseSession session,
    List<ElogAreas> rows, {
    _is.ColumnSelections<ElogAreasTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogAreas>(
      rows,
      columns: columns?.call(ElogAreas.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogAreas]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogAreas> updateRow(
    _is.DatabaseSession session,
    ElogAreas row, {
    _is.ColumnSelections<ElogAreasTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogAreas>(
      row,
      columns: columns?.call(ElogAreas.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogAreas] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogAreas?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogAreasUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogAreas>(
      id,
      columnValues: columnValues(ElogAreas.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogAreas]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreas>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogAreasUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogAreasTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreasTable>? orderBy,
    _is.OrderByListBuilder<ElogAreasTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogAreas>(
      columnValues: columnValues(ElogAreas.t.updateTable),
      where: where(ElogAreas.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogAreas.t),
      orderByList: orderByList?.call(ElogAreas.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogAreas]s in the list and returns the deleted rows.
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
  Future<List<ElogAreas>> delete(
    _is.DatabaseSession session,
    List<ElogAreas> rows, {
    _is.OrderByBuilder<ElogAreasTable>? orderBy,
    _is.OrderByListBuilder<ElogAreasTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogAreas>(
      rows,
      orderBy: orderBy?.call(ElogAreas.t),
      orderByList: orderByList?.call(ElogAreas.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogAreas].
  Future<ElogAreas> deleteRow(
    _is.DatabaseSession session,
    ElogAreas row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogAreas>(
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
  Future<List<ElogAreas>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogAreasTable> where,
    _is.OrderByBuilder<ElogAreasTable>? orderBy,
    _is.OrderByListBuilder<ElogAreasTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogAreas>(
      where: where(ElogAreas.t),
      orderBy: orderBy?.call(ElogAreas.t),
      orderByList: orderByList?.call(ElogAreas.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreasTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogAreas>(
      where: where?.call(ElogAreas.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogAreas] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogAreasTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogAreas>(
      where: where(ElogAreas.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
