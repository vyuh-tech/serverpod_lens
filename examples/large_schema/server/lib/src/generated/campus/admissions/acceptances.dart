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
abstract class CampusAcceptance
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusAcceptance._({
    this.id,
    required this.offerId,
    required this.acceptedAt,
    this.depositPaymentId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAcceptance({
    _is.UuidValue? id,
    required _is.UuidValue offerId,
    required DateTime acceptedAt,
    _is.UuidValue? depositPaymentId,
    DateTime? createdAt,
  }) = _CampusAcceptanceImpl;

  factory CampusAcceptance.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusAcceptance(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      offerId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['offerId'],
      ),
      acceptedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['acceptedAt'],
      ),
      depositPaymentId: jsonSerialization['depositPaymentId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['depositPaymentId'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusAcceptanceTable();

  static const db = CampusAcceptanceRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue offerId;

  DateTime acceptedAt;

  _is.UuidValue? depositPaymentId;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusAcceptance]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusAcceptance copyWith({
    _is.UuidValue? id,
    _is.UuidValue? offerId,
    DateTime? acceptedAt,
    _is.UuidValue? depositPaymentId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAcceptance',
      if (id != null) 'id': id?.toJson(),
      'offerId': offerId.toJson(),
      'acceptedAt': acceptedAt.toJson(),
      if (depositPaymentId != null)
        'depositPaymentId': depositPaymentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAcceptance',
      if (id != null) 'id': id?.toJson(),
      'offerId': offerId.toJson(),
      'acceptedAt': acceptedAt.toJson(),
      if (depositPaymentId != null)
        'depositPaymentId': depositPaymentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusAcceptanceInclude include() {
    return CampusAcceptanceInclude._();
  }

  static CampusAcceptanceIncludeList includeList({
    _is.WhereExpressionBuilder<CampusAcceptanceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAcceptanceTable>? orderBy,
    _is.OrderByListBuilder<CampusAcceptanceTable>? orderByList,
    CampusAcceptanceInclude? include,
  }) {
    return CampusAcceptanceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAcceptance.t),
      orderByList: orderByList?.call(CampusAcceptance.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAcceptanceImpl extends CampusAcceptance {
  _CampusAcceptanceImpl({
    _is.UuidValue? id,
    required _is.UuidValue offerId,
    required DateTime acceptedAt,
    _is.UuidValue? depositPaymentId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         offerId: offerId,
         acceptedAt: acceptedAt,
         depositPaymentId: depositPaymentId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAcceptance]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusAcceptance copyWith({
    Object? id = _Undefined,
    _is.UuidValue? offerId,
    DateTime? acceptedAt,
    Object? depositPaymentId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusAcceptance(
      id: id is _is.UuidValue? ? id : this.id,
      offerId: offerId ?? this.offerId,
      acceptedAt: acceptedAt ?? this.acceptedAt,
      depositPaymentId: depositPaymentId is _is.UuidValue?
          ? depositPaymentId
          : this.depositPaymentId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusAcceptanceUpdateTable
    extends _is.UpdateTable<CampusAcceptanceTable> {
  CampusAcceptanceUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> offerId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.offerId,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> acceptedAt(DateTime value) =>
      _is.ColumnValue(
        table.acceptedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> depositPaymentId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.depositPaymentId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusAcceptanceTable extends _is.Table<_is.UuidValue?> {
  CampusAcceptanceTable({super.tableRelation})
    : super(tableName: 'campus_acceptances') {
    updateTable = CampusAcceptanceUpdateTable(this);
    offerId = _is.ColumnUuid(
      'offerId',
      this,
    );
    acceptedAt = _is.ColumnDateTime(
      'acceptedAt',
      this,
    );
    depositPaymentId = _is.ColumnUuid(
      'depositPaymentId',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusAcceptanceUpdateTable updateTable;

  late final _is.ColumnUuid offerId;

  late final _is.ColumnDateTime acceptedAt;

  late final _is.ColumnUuid depositPaymentId;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    offerId,
    acceptedAt,
    depositPaymentId,
    createdAt,
  ];
}

class CampusAcceptanceInclude extends _is.IncludeObject {
  CampusAcceptanceInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAcceptance.t;
}

class CampusAcceptanceIncludeList extends _is.IncludeList {
  CampusAcceptanceIncludeList._({
    _is.WhereExpressionBuilder<CampusAcceptanceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusAcceptance.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAcceptance.t;
}

class CampusAcceptanceRepository {
  const CampusAcceptanceRepository._();

  /// Returns a list of [CampusAcceptance]s matching the given query parameters.
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
  Future<List<CampusAcceptance>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAcceptanceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAcceptanceTable>? orderBy,
    _is.OrderByListBuilder<CampusAcceptanceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusAcceptance>(
      where: where?.call(CampusAcceptance.t),
      orderBy: orderBy?.call(CampusAcceptance.t),
      orderByList: orderByList?.call(CampusAcceptance.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusAcceptance] matching the given query parameters.
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
  Future<CampusAcceptance?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAcceptanceTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusAcceptanceTable>? orderBy,
    _is.OrderByListBuilder<CampusAcceptanceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusAcceptance>(
      where: where?.call(CampusAcceptance.t),
      orderBy: orderBy?.call(CampusAcceptance.t),
      orderByList: orderByList?.call(CampusAcceptance.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusAcceptance] by its [id] or null if no such row exists.
  Future<CampusAcceptance?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusAcceptance>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusAcceptance]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusAcceptance]s will have their `id` fields set.
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
  Future<List<CampusAcceptance>> insert(
    _is.DatabaseSession session,
    List<CampusAcceptance> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusAcceptance>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusAcceptance] and returns the inserted row.
  ///
  /// The returned [CampusAcceptance] will have its `id` field set.
  Future<CampusAcceptance> insertRow(
    _is.DatabaseSession session,
    CampusAcceptance row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusAcceptance>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusAcceptance]s in the list and returns the resulting rows.
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
  /// The returned [CampusAcceptance]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAcceptance>> upsert(
    _is.DatabaseSession session,
    List<CampusAcceptance> rows, {
    required _is.ColumnSelections<CampusAcceptanceTable> conflictColumns,
    _is.ColumnSelections<CampusAcceptanceTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAcceptanceTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusAcceptance>(
      rows,
      conflictColumns: conflictColumns(CampusAcceptance.t),
      updateColumns: updateColumns?.call(CampusAcceptance.t),
      updateWhere: updateWhere?.call(CampusAcceptance.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusAcceptance] and returns the resulting row.
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
  /// The returned [CampusAcceptance] will have its `id` field set.
  Future<CampusAcceptance?> upsertRow(
    _is.DatabaseSession session,
    CampusAcceptance row, {
    required _is.ColumnSelections<CampusAcceptanceTable> conflictColumns,
    _is.ColumnSelections<CampusAcceptanceTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAcceptanceTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusAcceptance>(
      row,
      conflictColumns: conflictColumns(CampusAcceptance.t),
      updateColumns: updateColumns?.call(CampusAcceptance.t),
      updateWhere: updateWhere?.call(CampusAcceptance.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAcceptance]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAcceptance>> update(
    _is.DatabaseSession session,
    List<CampusAcceptance> rows, {
    _is.ColumnSelections<CampusAcceptanceTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusAcceptance>(
      rows,
      columns: columns?.call(CampusAcceptance.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusAcceptance]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusAcceptance> updateRow(
    _is.DatabaseSession session,
    CampusAcceptance row, {
    _is.ColumnSelections<CampusAcceptanceTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusAcceptance>(
      row,
      columns: columns?.call(CampusAcceptance.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusAcceptance] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusAcceptance?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusAcceptanceUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusAcceptance>(
      id,
      columnValues: columnValues(CampusAcceptance.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAcceptance]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAcceptance>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusAcceptanceUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusAcceptanceTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAcceptanceTable>? orderBy,
    _is.OrderByListBuilder<CampusAcceptanceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusAcceptance>(
      columnValues: columnValues(CampusAcceptance.t.updateTable),
      where: where(CampusAcceptance.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAcceptance.t),
      orderByList: orderByList?.call(CampusAcceptance.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusAcceptance]s in the list and returns the deleted rows.
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
  Future<List<CampusAcceptance>> delete(
    _is.DatabaseSession session,
    List<CampusAcceptance> rows, {
    _is.OrderByBuilder<CampusAcceptanceTable>? orderBy,
    _is.OrderByListBuilder<CampusAcceptanceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusAcceptance>(
      rows,
      orderBy: orderBy?.call(CampusAcceptance.t),
      orderByList: orderByList?.call(CampusAcceptance.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusAcceptance].
  Future<CampusAcceptance> deleteRow(
    _is.DatabaseSession session,
    CampusAcceptance row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusAcceptance>(
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
  Future<List<CampusAcceptance>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAcceptanceTable> where,
    _is.OrderByBuilder<CampusAcceptanceTable>? orderBy,
    _is.OrderByListBuilder<CampusAcceptanceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusAcceptance>(
      where: where(CampusAcceptance.t),
      orderBy: orderBy?.call(CampusAcceptance.t),
      orderByList: orderByList?.call(CampusAcceptance.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAcceptanceTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusAcceptance>(
      where: where?.call(CampusAcceptance.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusAcceptance] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAcceptanceTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusAcceptance>(
      where: where(CampusAcceptance.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
