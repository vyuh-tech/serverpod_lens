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

abstract class ElogHolidayEntries
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogHolidayEntries._({
    this.id,
    required this.holidayCalendarId,
    required this.entryDate,
    required this.name,
    this.description,
    this.category,
    this.isHalfDay,
    this.halfDayPeriod,
    this.isWorkingOverride,
  });

  factory ElogHolidayEntries({
    _is.UuidValue? id,
    required _is.UuidValue holidayCalendarId,
    required DateTime entryDate,
    required String name,
    String? description,
    String? category,
    bool? isHalfDay,
    String? halfDayPeriod,
    bool? isWorkingOverride,
  }) = _ElogHolidayEntriesImpl;

  factory ElogHolidayEntries.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogHolidayEntries(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      holidayCalendarId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['holidayCalendarId'],
      ),
      entryDate: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['entryDate'],
      ),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      category: jsonSerialization['category'] as String?,
      isHalfDay: jsonSerialization['isHalfDay'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isHalfDay']),
      halfDayPeriod: jsonSerialization['halfDayPeriod'] as String?,
      isWorkingOverride: jsonSerialization['isWorkingOverride'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(
              jsonSerialization['isWorkingOverride'],
            ),
    );
  }

  static final t = ElogHolidayEntriesTable();

  static const db = ElogHolidayEntriesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue holidayCalendarId;

  DateTime entryDate;

  String name;

  String? description;

  String? category;

  bool? isHalfDay;

  String? halfDayPeriod;

  bool? isWorkingOverride;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogHolidayEntries]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogHolidayEntries copyWith({
    _is.UuidValue? id,
    _is.UuidValue? holidayCalendarId,
    DateTime? entryDate,
    String? name,
    String? description,
    String? category,
    bool? isHalfDay,
    String? halfDayPeriod,
    bool? isWorkingOverride,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogHolidayEntries',
      if (id != null) 'id': id?.toJson(),
      'holidayCalendarId': holidayCalendarId.toJson(),
      'entryDate': entryDate.toJson(),
      'name': name,
      if (description != null) 'description': description,
      if (category != null) 'category': category,
      if (isHalfDay != null) 'isHalfDay': isHalfDay,
      if (halfDayPeriod != null) 'halfDayPeriod': halfDayPeriod,
      if (isWorkingOverride != null) 'isWorkingOverride': isWorkingOverride,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogHolidayEntries',
      if (id != null) 'id': id?.toJson(),
      'holidayCalendarId': holidayCalendarId.toJson(),
      'entryDate': entryDate.toJson(),
      'name': name,
      if (description != null) 'description': description,
      if (category != null) 'category': category,
      if (isHalfDay != null) 'isHalfDay': isHalfDay,
      if (halfDayPeriod != null) 'halfDayPeriod': halfDayPeriod,
      if (isWorkingOverride != null) 'isWorkingOverride': isWorkingOverride,
    };
  }

  static ElogHolidayEntriesInclude include() {
    return ElogHolidayEntriesInclude._();
  }

  static ElogHolidayEntriesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogHolidayEntriesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogHolidayEntriesTable>? orderBy,
    _is.OrderByListBuilder<ElogHolidayEntriesTable>? orderByList,
    ElogHolidayEntriesInclude? include,
  }) {
    return ElogHolidayEntriesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogHolidayEntries.t),
      orderByList: orderByList?.call(ElogHolidayEntries.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogHolidayEntriesImpl extends ElogHolidayEntries {
  _ElogHolidayEntriesImpl({
    _is.UuidValue? id,
    required _is.UuidValue holidayCalendarId,
    required DateTime entryDate,
    required String name,
    String? description,
    String? category,
    bool? isHalfDay,
    String? halfDayPeriod,
    bool? isWorkingOverride,
  }) : super._(
         id: id,
         holidayCalendarId: holidayCalendarId,
         entryDate: entryDate,
         name: name,
         description: description,
         category: category,
         isHalfDay: isHalfDay,
         halfDayPeriod: halfDayPeriod,
         isWorkingOverride: isWorkingOverride,
       );

  /// Returns a shallow copy of this [ElogHolidayEntries]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogHolidayEntries copyWith({
    Object? id = _Undefined,
    _is.UuidValue? holidayCalendarId,
    DateTime? entryDate,
    String? name,
    Object? description = _Undefined,
    Object? category = _Undefined,
    Object? isHalfDay = _Undefined,
    Object? halfDayPeriod = _Undefined,
    Object? isWorkingOverride = _Undefined,
  }) {
    return ElogHolidayEntries(
      id: id is _is.UuidValue? ? id : this.id,
      holidayCalendarId: holidayCalendarId ?? this.holidayCalendarId,
      entryDate: entryDate ?? this.entryDate,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      category: category is String? ? category : this.category,
      isHalfDay: isHalfDay is bool? ? isHalfDay : this.isHalfDay,
      halfDayPeriod: halfDayPeriod is String?
          ? halfDayPeriod
          : this.halfDayPeriod,
      isWorkingOverride: isWorkingOverride is bool?
          ? isWorkingOverride
          : this.isWorkingOverride,
    );
  }
}

