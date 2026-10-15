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

/// Fictional university fixture: academics.
abstract class CampusSectionCapacityOverride
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusSectionCapacityOverride._({
    this.id,
    required this.sectionId,
    required this.lecturerId,
    required this.extraPlaces,
    required this.reason,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSectionCapacityOverride({
    _is.UuidValue? id,
    required _is.UuidValue sectionId,
    required _is.UuidValue lecturerId,
    required int extraPlaces,
    required String reason,
    DateTime? createdAt,
  }) = _CampusSectionCapacityOverrideImpl;

  factory CampusSectionCapacityOverride.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusSectionCapacityOverride(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sectionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      lecturerId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      extraPlaces: jsonSerialization['extraPlaces'] as int,
      reason: jsonSerialization['reason'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusSectionCapacityOverrideTable();

  static const db = CampusSectionCapacityOverrideRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue sectionId;

  _is.UuidValue lecturerId;

  int extraPlaces;

  String reason;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusSectionCapacityOverride]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusSectionCapacityOverride copyWith({
    _is.UuidValue? id,
    _is.UuidValue? sectionId,
    _is.UuidValue? lecturerId,
    int? extraPlaces,
    String? reason,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSectionCapacityOverride',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'extraPlaces': extraPlaces,
      'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSectionCapacityOverride',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'extraPlaces': extraPlaces,
      'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusSectionCapacityOverrideInclude include() {
    return CampusSectionCapacityOverrideInclude._();
  }

  static CampusSectionCapacityOverrideIncludeList includeList({
    _is.WhereExpressionBuilder<CampusSectionCapacityOverrideTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSectionCapacityOverrideTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionCapacityOverrideTable>? orderByList,
    CampusSectionCapacityOverrideInclude? include,
  }) {
    return CampusSectionCapacityOverrideIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSectionCapacityOverride.t),
      orderByList: orderByList?.call(CampusSectionCapacityOverride.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSectionCapacityOverrideImpl extends CampusSectionCapacityOverride {
  _CampusSectionCapacityOverrideImpl({
    _is.UuidValue? id,
    required _is.UuidValue sectionId,
    required _is.UuidValue lecturerId,
    required int extraPlaces,
    required String reason,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sectionId: sectionId,
         lecturerId: lecturerId,
         extraPlaces: extraPlaces,
         reason: reason,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSectionCapacityOverride]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusSectionCapacityOverride copyWith({
    Object? id = _Undefined,
    _is.UuidValue? sectionId,
    _is.UuidValue? lecturerId,
    int? extraPlaces,
    String? reason,
    DateTime? createdAt,
  }) {
    return CampusSectionCapacityOverride(
      id: id is _is.UuidValue? ? id : this.id,
      sectionId: sectionId ?? this.sectionId,
      lecturerId: lecturerId ?? this.lecturerId,
      extraPlaces: extraPlaces ?? this.extraPlaces,
      reason: reason ?? this.reason,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusSectionCapacityOverrideUpdateTable
    extends _is.UpdateTable<CampusSectionCapacityOverrideTable> {
  CampusSectionCapacityOverrideUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> sectionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.sectionId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> lecturerId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.lecturerId,
    value,
  );

  _is.ColumnValue<int, int> extraPlaces(int value) => _is.ColumnValue(
    table.extraPlaces,
    value,
  );

  _is.ColumnValue<String, String> reason(String value) => _is.ColumnValue(
    table.reason,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusSectionCapacityOverrideTable extends _is.Table<_is.UuidValue?> {
  CampusSectionCapacityOverrideTable({super.tableRelation})
    : super(tableName: 'campus_section_capacity_overrides') {
    updateTable = CampusSectionCapacityOverrideUpdateTable(this);
    sectionId = _is.ColumnUuid(
      'sectionId',
      this,
    );
    lecturerId = _is.ColumnUuid(
      'lecturerId',
      this,
    );
    extraPlaces = _is.ColumnInt(
      'extraPlaces',
      this,
    );
    reason = _is.ColumnString(
      'reason',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusSectionCapacityOverrideUpdateTable updateTable;

  late final _is.ColumnUuid sectionId;

  late final _is.ColumnUuid lecturerId;

  late final _is.ColumnInt extraPlaces;

  late final _is.ColumnString reason;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    sectionId,
    lecturerId,
    extraPlaces,
    reason,
    createdAt,
  ];
}

class CampusSectionCapacityOverrideInclude extends _is.IncludeObject {
  CampusSectionCapacityOverrideInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSectionCapacityOverride.t;
}

class CampusSectionCapacityOverrideIncludeList extends _is.IncludeList {
  CampusSectionCapacityOverrideIncludeList._({
    _is.WhereExpressionBuilder<CampusSectionCapacityOverrideTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusSectionCapacityOverride.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSectionCapacityOverride.t;
}

class CampusSectionCapacityOverrideRepository {
  const CampusSectionCapacityOverrideRepository._();

  /// Returns a list of [CampusSectionCapacityOverride]s matching the given query parameters.
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
  Future<List<CampusSectionCapacityOverride>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSectionCapacityOverrideTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSectionCapacityOverrideTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionCapacityOverrideTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusSectionCapacityOverride>(
      where: where?.call(CampusSectionCapacityOverride.t),
      orderBy: orderBy?.call(CampusSectionCapacityOverride.t),
      orderByList: orderByList?.call(CampusSectionCapacityOverride.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusSectionCapacityOverride] matching the given query parameters.
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
  Future<CampusSectionCapacityOverride?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSectionCapacityOverrideTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusSectionCapacityOverrideTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionCapacityOverrideTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusSectionCapacityOverride>(
      where: where?.call(CampusSectionCapacityOverride.t),
      orderBy: orderBy?.call(CampusSectionCapacityOverride.t),
      orderByList: orderByList?.call(CampusSectionCapacityOverride.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusSectionCapacityOverride] by its [id] or null if no such row exists.
  Future<CampusSectionCapacityOverride?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusSectionCapacityOverride>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusSectionCapacityOverride]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusSectionCapacityOverride]s will have their `id` fields set.
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
  Future<List<CampusSectionCapacityOverride>> insert(
    _is.DatabaseSession session,
    List<CampusSectionCapacityOverride> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusSectionCapacityOverride>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusSectionCapacityOverride] and returns the inserted row.
  ///
  /// The returned [CampusSectionCapacityOverride] will have its `id` field set.
  Future<CampusSectionCapacityOverride> insertRow(
    _is.DatabaseSession session,
    CampusSectionCapacityOverride row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusSectionCapacityOverride>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusSectionCapacityOverride]s in the list and returns the resulting rows.
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
  /// The returned [CampusSectionCapacityOverride]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSectionCapacityOverride>> upsert(
    _is.DatabaseSession session,
    List<CampusSectionCapacityOverride> rows, {
    required _is.ColumnSelections<CampusSectionCapacityOverrideTable>
    conflictColumns,
    _is.ColumnSelections<CampusSectionCapacityOverrideTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSectionCapacityOverrideTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusSectionCapacityOverride>(
      rows,
      conflictColumns: conflictColumns(CampusSectionCapacityOverride.t),
      updateColumns: updateColumns?.call(CampusSectionCapacityOverride.t),
      updateWhere: updateWhere?.call(CampusSectionCapacityOverride.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusSectionCapacityOverride] and returns the resulting row.
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
  /// The returned [CampusSectionCapacityOverride] will have its `id` field set.
  Future<CampusSectionCapacityOverride?> upsertRow(
    _is.DatabaseSession session,
    CampusSectionCapacityOverride row, {
    required _is.ColumnSelections<CampusSectionCapacityOverrideTable>
    conflictColumns,
    _is.ColumnSelections<CampusSectionCapacityOverrideTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSectionCapacityOverrideTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusSectionCapacityOverride>(
      row,
      conflictColumns: conflictColumns(CampusSectionCapacityOverride.t),
      updateColumns: updateColumns?.call(CampusSectionCapacityOverride.t),
      updateWhere: updateWhere?.call(CampusSectionCapacityOverride.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSectionCapacityOverride]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSectionCapacityOverride>> update(
    _is.DatabaseSession session,
    List<CampusSectionCapacityOverride> rows, {
    _is.ColumnSelections<CampusSectionCapacityOverrideTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusSectionCapacityOverride>(
      rows,
      columns: columns?.call(CampusSectionCapacityOverride.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusSectionCapacityOverride]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusSectionCapacityOverride> updateRow(
    _is.DatabaseSession session,
    CampusSectionCapacityOverride row, {
    _is.ColumnSelections<CampusSectionCapacityOverrideTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusSectionCapacityOverride>(
      row,
      columns: columns?.call(CampusSectionCapacityOverride.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusSectionCapacityOverride] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusSectionCapacityOverride?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<
      CampusSectionCapacityOverrideUpdateTable
    >
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusSectionCapacityOverride>(
      id,
      columnValues: columnValues(CampusSectionCapacityOverride.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSectionCapacityOverride]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSectionCapacityOverride>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<
      CampusSectionCapacityOverrideUpdateTable
    >
    columnValues,
    required _is.WhereExpressionBuilder<CampusSectionCapacityOverrideTable>
    where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSectionCapacityOverrideTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionCapacityOverrideTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusSectionCapacityOverride>(
      columnValues: columnValues(CampusSectionCapacityOverride.t.updateTable),
      where: where(CampusSectionCapacityOverride.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSectionCapacityOverride.t),
      orderByList: orderByList?.call(CampusSectionCapacityOverride.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusSectionCapacityOverride]s in the list and returns the deleted rows.
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
  Future<List<CampusSectionCapacityOverride>> delete(
    _is.DatabaseSession session,
    List<CampusSectionCapacityOverride> rows, {
    _is.OrderByBuilder<CampusSectionCapacityOverrideTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionCapacityOverrideTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusSectionCapacityOverride>(
      rows,
      orderBy: orderBy?.call(CampusSectionCapacityOverride.t),
      orderByList: orderByList?.call(CampusSectionCapacityOverride.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusSectionCapacityOverride].
  Future<CampusSectionCapacityOverride> deleteRow(
    _is.DatabaseSession session,
    CampusSectionCapacityOverride row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusSectionCapacityOverride>(
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
  Future<List<CampusSectionCapacityOverride>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSectionCapacityOverrideTable>
    where,
    _is.OrderByBuilder<CampusSectionCapacityOverrideTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionCapacityOverrideTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusSectionCapacityOverride>(
      where: where(CampusSectionCapacityOverride.t),
      orderBy: orderBy?.call(CampusSectionCapacityOverride.t),
      orderByList: orderByList?.call(CampusSectionCapacityOverride.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSectionCapacityOverrideTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusSectionCapacityOverride>(
      where: where?.call(CampusSectionCapacityOverride.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusSectionCapacityOverride] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSectionCapacityOverrideTable>
    where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusSectionCapacityOverride>(
      where: where(CampusSectionCapacityOverride.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
