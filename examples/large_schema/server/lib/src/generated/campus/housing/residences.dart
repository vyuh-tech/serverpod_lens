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
abstract class CampusResidence
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusResidence._({
    this.id,
    required this.campusId,
    required this.name,
    required this.address,
    required this.accessible,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResidence({
    _is.UuidValue? id,
    required _is.UuidValue campusId,
    required String name,
    required String address,
    required bool accessible,
    DateTime? createdAt,
  }) = _CampusResidenceImpl;

  factory CampusResidence.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusResidence(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      campusId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['campusId'],
      ),
      name: jsonSerialization['name'] as String,
      address: jsonSerialization['address'] as String,
      accessible: _is.BoolJsonExtension.fromJson(
        jsonSerialization['accessible'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusResidenceTable();

  static const db = CampusResidenceRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue campusId;

  String name;

  String address;

  bool accessible;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusResidence]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusResidence copyWith({
    _is.UuidValue? id,
    _is.UuidValue? campusId,
    String? name,
    String? address,
    bool? accessible,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResidence',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'name': name,
      'address': address,
      'accessible': accessible,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResidence',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'name': name,
      'address': address,
      'accessible': accessible,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusResidenceInclude include() {
    return CampusResidenceInclude._();
  }

  static CampusResidenceIncludeList includeList({
    _is.WhereExpressionBuilder<CampusResidenceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResidenceTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceTable>? orderByList,
    CampusResidenceInclude? include,
  }) {
    return CampusResidenceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResidence.t),
      orderByList: orderByList?.call(CampusResidence.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusResidenceImpl extends CampusResidence {
  _CampusResidenceImpl({
    _is.UuidValue? id,
    required _is.UuidValue campusId,
    required String name,
    required String address,
    required bool accessible,
    DateTime? createdAt,
  }) : super._(
         id: id,
         campusId: campusId,
         name: name,
         address: address,
         accessible: accessible,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResidence]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusResidence copyWith({
    Object? id = _Undefined,
    _is.UuidValue? campusId,
    String? name,
    String? address,
    bool? accessible,
    DateTime? createdAt,
  }) {
    return CampusResidence(
      id: id is _is.UuidValue? ? id : this.id,
      campusId: campusId ?? this.campusId,
      name: name ?? this.name,
      address: address ?? this.address,
      accessible: accessible ?? this.accessible,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusResidenceUpdateTable extends _is.UpdateTable<CampusResidenceTable> {
  CampusResidenceUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> campusId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.campusId,
        value,
      );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> address(String value) => _is.ColumnValue(
    table.address,
    value,
  );

  _is.ColumnValue<bool, bool> accessible(bool value) => _is.ColumnValue(
    table.accessible,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusResidenceTable extends _is.Table<_is.UuidValue?> {
  CampusResidenceTable({super.tableRelation})
    : super(tableName: 'campus_residences') {
    updateTable = CampusResidenceUpdateTable(this);
    campusId = _is.ColumnUuid(
      'campusId',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    address = _is.ColumnString(
      'address',
      this,
    );
    accessible = _is.ColumnBool(
      'accessible',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusResidenceUpdateTable updateTable;

  late final _is.ColumnUuid campusId;

  late final _is.ColumnString name;

  late final _is.ColumnString address;

  late final _is.ColumnBool accessible;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    campusId,
    name,
    address,
    accessible,
    createdAt,
  ];
}

class CampusResidenceInclude extends _is.IncludeObject {
  CampusResidenceInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResidence.t;
}

class CampusResidenceIncludeList extends _is.IncludeList {
  CampusResidenceIncludeList._({
    _is.WhereExpressionBuilder<CampusResidenceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusResidence.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusResidence.t;
}

class CampusResidenceRepository {
  const CampusResidenceRepository._();

  /// Returns a list of [CampusResidence]s matching the given query parameters.
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
  Future<List<CampusResidence>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResidenceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResidenceTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusResidence>(
      where: where?.call(CampusResidence.t),
      orderBy: orderBy?.call(CampusResidence.t),
      orderByList: orderByList?.call(CampusResidence.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusResidence] matching the given query parameters.
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
  Future<CampusResidence?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResidenceTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusResidenceTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusResidence>(
      where: where?.call(CampusResidence.t),
      orderBy: orderBy?.call(CampusResidence.t),
      orderByList: orderByList?.call(CampusResidence.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusResidence] by its [id] or null if no such row exists.
  Future<CampusResidence?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusResidence>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusResidence]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusResidence]s will have their `id` fields set.
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
  Future<List<CampusResidence>> insert(
    _is.DatabaseSession session,
    List<CampusResidence> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusResidence>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusResidence] and returns the inserted row.
  ///
  /// The returned [CampusResidence] will have its `id` field set.
  Future<CampusResidence> insertRow(
    _is.DatabaseSession session,
    CampusResidence row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusResidence>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusResidence]s in the list and returns the resulting rows.
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
  /// The returned [CampusResidence]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResidence>> upsert(
    _is.DatabaseSession session,
    List<CampusResidence> rows, {
    required _is.ColumnSelections<CampusResidenceTable> conflictColumns,
    _is.ColumnSelections<CampusResidenceTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResidenceTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusResidence>(
      rows,
      conflictColumns: conflictColumns(CampusResidence.t),
      updateColumns: updateColumns?.call(CampusResidence.t),
      updateWhere: updateWhere?.call(CampusResidence.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusResidence] and returns the resulting row.
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
  /// The returned [CampusResidence] will have its `id` field set.
  Future<CampusResidence?> upsertRow(
    _is.DatabaseSession session,
    CampusResidence row, {
    required _is.ColumnSelections<CampusResidenceTable> conflictColumns,
    _is.ColumnSelections<CampusResidenceTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusResidenceTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusResidence>(
      row,
      conflictColumns: conflictColumns(CampusResidence.t),
      updateColumns: updateColumns?.call(CampusResidence.t),
      updateWhere: updateWhere?.call(CampusResidence.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResidence]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResidence>> update(
    _is.DatabaseSession session,
    List<CampusResidence> rows, {
    _is.ColumnSelections<CampusResidenceTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusResidence>(
      rows,
      columns: columns?.call(CampusResidence.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusResidence]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusResidence> updateRow(
    _is.DatabaseSession session,
    CampusResidence row, {
    _is.ColumnSelections<CampusResidenceTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusResidence>(
      row,
      columns: columns?.call(CampusResidence.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusResidence] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusResidence?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusResidenceUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusResidence>(
      id,
      columnValues: columnValues(CampusResidence.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusResidence]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusResidence>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusResidenceUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusResidenceTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusResidenceTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusResidence>(
      columnValues: columnValues(CampusResidence.t.updateTable),
      where: where(CampusResidence.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusResidence.t),
      orderByList: orderByList?.call(CampusResidence.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusResidence]s in the list and returns the deleted rows.
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
  Future<List<CampusResidence>> delete(
    _is.DatabaseSession session,
    List<CampusResidence> rows, {
    _is.OrderByBuilder<CampusResidenceTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusResidence>(
      rows,
      orderBy: orderBy?.call(CampusResidence.t),
      orderByList: orderByList?.call(CampusResidence.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusResidence].
  Future<CampusResidence> deleteRow(
    _is.DatabaseSession session,
    CampusResidence row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusResidence>(
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
  Future<List<CampusResidence>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResidenceTable> where,
    _is.OrderByBuilder<CampusResidenceTable>? orderBy,
    _is.OrderByListBuilder<CampusResidenceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusResidence>(
      where: where(CampusResidence.t),
      orderBy: orderBy?.call(CampusResidence.t),
      orderByList: orderByList?.call(CampusResidence.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusResidenceTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusResidence>(
      where: where?.call(CampusResidence.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusResidence] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusResidenceTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusResidence>(
      where: where(CampusResidence.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
