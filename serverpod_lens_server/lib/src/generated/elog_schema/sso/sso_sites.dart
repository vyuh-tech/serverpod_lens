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

abstract class SsoSites
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoSites._({
    this.id,
    required this.parentSiteId,
    required this.name,
    required this.code,
    this.description,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.state,
    this.country,
    this.postalCode,
    this.language,
    this.timeZone,
    this.dateFormat,
    this.timeFormat,
    this.numberFormat,
    this.firstDayOfWeek,
    this.metadata,
  });

  factory SsoSites({
    _is.UuidValue? id,
    required _is.UuidValue parentSiteId,
    required String name,
    required String code,
    String? description,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
    String? metadata,
  }) = _SsoSitesImpl;

  factory SsoSites.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoSites(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      parentSiteId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['parentSiteId'],
      ),
      name: jsonSerialization['name'] as String,
      code: jsonSerialization['code'] as String,
      description: jsonSerialization['description'] as String?,
      addressLine1: jsonSerialization['addressLine1'] as String?,
      addressLine2: jsonSerialization['addressLine2'] as String?,
      city: jsonSerialization['city'] as String?,
      state: jsonSerialization['state'] as String?,
      country: jsonSerialization['country'] as String?,
      postalCode: jsonSerialization['postalCode'] as String?,
      language: jsonSerialization['language'] as String?,
      timeZone: jsonSerialization['timeZone'] as String?,
      dateFormat: jsonSerialization['dateFormat'] as String?,
      timeFormat: jsonSerialization['timeFormat'] as String?,
      numberFormat: jsonSerialization['numberFormat'] as String?,
      firstDayOfWeek: jsonSerialization['firstDayOfWeek'] as int?,
      metadata: jsonSerialization['metadata'] as String?,
    );
  }

  static final t = SsoSitesTable();

  static const db = SsoSitesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue parentSiteId;

  String name;

  String code;

  String? description;

  String? addressLine1;

  String? addressLine2;

  String? city;

  String? state;

  String? country;

  String? postalCode;

  String? language;

  String? timeZone;

  String? dateFormat;

  String? timeFormat;

  String? numberFormat;

  int? firstDayOfWeek;

  String? metadata;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoSites]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoSites copyWith({
    _is.UuidValue? id,
    _is.UuidValue? parentSiteId,
    String? name,
    String? code,
    String? description,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoSites',
      if (id != null) 'id': id?.toJson(),
      'parentSiteId': parentSiteId.toJson(),
      'name': name,
      'code': code,
      if (description != null) 'description': description,
      if (addressLine1 != null) 'addressLine1': addressLine1,
      if (addressLine2 != null) 'addressLine2': addressLine2,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (postalCode != null) 'postalCode': postalCode,
      if (language != null) 'language': language,
      if (timeZone != null) 'timeZone': timeZone,
      if (dateFormat != null) 'dateFormat': dateFormat,
      if (timeFormat != null) 'timeFormat': timeFormat,
      if (numberFormat != null) 'numberFormat': numberFormat,
      if (firstDayOfWeek != null) 'firstDayOfWeek': firstDayOfWeek,
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoSites',
      if (id != null) 'id': id?.toJson(),
      'parentSiteId': parentSiteId.toJson(),
      'name': name,
      'code': code,
      if (description != null) 'description': description,
      if (addressLine1 != null) 'addressLine1': addressLine1,
      if (addressLine2 != null) 'addressLine2': addressLine2,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (postalCode != null) 'postalCode': postalCode,
      if (language != null) 'language': language,
      if (timeZone != null) 'timeZone': timeZone,
      if (dateFormat != null) 'dateFormat': dateFormat,
      if (timeFormat != null) 'timeFormat': timeFormat,
      if (numberFormat != null) 'numberFormat': numberFormat,
      if (firstDayOfWeek != null) 'firstDayOfWeek': firstDayOfWeek,
      if (metadata != null) 'metadata': metadata,
    };
  }

  static SsoSitesInclude include() {
    return SsoSitesInclude._();
  }

  static SsoSitesIncludeList includeList({
    _is.WhereExpressionBuilder<SsoSitesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoSitesTable>? orderBy,
    _is.OrderByListBuilder<SsoSitesTable>? orderByList,
    SsoSitesInclude? include,
  }) {
    return SsoSitesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoSites.t),
      orderByList: orderByList?.call(SsoSites.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoSitesImpl extends SsoSites {
  _SsoSitesImpl({
    _is.UuidValue? id,
    required _is.UuidValue parentSiteId,
    required String name,
    required String code,
    String? description,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
    String? metadata,
  }) : super._(
         id: id,
         parentSiteId: parentSiteId,
         name: name,
         code: code,
         description: description,
         addressLine1: addressLine1,
         addressLine2: addressLine2,
         city: city,
         state: state,
         country: country,
         postalCode: postalCode,
         language: language,
         timeZone: timeZone,
         dateFormat: dateFormat,
         timeFormat: timeFormat,
         numberFormat: numberFormat,
         firstDayOfWeek: firstDayOfWeek,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [SsoSites]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoSites copyWith({
    Object? id = _Undefined,
    _is.UuidValue? parentSiteId,
    String? name,
    String? code,
    Object? description = _Undefined,
    Object? addressLine1 = _Undefined,
    Object? addressLine2 = _Undefined,
    Object? city = _Undefined,
    Object? state = _Undefined,
    Object? country = _Undefined,
    Object? postalCode = _Undefined,
    Object? language = _Undefined,
    Object? timeZone = _Undefined,
    Object? dateFormat = _Undefined,
    Object? timeFormat = _Undefined,
    Object? numberFormat = _Undefined,
    Object? firstDayOfWeek = _Undefined,
    Object? metadata = _Undefined,
  }) {
    return SsoSites(
      id: id is _is.UuidValue? ? id : this.id,
      parentSiteId: parentSiteId ?? this.parentSiteId,
      name: name ?? this.name,
      code: code ?? this.code,
      description: description is String? ? description : this.description,
      addressLine1: addressLine1 is String? ? addressLine1 : this.addressLine1,
      addressLine2: addressLine2 is String? ? addressLine2 : this.addressLine2,
      city: city is String? ? city : this.city,
      state: state is String? ? state : this.state,
      country: country is String? ? country : this.country,
      postalCode: postalCode is String? ? postalCode : this.postalCode,
      language: language is String? ? language : this.language,
      timeZone: timeZone is String? ? timeZone : this.timeZone,
      dateFormat: dateFormat is String? ? dateFormat : this.dateFormat,
      timeFormat: timeFormat is String? ? timeFormat : this.timeFormat,
      numberFormat: numberFormat is String? ? numberFormat : this.numberFormat,
      firstDayOfWeek: firstDayOfWeek is int?
          ? firstDayOfWeek
          : this.firstDayOfWeek,
      metadata: metadata is String? ? metadata : this.metadata,
    );
  }
}

class SsoSitesUpdateTable extends _is.UpdateTable<SsoSitesTable> {
  SsoSitesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> parentSiteId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.parentSiteId,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<String, String> addressLine1(String? value) =>
      _is.ColumnValue(
        table.addressLine1,
        value,
      );

  _is.ColumnValue<String, String> addressLine2(String? value) =>
      _is.ColumnValue(
        table.addressLine2,
        value,
      );

  _is.ColumnValue<String, String> city(String? value) => _is.ColumnValue(
    table.city,
    value,
  );

  _is.ColumnValue<String, String> state(String? value) => _is.ColumnValue(
    table.state,
    value,
  );

  _is.ColumnValue<String, String> country(String? value) => _is.ColumnValue(
    table.country,
    value,
  );

  _is.ColumnValue<String, String> postalCode(String? value) => _is.ColumnValue(
    table.postalCode,
    value,
  );

  _is.ColumnValue<String, String> language(String? value) => _is.ColumnValue(
    table.language,
    value,
  );

  _is.ColumnValue<String, String> timeZone(String? value) => _is.ColumnValue(
    table.timeZone,
    value,
  );

  _is.ColumnValue<String, String> dateFormat(String? value) => _is.ColumnValue(
    table.dateFormat,
    value,
  );

  _is.ColumnValue<String, String> timeFormat(String? value) => _is.ColumnValue(
    table.timeFormat,
    value,
  );

  _is.ColumnValue<String, String> numberFormat(String? value) =>
      _is.ColumnValue(
        table.numberFormat,
        value,
      );

  _is.ColumnValue<int, int> firstDayOfWeek(int? value) => _is.ColumnValue(
    table.firstDayOfWeek,
    value,
  );

  _is.ColumnValue<String, String> metadata(String? value) => _is.ColumnValue(
    table.metadata,
    value,
  );
}

class SsoSitesTable extends _is.Table<_is.UuidValue?> {
  SsoSitesTable({super.tableRelation}) : super(tableName: 'sso_sites') {
    updateTable = SsoSitesUpdateTable(this);
    parentSiteId = _is.ColumnUuid(
      'parentSiteId',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    addressLine1 = _is.ColumnString(
      'addressLine1',
      this,
    );
    addressLine2 = _is.ColumnString(
      'addressLine2',
      this,
    );
    city = _is.ColumnString(
      'city',
      this,
    );
    state = _is.ColumnString(
      'state',
      this,
    );
    country = _is.ColumnString(
      'country',
      this,
    );
    postalCode = _is.ColumnString(
      'postalCode',
      this,
    );
    language = _is.ColumnString(
      'language',
      this,
    );
    timeZone = _is.ColumnString(
      'timeZone',
      this,
    );
    dateFormat = _is.ColumnString(
      'dateFormat',
      this,
    );
    timeFormat = _is.ColumnString(
      'timeFormat',
      this,
    );
    numberFormat = _is.ColumnString(
      'numberFormat',
      this,
    );
    firstDayOfWeek = _is.ColumnInt(
      'firstDayOfWeek',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
      this,
    );
  }

  late final SsoSitesUpdateTable updateTable;

  late final _is.ColumnUuid parentSiteId;

  late final _is.ColumnString name;

  late final _is.ColumnString code;

  late final _is.ColumnString description;

  late final _is.ColumnString addressLine1;

  late final _is.ColumnString addressLine2;

  late final _is.ColumnString city;

  late final _is.ColumnString state;

  late final _is.ColumnString country;

  late final _is.ColumnString postalCode;

  late final _is.ColumnString language;

  late final _is.ColumnString timeZone;

  late final _is.ColumnString dateFormat;

  late final _is.ColumnString timeFormat;

  late final _is.ColumnString numberFormat;

  late final _is.ColumnInt firstDayOfWeek;

  late final _is.ColumnString metadata;

  @override
  List<_is.Column> get columns => [
    id,
    parentSiteId,
    name,
    code,
    description,
    addressLine1,
    addressLine2,
    city,
    state,
    country,
    postalCode,
    language,
    timeZone,
    dateFormat,
    timeFormat,
    numberFormat,
    firstDayOfWeek,
    metadata,
  ];
}

class SsoSitesInclude extends _is.IncludeObject {
  SsoSitesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoSites.t;
}

class SsoSitesIncludeList extends _is.IncludeList {
  SsoSitesIncludeList._({
    _is.WhereExpressionBuilder<SsoSitesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoSites.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoSites.t;
}

class SsoSitesRepository {
  const SsoSitesRepository._();

  /// Returns a list of [SsoSites]s matching the given query parameters.
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
  Future<List<SsoSites>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoSitesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoSitesTable>? orderBy,
    _is.OrderByListBuilder<SsoSitesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoSites>(
      where: where?.call(SsoSites.t),
      orderBy: orderBy?.call(SsoSites.t),
      orderByList: orderByList?.call(SsoSites.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoSites] matching the given query parameters.
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
  Future<SsoSites?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoSitesTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoSitesTable>? orderBy,
    _is.OrderByListBuilder<SsoSitesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoSites>(
      where: where?.call(SsoSites.t),
      orderBy: orderBy?.call(SsoSites.t),
      orderByList: orderByList?.call(SsoSites.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoSites] by its [id] or null if no such row exists.
  Future<SsoSites?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoSites>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoSites]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoSites]s will have their `id` fields set.
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
  Future<List<SsoSites>> insert(
    _is.DatabaseSession session,
    List<SsoSites> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoSites>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoSites] and returns the inserted row.
  ///
  /// The returned [SsoSites] will have its `id` field set.
  Future<SsoSites> insertRow(
    _is.DatabaseSession session,
    SsoSites row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoSites>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoSites]s in the list and returns the resulting rows.
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
  /// The returned [SsoSites]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoSites>> upsert(
    _is.DatabaseSession session,
    List<SsoSites> rows, {
    required _is.ColumnSelections<SsoSitesTable> conflictColumns,
    _is.ColumnSelections<SsoSitesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoSitesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoSites>(
      rows,
      conflictColumns: conflictColumns(SsoSites.t),
      updateColumns: updateColumns?.call(SsoSites.t),
      updateWhere: updateWhere?.call(SsoSites.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoSites] and returns the resulting row.
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
  /// The returned [SsoSites] will have its `id` field set.
  Future<SsoSites?> upsertRow(
    _is.DatabaseSession session,
    SsoSites row, {
    required _is.ColumnSelections<SsoSitesTable> conflictColumns,
    _is.ColumnSelections<SsoSitesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoSitesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoSites>(
      row,
      conflictColumns: conflictColumns(SsoSites.t),
      updateColumns: updateColumns?.call(SsoSites.t),
      updateWhere: updateWhere?.call(SsoSites.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoSites]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoSites>> update(
    _is.DatabaseSession session,
    List<SsoSites> rows, {
    _is.ColumnSelections<SsoSitesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoSites>(
      rows,
      columns: columns?.call(SsoSites.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoSites]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoSites> updateRow(
    _is.DatabaseSession session,
    SsoSites row, {
    _is.ColumnSelections<SsoSitesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoSites>(
      row,
      columns: columns?.call(SsoSites.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoSites] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoSites?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoSitesUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoSites>(
      id,
      columnValues: columnValues(SsoSites.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoSites]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoSites>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoSitesUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<SsoSitesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoSitesTable>? orderBy,
    _is.OrderByListBuilder<SsoSitesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoSites>(
      columnValues: columnValues(SsoSites.t.updateTable),
      where: where(SsoSites.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoSites.t),
      orderByList: orderByList?.call(SsoSites.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoSites]s in the list and returns the deleted rows.
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
  Future<List<SsoSites>> delete(
    _is.DatabaseSession session,
    List<SsoSites> rows, {
    _is.OrderByBuilder<SsoSitesTable>? orderBy,
    _is.OrderByListBuilder<SsoSitesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoSites>(
      rows,
      orderBy: orderBy?.call(SsoSites.t),
      orderByList: orderByList?.call(SsoSites.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoSites].
  Future<SsoSites> deleteRow(
    _is.DatabaseSession session,
    SsoSites row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoSites>(
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
  Future<List<SsoSites>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoSitesTable> where,
    _is.OrderByBuilder<SsoSitesTable>? orderBy,
    _is.OrderByListBuilder<SsoSitesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoSites>(
      where: where(SsoSites.t),
      orderBy: orderBy?.call(SsoSites.t),
      orderByList: orderByList?.call(SsoSites.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoSitesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoSites>(
      where: where?.call(SsoSites.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoSites] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoSitesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoSites>(
      where: where(SsoSites.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
