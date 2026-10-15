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

/// Fictional university fixture: research.
abstract class CampusGrantBudget
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusGrantBudget._({
    this.id,
    required this.grantId,
    required this.category,
    required this.allocatedMinor,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGrantBudget({
    _is.UuidValue? id,
    required _is.UuidValue grantId,
    required String category,
    required int allocatedMinor,
    DateTime? createdAt,
  }) = _CampusGrantBudgetImpl;

  factory CampusGrantBudget.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusGrantBudget(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      grantId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['grantId'],
      ),
      category: jsonSerialization['category'] as String,
      allocatedMinor: jsonSerialization['allocatedMinor'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusGrantBudgetTable();

  static const db = CampusGrantBudgetRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue grantId;

  String category;

  int allocatedMinor;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusGrantBudget]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusGrantBudget copyWith({
    _is.UuidValue? id,
    _is.UuidValue? grantId,
    String? category,
    int? allocatedMinor,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGrantBudget',
      if (id != null) 'id': id?.toJson(),
      'grantId': grantId.toJson(),
      'category': category,
      'allocatedMinor': allocatedMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGrantBudget',
      if (id != null) 'id': id?.toJson(),
      'grantId': grantId.toJson(),
      'category': category,
      'allocatedMinor': allocatedMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusGrantBudgetInclude include() {
    return CampusGrantBudgetInclude._();
  }

  static CampusGrantBudgetIncludeList includeList({
    _is.WhereExpressionBuilder<CampusGrantBudgetTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGrantBudgetTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantBudgetTable>? orderByList,
    CampusGrantBudgetInclude? include,
  }) {
    return CampusGrantBudgetIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGrantBudget.t),
      orderByList: orderByList?.call(CampusGrantBudget.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGrantBudgetImpl extends CampusGrantBudget {
  _CampusGrantBudgetImpl({
    _is.UuidValue? id,
    required _is.UuidValue grantId,
    required String category,
    required int allocatedMinor,
    DateTime? createdAt,
  }) : super._(
         id: id,
         grantId: grantId,
         category: category,
         allocatedMinor: allocatedMinor,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGrantBudget]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusGrantBudget copyWith({
    Object? id = _Undefined,
    _is.UuidValue? grantId,
    String? category,
    int? allocatedMinor,
    DateTime? createdAt,
  }) {
    return CampusGrantBudget(
      id: id is _is.UuidValue? ? id : this.id,
      grantId: grantId ?? this.grantId,
      category: category ?? this.category,
      allocatedMinor: allocatedMinor ?? this.allocatedMinor,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusGrantBudgetUpdateTable
    extends _is.UpdateTable<CampusGrantBudgetTable> {
  CampusGrantBudgetUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> grantId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.grantId,
        value,
      );

  _is.ColumnValue<String, String> category(String value) => _is.ColumnValue(
    table.category,
    value,
  );

  _is.ColumnValue<int, int> allocatedMinor(int value) => _is.ColumnValue(
    table.allocatedMinor,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusGrantBudgetTable extends _is.Table<_is.UuidValue?> {
  CampusGrantBudgetTable({super.tableRelation})
    : super(tableName: 'campus_grant_budgets') {
    updateTable = CampusGrantBudgetUpdateTable(this);
    grantId = _is.ColumnUuid(
      'grantId',
      this,
    );
    category = _is.ColumnString(
      'category',
      this,
    );
    allocatedMinor = _is.ColumnInt(
      'allocatedMinor',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusGrantBudgetUpdateTable updateTable;

  late final _is.ColumnUuid grantId;

  late final _is.ColumnString category;

  late final _is.ColumnInt allocatedMinor;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    grantId,
    category,
    allocatedMinor,
    createdAt,
  ];
}

class CampusGrantBudgetInclude extends _is.IncludeObject {
  CampusGrantBudgetInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGrantBudget.t;
}

class CampusGrantBudgetIncludeList extends _is.IncludeList {
  CampusGrantBudgetIncludeList._({
    _is.WhereExpressionBuilder<CampusGrantBudgetTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusGrantBudget.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGrantBudget.t;
}

class CampusGrantBudgetRepository {
  const CampusGrantBudgetRepository._();

  /// Returns a list of [CampusGrantBudget]s matching the given query parameters.
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
  Future<List<CampusGrantBudget>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGrantBudgetTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGrantBudgetTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantBudgetTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusGrantBudget>(
      where: where?.call(CampusGrantBudget.t),
      orderBy: orderBy?.call(CampusGrantBudget.t),
      orderByList: orderByList?.call(CampusGrantBudget.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusGrantBudget] matching the given query parameters.
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
  Future<CampusGrantBudget?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGrantBudgetTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusGrantBudgetTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantBudgetTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusGrantBudget>(
      where: where?.call(CampusGrantBudget.t),
      orderBy: orderBy?.call(CampusGrantBudget.t),
      orderByList: orderByList?.call(CampusGrantBudget.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusGrantBudget] by its [id] or null if no such row exists.
  Future<CampusGrantBudget?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusGrantBudget>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusGrantBudget]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusGrantBudget]s will have their `id` fields set.
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
  Future<List<CampusGrantBudget>> insert(
    _is.DatabaseSession session,
    List<CampusGrantBudget> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusGrantBudget>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusGrantBudget] and returns the inserted row.
  ///
  /// The returned [CampusGrantBudget] will have its `id` field set.
  Future<CampusGrantBudget> insertRow(
    _is.DatabaseSession session,
    CampusGrantBudget row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusGrantBudget>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusGrantBudget]s in the list and returns the resulting rows.
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
  /// The returned [CampusGrantBudget]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGrantBudget>> upsert(
    _is.DatabaseSession session,
    List<CampusGrantBudget> rows, {
    required _is.ColumnSelections<CampusGrantBudgetTable> conflictColumns,
    _is.ColumnSelections<CampusGrantBudgetTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGrantBudgetTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusGrantBudget>(
      rows,
      conflictColumns: conflictColumns(CampusGrantBudget.t),
      updateColumns: updateColumns?.call(CampusGrantBudget.t),
      updateWhere: updateWhere?.call(CampusGrantBudget.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusGrantBudget] and returns the resulting row.
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
  /// The returned [CampusGrantBudget] will have its `id` field set.
  Future<CampusGrantBudget?> upsertRow(
    _is.DatabaseSession session,
    CampusGrantBudget row, {
    required _is.ColumnSelections<CampusGrantBudgetTable> conflictColumns,
    _is.ColumnSelections<CampusGrantBudgetTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGrantBudgetTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusGrantBudget>(
      row,
      conflictColumns: conflictColumns(CampusGrantBudget.t),
      updateColumns: updateColumns?.call(CampusGrantBudget.t),
      updateWhere: updateWhere?.call(CampusGrantBudget.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGrantBudget]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGrantBudget>> update(
    _is.DatabaseSession session,
    List<CampusGrantBudget> rows, {
    _is.ColumnSelections<CampusGrantBudgetTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusGrantBudget>(
      rows,
      columns: columns?.call(CampusGrantBudget.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusGrantBudget]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusGrantBudget> updateRow(
    _is.DatabaseSession session,
    CampusGrantBudget row, {
    _is.ColumnSelections<CampusGrantBudgetTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusGrantBudget>(
      row,
      columns: columns?.call(CampusGrantBudget.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusGrantBudget] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusGrantBudget?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusGrantBudgetUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusGrantBudget>(
      id,
      columnValues: columnValues(CampusGrantBudget.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGrantBudget]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGrantBudget>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusGrantBudgetUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusGrantBudgetTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGrantBudgetTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantBudgetTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusGrantBudget>(
      columnValues: columnValues(CampusGrantBudget.t.updateTable),
      where: where(CampusGrantBudget.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGrantBudget.t),
      orderByList: orderByList?.call(CampusGrantBudget.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusGrantBudget]s in the list and returns the deleted rows.
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
  Future<List<CampusGrantBudget>> delete(
    _is.DatabaseSession session,
    List<CampusGrantBudget> rows, {
    _is.OrderByBuilder<CampusGrantBudgetTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantBudgetTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusGrantBudget>(
      rows,
      orderBy: orderBy?.call(CampusGrantBudget.t),
      orderByList: orderByList?.call(CampusGrantBudget.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusGrantBudget].
  Future<CampusGrantBudget> deleteRow(
    _is.DatabaseSession session,
    CampusGrantBudget row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusGrantBudget>(
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
  Future<List<CampusGrantBudget>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGrantBudgetTable> where,
    _is.OrderByBuilder<CampusGrantBudgetTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantBudgetTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusGrantBudget>(
      where: where(CampusGrantBudget.t),
      orderBy: orderBy?.call(CampusGrantBudget.t),
      orderByList: orderByList?.call(CampusGrantBudget.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGrantBudgetTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusGrantBudget>(
      where: where?.call(CampusGrantBudget.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusGrantBudget] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGrantBudgetTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusGrantBudget>(
      where: where(CampusGrantBudget.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
