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

abstract class ElogHolidayCalendars
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogHolidayCalendars._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.year,
    this.country,
    this.region,
    this.timezone,
    this.weekendDays,
    this.isActive,
  });

  factory ElogHolidayCalendars({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    int? year,
    String? country,
    String? region,
    String? timezone,
    List<int>? weekendDays,
    bool? isActive,
  }) = _ElogHolidayCalendarsImpl;

  factory ElogHolidayCalendars.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogHolidayCalendars(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      year: jsonSerialization['year'] as int?,
      country: jsonSerialization['country'] as String?,
      region: jsonSerialization['region'] as String?,
      timezone: jsonSerialization['timezone'] as String?,
      weekendDays: jsonSerialization['weekendDays'] == null
          ? null
          : _ioh8es0p.Protocol().deserialize<List<int>>(
              jsonSerialization['weekendDays'],
            ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogHolidayCalendarsTable();

  static const db = ElogHolidayCalendarsRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  int? year;

  String? country;

  String? region;

  String? timezone;

  List<int>? weekendDays;

  bool? isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogHolidayCalendars]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogHolidayCalendars copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    int? year,
    String? country,
    String? region,
    String? timezone,
    List<int>? weekendDays,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogHolidayCalendars',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (year != null) 'year': year,
      if (country != null) 'country': country,
      if (region != null) 'region': region,
      if (timezone != null) 'timezone': timezone,
      if (weekendDays != null) 'weekendDays': weekendDays?.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogHolidayCalendars',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (year != null) 'year': year,
      if (country != null) 'country': country,
      if (region != null) 'region': region,
      if (timezone != null) 'timezone': timezone,
      if (weekendDays != null) 'weekendDays': weekendDays?.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  static ElogHolidayCalendarsInclude include() {
    return ElogHolidayCalendarsInclude._();
  }

  static ElogHolidayCalendarsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogHolidayCalendarsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogHolidayCalendarsTable>? orderBy,
    _is.OrderByListBuilder<ElogHolidayCalendarsTable>? orderByList,
    ElogHolidayCalendarsInclude? include,
  }) {
    return ElogHolidayCalendarsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogHolidayCalendars.t),
      orderByList: orderByList?.call(ElogHolidayCalendars.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogHolidayCalendarsImpl extends ElogHolidayCalendars {
  _ElogHolidayCalendarsImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    int? year,
    String? country,
    String? region,
    String? timezone,
    List<int>? weekendDays,
    bool? isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         year: year,
         country: country,
         region: region,
         timezone: timezone,
         weekendDays: weekendDays,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogHolidayCalendars]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogHolidayCalendars copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? year = _Undefined,
    Object? country = _Undefined,
    Object? region = _Undefined,
    Object? timezone = _Undefined,
    Object? weekendDays = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return ElogHolidayCalendars(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      year: year is int? ? year : this.year,
      country: country is String? ? country : this.country,
      region: region is String? ? region : this.region,
      timezone: timezone is String? ? timezone : this.timezone,
      weekendDays: weekendDays is List<int>?
          ? weekendDays
          : this.weekendDays?.map((e0) => e0).toList(),
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}

class ElogHolidayCalendarsUpdateTable
    extends _is.UpdateTable<ElogHolidayCalendarsTable> {
  ElogHolidayCalendarsUpdateTable(super.table);

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

  _is.ColumnValue<int, int> year(int? value) => _is.ColumnValue(
    table.year,
    value,
  );

  _is.ColumnValue<String, String> country(String? value) => _is.ColumnValue(
    table.country,
    value,
  );

  _is.ColumnValue<String, String> region(String? value) => _is.ColumnValue(
    table.region,
    value,
  );

  _is.ColumnValue<String, String> timezone(String? value) => _is.ColumnValue(
    table.timezone,
    value,
  );

  _is.ColumnValue<List<int>, List<int>> weekendDays(List<int>? value) =>
      _is.ColumnValue(
        table.weekendDays,
        value,
      );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogHolidayCalendarsTable extends _is.Table<_is.UuidValue?> {
  ElogHolidayCalendarsTable({super.tableRelation})
    : super(tableName: 'elog_holiday_calendars') {
    updateTable = ElogHolidayCalendarsUpdateTable(this);
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
    year = _is.ColumnInt(
      'year',
      this,
    );
    country = _is.ColumnString(
      'country',
      this,
    );
    region = _is.ColumnString(
      'region',
      this,
    );
    timezone = _is.ColumnString(
      'timezone',
      this,
    );
    weekendDays = _is.ColumnSerializable<List<int>>(
      'weekendDays',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogHolidayCalendarsUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnInt year;

  late final _is.ColumnString country;

  late final _is.ColumnString region;

  late final _is.ColumnString timezone;

  late final _is.ColumnSerializable<List<int>> weekendDays;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    year,
    country,
    region,
    timezone,
    weekendDays,
    isActive,
  ];
}

class ElogHolidayCalendarsInclude extends _is.IncludeObject {
  ElogHolidayCalendarsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogHolidayCalendars.t;
}

class ElogHolidayCalendarsIncludeList extends _is.IncludeList {
  ElogHolidayCalendarsIncludeList._({
    _is.WhereExpressionBuilder<ElogHolidayCalendarsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogHolidayCalendars.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogHolidayCalendars.t;
}

class ElogHolidayCalendarsRepository {
  const ElogHolidayCalendarsRepository._();

  /// Returns a list of [ElogHolidayCalendars]s matching the given query parameters.
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
  Future<List<ElogHolidayCalendars>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogHolidayCalendarsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogHolidayCalendarsTable>? orderBy,
    _is.OrderByListBuilder<ElogHolidayCalendarsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogHolidayCalendars>(
      where: where?.call(ElogHolidayCalendars.t),
      orderBy: orderBy?.call(ElogHolidayCalendars.t),
      orderByList: orderByList?.call(ElogHolidayCalendars.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogHolidayCalendars] matching the given query parameters.
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
  Future<ElogHolidayCalendars?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogHolidayCalendarsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogHolidayCalendarsTable>? orderBy,
    _is.OrderByListBuilder<ElogHolidayCalendarsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogHolidayCalendars>(
      where: where?.call(ElogHolidayCalendars.t),
      orderBy: orderBy?.call(ElogHolidayCalendars.t),
      orderByList: orderByList?.call(ElogHolidayCalendars.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogHolidayCalendars] by its [id] or null if no such row exists.
  Future<ElogHolidayCalendars?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogHolidayCalendars>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogHolidayCalendars]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogHolidayCalendars]s will have their `id` fields set.
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
  Future<List<ElogHolidayCalendars>> insert(
    _is.DatabaseSession session,
    List<ElogHolidayCalendars> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogHolidayCalendars>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogHolidayCalendars] and returns the inserted row.
  ///
  /// The returned [ElogHolidayCalendars] will have its `id` field set.
  Future<ElogHolidayCalendars> insertRow(
    _is.DatabaseSession session,
    ElogHolidayCalendars row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogHolidayCalendars>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogHolidayCalendars]s in the list and returns the resulting rows.
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
  /// The returned [ElogHolidayCalendars]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogHolidayCalendars>> upsert(
    _is.DatabaseSession session,
    List<ElogHolidayCalendars> rows, {
    required _is.ColumnSelections<ElogHolidayCalendarsTable> conflictColumns,
    _is.ColumnSelections<ElogHolidayCalendarsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogHolidayCalendarsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogHolidayCalendars>(
      rows,
      conflictColumns: conflictColumns(ElogHolidayCalendars.t),
      updateColumns: updateColumns?.call(ElogHolidayCalendars.t),
      updateWhere: updateWhere?.call(ElogHolidayCalendars.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogHolidayCalendars] and returns the resulting row.
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
  /// The returned [ElogHolidayCalendars] will have its `id` field set.
  Future<ElogHolidayCalendars?> upsertRow(
    _is.DatabaseSession session,
    ElogHolidayCalendars row, {
    required _is.ColumnSelections<ElogHolidayCalendarsTable> conflictColumns,
    _is.ColumnSelections<ElogHolidayCalendarsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogHolidayCalendarsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogHolidayCalendars>(
      row,
      conflictColumns: conflictColumns(ElogHolidayCalendars.t),
      updateColumns: updateColumns?.call(ElogHolidayCalendars.t),
      updateWhere: updateWhere?.call(ElogHolidayCalendars.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogHolidayCalendars]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogHolidayCalendars>> update(
    _is.DatabaseSession session,
    List<ElogHolidayCalendars> rows, {
    _is.ColumnSelections<ElogHolidayCalendarsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogHolidayCalendars>(
      rows,
      columns: columns?.call(ElogHolidayCalendars.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogHolidayCalendars]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogHolidayCalendars> updateRow(
    _is.DatabaseSession session,
    ElogHolidayCalendars row, {
    _is.ColumnSelections<ElogHolidayCalendarsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogHolidayCalendars>(
      row,
      columns: columns?.call(ElogHolidayCalendars.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogHolidayCalendars] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogHolidayCalendars?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogHolidayCalendarsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogHolidayCalendars>(
      id,
      columnValues: columnValues(ElogHolidayCalendars.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogHolidayCalendars]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogHolidayCalendars>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogHolidayCalendarsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogHolidayCalendarsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogHolidayCalendarsTable>? orderBy,
    _is.OrderByListBuilder<ElogHolidayCalendarsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogHolidayCalendars>(
      columnValues: columnValues(ElogHolidayCalendars.t.updateTable),
      where: where(ElogHolidayCalendars.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogHolidayCalendars.t),
      orderByList: orderByList?.call(ElogHolidayCalendars.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogHolidayCalendars]s in the list and returns the deleted rows.
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
  Future<List<ElogHolidayCalendars>> delete(
    _is.DatabaseSession session,
    List<ElogHolidayCalendars> rows, {
    _is.OrderByBuilder<ElogHolidayCalendarsTable>? orderBy,
    _is.OrderByListBuilder<ElogHolidayCalendarsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogHolidayCalendars>(
      rows,
      orderBy: orderBy?.call(ElogHolidayCalendars.t),
      orderByList: orderByList?.call(ElogHolidayCalendars.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogHolidayCalendars].
  Future<ElogHolidayCalendars> deleteRow(
    _is.DatabaseSession session,
    ElogHolidayCalendars row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogHolidayCalendars>(
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
  Future<List<ElogHolidayCalendars>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogHolidayCalendarsTable> where,
    _is.OrderByBuilder<ElogHolidayCalendarsTable>? orderBy,
    _is.OrderByListBuilder<ElogHolidayCalendarsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogHolidayCalendars>(
      where: where(ElogHolidayCalendars.t),
      orderBy: orderBy?.call(ElogHolidayCalendars.t),
      orderByList: orderByList?.call(ElogHolidayCalendars.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogHolidayCalendarsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogHolidayCalendars>(
      where: where?.call(ElogHolidayCalendars.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogHolidayCalendars] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogHolidayCalendarsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogHolidayCalendars>(
      where: where(ElogHolidayCalendars.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
