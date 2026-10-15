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

/// Fictional university fixture: campus.
abstract class CampusRoom
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusRoom._({
    this.id,
    required this.buildingId,
    required this.code,
    required this.capacity,
    required this.accessible,
    required this.facilities,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusRoom({
    _is.UuidValue? id,
    required _is.UuidValue buildingId,
    required String code,
    required int capacity,
    required bool accessible,
    required List<String> facilities,
    DateTime? createdAt,
  }) = _CampusRoomImpl;

  factory CampusRoom.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusRoom(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      buildingId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['buildingId'],
      ),
      code: jsonSerialization['code'] as String,
      capacity: jsonSerialization['capacity'] as int,
      accessible: _is.BoolJsonExtension.fromJson(
        jsonSerialization['accessible'],
      ),
      facilities: _ioh8es0p.Protocol().deserialize<List<String>>(
        jsonSerialization['facilities'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusRoomTable();

  static const db = CampusRoomRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue buildingId;

  String code;

  int capacity;

  bool accessible;

  List<String> facilities;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusRoom]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusRoom copyWith({
    _is.UuidValue? id,
    _is.UuidValue? buildingId,
    String? code,
    int? capacity,
    bool? accessible,
    List<String>? facilities,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusRoom',
      if (id != null) 'id': id?.toJson(),
      'buildingId': buildingId.toJson(),
      'code': code,
      'capacity': capacity,
      'accessible': accessible,
      'facilities': facilities.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusRoom',
      if (id != null) 'id': id?.toJson(),
      'buildingId': buildingId.toJson(),
      'code': code,
      'capacity': capacity,
      'accessible': accessible,
      'facilities': facilities.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusRoomInclude include() {
    return CampusRoomInclude._();
  }

  static CampusRoomIncludeList includeList({
    _is.WhereExpressionBuilder<CampusRoomTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusRoomTable>? orderBy,
    _is.OrderByListBuilder<CampusRoomTable>? orderByList,
    CampusRoomInclude? include,
  }) {
    return CampusRoomIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusRoom.t),
      orderByList: orderByList?.call(CampusRoom.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusRoomImpl extends CampusRoom {
  _CampusRoomImpl({
    _is.UuidValue? id,
    required _is.UuidValue buildingId,
    required String code,
    required int capacity,
    required bool accessible,
    required List<String> facilities,
    DateTime? createdAt,
  }) : super._(
         id: id,
         buildingId: buildingId,
         code: code,
         capacity: capacity,
         accessible: accessible,
         facilities: facilities,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusRoom]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusRoom copyWith({
    Object? id = _Undefined,
    _is.UuidValue? buildingId,
    String? code,
    int? capacity,
    bool? accessible,
    List<String>? facilities,
    DateTime? createdAt,
  }) {
    return CampusRoom(
      id: id is _is.UuidValue? ? id : this.id,
      buildingId: buildingId ?? this.buildingId,
      code: code ?? this.code,
      capacity: capacity ?? this.capacity,
      accessible: accessible ?? this.accessible,
      facilities: facilities ?? this.facilities.map((e0) => e0).toList(),
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusRoomUpdateTable extends _is.UpdateTable<CampusRoomTable> {
  CampusRoomUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> buildingId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.buildingId,
    value,
  );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<int, int> capacity(int value) => _is.ColumnValue(
    table.capacity,
    value,
  );

  _is.ColumnValue<bool, bool> accessible(bool value) => _is.ColumnValue(
    table.accessible,
    value,
  );

  _is.ColumnValue<List<String>, List<String>> facilities(List<String> value) =>
      _is.ColumnValue(
        table.facilities,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusRoomTable extends _is.Table<_is.UuidValue?> {
  CampusRoomTable({super.tableRelation}) : super(tableName: 'campus_rooms') {
    updateTable = CampusRoomUpdateTable(this);
    buildingId = _is.ColumnUuid(
      'buildingId',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    capacity = _is.ColumnInt(
      'capacity',
      this,
    );
    accessible = _is.ColumnBool(
      'accessible',
      this,
    );
    facilities = _is.ColumnSerializable<List<String>>(
      'facilities',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusRoomUpdateTable updateTable;

  late final _is.ColumnUuid buildingId;

  late final _is.ColumnString code;

  late final _is.ColumnInt capacity;

  late final _is.ColumnBool accessible;

  late final _is.ColumnSerializable<List<String>> facilities;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    buildingId,
    code,
    capacity,
    accessible,
    facilities,
    createdAt,
  ];
}

class CampusRoomInclude extends _is.IncludeObject {
  CampusRoomInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusRoom.t;
}

class CampusRoomIncludeList extends _is.IncludeList {
  CampusRoomIncludeList._({
    _is.WhereExpressionBuilder<CampusRoomTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusRoom.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusRoom.t;
}

class CampusRoomRepository {
  const CampusRoomRepository._();

  /// Returns a list of [CampusRoom]s matching the given query parameters.
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
  Future<List<CampusRoom>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusRoomTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusRoomTable>? orderBy,
    _is.OrderByListBuilder<CampusRoomTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusRoom>(
      where: where?.call(CampusRoom.t),
      orderBy: orderBy?.call(CampusRoom.t),
      orderByList: orderByList?.call(CampusRoom.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusRoom] matching the given query parameters.
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
  Future<CampusRoom?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusRoomTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusRoomTable>? orderBy,
    _is.OrderByListBuilder<CampusRoomTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusRoom>(
      where: where?.call(CampusRoom.t),
      orderBy: orderBy?.call(CampusRoom.t),
      orderByList: orderByList?.call(CampusRoom.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusRoom] by its [id] or null if no such row exists.
  Future<CampusRoom?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusRoom>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusRoom]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusRoom]s will have their `id` fields set.
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
  Future<List<CampusRoom>> insert(
    _is.DatabaseSession session,
    List<CampusRoom> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusRoom>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusRoom] and returns the inserted row.
  ///
  /// The returned [CampusRoom] will have its `id` field set.
  Future<CampusRoom> insertRow(
    _is.DatabaseSession session,
    CampusRoom row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusRoom>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusRoom]s in the list and returns the resulting rows.
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
  /// The returned [CampusRoom]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusRoom>> upsert(
    _is.DatabaseSession session,
    List<CampusRoom> rows, {
    required _is.ColumnSelections<CampusRoomTable> conflictColumns,
    _is.ColumnSelections<CampusRoomTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusRoomTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusRoom>(
      rows,
      conflictColumns: conflictColumns(CampusRoom.t),
      updateColumns: updateColumns?.call(CampusRoom.t),
      updateWhere: updateWhere?.call(CampusRoom.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusRoom] and returns the resulting row.
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
  /// The returned [CampusRoom] will have its `id` field set.
  Future<CampusRoom?> upsertRow(
    _is.DatabaseSession session,
    CampusRoom row, {
    required _is.ColumnSelections<CampusRoomTable> conflictColumns,
    _is.ColumnSelections<CampusRoomTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusRoomTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusRoom>(
      row,
      conflictColumns: conflictColumns(CampusRoom.t),
      updateColumns: updateColumns?.call(CampusRoom.t),
      updateWhere: updateWhere?.call(CampusRoom.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusRoom]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusRoom>> update(
    _is.DatabaseSession session,
    List<CampusRoom> rows, {
    _is.ColumnSelections<CampusRoomTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusRoom>(
      rows,
      columns: columns?.call(CampusRoom.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusRoom]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusRoom> updateRow(
    _is.DatabaseSession session,
    CampusRoom row, {
    _is.ColumnSelections<CampusRoomTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusRoom>(
      row,
      columns: columns?.call(CampusRoom.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusRoom] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusRoom?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusRoomUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusRoom>(
      id,
      columnValues: columnValues(CampusRoom.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusRoom]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusRoom>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusRoomUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusRoomTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusRoomTable>? orderBy,
    _is.OrderByListBuilder<CampusRoomTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusRoom>(
      columnValues: columnValues(CampusRoom.t.updateTable),
      where: where(CampusRoom.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusRoom.t),
      orderByList: orderByList?.call(CampusRoom.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusRoom]s in the list and returns the deleted rows.
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
  Future<List<CampusRoom>> delete(
    _is.DatabaseSession session,
    List<CampusRoom> rows, {
    _is.OrderByBuilder<CampusRoomTable>? orderBy,
    _is.OrderByListBuilder<CampusRoomTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusRoom>(
      rows,
      orderBy: orderBy?.call(CampusRoom.t),
      orderByList: orderByList?.call(CampusRoom.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusRoom].
  Future<CampusRoom> deleteRow(
    _is.DatabaseSession session,
    CampusRoom row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusRoom>(
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
  Future<List<CampusRoom>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusRoomTable> where,
    _is.OrderByBuilder<CampusRoomTable>? orderBy,
    _is.OrderByListBuilder<CampusRoomTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusRoom>(
      where: where(CampusRoom.t),
      orderBy: orderBy?.call(CampusRoom.t),
      orderByList: orderByList?.call(CampusRoom.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusRoomTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusRoom>(
      where: where?.call(CampusRoom.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusRoom] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusRoomTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusRoom>(
      where: where(CampusRoom.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
