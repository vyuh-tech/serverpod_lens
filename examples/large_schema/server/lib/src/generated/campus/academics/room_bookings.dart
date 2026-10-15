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

/// Fictional university fixture: academics.
abstract class CampusRoomBooking
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusRoomBooking._({
    this.id,
    required this.roomId,
    required this.lecturerId,
    required this.startsAt,
    required this.endsAt,
    required this.purpose,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusRoomBooking({
    _is.UuidValue? id,
    required _is.UuidValue roomId,
    required _is.UuidValue lecturerId,
    required DateTime startsAt,
    required DateTime endsAt,
    required String purpose,
    DateTime? createdAt,
  }) = _CampusRoomBookingImpl;

  factory CampusRoomBooking.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusRoomBooking(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      roomId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['roomId']),
      lecturerId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      startsAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['startsAt'],
      ),
      endsAt: _is.DateTimeJsonExtension.fromJson(jsonSerialization['endsAt']),
      purpose: jsonSerialization['purpose'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusRoomBookingTable();

  static const db = CampusRoomBookingRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue roomId;

  _is.UuidValue lecturerId;

  DateTime startsAt;

  DateTime endsAt;

  String purpose;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusRoomBooking]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusRoomBooking copyWith({
    _is.UuidValue? id,
    _is.UuidValue? roomId,
    _is.UuidValue? lecturerId,
    DateTime? startsAt,
    DateTime? endsAt,
    String? purpose,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusRoomBooking',
      if (id != null) 'id': id?.toJson(),
      'roomId': roomId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'purpose': purpose,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusRoomBooking',
      if (id != null) 'id': id?.toJson(),
      'roomId': roomId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'purpose': purpose,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusRoomBookingInclude include() {
    return CampusRoomBookingInclude._();
  }

  static CampusRoomBookingIncludeList includeList({
    _is.WhereExpressionBuilder<CampusRoomBookingTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusRoomBookingTable>? orderBy,
    _is.OrderByListBuilder<CampusRoomBookingTable>? orderByList,
    CampusRoomBookingInclude? include,
  }) {
    return CampusRoomBookingIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusRoomBooking.t),
      orderByList: orderByList?.call(CampusRoomBooking.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusRoomBookingImpl extends CampusRoomBooking {
  _CampusRoomBookingImpl({
    _is.UuidValue? id,
    required _is.UuidValue roomId,
    required _is.UuidValue lecturerId,
    required DateTime startsAt,
    required DateTime endsAt,
    required String purpose,
    DateTime? createdAt,
  }) : super._(
         id: id,
         roomId: roomId,
         lecturerId: lecturerId,
         startsAt: startsAt,
         endsAt: endsAt,
         purpose: purpose,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusRoomBooking]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusRoomBooking copyWith({
    Object? id = _Undefined,
    _is.UuidValue? roomId,
    _is.UuidValue? lecturerId,
    DateTime? startsAt,
    DateTime? endsAt,
    String? purpose,
    DateTime? createdAt,
  }) {
    return CampusRoomBooking(
      id: id is _is.UuidValue? ? id : this.id,
      roomId: roomId ?? this.roomId,
      lecturerId: lecturerId ?? this.lecturerId,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt ?? this.endsAt,
      purpose: purpose ?? this.purpose,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusRoomBookingUpdateTable
    extends _is.UpdateTable<CampusRoomBookingTable> {
  CampusRoomBookingUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> roomId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.roomId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> lecturerId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.lecturerId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> startsAt(DateTime value) =>
      _is.ColumnValue(
        table.startsAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> endsAt(DateTime value) => _is.ColumnValue(
    table.endsAt,
    value,
  );

  _is.ColumnValue<String, String> purpose(String value) => _is.ColumnValue(
    table.purpose,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusRoomBookingTable extends _is.Table<_is.UuidValue?> {
  CampusRoomBookingTable({super.tableRelation})
    : super(tableName: 'campus_room_bookings') {
    updateTable = CampusRoomBookingUpdateTable(this);
    roomId = _is.ColumnUuid(
      'roomId',
      this,
    );
    lecturerId = _is.ColumnUuid(
      'lecturerId',
      this,
    );
    startsAt = _is.ColumnDateTime(
      'startsAt',
      this,
    );
    endsAt = _is.ColumnDateTime(
      'endsAt',
      this,
    );
    purpose = _is.ColumnString(
      'purpose',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusRoomBookingUpdateTable updateTable;

  late final _is.ColumnUuid roomId;

  late final _is.ColumnUuid lecturerId;

  late final _is.ColumnDateTime startsAt;

  late final _is.ColumnDateTime endsAt;

  late final _is.ColumnString purpose;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    roomId,
    lecturerId,
    startsAt,
    endsAt,
    purpose,
    createdAt,
  ];
}

class CampusRoomBookingInclude extends _is.IncludeObject {
  CampusRoomBookingInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusRoomBooking.t;
}

class CampusRoomBookingIncludeList extends _is.IncludeList {
  CampusRoomBookingIncludeList._({
    _is.WhereExpressionBuilder<CampusRoomBookingTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusRoomBooking.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusRoomBooking.t;
}

class CampusRoomBookingRepository {
  const CampusRoomBookingRepository._();

  /// Returns a list of [CampusRoomBooking]s matching the given query parameters.
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
  Future<List<CampusRoomBooking>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusRoomBookingTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusRoomBookingTable>? orderBy,
    _is.OrderByListBuilder<CampusRoomBookingTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusRoomBooking>(
      where: where?.call(CampusRoomBooking.t),
      orderBy: orderBy?.call(CampusRoomBooking.t),
      orderByList: orderByList?.call(CampusRoomBooking.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusRoomBooking] matching the given query parameters.
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
  Future<CampusRoomBooking?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusRoomBookingTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusRoomBookingTable>? orderBy,
    _is.OrderByListBuilder<CampusRoomBookingTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusRoomBooking>(
      where: where?.call(CampusRoomBooking.t),
      orderBy: orderBy?.call(CampusRoomBooking.t),
      orderByList: orderByList?.call(CampusRoomBooking.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusRoomBooking] by its [id] or null if no such row exists.
  Future<CampusRoomBooking?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusRoomBooking>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusRoomBooking]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusRoomBooking]s will have their `id` fields set.
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
  Future<List<CampusRoomBooking>> insert(
    _is.DatabaseSession session,
    List<CampusRoomBooking> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusRoomBooking>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusRoomBooking] and returns the inserted row.
  ///
  /// The returned [CampusRoomBooking] will have its `id` field set.
  Future<CampusRoomBooking> insertRow(
    _is.DatabaseSession session,
    CampusRoomBooking row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusRoomBooking>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusRoomBooking]s in the list and returns the resulting rows.
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
  /// The returned [CampusRoomBooking]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusRoomBooking>> upsert(
    _is.DatabaseSession session,
    List<CampusRoomBooking> rows, {
    required _is.ColumnSelections<CampusRoomBookingTable> conflictColumns,
    _is.ColumnSelections<CampusRoomBookingTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusRoomBookingTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusRoomBooking>(
      rows,
      conflictColumns: conflictColumns(CampusRoomBooking.t),
      updateColumns: updateColumns?.call(CampusRoomBooking.t),
      updateWhere: updateWhere?.call(CampusRoomBooking.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusRoomBooking] and returns the resulting row.
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
  /// The returned [CampusRoomBooking] will have its `id` field set.
  Future<CampusRoomBooking?> upsertRow(
    _is.DatabaseSession session,
    CampusRoomBooking row, {
    required _is.ColumnSelections<CampusRoomBookingTable> conflictColumns,
    _is.ColumnSelections<CampusRoomBookingTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusRoomBookingTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusRoomBooking>(
      row,
      conflictColumns: conflictColumns(CampusRoomBooking.t),
      updateColumns: updateColumns?.call(CampusRoomBooking.t),
      updateWhere: updateWhere?.call(CampusRoomBooking.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusRoomBooking]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusRoomBooking>> update(
    _is.DatabaseSession session,
    List<CampusRoomBooking> rows, {
    _is.ColumnSelections<CampusRoomBookingTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusRoomBooking>(
      rows,
      columns: columns?.call(CampusRoomBooking.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusRoomBooking]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusRoomBooking> updateRow(
    _is.DatabaseSession session,
    CampusRoomBooking row, {
    _is.ColumnSelections<CampusRoomBookingTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusRoomBooking>(
      row,
      columns: columns?.call(CampusRoomBooking.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusRoomBooking] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusRoomBooking?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusRoomBookingUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusRoomBooking>(
      id,
      columnValues: columnValues(CampusRoomBooking.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusRoomBooking]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusRoomBooking>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusRoomBookingUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusRoomBookingTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusRoomBookingTable>? orderBy,
    _is.OrderByListBuilder<CampusRoomBookingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusRoomBooking>(
      columnValues: columnValues(CampusRoomBooking.t.updateTable),
      where: where(CampusRoomBooking.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusRoomBooking.t),
      orderByList: orderByList?.call(CampusRoomBooking.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusRoomBooking]s in the list and returns the deleted rows.
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
  Future<List<CampusRoomBooking>> delete(
    _is.DatabaseSession session,
    List<CampusRoomBooking> rows, {
    _is.OrderByBuilder<CampusRoomBookingTable>? orderBy,
    _is.OrderByListBuilder<CampusRoomBookingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusRoomBooking>(
      rows,
      orderBy: orderBy?.call(CampusRoomBooking.t),
      orderByList: orderByList?.call(CampusRoomBooking.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusRoomBooking].
  Future<CampusRoomBooking> deleteRow(
    _is.DatabaseSession session,
    CampusRoomBooking row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusRoomBooking>(
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
  Future<List<CampusRoomBooking>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusRoomBookingTable> where,
    _is.OrderByBuilder<CampusRoomBookingTable>? orderBy,
    _is.OrderByListBuilder<CampusRoomBookingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusRoomBooking>(
      where: where(CampusRoomBooking.t),
      orderBy: orderBy?.call(CampusRoomBooking.t),
      orderByList: orderByList?.call(CampusRoomBooking.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusRoomBookingTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusRoomBooking>(
      where: where?.call(CampusRoomBooking.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusRoomBooking] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusRoomBookingTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusRoomBooking>(
      where: where(CampusRoomBooking.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
