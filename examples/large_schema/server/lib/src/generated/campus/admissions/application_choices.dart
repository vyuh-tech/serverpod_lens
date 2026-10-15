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

/// Fictional university fixture: admissions.
abstract class CampusApplicationChoice
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusApplicationChoice._({
    this.id,
    required this.applicationId,
    required this.programmeId,
    required this.preference,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusApplicationChoice({
    _is.UuidValue? id,
    required _is.UuidValue applicationId,
    required _is.UuidValue programmeId,
    required int preference,
    DateTime? createdAt,
  }) = _CampusApplicationChoiceImpl;

  factory CampusApplicationChoice.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusApplicationChoice(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      applicationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['applicationId'],
      ),
      programmeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeId'],
      ),
      preference: jsonSerialization['preference'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusApplicationChoiceTable();

  static const db = CampusApplicationChoiceRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue applicationId;

  _is.UuidValue programmeId;

  int preference;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusApplicationChoice]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusApplicationChoice copyWith({
    _is.UuidValue? id,
    _is.UuidValue? applicationId,
    _is.UuidValue? programmeId,
    int? preference,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusApplicationChoice',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'programmeId': programmeId.toJson(),
      'preference': preference,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusApplicationChoice',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'programmeId': programmeId.toJson(),
      'preference': preference,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusApplicationChoiceInclude include() {
    return CampusApplicationChoiceInclude._();
  }

  static CampusApplicationChoiceIncludeList includeList({
    _is.WhereExpressionBuilder<CampusApplicationChoiceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusApplicationChoiceTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationChoiceTable>? orderByList,
    CampusApplicationChoiceInclude? include,
  }) {
    return CampusApplicationChoiceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusApplicationChoice.t),
      orderByList: orderByList?.call(CampusApplicationChoice.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusApplicationChoiceImpl extends CampusApplicationChoice {
  _CampusApplicationChoiceImpl({
    _is.UuidValue? id,
    required _is.UuidValue applicationId,
    required _is.UuidValue programmeId,
    required int preference,
    DateTime? createdAt,
  }) : super._(
         id: id,
         applicationId: applicationId,
         programmeId: programmeId,
         preference: preference,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusApplicationChoice]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusApplicationChoice copyWith({
    Object? id = _Undefined,
    _is.UuidValue? applicationId,
    _is.UuidValue? programmeId,
    int? preference,
    DateTime? createdAt,
  }) {
    return CampusApplicationChoice(
      id: id is _is.UuidValue? ? id : this.id,
      applicationId: applicationId ?? this.applicationId,
      programmeId: programmeId ?? this.programmeId,
      preference: preference ?? this.preference,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusApplicationChoiceUpdateTable
    extends _is.UpdateTable<CampusApplicationChoiceTable> {
  CampusApplicationChoiceUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> applicationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.applicationId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> programmeId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.programmeId,
    value,
  );

  _is.ColumnValue<int, int> preference(int value) => _is.ColumnValue(
    table.preference,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusApplicationChoiceTable extends _is.Table<_is.UuidValue?> {
  CampusApplicationChoiceTable({super.tableRelation})
    : super(tableName: 'campus_application_choices') {
    updateTable = CampusApplicationChoiceUpdateTable(this);
    applicationId = _is.ColumnUuid(
      'applicationId',
      this,
    );
    programmeId = _is.ColumnUuid(
      'programmeId',
      this,
    );
    preference = _is.ColumnInt(
      'preference',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusApplicationChoiceUpdateTable updateTable;

  late final _is.ColumnUuid applicationId;

  late final _is.ColumnUuid programmeId;

  late final _is.ColumnInt preference;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    applicationId,
    programmeId,
    preference,
    createdAt,
  ];
}

class CampusApplicationChoiceInclude extends _is.IncludeObject {
  CampusApplicationChoiceInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusApplicationChoice.t;
}

class CampusApplicationChoiceIncludeList extends _is.IncludeList {
  CampusApplicationChoiceIncludeList._({
    _is.WhereExpressionBuilder<CampusApplicationChoiceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusApplicationChoice.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusApplicationChoice.t;
}

class CampusApplicationChoiceRepository {
  const CampusApplicationChoiceRepository._();

  /// Returns a list of [CampusApplicationChoice]s matching the given query parameters.
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
  Future<List<CampusApplicationChoice>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusApplicationChoiceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusApplicationChoiceTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationChoiceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusApplicationChoice>(
      where: where?.call(CampusApplicationChoice.t),
      orderBy: orderBy?.call(CampusApplicationChoice.t),
      orderByList: orderByList?.call(CampusApplicationChoice.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusApplicationChoice] matching the given query parameters.
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
  Future<CampusApplicationChoice?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusApplicationChoiceTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusApplicationChoiceTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationChoiceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusApplicationChoice>(
      where: where?.call(CampusApplicationChoice.t),
      orderBy: orderBy?.call(CampusApplicationChoice.t),
      orderByList: orderByList?.call(CampusApplicationChoice.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusApplicationChoice] by its [id] or null if no such row exists.
  Future<CampusApplicationChoice?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusApplicationChoice>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusApplicationChoice]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusApplicationChoice]s will have their `id` fields set.
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
  Future<List<CampusApplicationChoice>> insert(
    _is.DatabaseSession session,
    List<CampusApplicationChoice> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusApplicationChoice>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusApplicationChoice] and returns the inserted row.
  ///
  /// The returned [CampusApplicationChoice] will have its `id` field set.
  Future<CampusApplicationChoice> insertRow(
    _is.DatabaseSession session,
    CampusApplicationChoice row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusApplicationChoice>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusApplicationChoice]s in the list and returns the resulting rows.
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
  /// The returned [CampusApplicationChoice]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusApplicationChoice>> upsert(
    _is.DatabaseSession session,
    List<CampusApplicationChoice> rows, {
    required _is.ColumnSelections<CampusApplicationChoiceTable> conflictColumns,
    _is.ColumnSelections<CampusApplicationChoiceTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusApplicationChoiceTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusApplicationChoice>(
      rows,
      conflictColumns: conflictColumns(CampusApplicationChoice.t),
      updateColumns: updateColumns?.call(CampusApplicationChoice.t),
      updateWhere: updateWhere?.call(CampusApplicationChoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusApplicationChoice] and returns the resulting row.
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
  /// The returned [CampusApplicationChoice] will have its `id` field set.
  Future<CampusApplicationChoice?> upsertRow(
    _is.DatabaseSession session,
    CampusApplicationChoice row, {
    required _is.ColumnSelections<CampusApplicationChoiceTable> conflictColumns,
    _is.ColumnSelections<CampusApplicationChoiceTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusApplicationChoiceTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusApplicationChoice>(
      row,
      conflictColumns: conflictColumns(CampusApplicationChoice.t),
      updateColumns: updateColumns?.call(CampusApplicationChoice.t),
      updateWhere: updateWhere?.call(CampusApplicationChoice.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusApplicationChoice]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusApplicationChoice>> update(
    _is.DatabaseSession session,
    List<CampusApplicationChoice> rows, {
    _is.ColumnSelections<CampusApplicationChoiceTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusApplicationChoice>(
      rows,
      columns: columns?.call(CampusApplicationChoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusApplicationChoice]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusApplicationChoice> updateRow(
    _is.DatabaseSession session,
    CampusApplicationChoice row, {
    _is.ColumnSelections<CampusApplicationChoiceTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusApplicationChoice>(
      row,
      columns: columns?.call(CampusApplicationChoice.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusApplicationChoice] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusApplicationChoice?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusApplicationChoiceUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusApplicationChoice>(
      id,
      columnValues: columnValues(CampusApplicationChoice.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusApplicationChoice]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusApplicationChoice>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusApplicationChoiceUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusApplicationChoiceTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusApplicationChoiceTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationChoiceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusApplicationChoice>(
      columnValues: columnValues(CampusApplicationChoice.t.updateTable),
      where: where(CampusApplicationChoice.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusApplicationChoice.t),
      orderByList: orderByList?.call(CampusApplicationChoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusApplicationChoice]s in the list and returns the deleted rows.
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
  Future<List<CampusApplicationChoice>> delete(
    _is.DatabaseSession session,
    List<CampusApplicationChoice> rows, {
    _is.OrderByBuilder<CampusApplicationChoiceTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationChoiceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusApplicationChoice>(
      rows,
      orderBy: orderBy?.call(CampusApplicationChoice.t),
      orderByList: orderByList?.call(CampusApplicationChoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusApplicationChoice].
  Future<CampusApplicationChoice> deleteRow(
    _is.DatabaseSession session,
    CampusApplicationChoice row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusApplicationChoice>(
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
  Future<List<CampusApplicationChoice>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusApplicationChoiceTable> where,
    _is.OrderByBuilder<CampusApplicationChoiceTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationChoiceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusApplicationChoice>(
      where: where(CampusApplicationChoice.t),
      orderBy: orderBy?.call(CampusApplicationChoice.t),
      orderByList: orderByList?.call(CampusApplicationChoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusApplicationChoiceTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusApplicationChoice>(
      where: where?.call(CampusApplicationChoice.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusApplicationChoice] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusApplicationChoiceTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusApplicationChoice>(
      where: where(CampusApplicationChoice.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
