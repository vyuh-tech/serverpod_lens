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

/// Fictional university fixture: library.
abstract class CampusPublisher
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusPublisher._({
    this.id,
    required this.name,
    this.countryCode,
    this.website,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusPublisher({
    _is.UuidValue? id,
    required String name,
    String? countryCode,
    String? website,
    DateTime? createdAt,
  }) = _CampusPublisherImpl;

  factory CampusPublisher.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusPublisher(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      countryCode: jsonSerialization['countryCode'] as String?,
      website: jsonSerialization['website'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusPublisherTable();

  static const db = CampusPublisherRepository._();

  @override
  _is.UuidValue? id;

  String name;

  String? countryCode;

  String? website;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusPublisher]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusPublisher copyWith({
    _is.UuidValue? id,
    String? name,
    String? countryCode,
    String? website,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusPublisher',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (countryCode != null) 'countryCode': countryCode,
      if (website != null) 'website': website,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusPublisher',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (countryCode != null) 'countryCode': countryCode,
      if (website != null) 'website': website,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusPublisherInclude include() {
    return CampusPublisherInclude._();
  }

  static CampusPublisherIncludeList includeList({
    _is.WhereExpressionBuilder<CampusPublisherTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPublisherTable>? orderBy,
    _is.OrderByListBuilder<CampusPublisherTable>? orderByList,
    CampusPublisherInclude? include,
  }) {
    return CampusPublisherIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusPublisher.t),
      orderByList: orderByList?.call(CampusPublisher.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusPublisherImpl extends CampusPublisher {
  _CampusPublisherImpl({
    _is.UuidValue? id,
    required String name,
    String? countryCode,
    String? website,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         countryCode: countryCode,
         website: website,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusPublisher]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusPublisher copyWith({
    Object? id = _Undefined,
    String? name,
    Object? countryCode = _Undefined,
    Object? website = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusPublisher(
      id: id is _is.UuidValue? ? id : this.id,
      name: name ?? this.name,
      countryCode: countryCode is String? ? countryCode : this.countryCode,
      website: website is String? ? website : this.website,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusPublisherUpdateTable extends _is.UpdateTable<CampusPublisherTable> {
  CampusPublisherUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> countryCode(String? value) => _is.ColumnValue(
    table.countryCode,
    value,
  );

  _is.ColumnValue<String, String> website(String? value) => _is.ColumnValue(
    table.website,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusPublisherTable extends _is.Table<_is.UuidValue?> {
  CampusPublisherTable({super.tableRelation})
    : super(tableName: 'campus_publishers') {
    updateTable = CampusPublisherUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    countryCode = _is.ColumnString(
      'countryCode',
      this,
    );
    website = _is.ColumnString(
      'website',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusPublisherUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString countryCode;

  late final _is.ColumnString website;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    countryCode,
    website,
    createdAt,
  ];
}

class CampusPublisherInclude extends _is.IncludeObject {
  CampusPublisherInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusPublisher.t;
}

class CampusPublisherIncludeList extends _is.IncludeList {
  CampusPublisherIncludeList._({
    _is.WhereExpressionBuilder<CampusPublisherTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusPublisher.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusPublisher.t;
}

class CampusPublisherRepository {
  const CampusPublisherRepository._();

  /// Returns a list of [CampusPublisher]s matching the given query parameters.
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
  Future<List<CampusPublisher>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPublisherTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPublisherTable>? orderBy,
    _is.OrderByListBuilder<CampusPublisherTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusPublisher>(
      where: where?.call(CampusPublisher.t),
      orderBy: orderBy?.call(CampusPublisher.t),
      orderByList: orderByList?.call(CampusPublisher.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusPublisher] matching the given query parameters.
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
  Future<CampusPublisher?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPublisherTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusPublisherTable>? orderBy,
    _is.OrderByListBuilder<CampusPublisherTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusPublisher>(
      where: where?.call(CampusPublisher.t),
      orderBy: orderBy?.call(CampusPublisher.t),
      orderByList: orderByList?.call(CampusPublisher.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusPublisher] by its [id] or null if no such row exists.
  Future<CampusPublisher?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusPublisher>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusPublisher]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusPublisher]s will have their `id` fields set.
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
  Future<List<CampusPublisher>> insert(
    _is.DatabaseSession session,
    List<CampusPublisher> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusPublisher>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusPublisher] and returns the inserted row.
  ///
  /// The returned [CampusPublisher] will have its `id` field set.
  Future<CampusPublisher> insertRow(
    _is.DatabaseSession session,
    CampusPublisher row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusPublisher>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusPublisher]s in the list and returns the resulting rows.
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
  /// The returned [CampusPublisher]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPublisher>> upsert(
    _is.DatabaseSession session,
    List<CampusPublisher> rows, {
    required _is.ColumnSelections<CampusPublisherTable> conflictColumns,
    _is.ColumnSelections<CampusPublisherTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusPublisherTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusPublisher>(
      rows,
      conflictColumns: conflictColumns(CampusPublisher.t),
      updateColumns: updateColumns?.call(CampusPublisher.t),
      updateWhere: updateWhere?.call(CampusPublisher.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusPublisher] and returns the resulting row.
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
  /// The returned [CampusPublisher] will have its `id` field set.
  Future<CampusPublisher?> upsertRow(
    _is.DatabaseSession session,
    CampusPublisher row, {
    required _is.ColumnSelections<CampusPublisherTable> conflictColumns,
    _is.ColumnSelections<CampusPublisherTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusPublisherTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusPublisher>(
      row,
      conflictColumns: conflictColumns(CampusPublisher.t),
      updateColumns: updateColumns?.call(CampusPublisher.t),
      updateWhere: updateWhere?.call(CampusPublisher.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusPublisher]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPublisher>> update(
    _is.DatabaseSession session,
    List<CampusPublisher> rows, {
    _is.ColumnSelections<CampusPublisherTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusPublisher>(
      rows,
      columns: columns?.call(CampusPublisher.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusPublisher]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusPublisher> updateRow(
    _is.DatabaseSession session,
    CampusPublisher row, {
    _is.ColumnSelections<CampusPublisherTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusPublisher>(
      row,
      columns: columns?.call(CampusPublisher.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusPublisher] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusPublisher?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusPublisherUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusPublisher>(
      id,
      columnValues: columnValues(CampusPublisher.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusPublisher]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPublisher>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusPublisherUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusPublisherTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPublisherTable>? orderBy,
    _is.OrderByListBuilder<CampusPublisherTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusPublisher>(
      columnValues: columnValues(CampusPublisher.t.updateTable),
      where: where(CampusPublisher.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusPublisher.t),
      orderByList: orderByList?.call(CampusPublisher.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusPublisher]s in the list and returns the deleted rows.
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
  Future<List<CampusPublisher>> delete(
    _is.DatabaseSession session,
    List<CampusPublisher> rows, {
    _is.OrderByBuilder<CampusPublisherTable>? orderBy,
    _is.OrderByListBuilder<CampusPublisherTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusPublisher>(
      rows,
      orderBy: orderBy?.call(CampusPublisher.t),
      orderByList: orderByList?.call(CampusPublisher.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusPublisher].
  Future<CampusPublisher> deleteRow(
    _is.DatabaseSession session,
    CampusPublisher row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusPublisher>(
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
  Future<List<CampusPublisher>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusPublisherTable> where,
    _is.OrderByBuilder<CampusPublisherTable>? orderBy,
    _is.OrderByListBuilder<CampusPublisherTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusPublisher>(
      where: where(CampusPublisher.t),
      orderBy: orderBy?.call(CampusPublisher.t),
      orderByList: orderByList?.call(CampusPublisher.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPublisherTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusPublisher>(
      where: where?.call(CampusPublisher.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusPublisher] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusPublisherTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusPublisher>(
      where: where(CampusPublisher.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
