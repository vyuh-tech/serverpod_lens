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

abstract class SsoUserPreferences
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoUserPreferences._({
    this.id,
    required this.userId,
    required this.productCode,
    required this.data,
    required this.createdAt,
    required this.updatedAt,
  });

  factory SsoUserPreferences({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String productCode,
    required String data,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SsoUserPreferencesImpl;

  factory SsoUserPreferences.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoUserPreferences(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      productCode: jsonSerialization['productCode'] as String,
      data: jsonSerialization['data'] as String,
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = SsoUserPreferencesTable();

  static const db = SsoUserPreferencesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue userId;

  String productCode;

  String data;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoUserPreferences]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoUserPreferences copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    String? productCode,
    String? data,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoUserPreferences',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'productCode': productCode,
      'data': data,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoUserPreferences',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'productCode': productCode,
      'data': data,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static SsoUserPreferencesInclude include() {
    return SsoUserPreferencesInclude._();
  }

  static SsoUserPreferencesIncludeList includeList({
    _is.WhereExpressionBuilder<SsoUserPreferencesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserPreferencesTable>? orderBy,
    _is.OrderByListBuilder<SsoUserPreferencesTable>? orderByList,
    SsoUserPreferencesInclude? include,
  }) {
    return SsoUserPreferencesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoUserPreferences.t),
      orderByList: orderByList?.call(SsoUserPreferences.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoUserPreferencesImpl extends SsoUserPreferences {
  _SsoUserPreferencesImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String productCode,
    required String data,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         productCode: productCode,
         data: data,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [SsoUserPreferences]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoUserPreferences copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    String? productCode,
    String? data,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return SsoUserPreferences(
      id: id is _is.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      productCode: productCode ?? this.productCode,
      data: data ?? this.data,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class SsoUserPreferencesUpdateTable
    extends _is.UpdateTable<SsoUserPreferencesTable> {
  SsoUserPreferencesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<String, String> productCode(String value) => _is.ColumnValue(
    table.productCode,
    value,
  );

  _is.ColumnValue<String, String> data(String value) => _is.ColumnValue(
    table.data,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );
}

class SsoUserPreferencesTable extends _is.Table<_is.UuidValue?> {
  SsoUserPreferencesTable({super.tableRelation})
    : super(tableName: 'sso_user_preferences') {
    updateTable = SsoUserPreferencesUpdateTable(this);
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    productCode = _is.ColumnString(
      'productCode',
      this,
    );
    data = _is.ColumnString(
      'data',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final SsoUserPreferencesUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnString productCode;

  late final _is.ColumnString data;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    productCode,
    data,
    createdAt,
    updatedAt,
  ];
}

class SsoUserPreferencesInclude extends _is.IncludeObject {
  SsoUserPreferencesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoUserPreferences.t;
}

class SsoUserPreferencesIncludeList extends _is.IncludeList {
  SsoUserPreferencesIncludeList._({
    _is.WhereExpressionBuilder<SsoUserPreferencesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoUserPreferences.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoUserPreferences.t;
}

class SsoUserPreferencesRepository {
  const SsoUserPreferencesRepository._();

  /// Returns a list of [SsoUserPreferences]s matching the given query parameters.
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
  Future<List<SsoUserPreferences>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserPreferencesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserPreferencesTable>? orderBy,
    _is.OrderByListBuilder<SsoUserPreferencesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoUserPreferences>(
      where: where?.call(SsoUserPreferences.t),
      orderBy: orderBy?.call(SsoUserPreferences.t),
      orderByList: orderByList?.call(SsoUserPreferences.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoUserPreferences] matching the given query parameters.
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
  Future<SsoUserPreferences?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserPreferencesTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoUserPreferencesTable>? orderBy,
    _is.OrderByListBuilder<SsoUserPreferencesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoUserPreferences>(
      where: where?.call(SsoUserPreferences.t),
      orderBy: orderBy?.call(SsoUserPreferences.t),
      orderByList: orderByList?.call(SsoUserPreferences.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoUserPreferences] by its [id] or null if no such row exists.
  Future<SsoUserPreferences?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoUserPreferences>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoUserPreferences]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoUserPreferences]s will have their `id` fields set.
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
  Future<List<SsoUserPreferences>> insert(
    _is.DatabaseSession session,
    List<SsoUserPreferences> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoUserPreferences>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoUserPreferences] and returns the inserted row.
  ///
  /// The returned [SsoUserPreferences] will have its `id` field set.
  Future<SsoUserPreferences> insertRow(
    _is.DatabaseSession session,
    SsoUserPreferences row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoUserPreferences>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoUserPreferences]s in the list and returns the resulting rows.
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
  /// The returned [SsoUserPreferences]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserPreferences>> upsert(
    _is.DatabaseSession session,
    List<SsoUserPreferences> rows, {
    required _is.ColumnSelections<SsoUserPreferencesTable> conflictColumns,
    _is.ColumnSelections<SsoUserPreferencesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoUserPreferencesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoUserPreferences>(
      rows,
      conflictColumns: conflictColumns(SsoUserPreferences.t),
      updateColumns: updateColumns?.call(SsoUserPreferences.t),
      updateWhere: updateWhere?.call(SsoUserPreferences.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoUserPreferences] and returns the resulting row.
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
  /// The returned [SsoUserPreferences] will have its `id` field set.
  Future<SsoUserPreferences?> upsertRow(
    _is.DatabaseSession session,
    SsoUserPreferences row, {
    required _is.ColumnSelections<SsoUserPreferencesTable> conflictColumns,
    _is.ColumnSelections<SsoUserPreferencesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoUserPreferencesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoUserPreferences>(
      row,
      conflictColumns: conflictColumns(SsoUserPreferences.t),
      updateColumns: updateColumns?.call(SsoUserPreferences.t),
      updateWhere: updateWhere?.call(SsoUserPreferences.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoUserPreferences]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserPreferences>> update(
    _is.DatabaseSession session,
    List<SsoUserPreferences> rows, {
    _is.ColumnSelections<SsoUserPreferencesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoUserPreferences>(
      rows,
      columns: columns?.call(SsoUserPreferences.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoUserPreferences]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoUserPreferences> updateRow(
    _is.DatabaseSession session,
    SsoUserPreferences row, {
    _is.ColumnSelections<SsoUserPreferencesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoUserPreferences>(
      row,
      columns: columns?.call(SsoUserPreferences.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoUserPreferences] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoUserPreferences?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoUserPreferencesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoUserPreferences>(
      id,
      columnValues: columnValues(SsoUserPreferences.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoUserPreferences]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserPreferences>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoUserPreferencesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoUserPreferencesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserPreferencesTable>? orderBy,
    _is.OrderByListBuilder<SsoUserPreferencesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoUserPreferences>(
      columnValues: columnValues(SsoUserPreferences.t.updateTable),
      where: where(SsoUserPreferences.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoUserPreferences.t),
      orderByList: orderByList?.call(SsoUserPreferences.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoUserPreferences]s in the list and returns the deleted rows.
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
  Future<List<SsoUserPreferences>> delete(
    _is.DatabaseSession session,
    List<SsoUserPreferences> rows, {
    _is.OrderByBuilder<SsoUserPreferencesTable>? orderBy,
    _is.OrderByListBuilder<SsoUserPreferencesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoUserPreferences>(
      rows,
      orderBy: orderBy?.call(SsoUserPreferences.t),
      orderByList: orderByList?.call(SsoUserPreferences.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoUserPreferences].
  Future<SsoUserPreferences> deleteRow(
    _is.DatabaseSession session,
    SsoUserPreferences row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoUserPreferences>(
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
  Future<List<SsoUserPreferences>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoUserPreferencesTable> where,
    _is.OrderByBuilder<SsoUserPreferencesTable>? orderBy,
    _is.OrderByListBuilder<SsoUserPreferencesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoUserPreferences>(
      where: where(SsoUserPreferences.t),
      orderBy: orderBy?.call(SsoUserPreferences.t),
      orderByList: orderByList?.call(SsoUserPreferences.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserPreferencesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoUserPreferences>(
      where: where?.call(SsoUserPreferences.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoUserPreferences] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoUserPreferencesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoUserPreferences>(
      where: where(SsoUserPreferences.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
