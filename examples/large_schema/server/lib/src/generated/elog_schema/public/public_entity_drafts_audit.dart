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

abstract class PublicEntityDraftsAudit
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  PublicEntityDraftsAudit._({
    this.id,
    required this.draftId,
    required this.action,
    this.draftVersion,
    this.previousData,
    this.newData,
    this.reason,
    this.performedAt,
    this.performedBy,
  });

  factory PublicEntityDraftsAudit({
    _is.UuidValue? id,
    required _is.UuidValue draftId,
    required String action,
    int? draftVersion,
    String? previousData,
    String? newData,
    String? reason,
    DateTime? performedAt,
    _is.UuidValue? performedBy,
  }) = _PublicEntityDraftsAuditImpl;

  factory PublicEntityDraftsAudit.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return PublicEntityDraftsAudit(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      draftId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['draftId'],
      ),
      action: jsonSerialization['action'] as String,
      draftVersion: jsonSerialization['draftVersion'] as int?,
      previousData: jsonSerialization['previousData'] as String?,
      newData: jsonSerialization['newData'] as String?,
      reason: jsonSerialization['reason'] as String?,
      performedAt: jsonSerialization['performedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['performedAt'],
            ),
      performedBy: jsonSerialization['performedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['performedBy'],
            ),
    );
  }

  static final t = PublicEntityDraftsAuditTable();

  static const db = PublicEntityDraftsAuditRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue draftId;

  String action;

  int? draftVersion;

  String? previousData;

  String? newData;

  String? reason;

  DateTime? performedAt;

  _is.UuidValue? performedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [PublicEntityDraftsAudit]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  PublicEntityDraftsAudit copyWith({
    _is.UuidValue? id,
    _is.UuidValue? draftId,
    String? action,
    int? draftVersion,
    String? previousData,
    String? newData,
    String? reason,
    DateTime? performedAt,
    _is.UuidValue? performedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicEntityDraftsAudit',
      if (id != null) 'id': id?.toJson(),
      'draftId': draftId.toJson(),
      'action': action,
      if (draftVersion != null) 'draftVersion': draftVersion,
      if (previousData != null) 'previousData': previousData,
      if (newData != null) 'newData': newData,
      if (reason != null) 'reason': reason,
      if (performedAt != null) 'performedAt': performedAt?.toJson(),
      if (performedBy != null) 'performedBy': performedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicEntityDraftsAudit',
      if (id != null) 'id': id?.toJson(),
      'draftId': draftId.toJson(),
      'action': action,
      if (draftVersion != null) 'draftVersion': draftVersion,
      if (previousData != null) 'previousData': previousData,
      if (newData != null) 'newData': newData,
      if (reason != null) 'reason': reason,
      if (performedAt != null) 'performedAt': performedAt?.toJson(),
      if (performedBy != null) 'performedBy': performedBy?.toJson(),
    };
  }

  static PublicEntityDraftsAuditInclude include() {
    return PublicEntityDraftsAuditInclude._();
  }

  static PublicEntityDraftsAuditIncludeList includeList({
    _is.WhereExpressionBuilder<PublicEntityDraftsAuditTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityDraftsAuditTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityDraftsAuditTable>? orderByList,
    PublicEntityDraftsAuditInclude? include,
  }) {
    return PublicEntityDraftsAuditIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicEntityDraftsAudit.t),
      orderByList: orderByList?.call(PublicEntityDraftsAudit.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicEntityDraftsAuditImpl extends PublicEntityDraftsAudit {
  _PublicEntityDraftsAuditImpl({
    _is.UuidValue? id,
    required _is.UuidValue draftId,
    required String action,
    int? draftVersion,
    String? previousData,
    String? newData,
    String? reason,
    DateTime? performedAt,
    _is.UuidValue? performedBy,
  }) : super._(
         id: id,
         draftId: draftId,
         action: action,
         draftVersion: draftVersion,
         previousData: previousData,
         newData: newData,
         reason: reason,
         performedAt: performedAt,
         performedBy: performedBy,
       );

  /// Returns a shallow copy of this [PublicEntityDraftsAudit]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  PublicEntityDraftsAudit copyWith({
    Object? id = _Undefined,
    _is.UuidValue? draftId,
    String? action,
    Object? draftVersion = _Undefined,
    Object? previousData = _Undefined,
    Object? newData = _Undefined,
    Object? reason = _Undefined,
    Object? performedAt = _Undefined,
    Object? performedBy = _Undefined,
  }) {
    return PublicEntityDraftsAudit(
      id: id is _is.UuidValue? ? id : this.id,
      draftId: draftId ?? this.draftId,
      action: action ?? this.action,
      draftVersion: draftVersion is int? ? draftVersion : this.draftVersion,
      previousData: previousData is String? ? previousData : this.previousData,
      newData: newData is String? ? newData : this.newData,
      reason: reason is String? ? reason : this.reason,
      performedAt: performedAt is DateTime? ? performedAt : this.performedAt,
      performedBy: performedBy is _is.UuidValue?
          ? performedBy
          : this.performedBy,
    );
  }
}

