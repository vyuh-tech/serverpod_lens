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
abstract class CampusOfficeHour
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusOfficeHour._({
    this.id,
    required this.lecturerId,
    this.roomId,
    required this.weekday,
    required this.startsAt,
    required this.endsAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusOfficeHour({
    _is.UuidValue? id,
    required _is.UuidValue lecturerId,
    _is.UuidValue? roomId,
    required int weekday,
    required DateTime startsAt,
    required DateTime endsAt,
    DateTime? createdAt,
  }) = _CampusOfficeHourImpl;

  factory CampusOfficeHour.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusOfficeHour(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      lecturerId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      roomId: jsonSerialization['roomId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['roomId']),
      weekday: jsonSerialization['weekday'] as int,
      startsAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['startsAt'],
      ),
      endsAt: _is.DateTimeJsonExtension.fromJson(jsonSerialization['endsAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusOfficeHourTable();

  static const db = CampusOfficeHourRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue lecturerId;

  _is.UuidValue? roomId;

  int weekday;

  DateTime startsAt;

  DateTime endsAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusOfficeHour]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusOfficeHour copyWith({
    _is.UuidValue? id,
    _is.UuidValue? lecturerId,
    _is.UuidValue? roomId,
    int? weekday,
    DateTime? startsAt,
    DateTime? endsAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusOfficeHour',
      if (id != null) 'id': id?.toJson(),
      'lecturerId': lecturerId.toJson(),
      if (roomId != null) 'roomId': roomId?.toJson(),
      'weekday': weekday,
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusOfficeHour',
      if (id != null) 'id': id?.toJson(),
      'lecturerId': lecturerId.toJson(),
      if (roomId != null) 'roomId': roomId?.toJson(),
      'weekday': weekday,
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusOfficeHourInclude include() {
    return CampusOfficeHourInclude._();
  }

  static CampusOfficeHourIncludeList includeList({
    _is.WhereExpressionBuilder<CampusOfficeHourTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusOfficeHourTable>? orderBy,
    _is.OrderByListBuilder<CampusOfficeHourTable>? orderByList,
    CampusOfficeHourInclude? include,
  }) {
    return CampusOfficeHourIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusOfficeHour.t),
      orderByList: orderByList?.call(CampusOfficeHour.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusOfficeHourImpl extends CampusOfficeHour {
  _CampusOfficeHourImpl({
    _is.UuidValue? id,
    required _is.UuidValue lecturerId,
    _is.UuidValue? roomId,
    required int weekday,
    required DateTime startsAt,
    required DateTime endsAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         lecturerId: lecturerId,
         roomId: roomId,
         weekday: weekday,
         startsAt: startsAt,
         endsAt: endsAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusOfficeHour]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusOfficeHour copyWith({
    Object? id = _Undefined,
    _is.UuidValue? lecturerId,
    Object? roomId = _Undefined,
    int? weekday,
    DateTime? startsAt,
    DateTime? endsAt,
    DateTime? createdAt,
  }) {
    return CampusOfficeHour(
      id: id is _is.UuidValue? ? id : this.id,
      lecturerId: lecturerId ?? this.lecturerId,
      roomId: roomId is _is.UuidValue? ? roomId : this.roomId,
      weekday: weekday ?? this.weekday,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt ?? this.endsAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusOfficeHourUpdateTable
    extends _is.UpdateTable<CampusOfficeHourTable> {
  CampusOfficeHourUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> lecturerId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.lecturerId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> roomId(_is.UuidValue? value) =>
      _is.ColumnValue(
        table.roomId,
        value,
      );

  _is.ColumnValue<int, int> weekday(int value) => _is.ColumnValue(
    table.weekday,
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

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusOfficeHourTable extends _is.Table<_is.UuidValue?> {
  CampusOfficeHourTable({super.tableRelation})
    : super(tableName: 'campus_office_hours') {
    updateTable = CampusOfficeHourUpdateTable(this);
    lecturerId = _is.ColumnUuid(
      'lecturerId',
      this,
    );
    roomId = _is.ColumnUuid(
      'roomId',
      this,
    );
    weekday = _is.ColumnInt(
      'weekday',
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
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusOfficeHourUpdateTable updateTable;

  late final _is.ColumnUuid lecturerId;

  late final _is.ColumnUuid roomId;

  late final _is.ColumnInt weekday;

  late final _is.ColumnDateTime startsAt;

  late final _is.ColumnDateTime endsAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    lecturerId,
    roomId,
    weekday,
    startsAt,
    endsAt,
    createdAt,
  ];
}

class CampusOfficeHourInclude extends _is.IncludeObject {
  CampusOfficeHourInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusOfficeHour.t;
}

class CampusOfficeHourIncludeList extends _is.IncludeList {
  CampusOfficeHourIncludeList._({
    _is.WhereExpressionBuilder<CampusOfficeHourTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusOfficeHour.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusOfficeHour.t;
}

class CampusOfficeHourRepository {
  const CampusOfficeHourRepository._();

  /// Returns a list of [CampusOfficeHour]s matching the given query parameters.
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
  Future<List<CampusOfficeHour>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusOfficeHourTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusOfficeHourTable>? orderBy,
    _is.OrderByListBuilder<CampusOfficeHourTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusOfficeHour>(
      where: where?.call(CampusOfficeHour.t),
      orderBy: orderBy?.call(CampusOfficeHour.t),
      orderByList: orderByList?.call(CampusOfficeHour.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusOfficeHour] matching the given query parameters.
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
  Future<CampusOfficeHour?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusOfficeHourTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusOfficeHourTable>? orderBy,
    _is.OrderByListBuilder<CampusOfficeHourTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusOfficeHour>(
      where: where?.call(CampusOfficeHour.t),
      orderBy: orderBy?.call(CampusOfficeHour.t),
      orderByList: orderByList?.call(CampusOfficeHour.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusOfficeHour] by its [id] or null if no such row exists.
  Future<CampusOfficeHour?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusOfficeHour>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusOfficeHour]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusOfficeHour]s will have their `id` fields set.
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
  Future<List<CampusOfficeHour>> insert(
    _is.DatabaseSession session,
    List<CampusOfficeHour> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusOfficeHour>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusOfficeHour] and returns the inserted row.
  ///
  /// The returned [CampusOfficeHour] will have its `id` field set.
  Future<CampusOfficeHour> insertRow(
    _is.DatabaseSession session,
    CampusOfficeHour row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusOfficeHour>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusOfficeHour]s in the list and returns the resulting rows.
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
  /// The returned [CampusOfficeHour]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusOfficeHour>> upsert(
    _is.DatabaseSession session,
    List<CampusOfficeHour> rows, {
    required _is.ColumnSelections<CampusOfficeHourTable> conflictColumns,
    _is.ColumnSelections<CampusOfficeHourTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusOfficeHourTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusOfficeHour>(
      rows,
      conflictColumns: conflictColumns(CampusOfficeHour.t),
      updateColumns: updateColumns?.call(CampusOfficeHour.t),
      updateWhere: updateWhere?.call(CampusOfficeHour.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusOfficeHour] and returns the resulting row.
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
  /// The returned [CampusOfficeHour] will have its `id` field set.
  Future<CampusOfficeHour?> upsertRow(
    _is.DatabaseSession session,
    CampusOfficeHour row, {
    required _is.ColumnSelections<CampusOfficeHourTable> conflictColumns,
    _is.ColumnSelections<CampusOfficeHourTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusOfficeHourTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusOfficeHour>(
      row,
      conflictColumns: conflictColumns(CampusOfficeHour.t),
      updateColumns: updateColumns?.call(CampusOfficeHour.t),
      updateWhere: updateWhere?.call(CampusOfficeHour.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusOfficeHour]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusOfficeHour>> update(
    _is.DatabaseSession session,
    List<CampusOfficeHour> rows, {
    _is.ColumnSelections<CampusOfficeHourTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusOfficeHour>(
      rows,
      columns: columns?.call(CampusOfficeHour.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusOfficeHour]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusOfficeHour> updateRow(
    _is.DatabaseSession session,
    CampusOfficeHour row, {
    _is.ColumnSelections<CampusOfficeHourTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusOfficeHour>(
      row,
      columns: columns?.call(CampusOfficeHour.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusOfficeHour] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusOfficeHour?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusOfficeHourUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusOfficeHour>(
      id,
      columnValues: columnValues(CampusOfficeHour.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusOfficeHour]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusOfficeHour>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusOfficeHourUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusOfficeHourTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusOfficeHourTable>? orderBy,
    _is.OrderByListBuilder<CampusOfficeHourTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusOfficeHour>(
      columnValues: columnValues(CampusOfficeHour.t.updateTable),
      where: where(CampusOfficeHour.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusOfficeHour.t),
      orderByList: orderByList?.call(CampusOfficeHour.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusOfficeHour]s in the list and returns the deleted rows.
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
  Future<List<CampusOfficeHour>> delete(
    _is.DatabaseSession session,
    List<CampusOfficeHour> rows, {
    _is.OrderByBuilder<CampusOfficeHourTable>? orderBy,
    _is.OrderByListBuilder<CampusOfficeHourTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusOfficeHour>(
      rows,
      orderBy: orderBy?.call(CampusOfficeHour.t),
      orderByList: orderByList?.call(CampusOfficeHour.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusOfficeHour].
  Future<CampusOfficeHour> deleteRow(
    _is.DatabaseSession session,
    CampusOfficeHour row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusOfficeHour>(
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
  Future<List<CampusOfficeHour>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusOfficeHourTable> where,
    _is.OrderByBuilder<CampusOfficeHourTable>? orderBy,
    _is.OrderByListBuilder<CampusOfficeHourTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusOfficeHour>(
      where: where(CampusOfficeHour.t),
      orderBy: orderBy?.call(CampusOfficeHour.t),
      orderByList: orderByList?.call(CampusOfficeHour.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusOfficeHourTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusOfficeHour>(
      where: where?.call(CampusOfficeHour.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusOfficeHour] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusOfficeHourTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusOfficeHour>(
      where: where(CampusOfficeHour.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
