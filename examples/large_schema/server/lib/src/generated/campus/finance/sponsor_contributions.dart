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

/// Fictional university fixture: finance.
abstract class CampusSponsorContribution
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusSponsorContribution._({
    this.id,
    required this.sponsorshipId,
    required this.paymentId,
    required this.amountMinor,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSponsorContribution({
    _is.UuidValue? id,
    required _is.UuidValue sponsorshipId,
    required _is.UuidValue paymentId,
    required int amountMinor,
    DateTime? createdAt,
  }) = _CampusSponsorContributionImpl;

  factory CampusSponsorContribution.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusSponsorContribution(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sponsorshipId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['sponsorshipId'],
      ),
      paymentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['paymentId'],
      ),
      amountMinor: jsonSerialization['amountMinor'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusSponsorContributionTable();

  static const db = CampusSponsorContributionRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue sponsorshipId;

  _is.UuidValue paymentId;

  int amountMinor;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusSponsorContribution]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusSponsorContribution copyWith({
    _is.UuidValue? id,
    _is.UuidValue? sponsorshipId,
    _is.UuidValue? paymentId,
    int? amountMinor,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSponsorContribution',
      if (id != null) 'id': id?.toJson(),
      'sponsorshipId': sponsorshipId.toJson(),
      'paymentId': paymentId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSponsorContribution',
      if (id != null) 'id': id?.toJson(),
      'sponsorshipId': sponsorshipId.toJson(),
      'paymentId': paymentId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusSponsorContributionInclude include() {
    return CampusSponsorContributionInclude._();
  }

  static CampusSponsorContributionIncludeList includeList({
    _is.WhereExpressionBuilder<CampusSponsorContributionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSponsorContributionTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorContributionTable>? orderByList,
    CampusSponsorContributionInclude? include,
  }) {
    return CampusSponsorContributionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSponsorContribution.t),
      orderByList: orderByList?.call(CampusSponsorContribution.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSponsorContributionImpl extends CampusSponsorContribution {
  _CampusSponsorContributionImpl({
    _is.UuidValue? id,
    required _is.UuidValue sponsorshipId,
    required _is.UuidValue paymentId,
    required int amountMinor,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sponsorshipId: sponsorshipId,
         paymentId: paymentId,
         amountMinor: amountMinor,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSponsorContribution]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusSponsorContribution copyWith({
    Object? id = _Undefined,
    _is.UuidValue? sponsorshipId,
    _is.UuidValue? paymentId,
    int? amountMinor,
    DateTime? createdAt,
  }) {
    return CampusSponsorContribution(
      id: id is _is.UuidValue? ? id : this.id,
      sponsorshipId: sponsorshipId ?? this.sponsorshipId,
      paymentId: paymentId ?? this.paymentId,
      amountMinor: amountMinor ?? this.amountMinor,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusSponsorContributionUpdateTable
    extends _is.UpdateTable<CampusSponsorContributionTable> {
  CampusSponsorContributionUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> sponsorshipId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.sponsorshipId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> paymentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.paymentId,
    value,
  );

  _is.ColumnValue<int, int> amountMinor(int value) => _is.ColumnValue(
    table.amountMinor,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusSponsorContributionTable extends _is.Table<_is.UuidValue?> {
  CampusSponsorContributionTable({super.tableRelation})
    : super(tableName: 'campus_sponsor_contributions') {
    updateTable = CampusSponsorContributionUpdateTable(this);
    sponsorshipId = _is.ColumnUuid(
      'sponsorshipId',
      this,
    );
    paymentId = _is.ColumnUuid(
      'paymentId',
      this,
    );
    amountMinor = _is.ColumnInt(
      'amountMinor',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusSponsorContributionUpdateTable updateTable;

  late final _is.ColumnUuid sponsorshipId;

  late final _is.ColumnUuid paymentId;

  late final _is.ColumnInt amountMinor;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    sponsorshipId,
    paymentId,
    amountMinor,
    createdAt,
  ];
}

class CampusSponsorContributionInclude extends _is.IncludeObject {
  CampusSponsorContributionInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSponsorContribution.t;
}

class CampusSponsorContributionIncludeList extends _is.IncludeList {
  CampusSponsorContributionIncludeList._({
    _is.WhereExpressionBuilder<CampusSponsorContributionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusSponsorContribution.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSponsorContribution.t;
}

class CampusSponsorContributionRepository {
  const CampusSponsorContributionRepository._();

  /// Returns a list of [CampusSponsorContribution]s matching the given query parameters.
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
  Future<List<CampusSponsorContribution>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSponsorContributionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSponsorContributionTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorContributionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusSponsorContribution>(
      where: where?.call(CampusSponsorContribution.t),
      orderBy: orderBy?.call(CampusSponsorContribution.t),
      orderByList: orderByList?.call(CampusSponsorContribution.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusSponsorContribution] matching the given query parameters.
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
  Future<CampusSponsorContribution?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSponsorContributionTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusSponsorContributionTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorContributionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusSponsorContribution>(
      where: where?.call(CampusSponsorContribution.t),
      orderBy: orderBy?.call(CampusSponsorContribution.t),
      orderByList: orderByList?.call(CampusSponsorContribution.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusSponsorContribution] by its [id] or null if no such row exists.
  Future<CampusSponsorContribution?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusSponsorContribution>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusSponsorContribution]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusSponsorContribution]s will have their `id` fields set.
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
  Future<List<CampusSponsorContribution>> insert(
    _is.DatabaseSession session,
    List<CampusSponsorContribution> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusSponsorContribution>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusSponsorContribution] and returns the inserted row.
  ///
  /// The returned [CampusSponsorContribution] will have its `id` field set.
  Future<CampusSponsorContribution> insertRow(
    _is.DatabaseSession session,
    CampusSponsorContribution row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusSponsorContribution>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusSponsorContribution]s in the list and returns the resulting rows.
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
  /// The returned [CampusSponsorContribution]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSponsorContribution>> upsert(
    _is.DatabaseSession session,
    List<CampusSponsorContribution> rows, {
    required _is.ColumnSelections<CampusSponsorContributionTable>
    conflictColumns,
    _is.ColumnSelections<CampusSponsorContributionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSponsorContributionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusSponsorContribution>(
      rows,
      conflictColumns: conflictColumns(CampusSponsorContribution.t),
      updateColumns: updateColumns?.call(CampusSponsorContribution.t),
      updateWhere: updateWhere?.call(CampusSponsorContribution.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusSponsorContribution] and returns the resulting row.
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
  /// The returned [CampusSponsorContribution] will have its `id` field set.
  Future<CampusSponsorContribution?> upsertRow(
    _is.DatabaseSession session,
    CampusSponsorContribution row, {
    required _is.ColumnSelections<CampusSponsorContributionTable>
    conflictColumns,
    _is.ColumnSelections<CampusSponsorContributionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSponsorContributionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusSponsorContribution>(
      row,
      conflictColumns: conflictColumns(CampusSponsorContribution.t),
      updateColumns: updateColumns?.call(CampusSponsorContribution.t),
      updateWhere: updateWhere?.call(CampusSponsorContribution.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSponsorContribution]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSponsorContribution>> update(
    _is.DatabaseSession session,
    List<CampusSponsorContribution> rows, {
    _is.ColumnSelections<CampusSponsorContributionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusSponsorContribution>(
      rows,
      columns: columns?.call(CampusSponsorContribution.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusSponsorContribution]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusSponsorContribution> updateRow(
    _is.DatabaseSession session,
    CampusSponsorContribution row, {
    _is.ColumnSelections<CampusSponsorContributionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusSponsorContribution>(
      row,
      columns: columns?.call(CampusSponsorContribution.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusSponsorContribution] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusSponsorContribution?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusSponsorContributionUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusSponsorContribution>(
      id,
      columnValues: columnValues(CampusSponsorContribution.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSponsorContribution]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSponsorContribution>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusSponsorContributionUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusSponsorContributionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSponsorContributionTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorContributionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusSponsorContribution>(
      columnValues: columnValues(CampusSponsorContribution.t.updateTable),
      where: where(CampusSponsorContribution.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSponsorContribution.t),
      orderByList: orderByList?.call(CampusSponsorContribution.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusSponsorContribution]s in the list and returns the deleted rows.
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
  Future<List<CampusSponsorContribution>> delete(
    _is.DatabaseSession session,
    List<CampusSponsorContribution> rows, {
    _is.OrderByBuilder<CampusSponsorContributionTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorContributionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusSponsorContribution>(
      rows,
      orderBy: orderBy?.call(CampusSponsorContribution.t),
      orderByList: orderByList?.call(CampusSponsorContribution.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusSponsorContribution].
  Future<CampusSponsorContribution> deleteRow(
    _is.DatabaseSession session,
    CampusSponsorContribution row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusSponsorContribution>(
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
  Future<List<CampusSponsorContribution>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSponsorContributionTable> where,
    _is.OrderByBuilder<CampusSponsorContributionTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorContributionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusSponsorContribution>(
      where: where(CampusSponsorContribution.t),
      orderBy: orderBy?.call(CampusSponsorContribution.t),
      orderByList: orderByList?.call(CampusSponsorContribution.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSponsorContributionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusSponsorContribution>(
      where: where?.call(CampusSponsorContribution.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusSponsorContribution] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSponsorContributionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusSponsorContribution>(
      where: where(CampusSponsorContribution.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
