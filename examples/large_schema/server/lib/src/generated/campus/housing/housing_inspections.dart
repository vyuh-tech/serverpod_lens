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
abstract class CampusHousingInspection
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusHousingInspection._({
    this.id,
    required this.contractId,
    required this.inspectedAt,
    required this.condition,
    this.notes,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingInspection({
    _is.UuidValue? id,
    required _is.UuidValue contractId,
    required DateTime inspectedAt,
    required String condition,
    String? notes,
    DateTime? createdAt,
  }) = _CampusHousingInspectionImpl;

  factory CampusHousingInspection.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusHousingInspection(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      contractId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['contractId'],
      ),
      inspectedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['inspectedAt'],
      ),
      condition: jsonSerialization['condition'] as String,
      notes: jsonSerialization['notes'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusHousingInspectionTable();

  static const db = CampusHousingInspectionRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue contractId;

  DateTime inspectedAt;

  String condition;

  String? notes;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusHousingInspection]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusHousingInspection copyWith({
    _is.UuidValue? id,
    _is.UuidValue? contractId,
    DateTime? inspectedAt,
    String? condition,
    String? notes,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingInspection',
      if (id != null) 'id': id?.toJson(),
      'contractId': contractId.toJson(),
      'inspectedAt': inspectedAt.toJson(),
      'condition': condition,
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingInspection',
      if (id != null) 'id': id?.toJson(),
      'contractId': contractId.toJson(),
      'inspectedAt': inspectedAt.toJson(),
      'condition': condition,
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusHousingInspectionInclude include() {
    return CampusHousingInspectionInclude._();
  }

  static CampusHousingInspectionIncludeList includeList({
    _is.WhereExpressionBuilder<CampusHousingInspectionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingInspectionTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingInspectionTable>? orderByList,
    CampusHousingInspectionInclude? include,
  }) {
    return CampusHousingInspectionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingInspection.t),
      orderByList: orderByList?.call(CampusHousingInspection.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingInspectionImpl extends CampusHousingInspection {
  _CampusHousingInspectionImpl({
    _is.UuidValue? id,
    required _is.UuidValue contractId,
    required DateTime inspectedAt,
    required String condition,
    String? notes,
    DateTime? createdAt,
  }) : super._(
         id: id,
         contractId: contractId,
         inspectedAt: inspectedAt,
         condition: condition,
         notes: notes,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingInspection]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusHousingInspection copyWith({
    Object? id = _Undefined,
    _is.UuidValue? contractId,
    DateTime? inspectedAt,
    String? condition,
    Object? notes = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusHousingInspection(
      id: id is _is.UuidValue? ? id : this.id,
      contractId: contractId ?? this.contractId,
      inspectedAt: inspectedAt ?? this.inspectedAt,
      condition: condition ?? this.condition,
      notes: notes is String? ? notes : this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusHousingInspectionUpdateTable
    extends _is.UpdateTable<CampusHousingInspectionTable> {
  CampusHousingInspectionUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> contractId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.contractId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> inspectedAt(DateTime value) =>
      _is.ColumnValue(
        table.inspectedAt,
        value,
      );

  _is.ColumnValue<String, String> condition(String value) => _is.ColumnValue(
    table.condition,
    value,
  );

  _is.ColumnValue<String, String> notes(String? value) => _is.ColumnValue(
    table.notes,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusHousingInspectionTable extends _is.Table<_is.UuidValue?> {
  CampusHousingInspectionTable({super.tableRelation})
    : super(tableName: 'campus_housing_inspections') {
    updateTable = CampusHousingInspectionUpdateTable(this);
    contractId = _is.ColumnUuid(
      'contractId',
      this,
    );
    inspectedAt = _is.ColumnDateTime(
      'inspectedAt',
      this,
    );
    condition = _is.ColumnString(
      'condition',
      this,
    );
    notes = _is.ColumnString(
      'notes',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusHousingInspectionUpdateTable updateTable;

  late final _is.ColumnUuid contractId;

  late final _is.ColumnDateTime inspectedAt;

  late final _is.ColumnString condition;

  late final _is.ColumnString notes;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    contractId,
    inspectedAt,
    condition,
    notes,
    createdAt,
  ];
}

class CampusHousingInspectionInclude extends _is.IncludeObject {
  CampusHousingInspectionInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingInspection.t;
}

class CampusHousingInspectionIncludeList extends _is.IncludeList {
  CampusHousingInspectionIncludeList._({
    _is.WhereExpressionBuilder<CampusHousingInspectionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusHousingInspection.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingInspection.t;
}

class CampusHousingInspectionRepository {
  const CampusHousingInspectionRepository._();

  /// Returns a list of [CampusHousingInspection]s matching the given query parameters.
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
  Future<List<CampusHousingInspection>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingInspectionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingInspectionTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingInspectionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusHousingInspection>(
      where: where?.call(CampusHousingInspection.t),
      orderBy: orderBy?.call(CampusHousingInspection.t),
      orderByList: orderByList?.call(CampusHousingInspection.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusHousingInspection] matching the given query parameters.
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
  Future<CampusHousingInspection?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingInspectionTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusHousingInspectionTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingInspectionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusHousingInspection>(
      where: where?.call(CampusHousingInspection.t),
      orderBy: orderBy?.call(CampusHousingInspection.t),
      orderByList: orderByList?.call(CampusHousingInspection.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusHousingInspection] by its [id] or null if no such row exists.
  Future<CampusHousingInspection?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusHousingInspection>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusHousingInspection]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusHousingInspection]s will have their `id` fields set.
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
  Future<List<CampusHousingInspection>> insert(
    _is.DatabaseSession session,
    List<CampusHousingInspection> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusHousingInspection>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusHousingInspection] and returns the inserted row.
  ///
  /// The returned [CampusHousingInspection] will have its `id` field set.
  Future<CampusHousingInspection> insertRow(
    _is.DatabaseSession session,
    CampusHousingInspection row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusHousingInspection>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusHousingInspection]s in the list and returns the resulting rows.
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
  /// The returned [CampusHousingInspection]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingInspection>> upsert(
    _is.DatabaseSession session,
    List<CampusHousingInspection> rows, {
    required _is.ColumnSelections<CampusHousingInspectionTable> conflictColumns,
    _is.ColumnSelections<CampusHousingInspectionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingInspectionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusHousingInspection>(
      rows,
      conflictColumns: conflictColumns(CampusHousingInspection.t),
      updateColumns: updateColumns?.call(CampusHousingInspection.t),
      updateWhere: updateWhere?.call(CampusHousingInspection.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusHousingInspection] and returns the resulting row.
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
  /// The returned [CampusHousingInspection] will have its `id` field set.
  Future<CampusHousingInspection?> upsertRow(
    _is.DatabaseSession session,
    CampusHousingInspection row, {
    required _is.ColumnSelections<CampusHousingInspectionTable> conflictColumns,
    _is.ColumnSelections<CampusHousingInspectionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingInspectionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusHousingInspection>(
      row,
      conflictColumns: conflictColumns(CampusHousingInspection.t),
      updateColumns: updateColumns?.call(CampusHousingInspection.t),
      updateWhere: updateWhere?.call(CampusHousingInspection.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingInspection]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingInspection>> update(
    _is.DatabaseSession session,
    List<CampusHousingInspection> rows, {
    _is.ColumnSelections<CampusHousingInspectionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusHousingInspection>(
      rows,
      columns: columns?.call(CampusHousingInspection.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusHousingInspection]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusHousingInspection> updateRow(
    _is.DatabaseSession session,
    CampusHousingInspection row, {
    _is.ColumnSelections<CampusHousingInspectionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusHousingInspection>(
      row,
      columns: columns?.call(CampusHousingInspection.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusHousingInspection] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusHousingInspection?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusHousingInspectionUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusHousingInspection>(
      id,
      columnValues: columnValues(CampusHousingInspection.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingInspection]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingInspection>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusHousingInspectionUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusHousingInspectionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingInspectionTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingInspectionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusHousingInspection>(
      columnValues: columnValues(CampusHousingInspection.t.updateTable),
      where: where(CampusHousingInspection.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingInspection.t),
      orderByList: orderByList?.call(CampusHousingInspection.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusHousingInspection]s in the list and returns the deleted rows.
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
  Future<List<CampusHousingInspection>> delete(
    _is.DatabaseSession session,
    List<CampusHousingInspection> rows, {
    _is.OrderByBuilder<CampusHousingInspectionTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingInspectionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusHousingInspection>(
      rows,
      orderBy: orderBy?.call(CampusHousingInspection.t),
      orderByList: orderByList?.call(CampusHousingInspection.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusHousingInspection].
  Future<CampusHousingInspection> deleteRow(
    _is.DatabaseSession session,
    CampusHousingInspection row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusHousingInspection>(
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
  Future<List<CampusHousingInspection>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingInspectionTable> where,
    _is.OrderByBuilder<CampusHousingInspectionTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingInspectionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusHousingInspection>(
      where: where(CampusHousingInspection.t),
      orderBy: orderBy?.call(CampusHousingInspection.t),
      orderByList: orderByList?.call(CampusHousingInspection.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingInspectionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusHousingInspection>(
      where: where?.call(CampusHousingInspection.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusHousingInspection] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingInspectionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusHousingInspection>(
      where: where(CampusHousingInspection.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
