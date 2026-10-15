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
abstract class CampusScholarship
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusScholarship._({
    this.id,
    required this.name,
    this.departmentId,
    this.sponsorId,
    required this.annualBudgetMinor,
    required this.currency,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusScholarship({
    _is.UuidValue? id,
    required String name,
    _is.UuidValue? departmentId,
    _is.UuidValue? sponsorId,
    required int annualBudgetMinor,
    required String currency,
    DateTime? createdAt,
  }) = _CampusScholarshipImpl;

  factory CampusScholarship.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusScholarship(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      departmentId: jsonSerialization['departmentId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['departmentId'],
            ),
      sponsorId: jsonSerialization['sponsorId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['sponsorId']),
      annualBudgetMinor: jsonSerialization['annualBudgetMinor'] as int,
      currency: jsonSerialization['currency'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusScholarshipTable();

  static const db = CampusScholarshipRepository._();

  @override
  _is.UuidValue? id;

  String name;

  _is.UuidValue? departmentId;

  _is.UuidValue? sponsorId;

  int annualBudgetMinor;

  String currency;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusScholarship]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusScholarship copyWith({
    _is.UuidValue? id,
    String? name,
    _is.UuidValue? departmentId,
    _is.UuidValue? sponsorId,
    int? annualBudgetMinor,
    String? currency,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusScholarship',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (departmentId != null) 'departmentId': departmentId?.toJson(),
      if (sponsorId != null) 'sponsorId': sponsorId?.toJson(),
      'annualBudgetMinor': annualBudgetMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusScholarship',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (departmentId != null) 'departmentId': departmentId?.toJson(),
      if (sponsorId != null) 'sponsorId': sponsorId?.toJson(),
      'annualBudgetMinor': annualBudgetMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusScholarshipInclude include() {
    return CampusScholarshipInclude._();
  }

  static CampusScholarshipIncludeList includeList({
    _is.WhereExpressionBuilder<CampusScholarshipTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusScholarshipTable>? orderBy,
    _is.OrderByListBuilder<CampusScholarshipTable>? orderByList,
    CampusScholarshipInclude? include,
  }) {
    return CampusScholarshipIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusScholarship.t),
      orderByList: orderByList?.call(CampusScholarship.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusScholarshipImpl extends CampusScholarship {
  _CampusScholarshipImpl({
    _is.UuidValue? id,
    required String name,
    _is.UuidValue? departmentId,
    _is.UuidValue? sponsorId,
    required int annualBudgetMinor,
    required String currency,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         departmentId: departmentId,
         sponsorId: sponsorId,
         annualBudgetMinor: annualBudgetMinor,
         currency: currency,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusScholarship]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusScholarship copyWith({
    Object? id = _Undefined,
    String? name,
    Object? departmentId = _Undefined,
    Object? sponsorId = _Undefined,
    int? annualBudgetMinor,
    String? currency,
    DateTime? createdAt,
  }) {
    return CampusScholarship(
      id: id is _is.UuidValue? ? id : this.id,
      name: name ?? this.name,
      departmentId: departmentId is _is.UuidValue?
          ? departmentId
          : this.departmentId,
      sponsorId: sponsorId is _is.UuidValue? ? sponsorId : this.sponsorId,
      annualBudgetMinor: annualBudgetMinor ?? this.annualBudgetMinor,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusScholarshipUpdateTable
    extends _is.UpdateTable<CampusScholarshipTable> {
  CampusScholarshipUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> departmentId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.departmentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> sponsorId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.sponsorId,
    value,
  );

  _is.ColumnValue<int, int> annualBudgetMinor(int value) => _is.ColumnValue(
    table.annualBudgetMinor,
    value,
  );

  _is.ColumnValue<String, String> currency(String value) => _is.ColumnValue(
    table.currency,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusScholarshipTable extends _is.Table<_is.UuidValue?> {
  CampusScholarshipTable({super.tableRelation})
    : super(tableName: 'campus_scholarships') {
    updateTable = CampusScholarshipUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    departmentId = _is.ColumnUuid(
      'departmentId',
      this,
    );
    sponsorId = _is.ColumnUuid(
      'sponsorId',
      this,
    );
    annualBudgetMinor = _is.ColumnInt(
      'annualBudgetMinor',
      this,
    );
    currency = _is.ColumnString(
      'currency',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusScholarshipUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnUuid departmentId;

  late final _is.ColumnUuid sponsorId;

  late final _is.ColumnInt annualBudgetMinor;

  late final _is.ColumnString currency;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    departmentId,
    sponsorId,
    annualBudgetMinor,
    currency,
    createdAt,
  ];
}

class CampusScholarshipInclude extends _is.IncludeObject {
  CampusScholarshipInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusScholarship.t;
}

class CampusScholarshipIncludeList extends _is.IncludeList {
  CampusScholarshipIncludeList._({
    _is.WhereExpressionBuilder<CampusScholarshipTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusScholarship.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusScholarship.t;
}

class CampusScholarshipRepository {
  const CampusScholarshipRepository._();

  /// Returns a list of [CampusScholarship]s matching the given query parameters.
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
  Future<List<CampusScholarship>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusScholarshipTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusScholarshipTable>? orderBy,
    _is.OrderByListBuilder<CampusScholarshipTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusScholarship>(
      where: where?.call(CampusScholarship.t),
      orderBy: orderBy?.call(CampusScholarship.t),
      orderByList: orderByList?.call(CampusScholarship.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusScholarship] matching the given query parameters.
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
  Future<CampusScholarship?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusScholarshipTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusScholarshipTable>? orderBy,
    _is.OrderByListBuilder<CampusScholarshipTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusScholarship>(
      where: where?.call(CampusScholarship.t),
      orderBy: orderBy?.call(CampusScholarship.t),
      orderByList: orderByList?.call(CampusScholarship.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusScholarship] by its [id] or null if no such row exists.
  Future<CampusScholarship?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusScholarship>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusScholarship]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusScholarship]s will have their `id` fields set.
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
  Future<List<CampusScholarship>> insert(
    _is.DatabaseSession session,
    List<CampusScholarship> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusScholarship>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusScholarship] and returns the inserted row.
  ///
  /// The returned [CampusScholarship] will have its `id` field set.
  Future<CampusScholarship> insertRow(
    _is.DatabaseSession session,
    CampusScholarship row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusScholarship>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusScholarship]s in the list and returns the resulting rows.
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
  /// The returned [CampusScholarship]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusScholarship>> upsert(
    _is.DatabaseSession session,
    List<CampusScholarship> rows, {
    required _is.ColumnSelections<CampusScholarshipTable> conflictColumns,
    _is.ColumnSelections<CampusScholarshipTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusScholarshipTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusScholarship>(
      rows,
      conflictColumns: conflictColumns(CampusScholarship.t),
      updateColumns: updateColumns?.call(CampusScholarship.t),
      updateWhere: updateWhere?.call(CampusScholarship.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusScholarship] and returns the resulting row.
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
  /// The returned [CampusScholarship] will have its `id` field set.
  Future<CampusScholarship?> upsertRow(
    _is.DatabaseSession session,
    CampusScholarship row, {
    required _is.ColumnSelections<CampusScholarshipTable> conflictColumns,
    _is.ColumnSelections<CampusScholarshipTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusScholarshipTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusScholarship>(
      row,
      conflictColumns: conflictColumns(CampusScholarship.t),
      updateColumns: updateColumns?.call(CampusScholarship.t),
      updateWhere: updateWhere?.call(CampusScholarship.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusScholarship]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusScholarship>> update(
    _is.DatabaseSession session,
    List<CampusScholarship> rows, {
    _is.ColumnSelections<CampusScholarshipTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusScholarship>(
      rows,
      columns: columns?.call(CampusScholarship.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusScholarship]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusScholarship> updateRow(
    _is.DatabaseSession session,
    CampusScholarship row, {
    _is.ColumnSelections<CampusScholarshipTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusScholarship>(
      row,
      columns: columns?.call(CampusScholarship.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusScholarship] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusScholarship?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusScholarshipUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusScholarship>(
      id,
      columnValues: columnValues(CampusScholarship.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusScholarship]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusScholarship>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusScholarshipUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusScholarshipTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusScholarshipTable>? orderBy,
    _is.OrderByListBuilder<CampusScholarshipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusScholarship>(
      columnValues: columnValues(CampusScholarship.t.updateTable),
      where: where(CampusScholarship.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusScholarship.t),
      orderByList: orderByList?.call(CampusScholarship.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusScholarship]s in the list and returns the deleted rows.
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
  Future<List<CampusScholarship>> delete(
    _is.DatabaseSession session,
    List<CampusScholarship> rows, {
    _is.OrderByBuilder<CampusScholarshipTable>? orderBy,
    _is.OrderByListBuilder<CampusScholarshipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusScholarship>(
      rows,
      orderBy: orderBy?.call(CampusScholarship.t),
      orderByList: orderByList?.call(CampusScholarship.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusScholarship].
  Future<CampusScholarship> deleteRow(
    _is.DatabaseSession session,
    CampusScholarship row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusScholarship>(
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
  Future<List<CampusScholarship>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusScholarshipTable> where,
    _is.OrderByBuilder<CampusScholarshipTable>? orderBy,
    _is.OrderByListBuilder<CampusScholarshipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusScholarship>(
      where: where(CampusScholarship.t),
      orderBy: orderBy?.call(CampusScholarship.t),
      orderByList: orderByList?.call(CampusScholarship.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusScholarshipTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusScholarship>(
      where: where?.call(CampusScholarship.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusScholarship] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusScholarshipTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusScholarship>(
      where: where(CampusScholarship.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
