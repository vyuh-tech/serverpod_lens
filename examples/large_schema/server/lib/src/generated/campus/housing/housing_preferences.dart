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

/// Fictional university fixture: housing.
abstract class CampusHousingPreference
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusHousingPreference._({
    this.id,
    required this.housingApplicationId,
    required this.residenceId,
    required this.rank,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingPreference({
    _is.UuidValue? id,
    required _is.UuidValue housingApplicationId,
    required _is.UuidValue residenceId,
    required int rank,
    DateTime? createdAt,
  }) = _CampusHousingPreferenceImpl;

  factory CampusHousingPreference.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusHousingPreference(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      housingApplicationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['housingApplicationId'],
      ),
      residenceId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['residenceId'],
      ),
      rank: jsonSerialization['rank'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusHousingPreferenceTable();

  static const db = CampusHousingPreferenceRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue housingApplicationId;

  _is.UuidValue residenceId;

  int rank;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusHousingPreference]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusHousingPreference copyWith({
    _is.UuidValue? id,
    _is.UuidValue? housingApplicationId,
    _is.UuidValue? residenceId,
    int? rank,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingPreference',
      if (id != null) 'id': id?.toJson(),
      'housingApplicationId': housingApplicationId.toJson(),
      'residenceId': residenceId.toJson(),
      'rank': rank,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingPreference',
      if (id != null) 'id': id?.toJson(),
      'housingApplicationId': housingApplicationId.toJson(),
      'residenceId': residenceId.toJson(),
      'rank': rank,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusHousingPreferenceInclude include() {
    return CampusHousingPreferenceInclude._();
  }

  static CampusHousingPreferenceIncludeList includeList({
    _is.WhereExpressionBuilder<CampusHousingPreferenceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingPreferenceTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingPreferenceTable>? orderByList,
    CampusHousingPreferenceInclude? include,
  }) {
    return CampusHousingPreferenceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingPreference.t),
      orderByList: orderByList?.call(CampusHousingPreference.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingPreferenceImpl extends CampusHousingPreference {
  _CampusHousingPreferenceImpl({
    _is.UuidValue? id,
    required _is.UuidValue housingApplicationId,
    required _is.UuidValue residenceId,
    required int rank,
    DateTime? createdAt,
  }) : super._(
         id: id,
         housingApplicationId: housingApplicationId,
         residenceId: residenceId,
         rank: rank,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingPreference]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusHousingPreference copyWith({
    Object? id = _Undefined,
    _is.UuidValue? housingApplicationId,
    _is.UuidValue? residenceId,
    int? rank,
    DateTime? createdAt,
  }) {
    return CampusHousingPreference(
      id: id is _is.UuidValue? ? id : this.id,
      housingApplicationId: housingApplicationId ?? this.housingApplicationId,
      residenceId: residenceId ?? this.residenceId,
      rank: rank ?? this.rank,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusHousingPreferenceUpdateTable
    extends _is.UpdateTable<CampusHousingPreferenceTable> {
  CampusHousingPreferenceUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> housingApplicationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.housingApplicationId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> residenceId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.residenceId,
    value,
  );

  _is.ColumnValue<int, int> rank(int value) => _is.ColumnValue(
    table.rank,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusHousingPreferenceTable extends _is.Table<_is.UuidValue?> {
  CampusHousingPreferenceTable({super.tableRelation})
    : super(tableName: 'campus_housing_preferences') {
    updateTable = CampusHousingPreferenceUpdateTable(this);
    housingApplicationId = _is.ColumnUuid(
      'housingApplicationId',
      this,
    );
    residenceId = _is.ColumnUuid(
      'residenceId',
      this,
    );
    rank = _is.ColumnInt(
      'rank',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusHousingPreferenceUpdateTable updateTable;

  late final _is.ColumnUuid housingApplicationId;

  late final _is.ColumnUuid residenceId;

  late final _is.ColumnInt rank;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    housingApplicationId,
    residenceId,
    rank,
    createdAt,
  ];
}

class CampusHousingPreferenceInclude extends _is.IncludeObject {
  CampusHousingPreferenceInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingPreference.t;
}

class CampusHousingPreferenceIncludeList extends _is.IncludeList {
  CampusHousingPreferenceIncludeList._({
    _is.WhereExpressionBuilder<CampusHousingPreferenceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusHousingPreference.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingPreference.t;
}

class CampusHousingPreferenceRepository {
  const CampusHousingPreferenceRepository._();

  /// Returns a list of [CampusHousingPreference]s matching the given query parameters.
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
  Future<List<CampusHousingPreference>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingPreferenceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingPreferenceTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingPreferenceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusHousingPreference>(
      where: where?.call(CampusHousingPreference.t),
      orderBy: orderBy?.call(CampusHousingPreference.t),
      orderByList: orderByList?.call(CampusHousingPreference.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusHousingPreference] matching the given query parameters.
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
  Future<CampusHousingPreference?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingPreferenceTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusHousingPreferenceTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingPreferenceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusHousingPreference>(
      where: where?.call(CampusHousingPreference.t),
      orderBy: orderBy?.call(CampusHousingPreference.t),
      orderByList: orderByList?.call(CampusHousingPreference.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusHousingPreference] by its [id] or null if no such row exists.
  Future<CampusHousingPreference?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusHousingPreference>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusHousingPreference]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusHousingPreference]s will have their `id` fields set.
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
  Future<List<CampusHousingPreference>> insert(
    _is.DatabaseSession session,
    List<CampusHousingPreference> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusHousingPreference>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusHousingPreference] and returns the inserted row.
  ///
  /// The returned [CampusHousingPreference] will have its `id` field set.
  Future<CampusHousingPreference> insertRow(
    _is.DatabaseSession session,
    CampusHousingPreference row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusHousingPreference>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusHousingPreference]s in the list and returns the resulting rows.
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
  /// The returned [CampusHousingPreference]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingPreference>> upsert(
    _is.DatabaseSession session,
    List<CampusHousingPreference> rows, {
    required _is.ColumnSelections<CampusHousingPreferenceTable> conflictColumns,
    _is.ColumnSelections<CampusHousingPreferenceTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingPreferenceTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusHousingPreference>(
      rows,
      conflictColumns: conflictColumns(CampusHousingPreference.t),
      updateColumns: updateColumns?.call(CampusHousingPreference.t),
      updateWhere: updateWhere?.call(CampusHousingPreference.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusHousingPreference] and returns the resulting row.
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
  /// The returned [CampusHousingPreference] will have its `id` field set.
  Future<CampusHousingPreference?> upsertRow(
    _is.DatabaseSession session,
    CampusHousingPreference row, {
    required _is.ColumnSelections<CampusHousingPreferenceTable> conflictColumns,
    _is.ColumnSelections<CampusHousingPreferenceTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingPreferenceTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusHousingPreference>(
      row,
      conflictColumns: conflictColumns(CampusHousingPreference.t),
      updateColumns: updateColumns?.call(CampusHousingPreference.t),
      updateWhere: updateWhere?.call(CampusHousingPreference.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingPreference]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingPreference>> update(
    _is.DatabaseSession session,
    List<CampusHousingPreference> rows, {
    _is.ColumnSelections<CampusHousingPreferenceTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusHousingPreference>(
      rows,
      columns: columns?.call(CampusHousingPreference.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusHousingPreference]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusHousingPreference> updateRow(
    _is.DatabaseSession session,
    CampusHousingPreference row, {
    _is.ColumnSelections<CampusHousingPreferenceTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusHousingPreference>(
      row,
      columns: columns?.call(CampusHousingPreference.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusHousingPreference] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusHousingPreference?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusHousingPreferenceUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusHousingPreference>(
      id,
      columnValues: columnValues(CampusHousingPreference.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingPreference]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingPreference>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusHousingPreferenceUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusHousingPreferenceTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingPreferenceTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingPreferenceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusHousingPreference>(
      columnValues: columnValues(CampusHousingPreference.t.updateTable),
      where: where(CampusHousingPreference.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingPreference.t),
      orderByList: orderByList?.call(CampusHousingPreference.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusHousingPreference]s in the list and returns the deleted rows.
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
  Future<List<CampusHousingPreference>> delete(
    _is.DatabaseSession session,
    List<CampusHousingPreference> rows, {
    _is.OrderByBuilder<CampusHousingPreferenceTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingPreferenceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusHousingPreference>(
      rows,
      orderBy: orderBy?.call(CampusHousingPreference.t),
      orderByList: orderByList?.call(CampusHousingPreference.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusHousingPreference].
  Future<CampusHousingPreference> deleteRow(
    _is.DatabaseSession session,
    CampusHousingPreference row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusHousingPreference>(
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
  Future<List<CampusHousingPreference>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingPreferenceTable> where,
    _is.OrderByBuilder<CampusHousingPreferenceTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingPreferenceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusHousingPreference>(
      where: where(CampusHousingPreference.t),
      orderBy: orderBy?.call(CampusHousingPreference.t),
      orderByList: orderByList?.call(CampusHousingPreference.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingPreferenceTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusHousingPreference>(
      where: where?.call(CampusHousingPreference.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusHousingPreference] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingPreferenceTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusHousingPreference>(
      where: where(CampusHousingPreference.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
