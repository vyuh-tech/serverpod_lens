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

/// Fictional university fixture: housing.
abstract class CampusResidenceRoom
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusResidenceRoom._({
    this.id,
    required this.floorId,
    this.roomId,
    required this.number,
    required this.roomType,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResidenceRoom({
    _is.UuidValue? id,
    required _is.UuidValue floorId,
    _is.UuidValue? roomId,
    required String number,
    required String roomType,
    DateTime? createdAt,
  }) = _CampusResidenceRoomImpl;

  factory CampusResidenceRoom.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusResidenceRoom(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      floorId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['floorId'],
      ),
      roomId: jsonSerialization['roomId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['roomId']),
      number: jsonSerialization['number'] as String,
      roomType: jsonSerialization['roomType'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusResidenceRoomTable();

  static const db = CampusResidenceRoomRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue floorId;

  _is.UuidValue? roomId;

  String number;

  String roomType;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusResidenceRoom]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusResidenceRoom copyWith({
    _is.UuidValue? id,
    _is.UuidValue? floorId,
    _is.UuidValue? roomId,
    String? number,
    String? roomType,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResidenceRoom',
      if (id != null) 'id': id?.toJson(),
      'floorId': floorId.toJson(),
      if (roomId != null) 'roomId': roomId?.toJson(),
      'number': number,
      'roomType': roomType,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResidenceRoom',
      if (id != null) 'id': id?.toJson(),
      'floorId': floorId.toJson(),
      if (roomId != null) 'roomId': roomId?.toJson(),
      'number': number,
      'roomType': roomType,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusResidenceRoomInclude include() {
    return CampusResidenceRoomInclude._();
  }

  static CampusResidenceRoomIncludeList includeList({
    _is.WhereExpressionBuilder<CampusResidenceRoomTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResidenceRoomTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceRoomTable>? orderByList,
    CampusResidenceRoomInclude? include,
  }) {
    return CampusResidenceRoomIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResidenceRoom.t),
      orderByList: orderByList?.call(CampusResidenceRoom.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusResidenceRoomImpl extends CampusResidenceRoom {
  _CampusResidenceRoomImpl({
    _is.UuidValue? id,
    required _is.UuidValue floorId,
    _is.UuidValue? roomId,
    required String number,
    required String roomType,
    DateTime? createdAt,
  }) : super._(
         id: id,
         floorId: floorId,
         roomId: roomId,
         number: number,
         roomType: roomType,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResidenceRoom]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusResidenceRoom copyWith({
    Object? id = _Undefined,
    _is.UuidValue? floorId,
    Object? roomId = _Undefined,
    String? number,
    String? roomType,
    DateTime? createdAt,
  }) {
    return CampusResidenceRoom(
      id: id is _is.UuidValue? ? id : this.id,
      floorId: floorId ?? this.floorId,
      roomId: roomId is _is.UuidValue? ? roomId : this.roomId,
      number: number ?? this.number,
      roomType: roomType ?? this.roomType,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusResidenceRoomUpdateTable
    extends _is.UpdateTable<CampusResidenceRoomTable> {
  CampusResidenceRoomUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> floorId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.floorId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> roomId(_is.UuidValue? value) =>
      _is.ColumnValue(
        table.roomId,
        value,
      );

  _is.ColumnValue<String, String> number(String value) => _is.ColumnValue(
    table.number,
    value,
  );

  _is.ColumnValue<String, String> roomType(String value) => _is.ColumnValue(
    table.roomType,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusResidenceRoomTable extends _is.Table<_is.UuidValue?> {
  CampusResidenceRoomTable({super.tableRelation})
    : super(tableName: 'campus_residence_rooms') {
    updateTable = CampusResidenceRoomUpdateTable(this);
    floorId = _is.ColumnUuid(
      'floorId',
      this,
    );
    roomId = _is.ColumnUuid(
      'roomId',
      this,
    );
    number = _is.ColumnString(
      'number',
      this,
    );
    roomType = _is.ColumnString(
      'roomType',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusResidenceRoomUpdateTable updateTable;

  late final _is.ColumnUuid floorId;

  late final _is.ColumnUuid roomId;

  late final _is.ColumnString number;

  late final _is.ColumnString roomType;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    floorId,
    roomId,
    number,
    roomType,
    createdAt,
  ];
}

class CampusResidenceRoomInclude extends _is.IncludeObject {
  CampusResidenceRoomInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResidenceRoom.t;
}

class CampusResidenceRoomIncludeList extends _is.IncludeList {
  CampusResidenceRoomIncludeList._({
    _is.WhereExpressionBuilder<CampusResidenceRoomTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusResidenceRoom.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResidenceRoom.t;
}

class CampusResidenceRoomRepository {
  const CampusResidenceRoomRepository._();

  /// Returns a list of [CampusResidenceRoom]s matching the given query parameters.
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
  Future<List<CampusResidenceRoom>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResidenceRoomTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResidenceRoomTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceRoomTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusResidenceRoom>(
      where: where?.call(CampusResidenceRoom.t),
      orderBy: orderBy?.call(CampusResidenceRoom.t),
      orderByList: orderByList?.call(CampusResidenceRoom.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusResidenceRoom] matching the given query parameters.
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
  Future<CampusResidenceRoom?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResidenceRoomTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusResidenceRoomTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceRoomTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusResidenceRoom>(
      where: where?.call(CampusResidenceRoom.t),
      orderBy: orderBy?.call(CampusResidenceRoom.t),
      orderByList: orderByList?.call(CampusResidenceRoom.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusResidenceRoom] by its [id] or null if no such row exists.
  Future<CampusResidenceRoom?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusResidenceRoom>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusResidenceRoom]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusResidenceRoom]s will have their `id` fields set.
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
  Future<List<CampusResidenceRoom>> insert(
    _is.DatabaseSession session,
    List<CampusResidenceRoom> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusResidenceRoom>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusResidenceRoom] and returns the inserted row.
  ///
  /// The returned [CampusResidenceRoom] will have its `id` field set.
  Future<CampusResidenceRoom> insertRow(
    _is.DatabaseSession session,
    CampusResidenceRoom row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusResidenceRoom>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusResidenceRoom]s in the list and returns the resulting rows.
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
  /// The returned [CampusResidenceRoom]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResidenceRoom>> upsert(
    _is.DatabaseSession session,
    List<CampusResidenceRoom> rows, {
    required _is.ColumnSelections<CampusResidenceRoomTable> conflictColumns,
    _is.ColumnSelections<CampusResidenceRoomTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResidenceRoomTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusResidenceRoom>(
      rows,
      conflictColumns: conflictColumns(CampusResidenceRoom.t),
      updateColumns: updateColumns?.call(CampusResidenceRoom.t),
      updateWhere: updateWhere?.call(CampusResidenceRoom.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusResidenceRoom] and returns the resulting row.
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
  /// The returned [CampusResidenceRoom] will have its `id` field set.
  Future<CampusResidenceRoom?> upsertRow(
    _is.DatabaseSession session,
    CampusResidenceRoom row, {
    required _is.ColumnSelections<CampusResidenceRoomTable> conflictColumns,
    _is.ColumnSelections<CampusResidenceRoomTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResidenceRoomTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusResidenceRoom>(
      row,
      conflictColumns: conflictColumns(CampusResidenceRoom.t),
      updateColumns: updateColumns?.call(CampusResidenceRoom.t),
      updateWhere: updateWhere?.call(CampusResidenceRoom.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResidenceRoom]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResidenceRoom>> update(
    _is.DatabaseSession session,
    List<CampusResidenceRoom> rows, {
    _is.ColumnSelections<CampusResidenceRoomTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusResidenceRoom>(
      rows,
      columns: columns?.call(CampusResidenceRoom.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusResidenceRoom]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusResidenceRoom> updateRow(
    _is.DatabaseSession session,
    CampusResidenceRoom row, {
    _is.ColumnSelections<CampusResidenceRoomTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusResidenceRoom>(
      row,
      columns: columns?.call(CampusResidenceRoom.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusResidenceRoom] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusResidenceRoom?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusResidenceRoomUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusResidenceRoom>(
      id,
      columnValues: columnValues(CampusResidenceRoom.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResidenceRoom]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResidenceRoom>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusResidenceRoomUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusResidenceRoomTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResidenceRoomTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceRoomTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusResidenceRoom>(
      columnValues: columnValues(CampusResidenceRoom.t.updateTable),
      where: where(CampusResidenceRoom.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResidenceRoom.t),
      orderByList: orderByList?.call(CampusResidenceRoom.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusResidenceRoom]s in the list and returns the deleted rows.
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
  Future<List<CampusResidenceRoom>> delete(
    _is.DatabaseSession session,
    List<CampusResidenceRoom> rows, {
    _is.OrderByBuilder<CampusResidenceRoomTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceRoomTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusResidenceRoom>(
      rows,
      orderBy: orderBy?.call(CampusResidenceRoom.t),
      orderByList: orderByList?.call(CampusResidenceRoom.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusResidenceRoom].
  Future<CampusResidenceRoom> deleteRow(
    _is.DatabaseSession session,
    CampusResidenceRoom row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusResidenceRoom>(
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
  Future<List<CampusResidenceRoom>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResidenceRoomTable> where,
    _is.OrderByBuilder<CampusResidenceRoomTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceRoomTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusResidenceRoom>(
      where: where(CampusResidenceRoom.t),
      orderBy: orderBy?.call(CampusResidenceRoom.t),
      orderByList: orderByList?.call(CampusResidenceRoom.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResidenceRoomTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusResidenceRoom>(
      where: where?.call(CampusResidenceRoom.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusResidenceRoom] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResidenceRoomTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusResidenceRoom>(
      where: where(CampusResidenceRoom.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
