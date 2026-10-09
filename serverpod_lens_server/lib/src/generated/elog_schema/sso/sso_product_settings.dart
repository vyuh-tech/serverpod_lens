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

abstract class SsoProductSettings
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoProductSettings._({
    this.id,
    required this.productId,
    this.displayName,
    this.logoUrl,
    this.supportEmail,
    this.language,
    this.timeZone,
    this.dateFormat,
    this.timeFormat,
    this.numberFormat,
    this.firstDayOfWeek,
    this.metadata,
  });

  factory SsoProductSettings({
    _is.UuidValue? id,
    required _is.UuidValue productId,
    String? displayName,
    String? logoUrl,
    String? supportEmail,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
    String? metadata,
  }) = _SsoProductSettingsImpl;

  factory SsoProductSettings.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoProductSettings(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      productId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['productId'],
      ),
      displayName: jsonSerialization['displayName'] as String?,
      logoUrl: jsonSerialization['logoUrl'] as String?,
      supportEmail: jsonSerialization['supportEmail'] as String?,
      language: jsonSerialization['language'] as String?,
      timeZone: jsonSerialization['timeZone'] as String?,
      dateFormat: jsonSerialization['dateFormat'] as String?,
      timeFormat: jsonSerialization['timeFormat'] as String?,
      numberFormat: jsonSerialization['numberFormat'] as String?,
      firstDayOfWeek: jsonSerialization['firstDayOfWeek'] as int?,
      metadata: jsonSerialization['metadata'] as String?,
    );
  }

  static final t = SsoProductSettingsTable();

  static const db = SsoProductSettingsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue productId;

  String? displayName;

  String? logoUrl;

  String? supportEmail;

  String? language;

  String? timeZone;

  String? dateFormat;

  String? timeFormat;

  String? numberFormat;

  int? firstDayOfWeek;

  String? metadata;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoProductSettings]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoProductSettings copyWith({
    _is.UuidValue? id,
    _is.UuidValue? productId,
    String? displayName,
    String? logoUrl,
    String? supportEmail,
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
      '__className__': 'SsoProductSettings',
      if (id != null) 'id': id?.toJson(),
      'productId': productId.toJson(),
      if (displayName != null) 'displayName': displayName,
      if (logoUrl != null) 'logoUrl': logoUrl,
      if (supportEmail != null) 'supportEmail': supportEmail,
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
      '__className__': 'SsoProductSettings',
      if (id != null) 'id': id?.toJson(),
      'productId': productId.toJson(),
      if (displayName != null) 'displayName': displayName,
      if (logoUrl != null) 'logoUrl': logoUrl,
      if (supportEmail != null) 'supportEmail': supportEmail,
      if (language != null) 'language': language,
      if (timeZone != null) 'timeZone': timeZone,
      if (dateFormat != null) 'dateFormat': dateFormat,
      if (timeFormat != null) 'timeFormat': timeFormat,
      if (numberFormat != null) 'numberFormat': numberFormat,
      if (firstDayOfWeek != null) 'firstDayOfWeek': firstDayOfWeek,
      if (metadata != null) 'metadata': metadata,
    };
  }

  static SsoProductSettingsInclude include() {
    return SsoProductSettingsInclude._();
  }

  static SsoProductSettingsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoProductSettingsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoProductSettingsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductSettingsTable>? orderByList,
    SsoProductSettingsInclude? include,
  }) {
    return SsoProductSettingsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoProductSettings.t),
      orderByList: orderByList?.call(SsoProductSettings.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoProductSettingsImpl extends SsoProductSettings {
  _SsoProductSettingsImpl({
    _is.UuidValue? id,
    required _is.UuidValue productId,
    String? displayName,
    String? logoUrl,
    String? supportEmail,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
    String? metadata,
  }) : super._(
         id: id,
         productId: productId,
         displayName: displayName,
         logoUrl: logoUrl,
         supportEmail: supportEmail,
         language: language,
         timeZone: timeZone,
         dateFormat: dateFormat,
         timeFormat: timeFormat,
         numberFormat: numberFormat,
         firstDayOfWeek: firstDayOfWeek,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [SsoProductSettings]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoProductSettings copyWith({
    Object? id = _Undefined,
    _is.UuidValue? productId,
    Object? displayName = _Undefined,
    Object? logoUrl = _Undefined,
    Object? supportEmail = _Undefined,
    Object? language = _Undefined,
    Object? timeZone = _Undefined,
    Object? dateFormat = _Undefined,
    Object? timeFormat = _Undefined,
    Object? numberFormat = _Undefined,
    Object? firstDayOfWeek = _Undefined,
    Object? metadata = _Undefined,
  }) {
    return SsoProductSettings(
      id: id is _is.UuidValue? ? id : this.id,
      productId: productId ?? this.productId,
      displayName: displayName is String? ? displayName : this.displayName,
      logoUrl: logoUrl is String? ? logoUrl : this.logoUrl,
      supportEmail: supportEmail is String? ? supportEmail : this.supportEmail,
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

class SsoProductSettingsUpdateTable
    extends _is.UpdateTable<SsoProductSettingsTable> {
  SsoProductSettingsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> productId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.productId,
    value,
  );

  _is.ColumnValue<String, String> displayName(String? value) => _is.ColumnValue(
    table.displayName,
    value,
  );

  _is.ColumnValue<String, String> logoUrl(String? value) => _is.ColumnValue(
    table.logoUrl,
    value,
  );

  _is.ColumnValue<String, String> supportEmail(String? value) =>
      _is.ColumnValue(
        table.supportEmail,
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

class SsoProductSettingsTable extends _is.Table<_is.UuidValue?> {
  SsoProductSettingsTable({super.tableRelation})
    : super(tableName: 'sso_product_settings') {
    updateTable = SsoProductSettingsUpdateTable(this);
    productId = _is.ColumnUuid(
      'productId',
      this,
    );
    displayName = _is.ColumnString(
      'displayName',
      this,
    );
    logoUrl = _is.ColumnString(
      'logoUrl',
      this,
    );
    supportEmail = _is.ColumnString(
      'supportEmail',
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

  late final SsoProductSettingsUpdateTable updateTable;

  late final _is.ColumnUuid productId;

  late final _is.ColumnString displayName;

  late final _is.ColumnString logoUrl;

  late final _is.ColumnString supportEmail;

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
    productId,
    displayName,
    logoUrl,
    supportEmail,
    language,
    timeZone,
    dateFormat,
    timeFormat,
    numberFormat,
    firstDayOfWeek,
    metadata,
  ];
}

class SsoProductSettingsInclude extends _is.IncludeObject {
  SsoProductSettingsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoProductSettings.t;
}

class SsoProductSettingsIncludeList extends _is.IncludeList {
  SsoProductSettingsIncludeList._({
    _is.WhereExpressionBuilder<SsoProductSettingsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoProductSettings.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoProductSettings.t;
}

class SsoProductSettingsRepository {
  const SsoProductSettingsRepository._();

  /// Returns a list of [SsoProductSettings]s matching the given query parameters.
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
  Future<List<SsoProductSettings>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoProductSettingsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoProductSettingsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductSettingsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoProductSettings>(
      where: where?.call(SsoProductSettings.t),
      orderBy: orderBy?.call(SsoProductSettings.t),
      orderByList: orderByList?.call(SsoProductSettings.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoProductSettings] matching the given query parameters.
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
  Future<SsoProductSettings?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoProductSettingsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoProductSettingsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductSettingsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoProductSettings>(
      where: where?.call(SsoProductSettings.t),
      orderBy: orderBy?.call(SsoProductSettings.t),
      orderByList: orderByList?.call(SsoProductSettings.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoProductSettings] by its [id] or null if no such row exists.
  Future<SsoProductSettings?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoProductSettings>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoProductSettings]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoProductSettings]s will have their `id` fields set.
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
  Future<List<SsoProductSettings>> insert(
    _is.DatabaseSession session,
    List<SsoProductSettings> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoProductSettings>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoProductSettings] and returns the inserted row.
  ///
  /// The returned [SsoProductSettings] will have its `id` field set.
  Future<SsoProductSettings> insertRow(
    _is.DatabaseSession session,
    SsoProductSettings row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoProductSettings>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoProductSettings]s in the list and returns the resulting rows.
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
  /// The returned [SsoProductSettings]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoProductSettings>> upsert(
    _is.DatabaseSession session,
    List<SsoProductSettings> rows, {
    required _is.ColumnSelections<SsoProductSettingsTable> conflictColumns,
    _is.ColumnSelections<SsoProductSettingsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoProductSettingsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoProductSettings>(
      rows,
      conflictColumns: conflictColumns(SsoProductSettings.t),
      updateColumns: updateColumns?.call(SsoProductSettings.t),
      updateWhere: updateWhere?.call(SsoProductSettings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoProductSettings] and returns the resulting row.
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
  /// The returned [SsoProductSettings] will have its `id` field set.
  Future<SsoProductSettings?> upsertRow(
    _is.DatabaseSession session,
    SsoProductSettings row, {
    required _is.ColumnSelections<SsoProductSettingsTable> conflictColumns,
    _is.ColumnSelections<SsoProductSettingsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoProductSettingsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoProductSettings>(
      row,
      conflictColumns: conflictColumns(SsoProductSettings.t),
      updateColumns: updateColumns?.call(SsoProductSettings.t),
      updateWhere: updateWhere?.call(SsoProductSettings.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoProductSettings]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoProductSettings>> update(
    _is.DatabaseSession session,
    List<SsoProductSettings> rows, {
    _is.ColumnSelections<SsoProductSettingsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoProductSettings>(
      rows,
      columns: columns?.call(SsoProductSettings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoProductSettings]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoProductSettings> updateRow(
    _is.DatabaseSession session,
    SsoProductSettings row, {
    _is.ColumnSelections<SsoProductSettingsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoProductSettings>(
      row,
      columns: columns?.call(SsoProductSettings.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoProductSettings] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoProductSettings?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoProductSettingsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoProductSettings>(
      id,
      columnValues: columnValues(SsoProductSettings.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoProductSettings]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoProductSettings>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoProductSettingsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoProductSettingsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoProductSettingsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductSettingsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoProductSettings>(
      columnValues: columnValues(SsoProductSettings.t.updateTable),
      where: where(SsoProductSettings.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoProductSettings.t),
      orderByList: orderByList?.call(SsoProductSettings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoProductSettings]s in the list and returns the deleted rows.
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
  Future<List<SsoProductSettings>> delete(
    _is.DatabaseSession session,
    List<SsoProductSettings> rows, {
    _is.OrderByBuilder<SsoProductSettingsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductSettingsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoProductSettings>(
      rows,
      orderBy: orderBy?.call(SsoProductSettings.t),
      orderByList: orderByList?.call(SsoProductSettings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoProductSettings].
  Future<SsoProductSettings> deleteRow(
    _is.DatabaseSession session,
    SsoProductSettings row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoProductSettings>(
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
  Future<List<SsoProductSettings>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoProductSettingsTable> where,
    _is.OrderByBuilder<SsoProductSettingsTable>? orderBy,
    _is.OrderByListBuilder<SsoProductSettingsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoProductSettings>(
      where: where(SsoProductSettings.t),
      orderBy: orderBy?.call(SsoProductSettings.t),
      orderByList: orderByList?.call(SsoProductSettings.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoProductSettingsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoProductSettings>(
      where: where?.call(SsoProductSettings.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoProductSettings] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoProductSettingsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoProductSettings>(
      where: where(SsoProductSettings.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
