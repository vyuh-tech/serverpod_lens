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
abstract class CampusOfferCondition
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusOfferCondition._({
    this.id,
    required this.offerId,
    required this.description,
    required this.satisfied,
    this.satisfiedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusOfferCondition({
    _is.UuidValue? id,
    required _is.UuidValue offerId,
    required String description,
    required bool satisfied,
    DateTime? satisfiedAt,
    DateTime? createdAt,
  }) = _CampusOfferConditionImpl;

  factory CampusOfferCondition.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusOfferCondition(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      offerId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['offerId'],
      ),
      description: jsonSerialization['description'] as String,
      satisfied: _is.BoolJsonExtension.fromJson(jsonSerialization['satisfied']),
      satisfiedAt: jsonSerialization['satisfiedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['satisfiedAt'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusOfferConditionTable();

  static const db = CampusOfferConditionRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue offerId;

  String description;

  bool satisfied;

  DateTime? satisfiedAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusOfferCondition]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusOfferCondition copyWith({
    _is.UuidValue? id,
    _is.UuidValue? offerId,
    String? description,
    bool? satisfied,
    DateTime? satisfiedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusOfferCondition',
      if (id != null) 'id': id?.toJson(),
      'offerId': offerId.toJson(),
      'description': description,
      'satisfied': satisfied,
      if (satisfiedAt != null) 'satisfiedAt': satisfiedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusOfferCondition',
      if (id != null) 'id': id?.toJson(),
      'offerId': offerId.toJson(),
      'description': description,
      'satisfied': satisfied,
      if (satisfiedAt != null) 'satisfiedAt': satisfiedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusOfferConditionInclude include() {
    return CampusOfferConditionInclude._();
  }

  static CampusOfferConditionIncludeList includeList({
    _is.WhereExpressionBuilder<CampusOfferConditionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusOfferConditionTable>? orderBy,
    _is.OrderByListBuilder<CampusOfferConditionTable>? orderByList,
    CampusOfferConditionInclude? include,
  }) {
    return CampusOfferConditionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusOfferCondition.t),
      orderByList: orderByList?.call(CampusOfferCondition.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusOfferConditionImpl extends CampusOfferCondition {
  _CampusOfferConditionImpl({
    _is.UuidValue? id,
    required _is.UuidValue offerId,
    required String description,
    required bool satisfied,
    DateTime? satisfiedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         offerId: offerId,
         description: description,
         satisfied: satisfied,
         satisfiedAt: satisfiedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusOfferCondition]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusOfferCondition copyWith({
    Object? id = _Undefined,
    _is.UuidValue? offerId,
    String? description,
    bool? satisfied,
    Object? satisfiedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusOfferCondition(
      id: id is _is.UuidValue? ? id : this.id,
      offerId: offerId ?? this.offerId,
      description: description ?? this.description,
      satisfied: satisfied ?? this.satisfied,
      satisfiedAt: satisfiedAt is DateTime? ? satisfiedAt : this.satisfiedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusOfferConditionUpdateTable
    extends _is.UpdateTable<CampusOfferConditionTable> {
  CampusOfferConditionUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> offerId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.offerId,
        value,
      );

  _is.ColumnValue<String, String> description(String value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<bool, bool> satisfied(bool value) => _is.ColumnValue(
    table.satisfied,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> satisfiedAt(DateTime? value) =>
      _is.ColumnValue(
        table.satisfiedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusOfferConditionTable extends _is.Table<_is.UuidValue?> {
  CampusOfferConditionTable({super.tableRelation})
    : super(tableName: 'campus_offer_conditions') {
    updateTable = CampusOfferConditionUpdateTable(this);
    offerId = _is.ColumnUuid(
      'offerId',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    satisfied = _is.ColumnBool(
      'satisfied',
      this,
    );
    satisfiedAt = _is.ColumnDateTime(
      'satisfiedAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusOfferConditionUpdateTable updateTable;

  late final _is.ColumnUuid offerId;

  late final _is.ColumnString description;

  late final _is.ColumnBool satisfied;

  late final _is.ColumnDateTime satisfiedAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    offerId,
    description,
    satisfied,
    satisfiedAt,
    createdAt,
  ];
}

class CampusOfferConditionInclude extends _is.IncludeObject {
  CampusOfferConditionInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusOfferCondition.t;
}

class CampusOfferConditionIncludeList extends _is.IncludeList {
  CampusOfferConditionIncludeList._({
    _is.WhereExpressionBuilder<CampusOfferConditionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusOfferCondition.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusOfferCondition.t;
}

class CampusOfferConditionRepository {
  const CampusOfferConditionRepository._();

  /// Returns a list of [CampusOfferCondition]s matching the given query parameters.
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
  Future<List<CampusOfferCondition>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusOfferConditionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusOfferConditionTable>? orderBy,
    _is.OrderByListBuilder<CampusOfferConditionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusOfferCondition>(
      where: where?.call(CampusOfferCondition.t),
      orderBy: orderBy?.call(CampusOfferCondition.t),
      orderByList: orderByList?.call(CampusOfferCondition.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusOfferCondition] matching the given query parameters.
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
  Future<CampusOfferCondition?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusOfferConditionTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusOfferConditionTable>? orderBy,
    _is.OrderByListBuilder<CampusOfferConditionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusOfferCondition>(
      where: where?.call(CampusOfferCondition.t),
      orderBy: orderBy?.call(CampusOfferCondition.t),
      orderByList: orderByList?.call(CampusOfferCondition.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusOfferCondition] by its [id] or null if no such row exists.
  Future<CampusOfferCondition?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusOfferCondition>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusOfferCondition]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusOfferCondition]s will have their `id` fields set.
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
  Future<List<CampusOfferCondition>> insert(
    _is.DatabaseSession session,
    List<CampusOfferCondition> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusOfferCondition>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusOfferCondition] and returns the inserted row.
  ///
  /// The returned [CampusOfferCondition] will have its `id` field set.
  Future<CampusOfferCondition> insertRow(
    _is.DatabaseSession session,
    CampusOfferCondition row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusOfferCondition>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusOfferCondition]s in the list and returns the resulting rows.
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
  /// The returned [CampusOfferCondition]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusOfferCondition>> upsert(
    _is.DatabaseSession session,
    List<CampusOfferCondition> rows, {
    required _is.ColumnSelections<CampusOfferConditionTable> conflictColumns,
    _is.ColumnSelections<CampusOfferConditionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusOfferConditionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusOfferCondition>(
      rows,
      conflictColumns: conflictColumns(CampusOfferCondition.t),
      updateColumns: updateColumns?.call(CampusOfferCondition.t),
      updateWhere: updateWhere?.call(CampusOfferCondition.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusOfferCondition] and returns the resulting row.
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
  /// The returned [CampusOfferCondition] will have its `id` field set.
  Future<CampusOfferCondition?> upsertRow(
    _is.DatabaseSession session,
    CampusOfferCondition row, {
    required _is.ColumnSelections<CampusOfferConditionTable> conflictColumns,
    _is.ColumnSelections<CampusOfferConditionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusOfferConditionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusOfferCondition>(
      row,
      conflictColumns: conflictColumns(CampusOfferCondition.t),
      updateColumns: updateColumns?.call(CampusOfferCondition.t),
      updateWhere: updateWhere?.call(CampusOfferCondition.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusOfferCondition]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusOfferCondition>> update(
    _is.DatabaseSession session,
    List<CampusOfferCondition> rows, {
    _is.ColumnSelections<CampusOfferConditionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusOfferCondition>(
      rows,
      columns: columns?.call(CampusOfferCondition.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusOfferCondition]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusOfferCondition> updateRow(
    _is.DatabaseSession session,
    CampusOfferCondition row, {
    _is.ColumnSelections<CampusOfferConditionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusOfferCondition>(
      row,
      columns: columns?.call(CampusOfferCondition.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusOfferCondition] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusOfferCondition?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusOfferConditionUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusOfferCondition>(
      id,
      columnValues: columnValues(CampusOfferCondition.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusOfferCondition]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusOfferCondition>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusOfferConditionUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusOfferConditionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusOfferConditionTable>? orderBy,
    _is.OrderByListBuilder<CampusOfferConditionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusOfferCondition>(
      columnValues: columnValues(CampusOfferCondition.t.updateTable),
      where: where(CampusOfferCondition.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusOfferCondition.t),
      orderByList: orderByList?.call(CampusOfferCondition.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusOfferCondition]s in the list and returns the deleted rows.
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
  Future<List<CampusOfferCondition>> delete(
    _is.DatabaseSession session,
    List<CampusOfferCondition> rows, {
    _is.OrderByBuilder<CampusOfferConditionTable>? orderBy,
    _is.OrderByListBuilder<CampusOfferConditionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusOfferCondition>(
      rows,
      orderBy: orderBy?.call(CampusOfferCondition.t),
      orderByList: orderByList?.call(CampusOfferCondition.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusOfferCondition].
  Future<CampusOfferCondition> deleteRow(
    _is.DatabaseSession session,
    CampusOfferCondition row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusOfferCondition>(
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
  Future<List<CampusOfferCondition>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusOfferConditionTable> where,
    _is.OrderByBuilder<CampusOfferConditionTable>? orderBy,
    _is.OrderByListBuilder<CampusOfferConditionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusOfferCondition>(
      where: where(CampusOfferCondition.t),
      orderBy: orderBy?.call(CampusOfferCondition.t),
      orderByList: orderByList?.call(CampusOfferCondition.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusOfferConditionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusOfferCondition>(
      where: where?.call(CampusOfferCondition.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusOfferCondition] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusOfferConditionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusOfferCondition>(
      where: where(CampusOfferCondition.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
