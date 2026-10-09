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

abstract class ElogLogReportGenerations
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogLogReportGenerations._({
    this.id,
    required this.templateId,
    required this.templateName,
    required this.generatedBy,
    required this.generatedAt,
    required this.reportFormat,
    required this.recordCount,
    this.filters,
    this.ipAddress,
    this.userAgent,
  });

  factory ElogLogReportGenerations({
    _is.UuidValue? id,
    required _is.UuidValue templateId,
    required String templateName,
    required _is.UuidValue generatedBy,
    required DateTime generatedAt,
    required String reportFormat,
    required int recordCount,
    String? filters,
    String? ipAddress,
    String? userAgent,
  }) = _ElogLogReportGenerationsImpl;

  factory ElogLogReportGenerations.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogLogReportGenerations(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      templateId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['templateId'],
      ),
      templateName: jsonSerialization['templateName'] as String,
      generatedBy: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['generatedBy'],
      ),
      generatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['generatedAt'],
      ),
      reportFormat: jsonSerialization['reportFormat'] as String,
      recordCount: jsonSerialization['recordCount'] as int,
      filters: jsonSerialization['filters'] as String?,
      ipAddress: jsonSerialization['ipAddress'] as String?,
      userAgent: jsonSerialization['userAgent'] as String?,
    );
  }

  static final t = ElogLogReportGenerationsTable();

  static const db = ElogLogReportGenerationsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue templateId;

  String templateName;

  _is.UuidValue generatedBy;

  DateTime generatedAt;

  String reportFormat;

  int recordCount;

  String? filters;

  String? ipAddress;

  String? userAgent;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogLogReportGenerations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogLogReportGenerations copyWith({
    _is.UuidValue? id,
    _is.UuidValue? templateId,
    String? templateName,
    _is.UuidValue? generatedBy,
    DateTime? generatedAt,
    String? reportFormat,
    int? recordCount,
    String? filters,
    String? ipAddress,
    String? userAgent,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogLogReportGenerations',
      if (id != null) 'id': id?.toJson(),
      'templateId': templateId.toJson(),
      'templateName': templateName,
      'generatedBy': generatedBy.toJson(),
      'generatedAt': generatedAt.toJson(),
      'reportFormat': reportFormat,
      'recordCount': recordCount,
      if (filters != null) 'filters': filters,
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (userAgent != null) 'userAgent': userAgent,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogLogReportGenerations',
      if (id != null) 'id': id?.toJson(),
      'templateId': templateId.toJson(),
      'templateName': templateName,
      'generatedBy': generatedBy.toJson(),
      'generatedAt': generatedAt.toJson(),
      'reportFormat': reportFormat,
      'recordCount': recordCount,
      if (filters != null) 'filters': filters,
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (userAgent != null) 'userAgent': userAgent,
    };
  }

  static ElogLogReportGenerationsInclude include() {
    return ElogLogReportGenerationsInclude._();
  }

  static ElogLogReportGenerationsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogLogReportGenerationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogLogReportGenerationsTable>? orderBy,
    _is.OrderByListBuilder<ElogLogReportGenerationsTable>? orderByList,
    ElogLogReportGenerationsInclude? include,
  }) {
    return ElogLogReportGenerationsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogLogReportGenerations.t),
      orderByList: orderByList?.call(ElogLogReportGenerations.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogLogReportGenerationsImpl extends ElogLogReportGenerations {
  _ElogLogReportGenerationsImpl({
    _is.UuidValue? id,
    required _is.UuidValue templateId,
    required String templateName,
    required _is.UuidValue generatedBy,
    required DateTime generatedAt,
    required String reportFormat,
    required int recordCount,
    String? filters,
    String? ipAddress,
    String? userAgent,
  }) : super._(
         id: id,
         templateId: templateId,
         templateName: templateName,
         generatedBy: generatedBy,
         generatedAt: generatedAt,
         reportFormat: reportFormat,
         recordCount: recordCount,
         filters: filters,
         ipAddress: ipAddress,
         userAgent: userAgent,
       );

  /// Returns a shallow copy of this [ElogLogReportGenerations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogLogReportGenerations copyWith({
    Object? id = _Undefined,
    _is.UuidValue? templateId,
    String? templateName,
    _is.UuidValue? generatedBy,
    DateTime? generatedAt,
    String? reportFormat,
    int? recordCount,
    Object? filters = _Undefined,
    Object? ipAddress = _Undefined,
    Object? userAgent = _Undefined,
  }) {
    return ElogLogReportGenerations(
      id: id is _is.UuidValue? ? id : this.id,
      templateId: templateId ?? this.templateId,
      templateName: templateName ?? this.templateName,
      generatedBy: generatedBy ?? this.generatedBy,
      generatedAt: generatedAt ?? this.generatedAt,
      reportFormat: reportFormat ?? this.reportFormat,
      recordCount: recordCount ?? this.recordCount,
      filters: filters is String? ? filters : this.filters,
      ipAddress: ipAddress is String? ? ipAddress : this.ipAddress,
      userAgent: userAgent is String? ? userAgent : this.userAgent,
    );
  }
}

