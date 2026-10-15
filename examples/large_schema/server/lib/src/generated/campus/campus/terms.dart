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
abstract class CampusTerm
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusTerm._({
    this.id,
    required this.academicYearId,
    required this.code,
    required this.startsAt,
    required this.endsAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusTerm({
    _is.UuidValue? id,
    required _is.UuidValue academicYearId,
    required String code,
    required DateTime startsAt,
    required DateTime endsAt,
    DateTime? createdAt,
  }) = _CampusTermImpl;

  factory CampusTerm.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusTerm(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      academicYearId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['academicYearId'],
      ),
      code: jsonSerialization['code'] as String,
      startsAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['startsAt'],
      ),
      endsAt: _is.DateTimeJsonExtension.fromJson(jsonSerialization['endsAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusTermTable();

  static const db = CampusTermRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue academicYearId;

  String code;

  DateTime startsAt;

  DateTime endsAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusTerm]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusTerm copyWith({
    _is.UuidValue? id,
    _is.UuidValue? academicYearId,
    String? code,
    DateTime? startsAt,
    DateTime? endsAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusTerm',
      if (id != null) 'id': id?.toJson(),
      'academicYearId': academicYearId.toJson(),
      'code': code,
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusTerm',
      if (id != null) 'id': id?.toJson(),
      'academicYearId': academicYearId.toJson(),
      'code': code,
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusTermInclude include() {
    return CampusTermInclude._();
  }

  static CampusTermIncludeList includeList({
    _is.WhereExpressionBuilder<CampusTermTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusTermTable>? orderBy,
    _is.OrderByListBuilder<CampusTermTable>? orderByList,
    CampusTermInclude? include,
  }) {
    return CampusTermIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusTerm.t),
      orderByList: orderByList?.call(CampusTerm.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusTermImpl extends CampusTerm {
  _CampusTermImpl({
    _is.UuidValue? id,
    required _is.UuidValue academicYearId,
    required String code,
    required DateTime startsAt,
    required DateTime endsAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         academicYearId: academicYearId,
         code: code,
         startsAt: startsAt,
         endsAt: endsAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusTerm]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusTerm copyWith({
    Object? id = _Undefined,
    _is.UuidValue? academicYearId,
    String? code,
    DateTime? startsAt,
    DateTime? endsAt,
    DateTime? createdAt,
  }) {
    return CampusTerm(
      id: id is _is.UuidValue? ? id : this.id,
      academicYearId: academicYearId ?? this.academicYearId,
      code: code ?? this.code,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt ?? this.endsAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusTermUpdateTable extends _is.UpdateTable<CampusTermTable> {
  CampusTermUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> academicYearId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.academicYearId,
    value,
  );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
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

class CampusTermTable extends _is.Table<_is.UuidValue?> {
  CampusTermTable({super.tableRelation}) : super(tableName: 'campus_terms') {
    updateTable = CampusTermUpdateTable(this);
    academicYearId = _is.ColumnUuid(
      'academicYearId',
      this,
    );
    code = _is.ColumnString(
      'code',
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

  late final CampusTermUpdateTable updateTable;

  late final _is.ColumnUuid academicYearId;

  late final _is.ColumnString code;

  late final _is.ColumnDateTime startsAt;

  late final _is.ColumnDateTime endsAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    academicYearId,
    code,
    startsAt,
    endsAt,
    createdAt,
  ];
}

class CampusTermInclude extends _is.IncludeObject {
  CampusTermInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusTerm.t;
}

class CampusTermIncludeList extends _is.IncludeList {
  CampusTermIncludeList._({
    _is.WhereExpressionBuilder<CampusTermTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusTerm.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusTerm.t;
}

class CampusTermRepository {
  const CampusTermRepository._();

  /// Returns a list of [CampusTerm]s matching the given query parameters.
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
  Future<List<CampusTerm>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusTermTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusTermTable>? orderBy,
    _is.OrderByListBuilder<CampusTermTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusTerm>(
      where: where?.call(CampusTerm.t),
      orderBy: orderBy?.call(CampusTerm.t),
      orderByList: orderByList?.call(CampusTerm.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusTerm] matching the given query parameters.
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
  Future<CampusTerm?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusTermTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusTermTable>? orderBy,
    _is.OrderByListBuilder<CampusTermTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusTerm>(
      where: where?.call(CampusTerm.t),
      orderBy: orderBy?.call(CampusTerm.t),
      orderByList: orderByList?.call(CampusTerm.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusTerm] by its [id] or null if no such row exists.
  Future<CampusTerm?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusTerm>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusTerm]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusTerm]s will have their `id` fields set.
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
  Future<List<CampusTerm>> insert(
    _is.DatabaseSession session,
    List<CampusTerm> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusTerm>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusTerm] and returns the inserted row.
  ///
  /// The returned [CampusTerm] will have its `id` field set.
  Future<CampusTerm> insertRow(
    _is.DatabaseSession session,
    CampusTerm row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusTerm>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusTerm]s in the list and returns the resulting rows.
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
  /// The returned [CampusTerm]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusTerm>> upsert(
    _is.DatabaseSession session,
    List<CampusTerm> rows, {
    required _is.ColumnSelections<CampusTermTable> conflictColumns,
    _is.ColumnSelections<CampusTermTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusTermTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusTerm>(
      rows,
      conflictColumns: conflictColumns(CampusTerm.t),
      updateColumns: updateColumns?.call(CampusTerm.t),
      updateWhere: updateWhere?.call(CampusTerm.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusTerm] and returns the resulting row.
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
  /// The returned [CampusTerm] will have its `id` field set.
  Future<CampusTerm?> upsertRow(
    _is.DatabaseSession session,
    CampusTerm row, {
    required _is.ColumnSelections<CampusTermTable> conflictColumns,
    _is.ColumnSelections<CampusTermTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusTermTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusTerm>(
      row,
      conflictColumns: conflictColumns(CampusTerm.t),
      updateColumns: updateColumns?.call(CampusTerm.t),
      updateWhere: updateWhere?.call(CampusTerm.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusTerm]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusTerm>> update(
    _is.DatabaseSession session,
    List<CampusTerm> rows, {
    _is.ColumnSelections<CampusTermTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusTerm>(
      rows,
      columns: columns?.call(CampusTerm.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusTerm]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusTerm> updateRow(
    _is.DatabaseSession session,
    CampusTerm row, {
    _is.ColumnSelections<CampusTermTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusTerm>(
      row,
      columns: columns?.call(CampusTerm.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusTerm] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusTerm?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusTermUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusTerm>(
      id,
      columnValues: columnValues(CampusTerm.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusTerm]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusTerm>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusTermUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusTermTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusTermTable>? orderBy,
    _is.OrderByListBuilder<CampusTermTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusTerm>(
      columnValues: columnValues(CampusTerm.t.updateTable),
      where: where(CampusTerm.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusTerm.t),
      orderByList: orderByList?.call(CampusTerm.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusTerm]s in the list and returns the deleted rows.
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
  Future<List<CampusTerm>> delete(
    _is.DatabaseSession session,
    List<CampusTerm> rows, {
    _is.OrderByBuilder<CampusTermTable>? orderBy,
    _is.OrderByListBuilder<CampusTermTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusTerm>(
      rows,
      orderBy: orderBy?.call(CampusTerm.t),
      orderByList: orderByList?.call(CampusTerm.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusTerm].
  Future<CampusTerm> deleteRow(
    _is.DatabaseSession session,
    CampusTerm row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusTerm>(
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
  Future<List<CampusTerm>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusTermTable> where,
    _is.OrderByBuilder<CampusTermTable>? orderBy,
    _is.OrderByListBuilder<CampusTermTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusTerm>(
      where: where(CampusTerm.t),
      orderBy: orderBy?.call(CampusTerm.t),
      orderByList: orderByList?.call(CampusTerm.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusTermTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusTerm>(
      where: where?.call(CampusTerm.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusTerm] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusTermTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusTerm>(
      where: where(CampusTerm.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
