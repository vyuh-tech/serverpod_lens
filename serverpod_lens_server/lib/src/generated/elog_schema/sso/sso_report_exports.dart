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

abstract class SsoReportExports
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoReportExports._({
    this.id,
    required this.title,
    required this.reportType,
    this.generatedBy,
    required this.generatedByName,
    required this.generatedAt,
    required this.recordCount,
    this.filterSummary,
    this.purpose,
    this.regulatoryReference,
    required this.pageSize,
    required this.orientation,
  });

  factory SsoReportExports({
    _is.UuidValue? id,
    required String title,
    required String reportType,
    _is.UuidValue? generatedBy,
    required String generatedByName,
    required DateTime generatedAt,
    required int recordCount,
    String? filterSummary,
    String? purpose,
    String? regulatoryReference,
    required String pageSize,
    required String orientation,
  }) = _SsoReportExportsImpl;

  factory SsoReportExports.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoReportExports(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      title: jsonSerialization['title'] as String,
      reportType: jsonSerialization['reportType'] as String,
      generatedBy: jsonSerialization['generatedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['generatedBy'],
            ),
      generatedByName: jsonSerialization['generatedByName'] as String,
      generatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['generatedAt'],
      ),
      recordCount: jsonSerialization['recordCount'] as int,
      filterSummary: jsonSerialization['filterSummary'] as String?,
      purpose: jsonSerialization['purpose'] as String?,
      regulatoryReference: jsonSerialization['regulatoryReference'] as String?,
      pageSize: jsonSerialization['pageSize'] as String,
      orientation: jsonSerialization['orientation'] as String,
    );
  }

  static final t = SsoReportExportsTable();

  static const db = SsoReportExportsRepository._();

  @override
  _is.UuidValue? id;

  String title;

  String reportType;

  _is.UuidValue? generatedBy;

  String generatedByName;

  DateTime generatedAt;

  int recordCount;

  String? filterSummary;

  String? purpose;

  String? regulatoryReference;

  String pageSize;

  String orientation;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoReportExports]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoReportExports copyWith({
    _is.UuidValue? id,
    String? title,
    String? reportType,
    _is.UuidValue? generatedBy,
    String? generatedByName,
    DateTime? generatedAt,
    int? recordCount,
    String? filterSummary,
    String? purpose,
    String? regulatoryReference,
    String? pageSize,
    String? orientation,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoReportExports',
      if (id != null) 'id': id?.toJson(),
      'title': title,
      'reportType': reportType,
      if (generatedBy != null) 'generatedBy': generatedBy?.toJson(),
      'generatedByName': generatedByName,
      'generatedAt': generatedAt.toJson(),
      'recordCount': recordCount,
      if (filterSummary != null) 'filterSummary': filterSummary,
      if (purpose != null) 'purpose': purpose,
      if (regulatoryReference != null)
        'regulatoryReference': regulatoryReference,
      'pageSize': pageSize,
      'orientation': orientation,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoReportExports',
      if (id != null) 'id': id?.toJson(),
      'title': title,
      'reportType': reportType,
      if (generatedBy != null) 'generatedBy': generatedBy?.toJson(),
      'generatedByName': generatedByName,
      'generatedAt': generatedAt.toJson(),
      'recordCount': recordCount,
      if (filterSummary != null) 'filterSummary': filterSummary,
      if (purpose != null) 'purpose': purpose,
      if (regulatoryReference != null)
        'regulatoryReference': regulatoryReference,
      'pageSize': pageSize,
      'orientation': orientation,
    };
  }

  static SsoReportExportsInclude include() {
    return SsoReportExportsInclude._();
  }

  static SsoReportExportsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoReportExportsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoReportExportsTable>? orderBy,
    _is.OrderByListBuilder<SsoReportExportsTable>? orderByList,
    SsoReportExportsInclude? include,
  }) {
    return SsoReportExportsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoReportExports.t),
      orderByList: orderByList?.call(SsoReportExports.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoReportExportsImpl extends SsoReportExports {
  _SsoReportExportsImpl({
    _is.UuidValue? id,
    required String title,
    required String reportType,
    _is.UuidValue? generatedBy,
    required String generatedByName,
    required DateTime generatedAt,
    required int recordCount,
    String? filterSummary,
    String? purpose,
    String? regulatoryReference,
    required String pageSize,
    required String orientation,
  }) : super._(
         id: id,
         title: title,
         reportType: reportType,
         generatedBy: generatedBy,
         generatedByName: generatedByName,
         generatedAt: generatedAt,
         recordCount: recordCount,
         filterSummary: filterSummary,
         purpose: purpose,
         regulatoryReference: regulatoryReference,
         pageSize: pageSize,
         orientation: orientation,
       );

  /// Returns a shallow copy of this [SsoReportExports]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoReportExports copyWith({
    Object? id = _Undefined,
    String? title,
    String? reportType,
    Object? generatedBy = _Undefined,
    String? generatedByName,
    DateTime? generatedAt,
    int? recordCount,
    Object? filterSummary = _Undefined,
    Object? purpose = _Undefined,
    Object? regulatoryReference = _Undefined,
    String? pageSize,
    String? orientation,
  }) {
    return SsoReportExports(
      id: id is _is.UuidValue? ? id : this.id,
      title: title ?? this.title,
      reportType: reportType ?? this.reportType,
      generatedBy: generatedBy is _is.UuidValue?
          ? generatedBy
          : this.generatedBy,
      generatedByName: generatedByName ?? this.generatedByName,
      generatedAt: generatedAt ?? this.generatedAt,
      recordCount: recordCount ?? this.recordCount,
      filterSummary: filterSummary is String?
          ? filterSummary
          : this.filterSummary,
      purpose: purpose is String? ? purpose : this.purpose,
      regulatoryReference: regulatoryReference is String?
          ? regulatoryReference
          : this.regulatoryReference,
      pageSize: pageSize ?? this.pageSize,
      orientation: orientation ?? this.orientation,
    );
  }
}