class ElogLogReportGenerationsUpdateTable
    extends _is.UpdateTable<ElogLogReportGenerationsTable> {
  ElogLogReportGenerationsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> templateId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.templateId,
    value,
  );

  _is.ColumnValue<String, String> templateName(String value) => _is.ColumnValue(
    table.templateName,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> generatedBy(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.generatedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> generatedAt(DateTime value) =>
      _is.ColumnValue(
        table.generatedAt,
        value,
      );

  _is.ColumnValue<String, String> reportFormat(String value) => _is.ColumnValue(
    table.reportFormat,
    value,
  );

  _is.ColumnValue<int, int> recordCount(int value) => _is.ColumnValue(
    table.recordCount,
    value,
  );

  _is.ColumnValue<String, String> filters(String? value) => _is.ColumnValue(
    table.filters,
    value,
  );

  _is.ColumnValue<String, String> ipAddress(String? value) => _is.ColumnValue(
    table.ipAddress,
    value,
  );

  _is.ColumnValue<String, String> userAgent(String? value) => _is.ColumnValue(
    table.userAgent,
    value,
  );
}

class ElogLogReportGenerationsTable extends _is.Table<_is.UuidValue?> {
  ElogLogReportGenerationsTable({super.tableRelation})
    : super(tableName: 'elog_log_report_generations') {
    updateTable = ElogLogReportGenerationsUpdateTable(this);
    templateId = _is.ColumnUuid(
      'templateId',
      this,
    );
    templateName = _is.ColumnString(
      'templateName',
      this,
    );
    generatedBy = _is.ColumnUuid(
      'generatedBy',
      this,
    );
    generatedAt = _is.ColumnDateTime(
      'generatedAt',
      this,
    );
    reportFormat = _is.ColumnString(
      'reportFormat',
      this,
    );
    recordCount = _is.ColumnInt(
      'recordCount',
      this,
    );
    filters = _is.ColumnString(
      'filters',
      this,
    );
    ipAddress = _is.ColumnString(
      'ipAddress',
      this,
    );
    userAgent = _is.ColumnString(
      'userAgent',
      this,
    );
  }

  late final ElogLogReportGenerationsUpdateTable updateTable;

  late final _is.ColumnUuid templateId;

  late final _is.ColumnString templateName;

  late final _is.ColumnUuid generatedBy;

  late final _is.ColumnDateTime generatedAt;

  late final _is.ColumnString reportFormat;

  late final _is.ColumnInt recordCount;

  late final _is.ColumnString filters;

  late final _is.ColumnString ipAddress;

  late final _is.ColumnString userAgent;

  @override
  List<_is.Column> get columns => [
    id,
    templateId,
    templateName,
    generatedBy,
    generatedAt,
    reportFormat,
    recordCount,
    filters,
    ipAddress,
    userAgent,
  ];
}

class ElogLogReportGenerationsInclude extends _is.IncludeObject {
  ElogLogReportGenerationsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogLogReportGenerations.t;
}

class ElogLogReportGenerationsIncludeList extends _is.IncludeList {
  ElogLogReportGenerationsIncludeList._({
    _is.WhereExpressionBuilder<ElogLogReportGenerationsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogLogReportGenerations.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogLogReportGenerations.t;
}

class ElogLogReportGenerationsRepository {
  const ElogLogReportGenerationsRepository._();

  /// Returns a list of [ElogLogReportGenerations]s matching the given query parameters.
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
  Future<List<ElogLogReportGenerations>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogLogReportGenerationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogLogReportGenerationsTable>? orderBy,
    _is.OrderByListBuilder<ElogLogReportGenerationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogLogReportGenerations>(
      where: where?.call(ElogLogReportGenerations.t),
      orderBy: orderBy?.call(ElogLogReportGenerations.t),
      orderByList: orderByList?.call(ElogLogReportGenerations.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogLogReportGenerations] matching the given query parameters.
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
  Future<ElogLogReportGenerations?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogLogReportGenerationsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogLogReportGenerationsTable>? orderBy,
    _is.OrderByListBuilder<ElogLogReportGenerationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogLogReportGenerations>(
      where: where?.call(ElogLogReportGenerations.t),
      orderBy: orderBy?.call(ElogLogReportGenerations.t),
      orderByList: orderByList?.call(ElogLogReportGenerations.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogLogReportGenerations] by its [id] or null if no such row exists.
  Future<ElogLogReportGenerations?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogLogReportGenerations>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogLogReportGenerations]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogLogReportGenerations]s will have their `id` fields set.
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
  Future<List<ElogLogReportGenerations>> insert(
    _is.DatabaseSession session,
    List<ElogLogReportGenerations> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogLogReportGenerations>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogLogReportGenerations] and returns the inserted row.
  ///
  /// The returned [ElogLogReportGenerations] will have its `id` field set.
  Future<ElogLogReportGenerations> insertRow(
    _is.DatabaseSession session,
    ElogLogReportGenerations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogLogReportGenerations>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogLogReportGenerations]s in the list and returns the resulting rows.
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
  /// The returned [ElogLogReportGenerations]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogLogReportGenerations>> upsert(
    _is.DatabaseSession session,
    List<ElogLogReportGenerations> rows, {
    required _is.ColumnSelections<ElogLogReportGenerationsTable>
    conflictColumns,
    _is.ColumnSelections<ElogLogReportGenerationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogLogReportGenerationsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogLogReportGenerations>(
      rows,
      conflictColumns: conflictColumns(ElogLogReportGenerations.t),
      updateColumns: updateColumns?.call(ElogLogReportGenerations.t),
      updateWhere: updateWhere?.call(ElogLogReportGenerations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogLogReportGenerations] and returns the resulting row.
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
  /// The returned [ElogLogReportGenerations] will have its `id` field set.
  Future<ElogLogReportGenerations?> upsertRow(
    _is.DatabaseSession session,
    ElogLogReportGenerations row, {
    required _is.ColumnSelections<ElogLogReportGenerationsTable>
    conflictColumns,
    _is.ColumnSelections<ElogLogReportGenerationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogLogReportGenerationsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogLogReportGenerations>(
      row,
      conflictColumns: conflictColumns(ElogLogReportGenerations.t),
      updateColumns: updateColumns?.call(ElogLogReportGenerations.t),
      updateWhere: updateWhere?.call(ElogLogReportGenerations.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogLogReportGenerations]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogLogReportGenerations>> update(
    _is.DatabaseSession session,
    List<ElogLogReportGenerations> rows, {
    _is.ColumnSelections<ElogLogReportGenerationsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogLogReportGenerations>(
      rows,
      columns: columns?.call(ElogLogReportGenerations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogLogReportGenerations]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogLogReportGenerations> updateRow(
    _is.DatabaseSession session,
    ElogLogReportGenerations row, {
    _is.ColumnSelections<ElogLogReportGenerationsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogLogReportGenerations>(
      row,
      columns: columns?.call(ElogLogReportGenerations.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogLogReportGenerations] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogLogReportGenerations?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogLogReportGenerationsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogLogReportGenerations>(
      id,
      columnValues: columnValues(ElogLogReportGenerations.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogLogReportGenerations]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogLogReportGenerations>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogLogReportGenerationsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogLogReportGenerationsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogLogReportGenerationsTable>? orderBy,
    _is.OrderByListBuilder<ElogLogReportGenerationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogLogReportGenerations>(
      columnValues: columnValues(ElogLogReportGenerations.t.updateTable),
      where: where(ElogLogReportGenerations.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogLogReportGenerations.t),
      orderByList: orderByList?.call(ElogLogReportGenerations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogLogReportGenerations]s in the list and returns the deleted rows.
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
  Future<List<ElogLogReportGenerations>> delete(
    _is.DatabaseSession session,
    List<ElogLogReportGenerations> rows, {
    _is.OrderByBuilder<ElogLogReportGenerationsTable>? orderBy,
    _is.OrderByListBuilder<ElogLogReportGenerationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogLogReportGenerations>(
      rows,
      orderBy: orderBy?.call(ElogLogReportGenerations.t),
      orderByList: orderByList?.call(ElogLogReportGenerations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogLogReportGenerations].
  Future<ElogLogReportGenerations> deleteRow(
    _is.DatabaseSession session,
    ElogLogReportGenerations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogLogReportGenerations>(
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
  Future<List<ElogLogReportGenerations>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogLogReportGenerationsTable> where,
    _is.OrderByBuilder<ElogLogReportGenerationsTable>? orderBy,
    _is.OrderByListBuilder<ElogLogReportGenerationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogLogReportGenerations>(
      where: where(ElogLogReportGenerations.t),
      orderBy: orderBy?.call(ElogLogReportGenerations.t),
      orderByList: orderByList?.call(ElogLogReportGenerations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogLogReportGenerationsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogLogReportGenerations>(
      where: where?.call(ElogLogReportGenerations.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogLogReportGenerations] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogLogReportGenerationsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogLogReportGenerations>(
      where: where(ElogLogReportGenerations.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
