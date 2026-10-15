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

/// Fictional university fixture: research.
abstract class CampusGrant
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusGrant._({
    this.id,
    required this.projectId,
    required this.sponsorId,
    required this.reference,
    required this.awardedMinor,
    required this.currency,
    required this.awardedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGrant({
    _is.UuidValue? id,
    required _is.UuidValue projectId,
    required _is.UuidValue sponsorId,
    required String reference,
    required int awardedMinor,
    required String currency,
    required DateTime awardedAt,
    DateTime? createdAt,
  }) = _CampusGrantImpl;

  factory CampusGrant.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusGrant(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      projectId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['projectId'],
      ),
      sponsorId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['sponsorId'],
      ),
      reference: jsonSerialization['reference'] as String,
      awardedMinor: jsonSerialization['awardedMinor'] as int,
      currency: jsonSerialization['currency'] as String,
      awardedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['awardedAt'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusGrantTable();

  static const db = CampusGrantRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue projectId;

  _is.UuidValue sponsorId;

  String reference;

  int awardedMinor;

  String currency;

  DateTime awardedAt;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusGrant]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusGrant copyWith({
    _is.UuidValue? id,
    _is.UuidValue? projectId,
    _is.UuidValue? sponsorId,
    String? reference,
    int? awardedMinor,
    String? currency,
    DateTime? awardedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGrant',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'sponsorId': sponsorId.toJson(),
      'reference': reference,
      'awardedMinor': awardedMinor,
      'currency': currency,
      'awardedAt': awardedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGrant',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'sponsorId': sponsorId.toJson(),
      'reference': reference,
      'awardedMinor': awardedMinor,
      'currency': currency,
      'awardedAt': awardedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusGrantInclude include() {
    return CampusGrantInclude._();
  }

  static CampusGrantIncludeList includeList({
    _is.WhereExpressionBuilder<CampusGrantTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGrantTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantTable>? orderByList,
    CampusGrantInclude? include,
  }) {
    return CampusGrantIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGrant.t),
      orderByList: orderByList?.call(CampusGrant.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGrantImpl extends CampusGrant {
  _CampusGrantImpl({
    _is.UuidValue? id,
    required _is.UuidValue projectId,
    required _is.UuidValue sponsorId,
    required String reference,
    required int awardedMinor,
    required String currency,
    required DateTime awardedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         projectId: projectId,
         sponsorId: sponsorId,
         reference: reference,
         awardedMinor: awardedMinor,
         currency: currency,
         awardedAt: awardedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGrant]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusGrant copyWith({
    Object? id = _Undefined,
    _is.UuidValue? projectId,
    _is.UuidValue? sponsorId,
    String? reference,
    int? awardedMinor,
    String? currency,
    DateTime? awardedAt,
    DateTime? createdAt,
  }) {
    return CampusGrant(
      id: id is _is.UuidValue? ? id : this.id,
      projectId: projectId ?? this.projectId,
      sponsorId: sponsorId ?? this.sponsorId,
      reference: reference ?? this.reference,
      awardedMinor: awardedMinor ?? this.awardedMinor,
      currency: currency ?? this.currency,
      awardedAt: awardedAt ?? this.awardedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusGrantUpdateTable extends _is.UpdateTable<CampusGrantTable> {
  CampusGrantUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> projectId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.projectId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> sponsorId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.sponsorId,
    value,
  );

  _is.ColumnValue<String, String> reference(String value) => _is.ColumnValue(
    table.reference,
    value,
  );

  _is.ColumnValue<int, int> awardedMinor(int value) => _is.ColumnValue(
    table.awardedMinor,
    value,
  );

  _is.ColumnValue<String, String> currency(String value) => _is.ColumnValue(
    table.currency,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> awardedAt(DateTime value) =>
      _is.ColumnValue(
        table.awardedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusGrantTable extends _is.Table<_is.UuidValue?> {
  CampusGrantTable({super.tableRelation}) : super(tableName: 'campus_grants') {
    updateTable = CampusGrantUpdateTable(this);
    projectId = _is.ColumnUuid(
      'projectId',
      this,
    );
    sponsorId = _is.ColumnUuid(
      'sponsorId',
      this,
    );
    reference = _is.ColumnString(
      'reference',
      this,
    );
    awardedMinor = _is.ColumnInt(
      'awardedMinor',
      this,
    );
    currency = _is.ColumnString(
      'currency',
      this,
    );
    awardedAt = _is.ColumnDateTime(
      'awardedAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusGrantUpdateTable updateTable;

  late final _is.ColumnUuid projectId;

  late final _is.ColumnUuid sponsorId;

  late final _is.ColumnString reference;

  late final _is.ColumnInt awardedMinor;

  late final _is.ColumnString currency;

  late final _is.ColumnDateTime awardedAt;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    projectId,
    sponsorId,
    reference,
    awardedMinor,
    currency,
    awardedAt,
    createdAt,
  ];
}

class CampusGrantInclude extends _is.IncludeObject {
  CampusGrantInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGrant.t;
}

class CampusGrantIncludeList extends _is.IncludeList {
  CampusGrantIncludeList._({
    _is.WhereExpressionBuilder<CampusGrantTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusGrant.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGrant.t;
}

class CampusGrantRepository {
  const CampusGrantRepository._();

  /// Returns a list of [CampusGrant]s matching the given query parameters.
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
  Future<List<CampusGrant>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGrantTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGrantTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusGrant>(
      where: where?.call(CampusGrant.t),
      orderBy: orderBy?.call(CampusGrant.t),
      orderByList: orderByList?.call(CampusGrant.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusGrant] matching the given query parameters.
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
  Future<CampusGrant?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGrantTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusGrantTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusGrant>(
      where: where?.call(CampusGrant.t),
      orderBy: orderBy?.call(CampusGrant.t),
      orderByList: orderByList?.call(CampusGrant.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusGrant] by its [id] or null if no such row exists.
  Future<CampusGrant?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusGrant>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusGrant]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusGrant]s will have their `id` fields set.
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
  Future<List<CampusGrant>> insert(
    _is.DatabaseSession session,
    List<CampusGrant> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusGrant>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusGrant] and returns the inserted row.
  ///
  /// The returned [CampusGrant] will have its `id` field set.
  Future<CampusGrant> insertRow(
    _is.DatabaseSession session,
    CampusGrant row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusGrant>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusGrant]s in the list and returns the resulting rows.
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
  /// The returned [CampusGrant]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGrant>> upsert(
    _is.DatabaseSession session,
    List<CampusGrant> rows, {
    required _is.ColumnSelections<CampusGrantTable> conflictColumns,
    _is.ColumnSelections<CampusGrantTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGrantTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusGrant>(
      rows,
      conflictColumns: conflictColumns(CampusGrant.t),
      updateColumns: updateColumns?.call(CampusGrant.t),
      updateWhere: updateWhere?.call(CampusGrant.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusGrant] and returns the resulting row.
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
  /// The returned [CampusGrant] will have its `id` field set.
  Future<CampusGrant?> upsertRow(
    _is.DatabaseSession session,
    CampusGrant row, {
    required _is.ColumnSelections<CampusGrantTable> conflictColumns,
    _is.ColumnSelections<CampusGrantTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGrantTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusGrant>(
      row,
      conflictColumns: conflictColumns(CampusGrant.t),
      updateColumns: updateColumns?.call(CampusGrant.t),
      updateWhere: updateWhere?.call(CampusGrant.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGrant]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGrant>> update(
    _is.DatabaseSession session,
    List<CampusGrant> rows, {
    _is.ColumnSelections<CampusGrantTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusGrant>(
      rows,
      columns: columns?.call(CampusGrant.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusGrant]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusGrant> updateRow(
    _is.DatabaseSession session,
    CampusGrant row, {
    _is.ColumnSelections<CampusGrantTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusGrant>(
      row,
      columns: columns?.call(CampusGrant.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusGrant] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusGrant?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusGrantUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusGrant>(
      id,
      columnValues: columnValues(CampusGrant.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGrant]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGrant>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusGrantUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusGrantTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGrantTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusGrant>(
      columnValues: columnValues(CampusGrant.t.updateTable),
      where: where(CampusGrant.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGrant.t),
      orderByList: orderByList?.call(CampusGrant.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusGrant]s in the list and returns the deleted rows.
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
  Future<List<CampusGrant>> delete(
    _is.DatabaseSession session,
    List<CampusGrant> rows, {
    _is.OrderByBuilder<CampusGrantTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusGrant>(
      rows,
      orderBy: orderBy?.call(CampusGrant.t),
      orderByList: orderByList?.call(CampusGrant.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusGrant].
  Future<CampusGrant> deleteRow(
    _is.DatabaseSession session,
    CampusGrant row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusGrant>(
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
  Future<List<CampusGrant>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGrantTable> where,
    _is.OrderByBuilder<CampusGrantTable>? orderBy,
    _is.OrderByListBuilder<CampusGrantTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusGrant>(
      where: where(CampusGrant.t),
      orderBy: orderBy?.call(CampusGrant.t),
      orderByList: orderByList?.call(CampusGrant.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGrantTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusGrant>(
      where: where?.call(CampusGrant.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusGrant] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGrantTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusGrant>(
      where: where(CampusGrant.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