class SsoReportExportsUpdateTable
    extends _is.UpdateTable<SsoReportExportsTable> {
  SsoReportExportsUpdateTable(super.table);

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<String, String> reportType(String value) => _is.ColumnValue(
    table.reportType,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> generatedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.generatedBy,
    value,
  );

  _is.ColumnValue<String, String> generatedByName(String value) =>
      _is.ColumnValue(
        table.generatedByName,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> generatedAt(DateTime value) =>
      _is.ColumnValue(
        table.generatedAt,
        value,
      );

  _is.ColumnValue<int, int> recordCount(int value) => _is.ColumnValue(
    table.recordCount,
    value,
  );

  _is.ColumnValue<String, String> filterSummary(String? value) =>
      _is.ColumnValue(
        table.filterSummary,
        value,
      );

  _is.ColumnValue<String, String> purpose(String? value) => _is.ColumnValue(
    table.purpose,
    value,
  );

  _is.ColumnValue<String, String> regulatoryReference(String? value) =>
      _is.ColumnValue(
        table.regulatoryReference,
        value,
      );

  _is.ColumnValue<String, String> pageSize(String value) => _is.ColumnValue(
    table.pageSize,
    value,
  );

  _is.ColumnValue<String, String> orientation(String value) => _is.ColumnValue(
    table.orientation,
    value,
  );
}

class SsoReportExportsTable extends _is.Table<_is.UuidValue?> {
  SsoReportExportsTable({super.tableRelation})
    : super(tableName: 'sso_report_exports') {
    updateTable = SsoReportExportsUpdateTable(this);
    title = _is.ColumnString(
      'title',
      this,
    );
    reportType = _is.ColumnString(
      'reportType',
      this,
    );
    generatedBy = _is.ColumnUuid(
      'generatedBy',
      this,
    );
    generatedByName = _is.ColumnString(
      'generatedByName',
      this,
    );
    generatedAt = _is.ColumnDateTime(
      'generatedAt',
      this,
    );
    recordCount = _is.ColumnInt(
      'recordCount',
      this,
    );
    filterSummary = _is.ColumnString(
      'filterSummary',
      this,
    );
    purpose = _is.ColumnString(
      'purpose',
      this,
    );
    regulatoryReference = _is.ColumnString(
      'regulatoryReference',
      this,
    );
    pageSize = _is.ColumnString(
      'pageSize',
      this,
    );
    orientation = _is.ColumnString(
      'orientation',
      this,
    );
  }

  late final SsoReportExportsUpdateTable updateTable;

  late final _is.ColumnString title;

  late final _is.ColumnString reportType;

  late final _is.ColumnUuid generatedBy;

  late final _is.ColumnString generatedByName;

  late final _is.ColumnDateTime generatedAt;

  late final _is.ColumnInt recordCount;

  late final _is.ColumnString filterSummary;

  late final _is.ColumnString purpose;

  late final _is.ColumnString regulatoryReference;

  late final _is.ColumnString pageSize;

  late final _is.ColumnString orientation;

  @override
  List<_is.Column> get columns => [
    id,
    title,
    reportType,
    generatedBy,
    generatedByName,
    generatedAt,
    recordCount,
    filterSummary,
    purpose,
    regulatoryReference,
    pageSize,
    orientation,
  ];
}

class SsoReportExportsInclude extends _is.IncludeObject {
  SsoReportExportsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoReportExports.t;
}

class SsoReportExportsIncludeList extends _is.IncludeList {
  SsoReportExportsIncludeList._({
    _is.WhereExpressionBuilder<SsoReportExportsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoReportExports.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoReportExports.t;
}

class SsoReportExportsRepository {
  const SsoReportExportsRepository._();

  /// Returns a list of [SsoReportExports]s matching the given query parameters.
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
  Future<List<SsoReportExports>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoReportExportsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoReportExportsTable>? orderBy,
    _is.OrderByListBuilder<SsoReportExportsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoReportExports>(
      where: where?.call(SsoReportExports.t),
      orderBy: orderBy?.call(SsoReportExports.t),
      orderByList: orderByList?.call(SsoReportExports.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoReportExports] matching the given query parameters.
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
  Future<SsoReportExports?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoReportExportsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoReportExportsTable>? orderBy,
    _is.OrderByListBuilder<SsoReportExportsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoReportExports>(
      where: where?.call(SsoReportExports.t),
      orderBy: orderBy?.call(SsoReportExports.t),
      orderByList: orderByList?.call(SsoReportExports.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoReportExports] by its [id] or null if no such row exists.
  Future<SsoReportExports?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoReportExports>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoReportExports]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoReportExports]s will have their `id` fields set.
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
  Future<List<SsoReportExports>> insert(
    _is.DatabaseSession session,
    List<SsoReportExports> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoReportExports>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoReportExports] and returns the inserted row.
  ///
  /// The returned [SsoReportExports] will have its `id` field set.
  Future<SsoReportExports> insertRow(
    _is.DatabaseSession session,
    SsoReportExports row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoReportExports>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoReportExports]s in the list and returns the resulting rows.
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
  /// The returned [SsoReportExports]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoReportExports>> upsert(
    _is.DatabaseSession session,
    List<SsoReportExports> rows, {
    required _is.ColumnSelections<SsoReportExportsTable> conflictColumns,
    _is.ColumnSelections<SsoReportExportsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoReportExportsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoReportExports>(
      rows,
      conflictColumns: conflictColumns(SsoReportExports.t),
      updateColumns: updateColumns?.call(SsoReportExports.t),
      updateWhere: updateWhere?.call(SsoReportExports.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoReportExports] and returns the resulting row.
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
  /// The returned [SsoReportExports] will have its `id` field set.
  Future<SsoReportExports?> upsertRow(
    _is.DatabaseSession session,
    SsoReportExports row, {
    required _is.ColumnSelections<SsoReportExportsTable> conflictColumns,
    _is.ColumnSelections<SsoReportExportsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoReportExportsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoReportExports>(
      row,
      conflictColumns: conflictColumns(SsoReportExports.t),
      updateColumns: updateColumns?.call(SsoReportExports.t),
      updateWhere: updateWhere?.call(SsoReportExports.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoReportExports]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoReportExports>> update(
    _is.DatabaseSession session,
    List<SsoReportExports> rows, {
    _is.ColumnSelections<SsoReportExportsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoReportExports>(
      rows,
      columns: columns?.call(SsoReportExports.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoReportExports]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoReportExports> updateRow(
    _is.DatabaseSession session,
    SsoReportExports row, {
    _is.ColumnSelections<SsoReportExportsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoReportExports>(
      row,
      columns: columns?.call(SsoReportExports.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoReportExports] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoReportExports?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoReportExportsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoReportExports>(
      id,
      columnValues: columnValues(SsoReportExports.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoReportExports]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoReportExports>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoReportExportsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoReportExportsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoReportExportsTable>? orderBy,
    _is.OrderByListBuilder<SsoReportExportsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoReportExports>(
      columnValues: columnValues(SsoReportExports.t.updateTable),
      where: where(SsoReportExports.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoReportExports.t),
      orderByList: orderByList?.call(SsoReportExports.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoReportExports]s in the list and returns the deleted rows.
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
  Future<List<SsoReportExports>> delete(
    _is.DatabaseSession session,
    List<SsoReportExports> rows, {
    _is.OrderByBuilder<SsoReportExportsTable>? orderBy,
    _is.OrderByListBuilder<SsoReportExportsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoReportExports>(
      rows,
      orderBy: orderBy?.call(SsoReportExports.t),
      orderByList: orderByList?.call(SsoReportExports.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoReportExports].
  Future<SsoReportExports> deleteRow(
    _is.DatabaseSession session,
    SsoReportExports row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoReportExports>(
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
  Future<List<SsoReportExports>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoReportExportsTable> where,
    _is.OrderByBuilder<SsoReportExportsTable>? orderBy,
    _is.OrderByListBuilder<SsoReportExportsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoReportExports>(
      where: where(SsoReportExports.t),
      orderBy: orderBy?.call(SsoReportExports.t),
      orderByList: orderByList?.call(SsoReportExports.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoReportExportsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoReportExports>(
      where: where?.call(SsoReportExports.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoReportExports] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoReportExportsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoReportExports>(
      where: where(SsoReportExports.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
