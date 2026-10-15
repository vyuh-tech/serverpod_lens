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

/// Fictional university fixture: campus.
abstract class CampusAcademicYear
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusAcademicYear._({
    this.id,
    required this.label,
    required this.startsAt,
    required this.endsAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAcademicYear({
    _is.UuidValue? id,
    required String label,
    required DateTime startsAt,
    required DateTime endsAt,
    DateTime? createdAt,
  }) = _CampusAcademicYearImpl;

  factory CampusAcademicYear.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusAcademicYear(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      label: jsonSerialization['label'] as String,
      startsAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['startsAt'],
      ),
      endsAt: _is.DateTimeJsonExtension.fromJson(jsonSerialization['endsAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusAcademicYearTable();

  static const db = CampusAcademicYearRepository._();

  @override
  _is.UuidValue? id;

  String label;

  DateTime startsAt;

  DateTime endsAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusAcademicYear]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusAcademicYear copyWith({
    _is.UuidValue? id,
    String? label,
    DateTime? startsAt,
    DateTime? endsAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAcademicYear',
      if (id != null) 'id': id?.toJson(),
      'label': label,
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAcademicYear',
      if (id != null) 'id': id?.toJson(),
      'label': label,
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusAcademicYearInclude include() {
    return CampusAcademicYearInclude._();
  }

  static CampusAcademicYearIncludeList includeList({
    _is.WhereExpressionBuilder<CampusAcademicYearTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAcademicYearTable>? orderBy,
    _is.OrderByListBuilder<CampusAcademicYearTable>? orderByList,
    CampusAcademicYearInclude? include,
  }) {
    return CampusAcademicYearIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAcademicYear.t),
      orderByList: orderByList?.call(CampusAcademicYear.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAcademicYearImpl extends CampusAcademicYear {
  _CampusAcademicYearImpl({
    _is.UuidValue? id,
    required String label,
    required DateTime startsAt,
    required DateTime endsAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         label: label,
         startsAt: startsAt,
         endsAt: endsAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAcademicYear]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusAcademicYear copyWith({
    Object? id = _Undefined,
    String? label,
    DateTime? startsAt,
    DateTime? endsAt,
    DateTime? createdAt,
  }) {
    return CampusAcademicYear(
      id: id is _is.UuidValue? ? id : this.id,
      label: label ?? this.label,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt ?? this.endsAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusAcademicYearUpdateTable
    extends _is.UpdateTable<CampusAcademicYearTable> {
  CampusAcademicYearUpdateTable(super.table);

  _is.ColumnValue<String, String> label(String value) => _is.ColumnValue(
    table.label,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> startsAt(DateTime value) =>
      _is.ColumnValue(
        table.startsAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> endsAt(DateTime value) => _is.ColumnValue(
    table.endsAt,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusAcademicYearTable extends _is.Table<_is.UuidValue?> {
  CampusAcademicYearTable({super.tableRelation})
    : super(tableName: 'campus_academic_years') {
    updateTable = CampusAcademicYearUpdateTable(this);
    label = _is.ColumnString(
      'label',
      this,
    );
    startsAt = _is.ColumnDateTime(
      'startsAt',
      this,
    );
    endsAt = _is.ColumnDateTime(
      'endsAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusAcademicYearUpdateTable updateTable;

  late final _is.ColumnString label;

  late final _is.ColumnDateTime startsAt;

  late final _is.ColumnDateTime endsAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    label,
    startsAt,
    endsAt,
    createdAt,
  ];
}

class CampusAcademicYearInclude extends _is.IncludeObject {
  CampusAcademicYearInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAcademicYear.t;
}

class CampusAcademicYearIncludeList extends _is.IncludeList {
  CampusAcademicYearIncludeList._({
    _is.WhereExpressionBuilder<CampusAcademicYearTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusAcademicYear.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusAcademicYear.t;
}

class CampusAcademicYearRepository {
  const CampusAcademicYearRepository._();

  /// Returns a list of [CampusAcademicYear]s matching the given query parameters.
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
  Future<List<CampusAcademicYear>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAcademicYearTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAcademicYearTable>? orderBy,
    _is.OrderByListBuilder<CampusAcademicYearTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusAcademicYear>(
      where: where?.call(CampusAcademicYear.t),
      orderBy: orderBy?.call(CampusAcademicYear.t),
      orderByList: orderByList?.call(CampusAcademicYear.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusAcademicYear] matching the given query parameters.
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
  Future<CampusAcademicYear?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAcademicYearTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusAcademicYearTable>? orderBy,
    _is.OrderByListBuilder<CampusAcademicYearTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusAcademicYear>(
      where: where?.call(CampusAcademicYear.t),
      orderBy: orderBy?.call(CampusAcademicYear.t),
      orderByList: orderByList?.call(CampusAcademicYear.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusAcademicYear] by its [id] or null if no such row exists.
  Future<CampusAcademicYear?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusAcademicYear>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusAcademicYear]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusAcademicYear]s will have their `id` fields set.
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
  Future<List<CampusAcademicYear>> insert(
    _is.DatabaseSession session,
    List<CampusAcademicYear> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusAcademicYear>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusAcademicYear] and returns the inserted row.
  ///
  /// The returned [CampusAcademicYear] will have its `id` field set.
  Future<CampusAcademicYear> insertRow(
    _is.DatabaseSession session,
    CampusAcademicYear row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusAcademicYear>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusAcademicYear]s in the list and returns the resulting rows.
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
  /// The returned [CampusAcademicYear]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAcademicYear>> upsert(
    _is.DatabaseSession session,
    List<CampusAcademicYear> rows, {
    required _is.ColumnSelections<CampusAcademicYearTable> conflictColumns,
    _is.ColumnSelections<CampusAcademicYearTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAcademicYearTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusAcademicYear>(
      rows,
      conflictColumns: conflictColumns(CampusAcademicYear.t),
      updateColumns: updateColumns?.call(CampusAcademicYear.t),
      updateWhere: updateWhere?.call(CampusAcademicYear.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusAcademicYear] and returns the resulting row.
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
  /// The returned [CampusAcademicYear] will have its `id` field set.
  Future<CampusAcademicYear?> upsertRow(
    _is.DatabaseSession session,
    CampusAcademicYear row, {
    required _is.ColumnSelections<CampusAcademicYearTable> conflictColumns,
    _is.ColumnSelections<CampusAcademicYearTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusAcademicYearTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusAcademicYear>(
      row,
      conflictColumns: conflictColumns(CampusAcademicYear.t),
      updateColumns: updateColumns?.call(CampusAcademicYear.t),
      updateWhere: updateWhere?.call(CampusAcademicYear.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAcademicYear]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAcademicYear>> update(
    _is.DatabaseSession session,
    List<CampusAcademicYear> rows, {
    _is.ColumnSelections<CampusAcademicYearTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusAcademicYear>(
      rows,
      columns: columns?.call(CampusAcademicYear.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusAcademicYear]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusAcademicYear> updateRow(
    _is.DatabaseSession session,
    CampusAcademicYear row, {
    _is.ColumnSelections<CampusAcademicYearTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusAcademicYear>(
      row,
      columns: columns?.call(CampusAcademicYear.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusAcademicYear] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusAcademicYear?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusAcademicYearUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusAcademicYear>(
      id,
      columnValues: columnValues(CampusAcademicYear.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusAcademicYear]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusAcademicYear>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusAcademicYearUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusAcademicYearTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusAcademicYearTable>? orderBy,
    _is.OrderByListBuilder<CampusAcademicYearTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusAcademicYear>(
      columnValues: columnValues(CampusAcademicYear.t.updateTable),
      where: where(CampusAcademicYear.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusAcademicYear.t),
      orderByList: orderByList?.call(CampusAcademicYear.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusAcademicYear]s in the list and returns the deleted rows.
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
  Future<List<CampusAcademicYear>> delete(
    _is.DatabaseSession session,
    List<CampusAcademicYear> rows, {
    _is.OrderByBuilder<CampusAcademicYearTable>? orderBy,
    _is.OrderByListBuilder<CampusAcademicYearTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusAcademicYear>(
      rows,
      orderBy: orderBy?.call(CampusAcademicYear.t),
      orderByList: orderByList?.call(CampusAcademicYear.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusAcademicYear].
  Future<CampusAcademicYear> deleteRow(
    _is.DatabaseSession session,
    CampusAcademicYear row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusAcademicYear>(
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
  Future<List<CampusAcademicYear>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAcademicYearTable> where,
    _is.OrderByBuilder<CampusAcademicYearTable>? orderBy,
    _is.OrderByListBuilder<CampusAcademicYearTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusAcademicYear>(
      where: where(CampusAcademicYear.t),
      orderBy: orderBy?.call(CampusAcademicYear.t),
      orderByList: orderByList?.call(CampusAcademicYear.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusAcademicYearTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusAcademicYear>(
      where: where?.call(CampusAcademicYear.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusAcademicYear] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusAcademicYearTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusAcademicYear>(
      where: where(CampusAcademicYear.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
