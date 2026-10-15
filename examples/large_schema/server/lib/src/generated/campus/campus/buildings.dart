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

/// Fictional university fixture: campus.
abstract class CampusBuilding
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusBuilding._({
    this.id,
    required this.campusId,
    required this.code,
    required this.name,
    this.latitude,
    this.longitude,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusBuilding({
    _is.UuidValue? id,
    required _is.UuidValue campusId,
    required String code,
    required String name,
    double? latitude,
    double? longitude,
    DateTime? createdAt,
  }) = _CampusBuildingImpl;

  factory CampusBuilding.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusBuilding(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      campusId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['campusId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      latitude: (jsonSerialization['latitude'] as num?)?.toDouble(),
      longitude: (jsonSerialization['longitude'] as num?)?.toDouble(),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusBuildingTable();

  static const db = CampusBuildingRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue campusId;

  String code;

  String name;

  double? latitude;

  double? longitude;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusBuilding]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusBuilding copyWith({
    _is.UuidValue? id,
    _is.UuidValue? campusId,
    String? code,
    String? name,
    double? latitude,
    double? longitude,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusBuilding',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'code': code,
      'name': name,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusBuilding',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'code': code,
      'name': name,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusBuildingInclude include() {
    return CampusBuildingInclude._();
  }

  static CampusBuildingIncludeList includeList({
    _is.WhereExpressionBuilder<CampusBuildingTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBuildingTable>? orderBy,
    _is.OrderByListBuilder<CampusBuildingTable>? orderByList,
    CampusBuildingInclude? include,
  }) {
    return CampusBuildingIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusBuilding.t),
      orderByList: orderByList?.call(CampusBuilding.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusBuildingImpl extends CampusBuilding {
  _CampusBuildingImpl({
    _is.UuidValue? id,
    required _is.UuidValue campusId,
    required String code,
    required String name,
    double? latitude,
    double? longitude,
    DateTime? createdAt,
  }) : super._(
         id: id,
         campusId: campusId,
         code: code,
         name: name,
         latitude: latitude,
         longitude: longitude,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusBuilding]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusBuilding copyWith({
    Object? id = _Undefined,
    _is.UuidValue? campusId,
    String? code,
    String? name,
    Object? latitude = _Undefined,
    Object? longitude = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusBuilding(
      id: id is _is.UuidValue? ? id : this.id,
      campusId: campusId ?? this.campusId,
      code: code ?? this.code,
      name: name ?? this.name,
      latitude: latitude is double? ? latitude : this.latitude,
      longitude: longitude is double? ? longitude : this.longitude,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusBuildingUpdateTable extends _is.UpdateTable<CampusBuildingTable> {
  CampusBuildingUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> campusId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.campusId,
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

  _is.ColumnValue<double, double> latitude(double? value) => _is.ColumnValue(
    table.latitude,
    value,
  );

  _is.ColumnValue<double, double> longitude(double? value) => _is.ColumnValue(
    table.longitude,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusBuildingTable extends _is.Table<_is.UuidValue?> {
  CampusBuildingTable({super.tableRelation})
    : super(tableName: 'campus_buildings') {
    updateTable = CampusBuildingUpdateTable(this);
    campusId = _is.ColumnUuid(
      'campusId',
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
    latitude = _is.ColumnDouble(
      'latitude',
      this,
    );
    longitude = _is.ColumnDouble(
      'longitude',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusBuildingUpdateTable updateTable;

  late final _is.ColumnUuid campusId;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnDouble latitude;

  late final _is.ColumnDouble longitude;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    campusId,
    code,
    name,
    latitude,
    longitude,
    createdAt,
  ];
}

class CampusBuildingInclude extends _is.IncludeObject {
  CampusBuildingInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusBuilding.t;
}

class CampusBuildingIncludeList extends _is.IncludeList {
  CampusBuildingIncludeList._({
    _is.WhereExpressionBuilder<CampusBuildingTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusBuilding.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusBuilding.t;
}

class CampusBuildingRepository {
  const CampusBuildingRepository._();

  /// Returns a list of [CampusBuilding]s matching the given query parameters.
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
  Future<List<CampusBuilding>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBuildingTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBuildingTable>? orderBy,
    _is.OrderByListBuilder<CampusBuildingTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusBuilding>(
      where: where?.call(CampusBuilding.t),
      orderBy: orderBy?.call(CampusBuilding.t),
      orderByList: orderByList?.call(CampusBuilding.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusBuilding] matching the given query parameters.
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
  Future<CampusBuilding?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBuildingTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusBuildingTable>? orderBy,
    _is.OrderByListBuilder<CampusBuildingTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusBuilding>(
      where: where?.call(CampusBuilding.t),
      orderBy: orderBy?.call(CampusBuilding.t),
      orderByList: orderByList?.call(CampusBuilding.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusBuilding] by its [id] or null if no such row exists.
  Future<CampusBuilding?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusBuilding>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusBuilding]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusBuilding]s will have their `id` fields set.
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
  Future<List<CampusBuilding>> insert(
    _is.DatabaseSession session,
    List<CampusBuilding> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusBuilding>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusBuilding] and returns the inserted row.
  ///
  /// The returned [CampusBuilding] will have its `id` field set.
  Future<CampusBuilding> insertRow(
    _is.DatabaseSession session,
    CampusBuilding row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusBuilding>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusBuilding]s in the list and returns the resulting rows.
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
  /// The returned [CampusBuilding]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBuilding>> upsert(
    _is.DatabaseSession session,
    List<CampusBuilding> rows, {
    required _is.ColumnSelections<CampusBuildingTable> conflictColumns,
    _is.ColumnSelections<CampusBuildingTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusBuildingTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusBuilding>(
      rows,
      conflictColumns: conflictColumns(CampusBuilding.t),
      updateColumns: updateColumns?.call(CampusBuilding.t),
      updateWhere: updateWhere?.call(CampusBuilding.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusBuilding] and returns the resulting row.
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
  /// The returned [CampusBuilding] will have its `id` field set.
  Future<CampusBuilding?> upsertRow(
    _is.DatabaseSession session,
    CampusBuilding row, {
    required _is.ColumnSelections<CampusBuildingTable> conflictColumns,
    _is.ColumnSelections<CampusBuildingTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusBuildingTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusBuilding>(
      row,
      conflictColumns: conflictColumns(CampusBuilding.t),
      updateColumns: updateColumns?.call(CampusBuilding.t),
      updateWhere: updateWhere?.call(CampusBuilding.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusBuilding]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBuilding>> update(
    _is.DatabaseSession session,
    List<CampusBuilding> rows, {
    _is.ColumnSelections<CampusBuildingTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusBuilding>(
      rows,
      columns: columns?.call(CampusBuilding.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusBuilding]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusBuilding> updateRow(
    _is.DatabaseSession session,
    CampusBuilding row, {
    _is.ColumnSelections<CampusBuildingTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusBuilding>(
      row,
      columns: columns?.call(CampusBuilding.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusBuilding] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusBuilding?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusBuildingUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusBuilding>(
      id,
      columnValues: columnValues(CampusBuilding.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusBuilding]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBuilding>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusBuildingUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusBuildingTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBuildingTable>? orderBy,
    _is.OrderByListBuilder<CampusBuildingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusBuilding>(
      columnValues: columnValues(CampusBuilding.t.updateTable),
      where: where(CampusBuilding.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusBuilding.t),
      orderByList: orderByList?.call(CampusBuilding.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusBuilding]s in the list and returns the deleted rows.
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
  Future<List<CampusBuilding>> delete(
    _is.DatabaseSession session,
    List<CampusBuilding> rows, {
    _is.OrderByBuilder<CampusBuildingTable>? orderBy,
    _is.OrderByListBuilder<CampusBuildingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusBuilding>(
      rows,
      orderBy: orderBy?.call(CampusBuilding.t),
      orderByList: orderByList?.call(CampusBuilding.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusBuilding].
  Future<CampusBuilding> deleteRow(
    _is.DatabaseSession session,
    CampusBuilding row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusBuilding>(
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
  Future<List<CampusBuilding>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusBuildingTable> where,
    _is.OrderByBuilder<CampusBuildingTable>? orderBy,
    _is.OrderByListBuilder<CampusBuildingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusBuilding>(
      where: where(CampusBuilding.t),
      orderBy: orderBy?.call(CampusBuilding.t),
      orderByList: orderByList?.call(CampusBuilding.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBuildingTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusBuilding>(
      where: where?.call(CampusBuilding.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusBuilding] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusBuildingTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusBuilding>(
      where: where(CampusBuilding.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
