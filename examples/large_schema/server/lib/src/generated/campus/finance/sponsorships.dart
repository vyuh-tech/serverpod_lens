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
abstract class CampusSponsorship
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusSponsorship._({
    this.id,
    required this.sponsorId,
    required this.studentId,
    required this.academicYearId,
    required this.commitmentMinor,
    required this.currency,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSponsorship({
    _is.UuidValue? id,
    required _is.UuidValue sponsorId,
    required _is.UuidValue studentId,
    required _is.UuidValue academicYearId,
    required int commitmentMinor,
    required String currency,
    DateTime? createdAt,
  }) = _CampusSponsorshipImpl;

  factory CampusSponsorship.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusSponsorship(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sponsorId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['sponsorId'],
      ),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      academicYearId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['academicYearId'],
      ),
      commitmentMinor: jsonSerialization['commitmentMinor'] as int,
      currency: jsonSerialization['currency'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusSponsorshipTable();

  static const db = CampusSponsorshipRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue sponsorId;

  _is.UuidValue studentId;

  _is.UuidValue academicYearId;

  int commitmentMinor;

  String currency;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusSponsorship]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusSponsorship copyWith({
    _is.UuidValue? id,
    _is.UuidValue? sponsorId,
    _is.UuidValue? studentId,
    _is.UuidValue? academicYearId,
    int? commitmentMinor,
    String? currency,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSponsorship',
      if (id != null) 'id': id?.toJson(),
      'sponsorId': sponsorId.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'commitmentMinor': commitmentMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSponsorship',
      if (id != null) 'id': id?.toJson(),
      'sponsorId': sponsorId.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'commitmentMinor': commitmentMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusSponsorshipInclude include() {
    return CampusSponsorshipInclude._();
  }

  static CampusSponsorshipIncludeList includeList({
    _is.WhereExpressionBuilder<CampusSponsorshipTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSponsorshipTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorshipTable>? orderByList,
    CampusSponsorshipInclude? include,
  }) {
    return CampusSponsorshipIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSponsorship.t),
      orderByList: orderByList?.call(CampusSponsorship.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSponsorshipImpl extends CampusSponsorship {
  _CampusSponsorshipImpl({
    _is.UuidValue? id,
    required _is.UuidValue sponsorId,
    required _is.UuidValue studentId,
    required _is.UuidValue academicYearId,
    required int commitmentMinor,
    required String currency,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sponsorId: sponsorId,
         studentId: studentId,
         academicYearId: academicYearId,
         commitmentMinor: commitmentMinor,
         currency: currency,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSponsorship]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusSponsorship copyWith({
    Object? id = _Undefined,
    _is.UuidValue? sponsorId,
    _is.UuidValue? studentId,
    _is.UuidValue? academicYearId,
    int? commitmentMinor,
    String? currency,
    DateTime? createdAt,
  }) {
    return CampusSponsorship(
      id: id is _is.UuidValue? ? id : this.id,
      sponsorId: sponsorId ?? this.sponsorId,
      studentId: studentId ?? this.studentId,
      academicYearId: academicYearId ?? this.academicYearId,
      commitmentMinor: commitmentMinor ?? this.commitmentMinor,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusSponsorshipUpdateTable
    extends _is.UpdateTable<CampusSponsorshipTable> {
  CampusSponsorshipUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> sponsorId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.sponsorId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> academicYearId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.academicYearId,
    value,
  );

  _is.ColumnValue<int, int> commitmentMinor(int value) => _is.ColumnValue(
    table.commitmentMinor,
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

class CampusSponsorshipTable extends _is.Table<_is.UuidValue?> {
  CampusSponsorshipTable({super.tableRelation})
    : super(tableName: 'campus_sponsorships') {
    updateTable = CampusSponsorshipUpdateTable(this);
    sponsorId = _is.ColumnUuid(
      'sponsorId',
      this,
    );
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    academicYearId = _is.ColumnUuid(
      'academicYearId',
      this,
    );
    commitmentMinor = _is.ColumnInt(
      'commitmentMinor',
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

  late final CampusSponsorshipUpdateTable updateTable;

  late final _is.ColumnUuid sponsorId;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid academicYearId;

  late final _is.ColumnInt commitmentMinor;

  late final _is.ColumnString currency;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    sponsorId,
    studentId,
    academicYearId,
    commitmentMinor,
    currency,
    createdAt,
  ];
}

class CampusSponsorshipInclude extends _is.IncludeObject {
  CampusSponsorshipInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSponsorship.t;
}

class CampusSponsorshipIncludeList extends _is.IncludeList {
  CampusSponsorshipIncludeList._({
    _is.WhereExpressionBuilder<CampusSponsorshipTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusSponsorship.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSponsorship.t;
}

class CampusSponsorshipRepository {
  const CampusSponsorshipRepository._();

  /// Returns a list of [CampusSponsorship]s matching the given query parameters.
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
  Future<List<CampusSponsorship>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSponsorshipTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSponsorshipTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorshipTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusSponsorship>(
      where: where?.call(CampusSponsorship.t),
      orderBy: orderBy?.call(CampusSponsorship.t),
      orderByList: orderByList?.call(CampusSponsorship.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusSponsorship] matching the given query parameters.
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
  Future<CampusSponsorship?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSponsorshipTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusSponsorshipTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorshipTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusSponsorship>(
      where: where?.call(CampusSponsorship.t),
      orderBy: orderBy?.call(CampusSponsorship.t),
      orderByList: orderByList?.call(CampusSponsorship.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusSponsorship] by its [id] or null if no such row exists.
  Future<CampusSponsorship?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusSponsorship>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusSponsorship]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusSponsorship]s will have their `id` fields set.
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
  Future<List<CampusSponsorship>> insert(
    _is.DatabaseSession session,
    List<CampusSponsorship> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusSponsorship>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusSponsorship] and returns the inserted row.
  ///
  /// The returned [CampusSponsorship] will have its `id` field set.
  Future<CampusSponsorship> insertRow(
    _is.DatabaseSession session,
    CampusSponsorship row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusSponsorship>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusSponsorship]s in the list and returns the resulting rows.
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
  /// The returned [CampusSponsorship]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSponsorship>> upsert(
    _is.DatabaseSession session,
    List<CampusSponsorship> rows, {
    required _is.ColumnSelections<CampusSponsorshipTable> conflictColumns,
    _is.ColumnSelections<CampusSponsorshipTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSponsorshipTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusSponsorship>(
      rows,
      conflictColumns: conflictColumns(CampusSponsorship.t),
      updateColumns: updateColumns?.call(CampusSponsorship.t),
      updateWhere: updateWhere?.call(CampusSponsorship.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusSponsorship] and returns the resulting row.
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
  /// The returned [CampusSponsorship] will have its `id` field set.
  Future<CampusSponsorship?> upsertRow(
    _is.DatabaseSession session,
    CampusSponsorship row, {
    required _is.ColumnSelections<CampusSponsorshipTable> conflictColumns,
    _is.ColumnSelections<CampusSponsorshipTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSponsorshipTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusSponsorship>(
      row,
      conflictColumns: conflictColumns(CampusSponsorship.t),
      updateColumns: updateColumns?.call(CampusSponsorship.t),
      updateWhere: updateWhere?.call(CampusSponsorship.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSponsorship]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSponsorship>> update(
    _is.DatabaseSession session,
    List<CampusSponsorship> rows, {
    _is.ColumnSelections<CampusSponsorshipTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusSponsorship>(
      rows,
      columns: columns?.call(CampusSponsorship.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusSponsorship]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusSponsorship> updateRow(
    _is.DatabaseSession session,
    CampusSponsorship row, {
    _is.ColumnSelections<CampusSponsorshipTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusSponsorship>(
      row,
      columns: columns?.call(CampusSponsorship.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusSponsorship] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusSponsorship?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusSponsorshipUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusSponsorship>(
      id,
      columnValues: columnValues(CampusSponsorship.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSponsorship]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSponsorship>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusSponsorshipUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusSponsorshipTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSponsorshipTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorshipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusSponsorship>(
      columnValues: columnValues(CampusSponsorship.t.updateTable),
      where: where(CampusSponsorship.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSponsorship.t),
      orderByList: orderByList?.call(CampusSponsorship.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusSponsorship]s in the list and returns the deleted rows.
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
  Future<List<CampusSponsorship>> delete(
    _is.DatabaseSession session,
    List<CampusSponsorship> rows, {
    _is.OrderByBuilder<CampusSponsorshipTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorshipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusSponsorship>(
      rows,
      orderBy: orderBy?.call(CampusSponsorship.t),
      orderByList: orderByList?.call(CampusSponsorship.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusSponsorship].
  Future<CampusSponsorship> deleteRow(
    _is.DatabaseSession session,
    CampusSponsorship row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusSponsorship>(
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
  Future<List<CampusSponsorship>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSponsorshipTable> where,
    _is.OrderByBuilder<CampusSponsorshipTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorshipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusSponsorship>(
      where: where(CampusSponsorship.t),
      orderBy: orderBy?.call(CampusSponsorship.t),
      orderByList: orderByList?.call(CampusSponsorship.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSponsorshipTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusSponsorship>(
      where: where?.call(CampusSponsorship.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusSponsorship] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSponsorshipTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusSponsorship>(
      where: where(CampusSponsorship.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
