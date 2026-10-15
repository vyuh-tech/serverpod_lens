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

/// Fictional university fixture: library.
abstract class CampusLibraryBranch
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusLibraryBranch._({
    this.id,
    required this.campusId,
    required this.name,
    required this.openingHours,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusLibraryBranch({
    _is.UuidValue? id,
    required _is.UuidValue campusId,
    required String name,
    required String openingHours,
    DateTime? createdAt,
  }) = _CampusLibraryBranchImpl;

  factory CampusLibraryBranch.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusLibraryBranch(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      campusId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['campusId'],
      ),
      name: jsonSerialization['name'] as String,
      openingHours: jsonSerialization['openingHours'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusLibraryBranchTable();

  static const db = CampusLibraryBranchRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue campusId;

  String name;

  String openingHours;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusLibraryBranch]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusLibraryBranch copyWith({
    _is.UuidValue? id,
    _is.UuidValue? campusId,
    String? name,
    String? openingHours,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusLibraryBranch',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'name': name,
      'openingHours': openingHours,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusLibraryBranch',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'name': name,
      'openingHours': openingHours,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusLibraryBranchInclude include() {
    return CampusLibraryBranchInclude._();
  }

  static CampusLibraryBranchIncludeList includeList({
    _is.WhereExpressionBuilder<CampusLibraryBranchTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLibraryBranchTable>? orderBy,
    _is.OrderByListBuilder<CampusLibraryBranchTable>? orderByList,
    CampusLibraryBranchInclude? include,
  }) {
    return CampusLibraryBranchIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusLibraryBranch.t),
      orderByList: orderByList?.call(CampusLibraryBranch.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusLibraryBranchImpl extends CampusLibraryBranch {
  _CampusLibraryBranchImpl({
    _is.UuidValue? id,
    required _is.UuidValue campusId,
    required String name,
    required String openingHours,
    DateTime? createdAt,
  }) : super._(
         id: id,
         campusId: campusId,
         name: name,
         openingHours: openingHours,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusLibraryBranch]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusLibraryBranch copyWith({
    Object? id = _Undefined,
    _is.UuidValue? campusId,
    String? name,
    String? openingHours,
    DateTime? createdAt,
  }) {
    return CampusLibraryBranch(
      id: id is _is.UuidValue? ? id : this.id,
      campusId: campusId ?? this.campusId,
      name: name ?? this.name,
      openingHours: openingHours ?? this.openingHours,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusLibraryBranchUpdateTable
    extends _is.UpdateTable<CampusLibraryBranchTable> {
  CampusLibraryBranchUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> campusId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.campusId,
        value,
      );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> openingHours(String value) => _is.ColumnValue(
    table.openingHours,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusLibraryBranchTable extends _is.Table<_is.UuidValue?> {
  CampusLibraryBranchTable({super.tableRelation})
    : super(tableName: 'campus_library_branches') {
    updateTable = CampusLibraryBranchUpdateTable(this);
    campusId = _is.ColumnUuid(
      'campusId',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    openingHours = _is.ColumnString(
      'openingHours',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusLibraryBranchUpdateTable updateTable;

  late final _is.ColumnUuid campusId;

  late final _is.ColumnString name;

  late final _is.ColumnString openingHours;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    campusId,
    name,
    openingHours,
    createdAt,
  ];
}

class CampusLibraryBranchInclude extends _is.IncludeObject {
  CampusLibraryBranchInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusLibraryBranch.t;
}

class CampusLibraryBranchIncludeList extends _is.IncludeList {
  CampusLibraryBranchIncludeList._({
    _is.WhereExpressionBuilder<CampusLibraryBranchTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusLibraryBranch.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusLibraryBranch.t;
}

class CampusLibraryBranchRepository {
  const CampusLibraryBranchRepository._();

  /// Returns a list of [CampusLibraryBranch]s matching the given query parameters.
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
  Future<List<CampusLibraryBranch>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLibraryBranchTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLibraryBranchTable>? orderBy,
    _is.OrderByListBuilder<CampusLibraryBranchTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusLibraryBranch>(
      where: where?.call(CampusLibraryBranch.t),
      orderBy: orderBy?.call(CampusLibraryBranch.t),
      orderByList: orderByList?.call(CampusLibraryBranch.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusLibraryBranch] matching the given query parameters.
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
  Future<CampusLibraryBranch?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLibraryBranchTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusLibraryBranchTable>? orderBy,
    _is.OrderByListBuilder<CampusLibraryBranchTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusLibraryBranch>(
      where: where?.call(CampusLibraryBranch.t),
      orderBy: orderBy?.call(CampusLibraryBranch.t),
      orderByList: orderByList?.call(CampusLibraryBranch.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusLibraryBranch] by its [id] or null if no such row exists.
  Future<CampusLibraryBranch?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusLibraryBranch>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusLibraryBranch]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusLibraryBranch]s will have their `id` fields set.
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
  Future<List<CampusLibraryBranch>> insert(
    _is.DatabaseSession session,
    List<CampusLibraryBranch> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusLibraryBranch>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusLibraryBranch] and returns the inserted row.
  ///
  /// The returned [CampusLibraryBranch] will have its `id` field set.
  Future<CampusLibraryBranch> insertRow(
    _is.DatabaseSession session,
    CampusLibraryBranch row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusLibraryBranch>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusLibraryBranch]s in the list and returns the resulting rows.
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
  /// The returned [CampusLibraryBranch]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLibraryBranch>> upsert(
    _is.DatabaseSession session,
    List<CampusLibraryBranch> rows, {
    required _is.ColumnSelections<CampusLibraryBranchTable> conflictColumns,
    _is.ColumnSelections<CampusLibraryBranchTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusLibraryBranchTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusLibraryBranch>(
      rows,
      conflictColumns: conflictColumns(CampusLibraryBranch.t),
      updateColumns: updateColumns?.call(CampusLibraryBranch.t),
      updateWhere: updateWhere?.call(CampusLibraryBranch.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusLibraryBranch] and returns the resulting row.
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
  /// The returned [CampusLibraryBranch] will have its `id` field set.
  Future<CampusLibraryBranch?> upsertRow(
    _is.DatabaseSession session,
    CampusLibraryBranch row, {
    required _is.ColumnSelections<CampusLibraryBranchTable> conflictColumns,
    _is.ColumnSelections<CampusLibraryBranchTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusLibraryBranchTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusLibraryBranch>(
      row,
      conflictColumns: conflictColumns(CampusLibraryBranch.t),
      updateColumns: updateColumns?.call(CampusLibraryBranch.t),
      updateWhere: updateWhere?.call(CampusLibraryBranch.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusLibraryBranch]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLibraryBranch>> update(
    _is.DatabaseSession session,
    List<CampusLibraryBranch> rows, {
    _is.ColumnSelections<CampusLibraryBranchTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusLibraryBranch>(
      rows,
      columns: columns?.call(CampusLibraryBranch.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusLibraryBranch]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusLibraryBranch> updateRow(
    _is.DatabaseSession session,
    CampusLibraryBranch row, {
    _is.ColumnSelections<CampusLibraryBranchTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusLibraryBranch>(
      row,
      columns: columns?.call(CampusLibraryBranch.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusLibraryBranch] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusLibraryBranch?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusLibraryBranchUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusLibraryBranch>(
      id,
      columnValues: columnValues(CampusLibraryBranch.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusLibraryBranch]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusLibraryBranch>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusLibraryBranchUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusLibraryBranchTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusLibraryBranchTable>? orderBy,
    _is.OrderByListBuilder<CampusLibraryBranchTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusLibraryBranch>(
      columnValues: columnValues(CampusLibraryBranch.t.updateTable),
      where: where(CampusLibraryBranch.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusLibraryBranch.t),
      orderByList: orderByList?.call(CampusLibraryBranch.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusLibraryBranch]s in the list and returns the deleted rows.
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
  Future<List<CampusLibraryBranch>> delete(
    _is.DatabaseSession session,
    List<CampusLibraryBranch> rows, {
    _is.OrderByBuilder<CampusLibraryBranchTable>? orderBy,
    _is.OrderByListBuilder<CampusLibraryBranchTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusLibraryBranch>(
      rows,
      orderBy: orderBy?.call(CampusLibraryBranch.t),
      orderByList: orderByList?.call(CampusLibraryBranch.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusLibraryBranch].
  Future<CampusLibraryBranch> deleteRow(
    _is.DatabaseSession session,
    CampusLibraryBranch row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusLibraryBranch>(
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
  Future<List<CampusLibraryBranch>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusLibraryBranchTable> where,
    _is.OrderByBuilder<CampusLibraryBranchTable>? orderBy,
    _is.OrderByListBuilder<CampusLibraryBranchTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusLibraryBranch>(
      where: where(CampusLibraryBranch.t),
      orderBy: orderBy?.call(CampusLibraryBranch.t),
      orderByList: orderByList?.call(CampusLibraryBranch.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusLibraryBranchTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusLibraryBranch>(
      where: where?.call(CampusLibraryBranch.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusLibraryBranch] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusLibraryBranchTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusLibraryBranch>(
      where: where(CampusLibraryBranch.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
