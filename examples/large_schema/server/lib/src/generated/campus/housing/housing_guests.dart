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
abstract class CampusHousingGuest
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusHousingGuest._({
    this.id,
    required this.contractId,
    required this.name,
    required this.arrivesAt,
    required this.leavesAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingGuest({
    _is.UuidValue? id,
    required _is.UuidValue contractId,
    required String name,
    required DateTime arrivesAt,
    required DateTime leavesAt,
    DateTime? createdAt,
  }) = _CampusHousingGuestImpl;

  factory CampusHousingGuest.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusHousingGuest(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      contractId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['contractId'],
      ),
      name: jsonSerialization['name'] as String,
      arrivesAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['arrivesAt'],
      ),
      leavesAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['leavesAt'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusHousingGuestTable();

  static const db = CampusHousingGuestRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue contractId;

  String name;

  DateTime arrivesAt;

  DateTime leavesAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusHousingGuest]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusHousingGuest copyWith({
    _is.UuidValue? id,
    _is.UuidValue? contractId,
    String? name,
    DateTime? arrivesAt,
    DateTime? leavesAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingGuest',
      if (id != null) 'id': id?.toJson(),
      'contractId': contractId.toJson(),
      'name': name,
      'arrivesAt': arrivesAt.toJson(),
      'leavesAt': leavesAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingGuest',
      if (id != null) 'id': id?.toJson(),
      'contractId': contractId.toJson(),
      'name': name,
      'arrivesAt': arrivesAt.toJson(),
      'leavesAt': leavesAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusHousingGuestInclude include() {
    return CampusHousingGuestInclude._();
  }

  static CampusHousingGuestIncludeList includeList({
    _is.WhereExpressionBuilder<CampusHousingGuestTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingGuestTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingGuestTable>? orderByList,
    CampusHousingGuestInclude? include,
  }) {
    return CampusHousingGuestIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingGuest.t),
      orderByList: orderByList?.call(CampusHousingGuest.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingGuestImpl extends CampusHousingGuest {
  _CampusHousingGuestImpl({
    _is.UuidValue? id,
    required _is.UuidValue contractId,
    required String name,
    required DateTime arrivesAt,
    required DateTime leavesAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         contractId: contractId,
         name: name,
         arrivesAt: arrivesAt,
         leavesAt: leavesAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingGuest]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusHousingGuest copyWith({
    Object? id = _Undefined,
    _is.UuidValue? contractId,
    String? name,
    DateTime? arrivesAt,
    DateTime? leavesAt,
    DateTime? createdAt,
  }) {
    return CampusHousingGuest(
      id: id is _is.UuidValue? ? id : this.id,
      contractId: contractId ?? this.contractId,
      name: name ?? this.name,
      arrivesAt: arrivesAt ?? this.arrivesAt,
      leavesAt: leavesAt ?? this.leavesAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusHousingGuestUpdateTable
    extends _is.UpdateTable<CampusHousingGuestTable> {
  CampusHousingGuestUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> contractId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.contractId,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> arrivesAt(DateTime value) =>
      _is.ColumnValue(
        table.arrivesAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> leavesAt(DateTime value) =>
      _is.ColumnValue(
        table.leavesAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusHousingGuestTable extends _is.Table<_is.UuidValue?> {
  CampusHousingGuestTable({super.tableRelation})
    : super(tableName: 'campus_housing_guests') {
    updateTable = CampusHousingGuestUpdateTable(this);
    contractId = _is.ColumnUuid(
      'contractId',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    arrivesAt = _is.ColumnDateTime(
      'arrivesAt',
      this,
    );
    leavesAt = _is.ColumnDateTime(
      'leavesAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusHousingGuestUpdateTable updateTable;

  late final _is.ColumnUuid contractId;

  late final _is.ColumnString name;

  late final _is.ColumnDateTime arrivesAt;

  late final _is.ColumnDateTime leavesAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    contractId,
    name,
    arrivesAt,
    leavesAt,
    createdAt,
  ];
}

class CampusHousingGuestInclude extends _is.IncludeObject {
  CampusHousingGuestInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingGuest.t;
}

class CampusHousingGuestIncludeList extends _is.IncludeList {
  CampusHousingGuestIncludeList._({
    _is.WhereExpressionBuilder<CampusHousingGuestTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusHousingGuest.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingGuest.t;
}

class CampusHousingGuestRepository {
  const CampusHousingGuestRepository._();

  /// Returns a list of [CampusHousingGuest]s matching the given query parameters.
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
  Future<List<CampusHousingGuest>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingGuestTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingGuestTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingGuestTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusHousingGuest>(
      where: where?.call(CampusHousingGuest.t),
      orderBy: orderBy?.call(CampusHousingGuest.t),
      orderByList: orderByList?.call(CampusHousingGuest.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusHousingGuest] matching the given query parameters.
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
  Future<CampusHousingGuest?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingGuestTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusHousingGuestTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingGuestTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusHousingGuest>(
      where: where?.call(CampusHousingGuest.t),
      orderBy: orderBy?.call(CampusHousingGuest.t),
      orderByList: orderByList?.call(CampusHousingGuest.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusHousingGuest] by its [id] or null if no such row exists.
  Future<CampusHousingGuest?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusHousingGuest>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusHousingGuest]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusHousingGuest]s will have their `id` fields set.
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
  Future<List<CampusHousingGuest>> insert(
    _is.DatabaseSession session,
    List<CampusHousingGuest> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusHousingGuest>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusHousingGuest] and returns the inserted row.
  ///
  /// The returned [CampusHousingGuest] will have its `id` field set.
  Future<CampusHousingGuest> insertRow(
    _is.DatabaseSession session,
    CampusHousingGuest row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusHousingGuest>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusHousingGuest]s in the list and returns the resulting rows.
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
  /// The returned [CampusHousingGuest]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingGuest>> upsert(
    _is.DatabaseSession session,
    List<CampusHousingGuest> rows, {
    required _is.ColumnSelections<CampusHousingGuestTable> conflictColumns,
    _is.ColumnSelections<CampusHousingGuestTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingGuestTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusHousingGuest>(
      rows,
      conflictColumns: conflictColumns(CampusHousingGuest.t),
      updateColumns: updateColumns?.call(CampusHousingGuest.t),
      updateWhere: updateWhere?.call(CampusHousingGuest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusHousingGuest] and returns the resulting row.
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
  /// The returned [CampusHousingGuest] will have its `id` field set.
  Future<CampusHousingGuest?> upsertRow(
    _is.DatabaseSession session,
    CampusHousingGuest row, {
    required _is.ColumnSelections<CampusHousingGuestTable> conflictColumns,
    _is.ColumnSelections<CampusHousingGuestTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingGuestTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusHousingGuest>(
      row,
      conflictColumns: conflictColumns(CampusHousingGuest.t),
      updateColumns: updateColumns?.call(CampusHousingGuest.t),
      updateWhere: updateWhere?.call(CampusHousingGuest.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingGuest]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingGuest>> update(
    _is.DatabaseSession session,
    List<CampusHousingGuest> rows, {
    _is.ColumnSelections<CampusHousingGuestTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusHousingGuest>(
      rows,
      columns: columns?.call(CampusHousingGuest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusHousingGuest]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusHousingGuest> updateRow(
    _is.DatabaseSession session,
    CampusHousingGuest row, {
    _is.ColumnSelections<CampusHousingGuestTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusHousingGuest>(
      row,
      columns: columns?.call(CampusHousingGuest.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusHousingGuest] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusHousingGuest?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusHousingGuestUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusHousingGuest>(
      id,
      columnValues: columnValues(CampusHousingGuest.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingGuest]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingGuest>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusHousingGuestUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusHousingGuestTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingGuestTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingGuestTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusHousingGuest>(
      columnValues: columnValues(CampusHousingGuest.t.updateTable),
      where: where(CampusHousingGuest.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingGuest.t),
      orderByList: orderByList?.call(CampusHousingGuest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusHousingGuest]s in the list and returns the deleted rows.
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
  Future<List<CampusHousingGuest>> delete(
    _is.DatabaseSession session,
    List<CampusHousingGuest> rows, {
    _is.OrderByBuilder<CampusHousingGuestTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingGuestTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusHousingGuest>(
      rows,
      orderBy: orderBy?.call(CampusHousingGuest.t),
      orderByList: orderByList?.call(CampusHousingGuest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusHousingGuest].
  Future<CampusHousingGuest> deleteRow(
    _is.DatabaseSession session,
    CampusHousingGuest row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusHousingGuest>(
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
  Future<List<CampusHousingGuest>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingGuestTable> where,
    _is.OrderByBuilder<CampusHousingGuestTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingGuestTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusHousingGuest>(
      where: where(CampusHousingGuest.t),
      orderBy: orderBy?.call(CampusHousingGuest.t),
      orderByList: orderByList?.call(CampusHousingGuest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingGuestTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusHousingGuest>(
      where: where?.call(CampusHousingGuest.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusHousingGuest] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingGuestTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusHousingGuest>(
      where: where(CampusHousingGuest.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