class PublicEntityDraftsAuditUpdateTable
    extends _is.UpdateTable<PublicEntityDraftsAuditTable> {
  PublicEntityDraftsAuditUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> draftId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.draftId,
        value,
      );

  _is.ColumnValue<String, String> action(String value) => _is.ColumnValue(
    table.action,
    value,
  );

  _is.ColumnValue<int, int> draftVersion(int? value) => _is.ColumnValue(
    table.draftVersion,
    value,
  );

  _is.ColumnValue<String, String> previousData(String? value) =>
      _is.ColumnValue(
        table.previousData,
        value,
      );

  _is.ColumnValue<String, String> newData(String? value) => _is.ColumnValue(
    table.newData,
    value,
  );

  _is.ColumnValue<String, String> reason(String? value) => _is.ColumnValue(
    table.reason,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> performedAt(DateTime? value) =>
      _is.ColumnValue(
        table.performedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> performedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.performedBy,
    value,
  );
}

class PublicEntityDraftsAuditTable extends _is.Table<_is.UuidValue?> {
  PublicEntityDraftsAuditTable({super.tableRelation})
    : super(tableName: 'public_entity_drafts_audit') {
    updateTable = PublicEntityDraftsAuditUpdateTable(this);
    draftId = _is.ColumnUuid(
      'draftId',
      this,
    );
    action = _is.ColumnString(
      'action',
      this,
    );
    draftVersion = _is.ColumnInt(
      'draftVersion',
      this,
    );
    previousData = _is.ColumnString(
      'previousData',
      this,
    );
    newData = _is.ColumnString(
      'newData',
      this,
    );
    reason = _is.ColumnString(
      'reason',
      this,
    );
    performedAt = _is.ColumnDateTime(
      'performedAt',
      this,
    );
    performedBy = _is.ColumnUuid(
      'performedBy',
      this,
    );
  }

  late final PublicEntityDraftsAuditUpdateTable updateTable;

  late final _is.ColumnUuid draftId;

  late final _is.ColumnString action;

  late final _is.ColumnInt draftVersion;

  late final _is.ColumnString previousData;

  late final _is.ColumnString newData;

  late final _is.ColumnString reason;

  late final _is.ColumnDateTime performedAt;

  late final _is.ColumnUuid performedBy;

  @override
  List<_is.Column> get columns => [
    id,
    draftId,
    action,
    draftVersion,
    previousData,
    newData,
    reason,
    performedAt,
    performedBy,
  ];
}

class PublicEntityDraftsAuditInclude extends _is.IncludeObject {
  PublicEntityDraftsAuditInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicEntityDraftsAudit.t;
}

