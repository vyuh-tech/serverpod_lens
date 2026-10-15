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
abstract class CampusResidenceBed
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusResidenceBed._({
    this.id,
    required this.residenceRoomId,
    required this.label,
    required this.available,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResidenceBed({
    _is.UuidValue? id,
    required _is.UuidValue residenceRoomId,
    required String label,
    required bool available,
    DateTime? createdAt,
  }) = _CampusResidenceBedImpl;

  factory CampusResidenceBed.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusResidenceBed(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      residenceRoomId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['residenceRoomId'],
      ),
      label: jsonSerialization['label'] as String,
      available: _is.BoolJsonExtension.fromJson(jsonSerialization['available']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusResidenceBedTable();

  static const db = CampusResidenceBedRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue residenceRoomId;

  String label;

  bool available;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusResidenceBed]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusResidenceBed copyWith({
    _is.UuidValue? id,
    _is.UuidValue? residenceRoomId,
    String? label,
    bool? available,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResidenceBed',
      if (id != null) 'id': id?.toJson(),
      'residenceRoomId': residenceRoomId.toJson(),
      'label': label,
      'available': available,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResidenceBed',
      if (id != null) 'id': id?.toJson(),
      'residenceRoomId': residenceRoomId.toJson(),
      'label': label,
      'available': available,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusResidenceBedInclude include() {
    return CampusResidenceBedInclude._();
  }

  static CampusResidenceBedIncludeList includeList({
    _is.WhereExpressionBuilder<CampusResidenceBedTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResidenceBedTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceBedTable>? orderByList,
    CampusResidenceBedInclude? include,
  }) {
    return CampusResidenceBedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResidenceBed.t),
      orderByList: orderByList?.call(CampusResidenceBed.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusResidenceBedImpl extends CampusResidenceBed {
  _CampusResidenceBedImpl({
    _is.UuidValue? id,
    required _is.UuidValue residenceRoomId,
    required String label,
    required bool available,
    DateTime? createdAt,
  }) : super._(
         id: id,
         residenceRoomId: residenceRoomId,
         label: label,
         available: available,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResidenceBed]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusResidenceBed copyWith({
    Object? id = _Undefined,
    _is.UuidValue? residenceRoomId,
    String? label,
    bool? available,
    DateTime? createdAt,
  }) {
    return CampusResidenceBed(
      id: id is _is.UuidValue? ? id : this.id,
      residenceRoomId: residenceRoomId ?? this.residenceRoomId,
      label: label ?? this.label,
      available: available ?? this.available,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusResidenceBedUpdateTable
    extends _is.UpdateTable<CampusResidenceBedTable> {
  CampusResidenceBedUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> residenceRoomId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.residenceRoomId,
    value,
  );

  _is.ColumnValue<String, String> label(String value) => _is.ColumnValue(
    table.label,
    value,
  );

  _is.ColumnValue<bool, bool> available(bool value) => _is.ColumnValue(
    table.available,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusResidenceBedTable extends _is.Table<_is.UuidValue?> {
  CampusResidenceBedTable({super.tableRelation})
    : super(tableName: 'campus_residence_beds') {
    updateTable = CampusResidenceBedUpdateTable(this);
    residenceRoomId = _is.ColumnUuid(
      'residenceRoomId',
      this,
    );
    label = _is.ColumnString(
      'label',
      this,
    );
    available = _is.ColumnBool(
      'available',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusResidenceBedUpdateTable updateTable;

  late final _is.ColumnUuid residenceRoomId;

  late final _is.ColumnString label;

  late final _is.ColumnBool available;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    residenceRoomId,
    label,
    available,
    createdAt,
  ];
}

class CampusResidenceBedInclude extends _is.IncludeObject {
  CampusResidenceBedInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResidenceBed.t;
}

class CampusResidenceBedIncludeList extends _is.IncludeList {
  CampusResidenceBedIncludeList._({
    _is.WhereExpressionBuilder<CampusResidenceBedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusResidenceBed.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResidenceBed.t;
}

class CampusResidenceBedRepository {
  const CampusResidenceBedRepository._();

  /// Returns a list of [CampusResidenceBed]s matching the given query parameters.
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
  Future<List<CampusResidenceBed>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResidenceBedTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResidenceBedTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceBedTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusResidenceBed>(
      where: where?.call(CampusResidenceBed.t),
      orderBy: orderBy?.call(CampusResidenceBed.t),
      orderByList: orderByList?.call(CampusResidenceBed.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusResidenceBed] matching the given query parameters.
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
  Future<CampusResidenceBed?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResidenceBedTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusResidenceBedTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceBedTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusResidenceBed>(
      where: where?.call(CampusResidenceBed.t),
      orderBy: orderBy?.call(CampusResidenceBed.t),
      orderByList: orderByList?.call(CampusResidenceBed.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusResidenceBed] by its [id] or null if no such row exists.
  Future<CampusResidenceBed?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusResidenceBed>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusResidenceBed]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusResidenceBed]s will have their `id` fields set.
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
  Future<List<CampusResidenceBed>> insert(
    _is.DatabaseSession session,
    List<CampusResidenceBed> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusResidenceBed>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusResidenceBed] and returns the inserted row.
  ///
  /// The returned [CampusResidenceBed] will have its `id` field set.
  Future<CampusResidenceBed> insertRow(
    _is.DatabaseSession session,
    CampusResidenceBed row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusResidenceBed>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusResidenceBed]s in the list and returns the resulting rows.
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
  /// The returned [CampusResidenceBed]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResidenceBed>> upsert(
    _is.DatabaseSession session,
    List<CampusResidenceBed> rows, {
    required _is.ColumnSelections<CampusResidenceBedTable> conflictColumns,
    _is.ColumnSelections<CampusResidenceBedTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResidenceBedTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusResidenceBed>(
      rows,
      conflictColumns: conflictColumns(CampusResidenceBed.t),
      updateColumns: updateColumns?.call(CampusResidenceBed.t),
      updateWhere: updateWhere?.call(CampusResidenceBed.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusResidenceBed] and returns the resulting row.
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
  /// The returned [CampusResidenceBed] will have its `id` field set.
  Future<CampusResidenceBed?> upsertRow(
    _is.DatabaseSession session,
    CampusResidenceBed row, {
    required _is.ColumnSelections<CampusResidenceBedTable> conflictColumns,
    _is.ColumnSelections<CampusResidenceBedTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResidenceBedTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusResidenceBed>(
      row,
      conflictColumns: conflictColumns(CampusResidenceBed.t),
      updateColumns: updateColumns?.call(CampusResidenceBed.t),
      updateWhere: updateWhere?.call(CampusResidenceBed.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResidenceBed]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResidenceBed>> update(
    _is.DatabaseSession session,
    List<CampusResidenceBed> rows, {
    _is.ColumnSelections<CampusResidenceBedTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusResidenceBed>(
      rows,
      columns: columns?.call(CampusResidenceBed.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusResidenceBed]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusResidenceBed> updateRow(
    _is.DatabaseSession session,
    CampusResidenceBed row, {
    _is.ColumnSelections<CampusResidenceBedTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusResidenceBed>(
      row,
      columns: columns?.call(CampusResidenceBed.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusResidenceBed] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusResidenceBed?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusResidenceBedUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusResidenceBed>(
      id,
      columnValues: columnValues(CampusResidenceBed.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResidenceBed]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResidenceBed>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusResidenceBedUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusResidenceBedTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResidenceBedTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceBedTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusResidenceBed>(
      columnValues: columnValues(CampusResidenceBed.t.updateTable),
      where: where(CampusResidenceBed.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResidenceBed.t),
      orderByList: orderByList?.call(CampusResidenceBed.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusResidenceBed]s in the list and returns the deleted rows.
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
  Future<List<CampusResidenceBed>> delete(
    _is.DatabaseSession session,
    List<CampusResidenceBed> rows, {
    _is.OrderByBuilder<CampusResidenceBedTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceBedTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusResidenceBed>(
      rows,
      orderBy: orderBy?.call(CampusResidenceBed.t),
      orderByList: orderByList?.call(CampusResidenceBed.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusResidenceBed].
  Future<CampusResidenceBed> deleteRow(
    _is.DatabaseSession session,
    CampusResidenceBed row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusResidenceBed>(
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
  Future<List<CampusResidenceBed>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResidenceBedTable> where,
    _is.OrderByBuilder<CampusResidenceBedTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceBedTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusResidenceBed>(
      where: where(CampusResidenceBed.t),
      orderBy: orderBy?.call(CampusResidenceBed.t),
      orderByList: orderByList?.call(CampusResidenceBed.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResidenceBedTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusResidenceBed>(
      where: where?.call(CampusResidenceBed.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusResidenceBed] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResidenceBedTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusResidenceBed>(
      where: where(CampusResidenceBed.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