class ElogHolidayEntriesUpdateTable
    extends _is.UpdateTable<ElogHolidayEntriesTable> {
  ElogHolidayEntriesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> holidayCalendarId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.holidayCalendarId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> entryDate(DateTime value) =>
      _is.ColumnValue(
        table.entryDate,
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

  _is.ColumnValue<String, String> category(String? value) => _is.ColumnValue(
    table.category,
    value,
  );

  _is.ColumnValue<bool, bool> isHalfDay(bool? value) => _is.ColumnValue(
    table.isHalfDay,
    value,
  );

  _is.ColumnValue<String, String> halfDayPeriod(String? value) =>
      _is.ColumnValue(
        table.halfDayPeriod,
        value,
      );

  _is.ColumnValue<bool, bool> isWorkingOverride(bool? value) => _is.ColumnValue(
    table.isWorkingOverride,
    value,
  );
}

class ElogHolidayEntriesTable extends _is.Table<_is.UuidValue?> {
  ElogHolidayEntriesTable({super.tableRelation})
    : super(tableName: 'elog_holiday_entries') {
    updateTable = ElogHolidayEntriesUpdateTable(this);
    holidayCalendarId = _is.ColumnUuid(
      'holidayCalendarId',
      this,
    );
    entryDate = _is.ColumnDateTime(
      'entryDate',
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
    category = _is.ColumnString(
      'category',
      this,
    );
    isHalfDay = _is.ColumnBool(
      'isHalfDay',
      this,
    );
    halfDayPeriod = _is.ColumnString(
      'halfDayPeriod',
      this,
    );
    isWorkingOverride = _is.ColumnBool(
      'isWorkingOverride',
      this,
    );
  }

  late final ElogHolidayEntriesUpdateTable updateTable;

  late final _is.ColumnUuid holidayCalendarId;

  late final _is.ColumnDateTime entryDate;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString category;

  late final _is.ColumnBool isHalfDay;

  late final _is.ColumnString halfDayPeriod;

  late final _is.ColumnBool isWorkingOverride;

  @override
  List<_is.Column> get columns => [
    id,
    holidayCalendarId,
    entryDate,
    name,
    description,
    category,
    isHalfDay,
    halfDayPeriod,
    isWorkingOverride,
  ];
}

class ElogHolidayEntriesInclude extends _is.IncludeObject {
  ElogHolidayEntriesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogHolidayEntries.t;
}

class ElogHolidayEntriesIncludeList extends _is.IncludeList {
  ElogHolidayEntriesIncludeList._({
    _is.WhereExpressionBuilder<ElogHolidayEntriesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogHolidayEntries.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogHolidayEntries.t;
}

class ElogHolidayEntriesRepository {
  const ElogHolidayEntriesRepository._();

  /// Returns a list of [ElogHolidayEntries]s matching the given query parameters.
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
  Future<List<ElogHolidayEntries>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogHolidayEntriesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogHolidayEntriesTable>? orderBy,
    _is.OrderByListBuilder<ElogHolidayEntriesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogHolidayEntries>(
      where: where?.call(ElogHolidayEntries.t),
      orderBy: orderBy?.call(ElogHolidayEntries.t),
      orderByList: orderByList?.call(ElogHolidayEntries.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogHolidayEntries] matching the given query parameters.
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
  Future<ElogHolidayEntries?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogHolidayEntriesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogHolidayEntriesTable>? orderBy,
    _is.OrderByListBuilder<ElogHolidayEntriesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogHolidayEntries>(
      where: where?.call(ElogHolidayEntries.t),
      orderBy: orderBy?.call(ElogHolidayEntries.t),
      orderByList: orderByList?.call(ElogHolidayEntries.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogHolidayEntries] by its [id] or null if no such row exists.
  Future<ElogHolidayEntries?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogHolidayEntries>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogHolidayEntries]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogHolidayEntries]s will have their `id` fields set.
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
  Future<List<ElogHolidayEntries>> insert(
    _is.DatabaseSession session,
    List<ElogHolidayEntries> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogHolidayEntries>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogHolidayEntries] and returns the inserted row.
  ///
  /// The returned [ElogHolidayEntries] will have its `id` field set.
  Future<ElogHolidayEntries> insertRow(
    _is.DatabaseSession session,
    ElogHolidayEntries row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogHolidayEntries>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogHolidayEntries]s in the list and returns the resulting rows.
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
  /// The returned [ElogHolidayEntries]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogHolidayEntries>> upsert(
    _is.DatabaseSession session,
    List<ElogHolidayEntries> rows, {
    required _is.ColumnSelections<ElogHolidayEntriesTable> conflictColumns,
    _is.ColumnSelections<ElogHolidayEntriesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogHolidayEntriesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogHolidayEntries>(
      rows,
      conflictColumns: conflictColumns(ElogHolidayEntries.t),
      updateColumns: updateColumns?.call(ElogHolidayEntries.t),
      updateWhere: updateWhere?.call(ElogHolidayEntries.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogHolidayEntries] and returns the resulting row.
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
  /// The returned [ElogHolidayEntries] will have its `id` field set.
  Future<ElogHolidayEntries?> upsertRow(
    _is.DatabaseSession session,
    ElogHolidayEntries row, {
    required _is.ColumnSelections<ElogHolidayEntriesTable> conflictColumns,
    _is.ColumnSelections<ElogHolidayEntriesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogHolidayEntriesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogHolidayEntries>(
      row,
      conflictColumns: conflictColumns(ElogHolidayEntries.t),
      updateColumns: updateColumns?.call(ElogHolidayEntries.t),
      updateWhere: updateWhere?.call(ElogHolidayEntries.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogHolidayEntries]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogHolidayEntries>> update(
    _is.DatabaseSession session,
    List<ElogHolidayEntries> rows, {
    _is.ColumnSelections<ElogHolidayEntriesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogHolidayEntries>(
      rows,
      columns: columns?.call(ElogHolidayEntries.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogHolidayEntries]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogHolidayEntries> updateRow(
    _is.DatabaseSession session,
    ElogHolidayEntries row, {
    _is.ColumnSelections<ElogHolidayEntriesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogHolidayEntries>(
      row,
      columns: columns?.call(ElogHolidayEntries.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogHolidayEntries] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogHolidayEntries?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogHolidayEntriesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogHolidayEntries>(
      id,
      columnValues: columnValues(ElogHolidayEntries.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogHolidayEntries]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogHolidayEntries>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogHolidayEntriesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogHolidayEntriesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogHolidayEntriesTable>? orderBy,
    _is.OrderByListBuilder<ElogHolidayEntriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogHolidayEntries>(
      columnValues: columnValues(ElogHolidayEntries.t.updateTable),
      where: where(ElogHolidayEntries.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogHolidayEntries.t),
      orderByList: orderByList?.call(ElogHolidayEntries.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogHolidayEntries]s in the list and returns the deleted rows.
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
  Future<List<ElogHolidayEntries>> delete(
    _is.DatabaseSession session,
    List<ElogHolidayEntries> rows, {
    _is.OrderByBuilder<ElogHolidayEntriesTable>? orderBy,
    _is.OrderByListBuilder<ElogHolidayEntriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogHolidayEntries>(
      rows,
      orderBy: orderBy?.call(ElogHolidayEntries.t),
      orderByList: orderByList?.call(ElogHolidayEntries.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogHolidayEntries].
  Future<ElogHolidayEntries> deleteRow(
    _is.DatabaseSession session,
    ElogHolidayEntries row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogHolidayEntries>(
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
  Future<List<ElogHolidayEntries>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogHolidayEntriesTable> where,
    _is.OrderByBuilder<ElogHolidayEntriesTable>? orderBy,
    _is.OrderByListBuilder<ElogHolidayEntriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogHolidayEntries>(
      where: where(ElogHolidayEntries.t),
      orderBy: orderBy?.call(ElogHolidayEntries.t),
      orderByList: orderByList?.call(ElogHolidayEntries.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogHolidayEntriesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogHolidayEntries>(
      where: where?.call(ElogHolidayEntries.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogHolidayEntries] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogHolidayEntriesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogHolidayEntries>(
      where: where(ElogHolidayEntries.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