class PublicEntityDraftsAuditIncludeList extends _is.IncludeList {
  PublicEntityDraftsAuditIncludeList._({
    _is.WhereExpressionBuilder<PublicEntityDraftsAuditTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PublicEntityDraftsAudit.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicEntityDraftsAudit.t;
}

class PublicEntityDraftsAuditRepository {
  const PublicEntityDraftsAuditRepository._();

  /// Returns a list of [PublicEntityDraftsAudit]s matching the given query parameters.
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
  Future<List<PublicEntityDraftsAudit>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityDraftsAuditTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityDraftsAuditTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityDraftsAuditTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PublicEntityDraftsAudit>(
      where: where?.call(PublicEntityDraftsAudit.t),
      orderBy: orderBy?.call(PublicEntityDraftsAudit.t),
      orderByList: orderByList?.call(PublicEntityDraftsAudit.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PublicEntityDraftsAudit] matching the given query parameters.
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
  Future<PublicEntityDraftsAudit?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityDraftsAuditTable>? where,
    int? offset,
    _is.OrderByBuilder<PublicEntityDraftsAuditTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityDraftsAuditTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PublicEntityDraftsAudit>(
      where: where?.call(PublicEntityDraftsAudit.t),
      orderBy: orderBy?.call(PublicEntityDraftsAudit.t),
      orderByList: orderByList?.call(PublicEntityDraftsAudit.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PublicEntityDraftsAudit] by its [id] or null if no such row exists.
  Future<PublicEntityDraftsAudit?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PublicEntityDraftsAudit>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PublicEntityDraftsAudit]s in the list and returns the inserted rows.
  ///
  /// The returned [PublicEntityDraftsAudit]s will have their `id` fields set.
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
  Future<List<PublicEntityDraftsAudit>> insert(
    _is.DatabaseSession session,
    List<PublicEntityDraftsAudit> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<PublicEntityDraftsAudit>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [PublicEntityDraftsAudit] and returns the inserted row.
  ///
  /// The returned [PublicEntityDraftsAudit] will have its `id` field set.
  Future<PublicEntityDraftsAudit> insertRow(
    _is.DatabaseSession session,
    PublicEntityDraftsAudit row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<PublicEntityDraftsAudit>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [PublicEntityDraftsAudit]s in the list and returns the resulting rows.
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
  /// The returned [PublicEntityDraftsAudit]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityDraftsAudit>> upsert(
    _is.DatabaseSession session,
    List<PublicEntityDraftsAudit> rows, {
    required _is.ColumnSelections<PublicEntityDraftsAuditTable> conflictColumns,
    _is.ColumnSelections<PublicEntityDraftsAuditTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicEntityDraftsAuditTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<PublicEntityDraftsAudit>(
      rows,
      conflictColumns: conflictColumns(PublicEntityDraftsAudit.t),
      updateColumns: updateColumns?.call(PublicEntityDraftsAudit.t),
      updateWhere: updateWhere?.call(PublicEntityDraftsAudit.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [PublicEntityDraftsAudit] and returns the resulting row.
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
  /// The returned [PublicEntityDraftsAudit] will have its `id` field set.
  Future<PublicEntityDraftsAudit?> upsertRow(
    _is.DatabaseSession session,
    PublicEntityDraftsAudit row, {
    required _is.ColumnSelections<PublicEntityDraftsAuditTable> conflictColumns,
    _is.ColumnSelections<PublicEntityDraftsAuditTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicEntityDraftsAuditTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<PublicEntityDraftsAudit>(
      row,
      conflictColumns: conflictColumns(PublicEntityDraftsAudit.t),
      updateColumns: updateColumns?.call(PublicEntityDraftsAudit.t),
      updateWhere: updateWhere?.call(PublicEntityDraftsAudit.t),
      transaction: transaction,
    );
  }

  /// Updates all [PublicEntityDraftsAudit]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityDraftsAudit>> update(
    _is.DatabaseSession session,
    List<PublicEntityDraftsAudit> rows, {
    _is.ColumnSelections<PublicEntityDraftsAuditTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<PublicEntityDraftsAudit>(
      rows,
      columns: columns?.call(PublicEntityDraftsAudit.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [PublicEntityDraftsAudit]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PublicEntityDraftsAudit> updateRow(
    _is.DatabaseSession session,
    PublicEntityDraftsAudit row, {
    _is.ColumnSelections<PublicEntityDraftsAuditTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<PublicEntityDraftsAudit>(
      row,
      columns: columns?.call(PublicEntityDraftsAudit.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PublicEntityDraftsAudit] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PublicEntityDraftsAudit?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<PublicEntityDraftsAuditUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<PublicEntityDraftsAudit>(
      id,
      columnValues: columnValues(PublicEntityDraftsAudit.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PublicEntityDraftsAudit]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityDraftsAudit>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<PublicEntityDraftsAuditUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<PublicEntityDraftsAuditTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityDraftsAuditTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityDraftsAuditTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<PublicEntityDraftsAudit>(
      columnValues: columnValues(PublicEntityDraftsAudit.t.updateTable),
      where: where(PublicEntityDraftsAudit.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicEntityDraftsAudit.t),
      orderByList: orderByList?.call(PublicEntityDraftsAudit.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [PublicEntityDraftsAudit]s in the list and returns the deleted rows.
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
  Future<List<PublicEntityDraftsAudit>> delete(
    _is.DatabaseSession session,
    List<PublicEntityDraftsAudit> rows, {
    _is.OrderByBuilder<PublicEntityDraftsAuditTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityDraftsAuditTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<PublicEntityDraftsAudit>(
      rows,
      orderBy: orderBy?.call(PublicEntityDraftsAudit.t),
      orderByList: orderByList?.call(PublicEntityDraftsAudit.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [PublicEntityDraftsAudit].
  Future<PublicEntityDraftsAudit> deleteRow(
    _is.DatabaseSession session,
    PublicEntityDraftsAudit row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PublicEntityDraftsAudit>(
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
  Future<List<PublicEntityDraftsAudit>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicEntityDraftsAuditTable> where,
    _is.OrderByBuilder<PublicEntityDraftsAuditTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityDraftsAuditTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<PublicEntityDraftsAudit>(
      where: where(PublicEntityDraftsAudit.t),
      orderBy: orderBy?.call(PublicEntityDraftsAudit.t),
      orderByList: orderByList?.call(PublicEntityDraftsAudit.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityDraftsAuditTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<PublicEntityDraftsAudit>(
      where: where?.call(PublicEntityDraftsAudit.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PublicEntityDraftsAudit] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicEntityDraftsAuditTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PublicEntityDraftsAudit>(
      where: where(PublicEntityDraftsAudit.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
