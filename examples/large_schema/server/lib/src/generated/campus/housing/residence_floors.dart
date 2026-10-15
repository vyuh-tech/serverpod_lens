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
abstract class CampusResidenceFloor
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusResidenceFloor._({
    this.id,
    required this.residenceId,
    required this.level,
    this.description,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResidenceFloor({
    _is.UuidValue? id,
    required _is.UuidValue residenceId,
    required int level,
    String? description,
    DateTime? createdAt,
  }) = _CampusResidenceFloorImpl;

  factory CampusResidenceFloor.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusResidenceFloor(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      residenceId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['residenceId'],
      ),
      level: jsonSerialization['level'] as int,
      description: jsonSerialization['description'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusResidenceFloorTable();

  static const db = CampusResidenceFloorRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue residenceId;

  int level;

  String? description;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusResidenceFloor]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusResidenceFloor copyWith({
    _is.UuidValue? id,
    _is.UuidValue? residenceId,
    int? level,
    String? description,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResidenceFloor',
      if (id != null) 'id': id?.toJson(),
      'residenceId': residenceId.toJson(),
      'level': level,
      if (description != null) 'description': description,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResidenceFloor',
      if (id != null) 'id': id?.toJson(),
      'residenceId': residenceId.toJson(),
      'level': level,
      if (description != null) 'description': description,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusResidenceFloorInclude include() {
    return CampusResidenceFloorInclude._();
  }

  static CampusResidenceFloorIncludeList includeList({
    _is.WhereExpressionBuilder<CampusResidenceFloorTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResidenceFloorTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceFloorTable>? orderByList,
    CampusResidenceFloorInclude? include,
  }) {
    return CampusResidenceFloorIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResidenceFloor.t),
      orderByList: orderByList?.call(CampusResidenceFloor.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusResidenceFloorImpl extends CampusResidenceFloor {
  _CampusResidenceFloorImpl({
    _is.UuidValue? id,
    required _is.UuidValue residenceId,
    required int level,
    String? description,
    DateTime? createdAt,
  }) : super._(
         id: id,
         residenceId: residenceId,
         level: level,
         description: description,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResidenceFloor]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusResidenceFloor copyWith({
    Object? id = _Undefined,
    _is.UuidValue? residenceId,
    int? level,
    Object? description = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusResidenceFloor(
      id: id is _is.UuidValue? ? id : this.id,
      residenceId: residenceId ?? this.residenceId,
      level: level ?? this.level,
      description: description is String? ? description : this.description,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusResidenceFloorUpdateTable
    extends _is.UpdateTable<CampusResidenceFloorTable> {
  CampusResidenceFloorUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> residenceId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.residenceId,
    value,
  );

  _is.ColumnValue<int, int> level(int value) => _is.ColumnValue(
    table.level,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusResidenceFloorTable extends _is.Table<_is.UuidValue?> {
  CampusResidenceFloorTable({super.tableRelation})
    : super(tableName: 'campus_residence_floors') {
    updateTable = CampusResidenceFloorUpdateTable(this);
    residenceId = _is.ColumnUuid(
      'residenceId',
      this,
    );
    level = _is.ColumnInt(
      'level',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusResidenceFloorUpdateTable updateTable;

  late final _is.ColumnUuid residenceId;

  late final _is.ColumnInt level;

  late final _is.ColumnString description;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    residenceId,
    level,
    description,
    createdAt,
  ];
}

class CampusResidenceFloorInclude extends _is.IncludeObject {
  CampusResidenceFloorInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResidenceFloor.t;
}

class CampusResidenceFloorIncludeList extends _is.IncludeList {
  CampusResidenceFloorIncludeList._({
    _is.WhereExpressionBuilder<CampusResidenceFloorTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusResidenceFloor.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResidenceFloor.t;
}

class CampusResidenceFloorRepository {
  const CampusResidenceFloorRepository._();

  /// Returns a list of [CampusResidenceFloor]s matching the given query parameters.
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
  Future<List<CampusResidenceFloor>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResidenceFloorTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResidenceFloorTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceFloorTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusResidenceFloor>(
      where: where?.call(CampusResidenceFloor.t),
      orderBy: orderBy?.call(CampusResidenceFloor.t),
      orderByList: orderByList?.call(CampusResidenceFloor.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusResidenceFloor] matching the given query parameters.
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
  Future<CampusResidenceFloor?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResidenceFloorTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusResidenceFloorTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceFloorTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusResidenceFloor>(
      where: where?.call(CampusResidenceFloor.t),
      orderBy: orderBy?.call(CampusResidenceFloor.t),
      orderByList: orderByList?.call(CampusResidenceFloor.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusResidenceFloor] by its [id] or null if no such row exists.
  Future<CampusResidenceFloor?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusResidenceFloor>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusResidenceFloor]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusResidenceFloor]s will have their `id` fields set.
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
  Future<List<CampusResidenceFloor>> insert(
    _is.DatabaseSession session,
    List<CampusResidenceFloor> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusResidenceFloor>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusResidenceFloor] and returns the inserted row.
  ///
  /// The returned [CampusResidenceFloor] will have its `id` field set.
  Future<CampusResidenceFloor> insertRow(
    _is.DatabaseSession session,
    CampusResidenceFloor row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusResidenceFloor>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusResidenceFloor]s in the list and returns the resulting rows.
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
  /// The returned [CampusResidenceFloor]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResidenceFloor>> upsert(
    _is.DatabaseSession session,
    List<CampusResidenceFloor> rows, {
    required _is.ColumnSelections<CampusResidenceFloorTable> conflictColumns,
    _is.ColumnSelections<CampusResidenceFloorTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResidenceFloorTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusResidenceFloor>(
      rows,
      conflictColumns: conflictColumns(CampusResidenceFloor.t),
      updateColumns: updateColumns?.call(CampusResidenceFloor.t),
      updateWhere: updateWhere?.call(CampusResidenceFloor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusResidenceFloor] and returns the resulting row.
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
  /// The returned [CampusResidenceFloor] will have its `id` field set.
  Future<CampusResidenceFloor?> upsertRow(
    _is.DatabaseSession session,
    CampusResidenceFloor row, {
    required _is.ColumnSelections<CampusResidenceFloorTable> conflictColumns,
    _is.ColumnSelections<CampusResidenceFloorTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResidenceFloorTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusResidenceFloor>(
      row,
      conflictColumns: conflictColumns(CampusResidenceFloor.t),
      updateColumns: updateColumns?.call(CampusResidenceFloor.t),
      updateWhere: updateWhere?.call(CampusResidenceFloor.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResidenceFloor]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResidenceFloor>> update(
    _is.DatabaseSession session,
    List<CampusResidenceFloor> rows, {
    _is.ColumnSelections<CampusResidenceFloorTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusResidenceFloor>(
      rows,
      columns: columns?.call(CampusResidenceFloor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusResidenceFloor]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusResidenceFloor> updateRow(
    _is.DatabaseSession session,
    CampusResidenceFloor row, {
    _is.ColumnSelections<CampusResidenceFloorTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusResidenceFloor>(
      row,
      columns: columns?.call(CampusResidenceFloor.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusResidenceFloor] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusResidenceFloor?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusResidenceFloorUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusResidenceFloor>(
      id,
      columnValues: columnValues(CampusResidenceFloor.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResidenceFloor]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResidenceFloor>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusResidenceFloorUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusResidenceFloorTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResidenceFloorTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceFloorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusResidenceFloor>(
      columnValues: columnValues(CampusResidenceFloor.t.updateTable),
      where: where(CampusResidenceFloor.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResidenceFloor.t),
      orderByList: orderByList?.call(CampusResidenceFloor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusResidenceFloor]s in the list and returns the deleted rows.
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
  Future<List<CampusResidenceFloor>> delete(
    _is.DatabaseSession session,
    List<CampusResidenceFloor> rows, {
    _is.OrderByBuilder<CampusResidenceFloorTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceFloorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusResidenceFloor>(
      rows,
      orderBy: orderBy?.call(CampusResidenceFloor.t),
      orderByList: orderByList?.call(CampusResidenceFloor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusResidenceFloor].
  Future<CampusResidenceFloor> deleteRow(
    _is.DatabaseSession session,
    CampusResidenceFloor row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusResidenceFloor>(
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
  Future<List<CampusResidenceFloor>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResidenceFloorTable> where,
    _is.OrderByBuilder<CampusResidenceFloorTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceFloorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusResidenceFloor>(
      where: where(CampusResidenceFloor.t),
      orderBy: orderBy?.call(CampusResidenceFloor.t),
      orderByList: orderByList?.call(CampusResidenceFloor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResidenceFloorTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusResidenceFloor>(
      where: where?.call(CampusResidenceFloor.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusResidenceFloor] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResidenceFloorTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusResidenceFloor>(
      where: where(CampusResidenceFloor.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
