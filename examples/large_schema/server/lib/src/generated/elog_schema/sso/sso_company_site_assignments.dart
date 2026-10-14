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

abstract class SsoCompanySiteAssignments
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoCompanySiteAssignments._({
    this.id,
    required this.companyId,
    required this.siteId,
    required this.effectiveFrom,
    this.effectiveTo,
    required this.metadata,
  });

  factory SsoCompanySiteAssignments({
    _is.UuidValue? id,
    required _is.UuidValue companyId,
    required _is.UuidValue siteId,
    required DateTime effectiveFrom,
    DateTime? effectiveTo,
    required String metadata,
  }) = _SsoCompanySiteAssignmentsImpl;

  factory SsoCompanySiteAssignments.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return SsoCompanySiteAssignments(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      companyId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['companyId'],
      ),
      siteId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['siteId']),
      effectiveFrom: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['effectiveFrom'],
      ),
      effectiveTo: jsonSerialization['effectiveTo'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['effectiveTo'],
            ),
      metadata: jsonSerialization['metadata'] as String,
    );
  }

  static final t = SsoCompanySiteAssignmentsTable();

  static const db = SsoCompanySiteAssignmentsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue companyId;

  _is.UuidValue siteId;

  DateTime effectiveFrom;

  DateTime? effectiveTo;

  String metadata;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoCompanySiteAssignments]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoCompanySiteAssignments copyWith({
    _is.UuidValue? id,
    _is.UuidValue? companyId,
    _is.UuidValue? siteId,
    DateTime? effectiveFrom,
    DateTime? effectiveTo,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoCompanySiteAssignments',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'siteId': siteId.toJson(),
      'effectiveFrom': effectiveFrom.toJson(),
      if (effectiveTo != null) 'effectiveTo': effectiveTo?.toJson(),
      'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoCompanySiteAssignments',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'siteId': siteId.toJson(),
      'effectiveFrom': effectiveFrom.toJson(),
      if (effectiveTo != null) 'effectiveTo': effectiveTo?.toJson(),
      'metadata': metadata,
    };
  }

  static SsoCompanySiteAssignmentsInclude include() {
    return SsoCompanySiteAssignmentsInclude._();
  }

  static SsoCompanySiteAssignmentsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoCompanySiteAssignmentsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoCompanySiteAssignmentsTable>? orderBy,
    _is.OrderByListBuilder<SsoCompanySiteAssignmentsTable>? orderByList,
    SsoCompanySiteAssignmentsInclude? include,
  }) {
    return SsoCompanySiteAssignmentsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoCompanySiteAssignments.t),
      orderByList: orderByList?.call(SsoCompanySiteAssignments.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoCompanySiteAssignmentsImpl extends SsoCompanySiteAssignments {
  _SsoCompanySiteAssignmentsImpl({
    _is.UuidValue? id,
    required _is.UuidValue companyId,
    required _is.UuidValue siteId,
    required DateTime effectiveFrom,
    DateTime? effectiveTo,
    required String metadata,
  }) : super._(
         id: id,
         companyId: companyId,
         siteId: siteId,
         effectiveFrom: effectiveFrom,
         effectiveTo: effectiveTo,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [SsoCompanySiteAssignments]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoCompanySiteAssignments copyWith({
    Object? id = _Undefined,
    _is.UuidValue? companyId,
    _is.UuidValue? siteId,
    DateTime? effectiveFrom,
    Object? effectiveTo = _Undefined,
    String? metadata,
  }) {
    return SsoCompanySiteAssignments(
      id: id is _is.UuidValue? ? id : this.id,
      companyId: companyId ?? this.companyId,
      siteId: siteId ?? this.siteId,
      effectiveFrom: effectiveFrom ?? this.effectiveFrom,
      effectiveTo: effectiveTo is DateTime? ? effectiveTo : this.effectiveTo,
      metadata: metadata ?? this.metadata,
    );
  }
}

class SsoCompanySiteAssignmentsUpdateTable
    extends _is.UpdateTable<SsoCompanySiteAssignmentsTable> {
  SsoCompanySiteAssignmentsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.companyId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> siteId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.siteId,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> effectiveFrom(DateTime value) =>
      _is.ColumnValue(
        table.effectiveFrom,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> effectiveTo(DateTime? value) =>
      _is.ColumnValue(
        table.effectiveTo,
        value,
      );

  _is.ColumnValue<String, String> metadata(String value) => _is.ColumnValue(
    table.metadata,
    value,
  );
}

class SsoCompanySiteAssignmentsTable extends _is.Table<_is.UuidValue?> {
  SsoCompanySiteAssignmentsTable({super.tableRelation})
    : super(tableName: 'sso_company_site_assignments') {
    updateTable = SsoCompanySiteAssignmentsUpdateTable(this);
    companyId = _is.ColumnUuid(
      'companyId',
      this,
    );
    siteId = _is.ColumnUuid(
      'siteId',
      this,
    );
    effectiveFrom = _is.ColumnDateTime(
      'effectiveFrom',
      this,
    );
    effectiveTo = _is.ColumnDateTime(
      'effectiveTo',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
      this,
    );
  }

  late final SsoCompanySiteAssignmentsUpdateTable updateTable;

  late final _is.ColumnUuid companyId;

  late final _is.ColumnUuid siteId;

  late final _is.ColumnDateTime effectiveFrom;

  late final _is.ColumnDateTime effectiveTo;

  late final _is.ColumnString metadata;

  @override
  List<_is.Column> get columns => [
    id,
    companyId,
    siteId,
    effectiveFrom,
    effectiveTo,
    metadata,
  ];
}

class SsoCompanySiteAssignmentsInclude extends _is.IncludeObject {
  SsoCompanySiteAssignmentsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoCompanySiteAssignments.t;
}

class SsoCompanySiteAssignmentsIncludeList extends _is.IncludeList {
  SsoCompanySiteAssignmentsIncludeList._({
    _is.WhereExpressionBuilder<SsoCompanySiteAssignmentsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoCompanySiteAssignments.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoCompanySiteAssignments.t;
}

class SsoCompanySiteAssignmentsRepository {
  const SsoCompanySiteAssignmentsRepository._();

  /// Returns a list of [SsoCompanySiteAssignments]s matching the given query parameters.
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
  Future<List<SsoCompanySiteAssignments>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoCompanySiteAssignmentsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoCompanySiteAssignmentsTable>? orderBy,
    _is.OrderByListBuilder<SsoCompanySiteAssignmentsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoCompanySiteAssignments>(
      where: where?.call(SsoCompanySiteAssignments.t),
      orderBy: orderBy?.call(SsoCompanySiteAssignments.t),
      orderByList: orderByList?.call(SsoCompanySiteAssignments.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoCompanySiteAssignments] matching the given query parameters.
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
  Future<SsoCompanySiteAssignments?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoCompanySiteAssignmentsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoCompanySiteAssignmentsTable>? orderBy,
    _is.OrderByListBuilder<SsoCompanySiteAssignmentsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoCompanySiteAssignments>(
      where: where?.call(SsoCompanySiteAssignments.t),
      orderBy: orderBy?.call(SsoCompanySiteAssignments.t),
      orderByList: orderByList?.call(SsoCompanySiteAssignments.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoCompanySiteAssignments] by its [id] or null if no such row exists.
  Future<SsoCompanySiteAssignments?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoCompanySiteAssignments>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoCompanySiteAssignments]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoCompanySiteAssignments]s will have their `id` fields set.
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
  Future<List<SsoCompanySiteAssignments>> insert(
    _is.DatabaseSession session,
    List<SsoCompanySiteAssignments> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoCompanySiteAssignments>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoCompanySiteAssignments] and returns the inserted row.
  ///
  /// The returned [SsoCompanySiteAssignments] will have its `id` field set.
  Future<SsoCompanySiteAssignments> insertRow(
    _is.DatabaseSession session,
    SsoCompanySiteAssignments row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoCompanySiteAssignments>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoCompanySiteAssignments]s in the list and returns the resulting rows.
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
  /// The returned [SsoCompanySiteAssignments]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoCompanySiteAssignments>> upsert(
    _is.DatabaseSession session,
    List<SsoCompanySiteAssignments> rows, {
    required _is.ColumnSelections<SsoCompanySiteAssignmentsTable>
    conflictColumns,
    _is.ColumnSelections<SsoCompanySiteAssignmentsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoCompanySiteAssignmentsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoCompanySiteAssignments>(
      rows,
      conflictColumns: conflictColumns(SsoCompanySiteAssignments.t),
      updateColumns: updateColumns?.call(SsoCompanySiteAssignments.t),
      updateWhere: updateWhere?.call(SsoCompanySiteAssignments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoCompanySiteAssignments] and returns the resulting row.
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
  /// The returned [SsoCompanySiteAssignments] will have its `id` field set.
  Future<SsoCompanySiteAssignments?> upsertRow(
    _is.DatabaseSession session,
    SsoCompanySiteAssignments row, {
    required _is.ColumnSelections<SsoCompanySiteAssignmentsTable>
    conflictColumns,
    _is.ColumnSelections<SsoCompanySiteAssignmentsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoCompanySiteAssignmentsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoCompanySiteAssignments>(
      row,
      conflictColumns: conflictColumns(SsoCompanySiteAssignments.t),
      updateColumns: updateColumns?.call(SsoCompanySiteAssignments.t),
      updateWhere: updateWhere?.call(SsoCompanySiteAssignments.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoCompanySiteAssignments]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoCompanySiteAssignments>> update(
    _is.DatabaseSession session,
    List<SsoCompanySiteAssignments> rows, {
    _is.ColumnSelections<SsoCompanySiteAssignmentsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoCompanySiteAssignments>(
      rows,
      columns: columns?.call(SsoCompanySiteAssignments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoCompanySiteAssignments]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoCompanySiteAssignments> updateRow(
    _is.DatabaseSession session,
    SsoCompanySiteAssignments row, {
    _is.ColumnSelections<SsoCompanySiteAssignmentsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoCompanySiteAssignments>(
      row,
      columns: columns?.call(SsoCompanySiteAssignments.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoCompanySiteAssignments] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoCompanySiteAssignments?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoCompanySiteAssignmentsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoCompanySiteAssignments>(
      id,
      columnValues: columnValues(SsoCompanySiteAssignments.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoCompanySiteAssignments]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoCompanySiteAssignments>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoCompanySiteAssignmentsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoCompanySiteAssignmentsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoCompanySiteAssignmentsTable>? orderBy,
    _is.OrderByListBuilder<SsoCompanySiteAssignmentsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoCompanySiteAssignments>(
      columnValues: columnValues(SsoCompanySiteAssignments.t.updateTable),
      where: where(SsoCompanySiteAssignments.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoCompanySiteAssignments.t),
      orderByList: orderByList?.call(SsoCompanySiteAssignments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoCompanySiteAssignments]s in the list and returns the deleted rows.
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
  Future<List<SsoCompanySiteAssignments>> delete(
    _is.DatabaseSession session,
    List<SsoCompanySiteAssignments> rows, {
    _is.OrderByBuilder<SsoCompanySiteAssignmentsTable>? orderBy,
    _is.OrderByListBuilder<SsoCompanySiteAssignmentsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoCompanySiteAssignments>(
      rows,
      orderBy: orderBy?.call(SsoCompanySiteAssignments.t),
      orderByList: orderByList?.call(SsoCompanySiteAssignments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoCompanySiteAssignments].
  Future<SsoCompanySiteAssignments> deleteRow(
    _is.DatabaseSession session,
    SsoCompanySiteAssignments row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoCompanySiteAssignments>(
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
  Future<List<SsoCompanySiteAssignments>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoCompanySiteAssignmentsTable> where,
    _is.OrderByBuilder<SsoCompanySiteAssignmentsTable>? orderBy,
    _is.OrderByListBuilder<SsoCompanySiteAssignmentsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoCompanySiteAssignments>(
      where: where(SsoCompanySiteAssignments.t),
      orderBy: orderBy?.call(SsoCompanySiteAssignments.t),
      orderByList: orderByList?.call(SsoCompanySiteAssignments.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoCompanySiteAssignmentsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoCompanySiteAssignments>(
      where: where?.call(SsoCompanySiteAssignments.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoCompanySiteAssignments] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoCompanySiteAssignmentsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoCompanySiteAssignments>(
      where: where(SsoCompanySiteAssignments.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
