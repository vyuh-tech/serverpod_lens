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
abstract class CampusSectionMeeting
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusSectionMeeting._({
    this.id,
    required this.sectionId,
    required this.roomId,
    required this.weekday,
    required this.startsAt,
    required this.endsAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSectionMeeting({
    _is.UuidValue? id,
    required _is.UuidValue sectionId,
    required _is.UuidValue roomId,
    required int weekday,
    required DateTime startsAt,
    required DateTime endsAt,
    DateTime? createdAt,
  }) = _CampusSectionMeetingImpl;

  factory CampusSectionMeeting.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusSectionMeeting(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sectionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      roomId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['roomId']),
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

  static final t = CampusSectionMeetingTable();

  static const db = CampusSectionMeetingRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue sectionId;

  _is.UuidValue roomId;

  int weekday;

  DateTime startsAt;

  DateTime endsAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusSectionMeeting]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusSectionMeeting copyWith({
    _is.UuidValue? id,
    _is.UuidValue? sectionId,
    _is.UuidValue? roomId,
    int? weekday,
    DateTime? startsAt,
    DateTime? endsAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSectionMeeting',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'roomId': roomId.toJson(),
      'weekday': weekday,
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSectionMeeting',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'roomId': roomId.toJson(),
      'weekday': weekday,
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusSectionMeetingInclude include() {
    return CampusSectionMeetingInclude._();
  }

  static CampusSectionMeetingIncludeList includeList({
    _is.WhereExpressionBuilder<CampusSectionMeetingTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSectionMeetingTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionMeetingTable>? orderByList,
    CampusSectionMeetingInclude? include,
  }) {
    return CampusSectionMeetingIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSectionMeeting.t),
      orderByList: orderByList?.call(CampusSectionMeeting.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSectionMeetingImpl extends CampusSectionMeeting {
  _CampusSectionMeetingImpl({
    _is.UuidValue? id,
    required _is.UuidValue sectionId,
    required _is.UuidValue roomId,
    required int weekday,
    required DateTime startsAt,
    required DateTime endsAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sectionId: sectionId,
         roomId: roomId,
         weekday: weekday,
         startsAt: startsAt,
         endsAt: endsAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSectionMeeting]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusSectionMeeting copyWith({
    Object? id = _Undefined,
    _is.UuidValue? sectionId,
    _is.UuidValue? roomId,
    int? weekday,
    DateTime? startsAt,
    DateTime? endsAt,
    DateTime? createdAt,
  }) {
    return CampusSectionMeeting(
      id: id is _is.UuidValue? ? id : this.id,
      sectionId: sectionId ?? this.sectionId,
      roomId: roomId ?? this.roomId,
      weekday: weekday ?? this.weekday,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt ?? this.endsAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusSectionMeetingUpdateTable
    extends _is.UpdateTable<CampusSectionMeetingTable> {
  CampusSectionMeetingUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> sectionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.sectionId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> roomId(_is.UuidValue value) =>
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

class CampusSectionMeetingTable extends _is.Table<_is.UuidValue?> {
  CampusSectionMeetingTable({super.tableRelation})
    : super(tableName: 'campus_section_meetings') {
    updateTable = CampusSectionMeetingUpdateTable(this);
    sectionId = _is.ColumnUuid(
      'sectionId',
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

  late final CampusSectionMeetingUpdateTable updateTable;

  late final _is.ColumnUuid sectionId;

  late final _is.ColumnUuid roomId;

  late final _is.ColumnInt weekday;

  late final _is.ColumnDateTime startsAt;

  late final _is.ColumnDateTime endsAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    sectionId,
    roomId,
    weekday,
    startsAt,
    endsAt,
    createdAt,
  ];
}

class CampusSectionMeetingInclude extends _is.IncludeObject {
  CampusSectionMeetingInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSectionMeeting.t;
}

class CampusSectionMeetingIncludeList extends _is.IncludeList {
  CampusSectionMeetingIncludeList._({
    _is.WhereExpressionBuilder<CampusSectionMeetingTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusSectionMeeting.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSectionMeeting.t;
}

class CampusSectionMeetingRepository {
  const CampusSectionMeetingRepository._();

  /// Returns a list of [CampusSectionMeeting]s matching the given query parameters.
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
  Future<List<CampusSectionMeeting>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSectionMeetingTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSectionMeetingTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionMeetingTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusSectionMeeting>(
      where: where?.call(CampusSectionMeeting.t),
      orderBy: orderBy?.call(CampusSectionMeeting.t),
      orderByList: orderByList?.call(CampusSectionMeeting.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusSectionMeeting] matching the given query parameters.
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
  Future<CampusSectionMeeting?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSectionMeetingTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusSectionMeetingTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionMeetingTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusSectionMeeting>(
      where: where?.call(CampusSectionMeeting.t),
      orderBy: orderBy?.call(CampusSectionMeeting.t),
      orderByList: orderByList?.call(CampusSectionMeeting.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusSectionMeeting] by its [id] or null if no such row exists.
  Future<CampusSectionMeeting?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusSectionMeeting>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusSectionMeeting]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusSectionMeeting]s will have their `id` fields set.
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
  Future<List<CampusSectionMeeting>> insert(
    _is.DatabaseSession session,
    List<CampusSectionMeeting> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusSectionMeeting>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusSectionMeeting] and returns the inserted row.
  ///
  /// The returned [CampusSectionMeeting] will have its `id` field set.
  Future<CampusSectionMeeting> insertRow(
    _is.DatabaseSession session,
    CampusSectionMeeting row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusSectionMeeting>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusSectionMeeting]s in the list and returns the resulting rows.
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
  /// The returned [CampusSectionMeeting]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSectionMeeting>> upsert(
    _is.DatabaseSession session,
    List<CampusSectionMeeting> rows, {
    required _is.ColumnSelections<CampusSectionMeetingTable> conflictColumns,
    _is.ColumnSelections<CampusSectionMeetingTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSectionMeetingTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusSectionMeeting>(
      rows,
      conflictColumns: conflictColumns(CampusSectionMeeting.t),
      updateColumns: updateColumns?.call(CampusSectionMeeting.t),
      updateWhere: updateWhere?.call(CampusSectionMeeting.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusSectionMeeting] and returns the resulting row.
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
  /// The returned [CampusSectionMeeting] will have its `id` field set.
  Future<CampusSectionMeeting?> upsertRow(
    _is.DatabaseSession session,
    CampusSectionMeeting row, {
    required _is.ColumnSelections<CampusSectionMeetingTable> conflictColumns,
    _is.ColumnSelections<CampusSectionMeetingTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSectionMeetingTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusSectionMeeting>(
      row,
      conflictColumns: conflictColumns(CampusSectionMeeting.t),
      updateColumns: updateColumns?.call(CampusSectionMeeting.t),
      updateWhere: updateWhere?.call(CampusSectionMeeting.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSectionMeeting]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSectionMeeting>> update(
    _is.DatabaseSession session,
    List<CampusSectionMeeting> rows, {
    _is.ColumnSelections<CampusSectionMeetingTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusSectionMeeting>(
      rows,
      columns: columns?.call(CampusSectionMeeting.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusSectionMeeting]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusSectionMeeting> updateRow(
    _is.DatabaseSession session,
    CampusSectionMeeting row, {
    _is.ColumnSelections<CampusSectionMeetingTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusSectionMeeting>(
      row,
      columns: columns?.call(CampusSectionMeeting.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusSectionMeeting] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusSectionMeeting?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusSectionMeetingUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusSectionMeeting>(
      id,
      columnValues: columnValues(CampusSectionMeeting.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSectionMeeting]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSectionMeeting>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusSectionMeetingUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusSectionMeetingTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSectionMeetingTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionMeetingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusSectionMeeting>(
      columnValues: columnValues(CampusSectionMeeting.t.updateTable),
      where: where(CampusSectionMeeting.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSectionMeeting.t),
      orderByList: orderByList?.call(CampusSectionMeeting.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusSectionMeeting]s in the list and returns the deleted rows.
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
  Future<List<CampusSectionMeeting>> delete(
    _is.DatabaseSession session,
    List<CampusSectionMeeting> rows, {
    _is.OrderByBuilder<CampusSectionMeetingTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionMeetingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusSectionMeeting>(
      rows,
      orderBy: orderBy?.call(CampusSectionMeeting.t),
      orderByList: orderByList?.call(CampusSectionMeeting.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusSectionMeeting].
  Future<CampusSectionMeeting> deleteRow(
    _is.DatabaseSession session,
    CampusSectionMeeting row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusSectionMeeting>(
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
  Future<List<CampusSectionMeeting>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSectionMeetingTable> where,
    _is.OrderByBuilder<CampusSectionMeetingTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionMeetingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusSectionMeeting>(
      where: where(CampusSectionMeeting.t),
      orderBy: orderBy?.call(CampusSectionMeeting.t),
      orderByList: orderByList?.call(CampusSectionMeeting.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSectionMeetingTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusSectionMeeting>(
      where: where?.call(CampusSectionMeeting.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusSectionMeeting] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSectionMeetingTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusSectionMeeting>(
      where: where(CampusSectionMeeting.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
