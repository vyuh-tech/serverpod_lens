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

abstract class ElogExternalIntegrations
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogExternalIntegrations._({
    this.id,
    required this.code,
    required this.name,
    required this.label,
    this.description,
    required this.isActive,
    required this.configuration,
    this.lastStatus,
    this.lastHttpStatus,
    this.lastError,
    this.lastRequestPayload,
    this.lastResponseBody,
    this.lastAttemptedAt,
    required this.updatedAt,
  });

  factory ElogExternalIntegrations({
    _is.UuidValue? id,
    required String code,
    required String name,
    required String label,
    String? description,
    required bool isActive,
    required String configuration,
    String? lastStatus,
    int? lastHttpStatus,
    String? lastError,
    String? lastRequestPayload,
    String? lastResponseBody,
    DateTime? lastAttemptedAt,
    required DateTime updatedAt,
  }) = _ElogExternalIntegrationsImpl;

  factory ElogExternalIntegrations.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogExternalIntegrations(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      label: jsonSerialization['label'] as String,
      description: jsonSerialization['description'] as String?,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      configuration: jsonSerialization['configuration'] as String,
      lastStatus: jsonSerialization['lastStatus'] as String?,
      lastHttpStatus: jsonSerialization['lastHttpStatus'] as int?,
      lastError: jsonSerialization['lastError'] as String?,
      lastRequestPayload: jsonSerialization['lastRequestPayload'] as String?,
      lastResponseBody: jsonSerialization['lastResponseBody'] as String?,
      lastAttemptedAt: jsonSerialization['lastAttemptedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastAttemptedAt'],
            ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = ElogExternalIntegrationsTable();

  static const db = ElogExternalIntegrationsRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String label;

  String? description;

  bool isActive;

  String configuration;

  String? lastStatus;

  int? lastHttpStatus;

  String? lastError;

  String? lastRequestPayload;

  String? lastResponseBody;

  DateTime? lastAttemptedAt;

  DateTime updatedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogExternalIntegrations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogExternalIntegrations copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? label,
    String? description,
    bool? isActive,
    String? configuration,
    String? lastStatus,
    int? lastHttpStatus,
    String? lastError,
    String? lastRequestPayload,
    String? lastResponseBody,
    DateTime? lastAttemptedAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogExternalIntegrations',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      'label': label,
      if (description != null) 'description': description,
      'isActive': isActive,
      'configuration': configuration,
      if (lastStatus != null) 'lastStatus': lastStatus,
      if (lastHttpStatus != null) 'lastHttpStatus': lastHttpStatus,
      if (lastError != null) 'lastError': lastError,
      if (lastRequestPayload != null) 'lastRequestPayload': lastRequestPayload,
      if (lastResponseBody != null) 'lastResponseBody': lastResponseBody,
      if (lastAttemptedAt != null) 'lastAttemptedAt': lastAttemptedAt?.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogExternalIntegrations',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      'label': label,
      if (description != null) 'description': description,
      'isActive': isActive,
      'configuration': configuration,
      if (lastStatus != null) 'lastStatus': lastStatus,
      if (lastHttpStatus != null) 'lastHttpStatus': lastHttpStatus,
      if (lastError != null) 'lastError': lastError,
      if (lastRequestPayload != null) 'lastRequestPayload': lastRequestPayload,
      if (lastResponseBody != null) 'lastResponseBody': lastResponseBody,
      if (lastAttemptedAt != null) 'lastAttemptedAt': lastAttemptedAt?.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static ElogExternalIntegrationsInclude include() {
    return ElogExternalIntegrationsInclude._();
  }

  static ElogExternalIntegrationsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogExternalIntegrationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogExternalIntegrationsTable>? orderBy,
    _is.OrderByListBuilder<ElogExternalIntegrationsTable>? orderByList,
    ElogExternalIntegrationsInclude? include,
  }) {
    return ElogExternalIntegrationsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogExternalIntegrations.t),
      orderByList: orderByList?.call(ElogExternalIntegrations.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogExternalIntegrationsImpl extends ElogExternalIntegrations {
  _ElogExternalIntegrationsImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    required String label,
    String? description,
    required bool isActive,
    required String configuration,
    String? lastStatus,
    int? lastHttpStatus,
    String? lastError,
    String? lastRequestPayload,
    String? lastResponseBody,
    DateTime? lastAttemptedAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         code: code,
         name: name,
         label: label,
         description: description,
         isActive: isActive,
         configuration: configuration,
         lastStatus: lastStatus,
         lastHttpStatus: lastHttpStatus,
         lastError: lastError,
         lastRequestPayload: lastRequestPayload,
         lastResponseBody: lastResponseBody,
         lastAttemptedAt: lastAttemptedAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [ElogExternalIntegrations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogExternalIntegrations copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    String? label,
    Object? description = _Undefined,
    bool? isActive,
    String? configuration,
    Object? lastStatus = _Undefined,
    Object? lastHttpStatus = _Undefined,
    Object? lastError = _Undefined,
    Object? lastRequestPayload = _Undefined,
    Object? lastResponseBody = _Undefined,
    Object? lastAttemptedAt = _Undefined,
    DateTime? updatedAt,
  }) {
    return ElogExternalIntegrations(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      label: label ?? this.label,
      description: description is String? ? description : this.description,
      isActive: isActive ?? this.isActive,
      configuration: configuration ?? this.configuration,
      lastStatus: lastStatus is String? ? lastStatus : this.lastStatus,
      lastHttpStatus: lastHttpStatus is int?
          ? lastHttpStatus
          : this.lastHttpStatus,
      lastError: lastError is String? ? lastError : this.lastError,
      lastRequestPayload: lastRequestPayload is String?
          ? lastRequestPayload
          : this.lastRequestPayload,
      lastResponseBody: lastResponseBody is String?
          ? lastResponseBody
          : this.lastResponseBody,
      lastAttemptedAt: lastAttemptedAt is DateTime?
          ? lastAttemptedAt
          : this.lastAttemptedAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class ElogExternalIntegrationsUpdateTable
    extends _is.UpdateTable<ElogExternalIntegrationsTable> {
  ElogExternalIntegrationsUpdateTable(super.table);

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> label(String value) => _is.ColumnValue(
    table.label,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<String, String> configuration(String value) =>
      _is.ColumnValue(
        table.configuration,
        value,
      );

  _is.ColumnValue<String, String> lastStatus(String? value) => _is.ColumnValue(
    table.lastStatus,
    value,
  );

  _is.ColumnValue<int, int> lastHttpStatus(int? value) => _is.ColumnValue(
    table.lastHttpStatus,
    value,
  );

  _is.ColumnValue<String, String> lastError(String? value) => _is.ColumnValue(
    table.lastError,
    value,
  );

  _is.ColumnValue<String, String> lastRequestPayload(String? value) =>
      _is.ColumnValue(
        table.lastRequestPayload,
        value,
      );

  _is.ColumnValue<String, String> lastResponseBody(String? value) =>
      _is.ColumnValue(
        table.lastResponseBody,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> lastAttemptedAt(DateTime? value) =>
      _is.ColumnValue(
        table.lastAttemptedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );
}

class ElogExternalIntegrationsTable extends _is.Table<_is.UuidValue?> {
  ElogExternalIntegrationsTable({super.tableRelation})
    : super(tableName: 'elog_external_integrations') {
    updateTable = ElogExternalIntegrationsUpdateTable(this);
    code = _is.ColumnString(
      'code',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    label = _is.ColumnString(
      'label',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
    configuration = _is.ColumnString(
      'configuration',
      this,
    );
    lastStatus = _is.ColumnString(
      'lastStatus',
      this,
    );
    lastHttpStatus = _is.ColumnInt(
      'lastHttpStatus',
      this,
    );
    lastError = _is.ColumnString(
      'lastError',
      this,
    );
    lastRequestPayload = _is.ColumnString(
      'lastRequestPayload',
      this,
    );
    lastResponseBody = _is.ColumnString(
      'lastResponseBody',
      this,
    );
    lastAttemptedAt = _is.ColumnDateTime(
      'lastAttemptedAt',
      this,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final ElogExternalIntegrationsUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString label;

  late final _is.ColumnString description;

  late final _is.ColumnBool isActive;

  late final _is.ColumnString configuration;

  late final _is.ColumnString lastStatus;

  late final _is.ColumnInt lastHttpStatus;

  late final _is.ColumnString lastError;

  late final _is.ColumnString lastRequestPayload;

  late final _is.ColumnString lastResponseBody;

  late final _is.ColumnDateTime lastAttemptedAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    label,
    description,
    isActive,
    configuration,
    lastStatus,
    lastHttpStatus,
    lastError,
    lastRequestPayload,
    lastResponseBody,
    lastAttemptedAt,
    updatedAt,
  ];
}

class ElogExternalIntegrationsInclude extends _is.IncludeObject {
  ElogExternalIntegrationsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogExternalIntegrations.t;
}

class ElogExternalIntegrationsIncludeList extends _is.IncludeList {
  ElogExternalIntegrationsIncludeList._({
    _is.WhereExpressionBuilder<ElogExternalIntegrationsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogExternalIntegrations.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogExternalIntegrations.t;
}

class ElogExternalIntegrationsRepository {
  const ElogExternalIntegrationsRepository._();

  /// Returns a list of [ElogExternalIntegrations]s matching the given query parameters.
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
  Future<List<ElogExternalIntegrations>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogExternalIntegrationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogExternalIntegrationsTable>? orderBy,
    _is.OrderByListBuilder<ElogExternalIntegrationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogExternalIntegrations>(
      where: where?.call(ElogExternalIntegrations.t),
      orderBy: orderBy?.call(ElogExternalIntegrations.t),
      orderByList: orderByList?.call(ElogExternalIntegrations.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogExternalIntegrations] matching the given query parameters.
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
  Future<ElogExternalIntegrations?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogExternalIntegrationsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogExternalIntegrationsTable>? orderBy,
    _is.OrderByListBuilder<ElogExternalIntegrationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogExternalIntegrations>(
      where: where?.call(ElogExternalIntegrations.t),
      orderBy: orderBy?.call(ElogExternalIntegrations.t),
      orderByList: orderByList?.call(ElogExternalIntegrations.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogExternalIntegrations] by its [id] or null if no such row exists.
  Future<ElogExternalIntegrations?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogExternalIntegrations>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogExternalIntegrations]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogExternalIntegrations]s will have their `id` fields set.
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
  Future<List<ElogExternalIntegrations>> insert(
    _is.DatabaseSession session,
    List<ElogExternalIntegrations> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogExternalIntegrations>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogExternalIntegrations] and returns the inserted row.
  ///
  /// The returned [ElogExternalIntegrations] will have its `id` field set.
  Future<ElogExternalIntegrations> insertRow(
    _is.DatabaseSession session,
    ElogExternalIntegrations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogExternalIntegrations>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogExternalIntegrations]s in the list and returns the resulting rows.
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
  /// The returned [ElogExternalIntegrations]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogExternalIntegrations>> upsert(
    _is.DatabaseSession session,
    List<ElogExternalIntegrations> rows, {
    required _is.ColumnSelections<ElogExternalIntegrationsTable>
    conflictColumns,
    _is.ColumnSelections<ElogExternalIntegrationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogExternalIntegrationsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogExternalIntegrations>(
      rows,
      conflictColumns: conflictColumns(ElogExternalIntegrations.t),
      updateColumns: updateColumns?.call(ElogExternalIntegrations.t),
      updateWhere: updateWhere?.call(ElogExternalIntegrations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogExternalIntegrations] and returns the resulting row.
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
  /// The returned [ElogExternalIntegrations] will have its `id` field set.
  Future<ElogExternalIntegrations?> upsertRow(
    _is.DatabaseSession session,
    ElogExternalIntegrations row, {
    required _is.ColumnSelections<ElogExternalIntegrationsTable>
    conflictColumns,
    _is.ColumnSelections<ElogExternalIntegrationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogExternalIntegrationsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogExternalIntegrations>(
      row,
      conflictColumns: conflictColumns(ElogExternalIntegrations.t),
      updateColumns: updateColumns?.call(ElogExternalIntegrations.t),
      updateWhere: updateWhere?.call(ElogExternalIntegrations.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogExternalIntegrations]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogExternalIntegrations>> update(
    _is.DatabaseSession session,
    List<ElogExternalIntegrations> rows, {
    _is.ColumnSelections<ElogExternalIntegrationsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogExternalIntegrations>(
      rows,
      columns: columns?.call(ElogExternalIntegrations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogExternalIntegrations]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogExternalIntegrations> updateRow(
    _is.DatabaseSession session,
    ElogExternalIntegrations row, {
    _is.ColumnSelections<ElogExternalIntegrationsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogExternalIntegrations>(
      row,
      columns: columns?.call(ElogExternalIntegrations.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogExternalIntegrations] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogExternalIntegrations?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogExternalIntegrationsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogExternalIntegrations>(
      id,
      columnValues: columnValues(ElogExternalIntegrations.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogExternalIntegrations]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogExternalIntegrations>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogExternalIntegrationsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogExternalIntegrationsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogExternalIntegrationsTable>? orderBy,
    _is.OrderByListBuilder<ElogExternalIntegrationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogExternalIntegrations>(
      columnValues: columnValues(ElogExternalIntegrations.t.updateTable),
      where: where(ElogExternalIntegrations.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogExternalIntegrations.t),
      orderByList: orderByList?.call(ElogExternalIntegrations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogExternalIntegrations]s in the list and returns the deleted rows.
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
  Future<List<ElogExternalIntegrations>> delete(
    _is.DatabaseSession session,
    List<ElogExternalIntegrations> rows, {
    _is.OrderByBuilder<ElogExternalIntegrationsTable>? orderBy,
    _is.OrderByListBuilder<ElogExternalIntegrationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogExternalIntegrations>(
      rows,
      orderBy: orderBy?.call(ElogExternalIntegrations.t),
      orderByList: orderByList?.call(ElogExternalIntegrations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogExternalIntegrations].
  Future<ElogExternalIntegrations> deleteRow(
    _is.DatabaseSession session,
    ElogExternalIntegrations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogExternalIntegrations>(
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
  Future<List<ElogExternalIntegrations>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogExternalIntegrationsTable> where,
    _is.OrderByBuilder<ElogExternalIntegrationsTable>? orderBy,
    _is.OrderByListBuilder<ElogExternalIntegrationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogExternalIntegrations>(
      where: where(ElogExternalIntegrations.t),
      orderBy: orderBy?.call(ElogExternalIntegrations.t),
      orderByList: orderByList?.call(ElogExternalIntegrations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogExternalIntegrationsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogExternalIntegrations>(
      where: where?.call(ElogExternalIntegrations.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogExternalIntegrations] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogExternalIntegrationsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogExternalIntegrations>(
      where: where(ElogExternalIntegrations.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
