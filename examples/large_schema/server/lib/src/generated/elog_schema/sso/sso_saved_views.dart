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

abstract class SsoSavedViews
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoSavedViews._({
    this.id,
    required this.entityType,
    required this.userId,
    required this.name,
    required this.filter,
    required this.sort,
    required this.layout,
    required this.isFavorite,
    required this.isDefault,
    this.createdAt,
    this.updatedAt,
  });

  factory SsoSavedViews({
    _is.UuidValue? id,
    required String entityType,
    required _is.UuidValue userId,
    required String name,
    required String filter,
    required String sort,
    required String layout,
    required bool isFavorite,
    required bool isDefault,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SsoSavedViewsImpl;

  factory SsoSavedViews.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoSavedViews(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      entityType: jsonSerialization['entityType'] as String,
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      name: jsonSerialization['name'] as String,
      filter: jsonSerialization['filter'] as String,
      sort: jsonSerialization['sort'] as String,
      layout: jsonSerialization['layout'] as String,
      isFavorite: _is.BoolJsonExtension.fromJson(
        jsonSerialization['isFavorite'],
      ),
      isDefault: _is.BoolJsonExtension.fromJson(jsonSerialization['isDefault']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = SsoSavedViewsTable();

  static const db = SsoSavedViewsRepository._();

  @override
  _is.UuidValue? id;

  String entityType;

  _is.UuidValue userId;

  String name;

  String filter;

  String sort;

  String layout;

  bool isFavorite;

  bool isDefault;

  DateTime? createdAt;

  DateTime? updatedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoSavedViews]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoSavedViews copyWith({
    _is.UuidValue? id,
    String? entityType,
    _is.UuidValue? userId,
    String? name,
    String? filter,
    String? sort,
    String? layout,
    bool? isFavorite,
    bool? isDefault,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoSavedViews',
      if (id != null) 'id': id?.toJson(),
      'entityType': entityType,
      'userId': userId.toJson(),
      'name': name,
      'filter': filter,
      'sort': sort,
      'layout': layout,
      'isFavorite': isFavorite,
      'isDefault': isDefault,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoSavedViews',
      if (id != null) 'id': id?.toJson(),
      'entityType': entityType,
      'userId': userId.toJson(),
      'name': name,
      'filter': filter,
      'sort': sort,
      'layout': layout,
      'isFavorite': isFavorite,
      'isDefault': isDefault,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  static SsoSavedViewsInclude include() {
    return SsoSavedViewsInclude._();
  }

  static SsoSavedViewsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoSavedViewsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoSavedViewsTable>? orderBy,
    _is.OrderByListBuilder<SsoSavedViewsTable>? orderByList,
    SsoSavedViewsInclude? include,
  }) {
    return SsoSavedViewsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoSavedViews.t),
      orderByList: orderByList?.call(SsoSavedViews.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoSavedViewsImpl extends SsoSavedViews {
  _SsoSavedViewsImpl({
    _is.UuidValue? id,
    required String entityType,
    required _is.UuidValue userId,
    required String name,
    required String filter,
    required String sort,
    required String layout,
    required bool isFavorite,
    required bool isDefault,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         entityType: entityType,
         userId: userId,
         name: name,
         filter: filter,
         sort: sort,
         layout: layout,
         isFavorite: isFavorite,
         isDefault: isDefault,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [SsoSavedViews]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoSavedViews copyWith({
    Object? id = _Undefined,
    String? entityType,
    _is.UuidValue? userId,
    String? name,
    String? filter,
    String? sort,
    String? layout,
    bool? isFavorite,
    bool? isDefault,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
  }) {
    return SsoSavedViews(
      id: id is _is.UuidValue? ? id : this.id,
      entityType: entityType ?? this.entityType,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      filter: filter ?? this.filter,
      sort: sort ?? this.sort,
      layout: layout ?? this.layout,
      isFavorite: isFavorite ?? this.isFavorite,
      isDefault: isDefault ?? this.isDefault,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
    );
  }
}

class SsoSavedViewsUpdateTable extends _is.UpdateTable<SsoSavedViewsTable> {
  SsoSavedViewsUpdateTable(super.table);

  _is.ColumnValue<String, String> entityType(String value) => _is.ColumnValue(
    table.entityType,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> filter(String value) => _is.ColumnValue(
    table.filter,
    value,
  );

  _is.ColumnValue<String, String> sort(String value) => _is.ColumnValue(
    table.sort,
    value,
  );

  _is.ColumnValue<String, String> layout(String value) => _is.ColumnValue(
    table.layout,
    value,
  );

  _is.ColumnValue<bool, bool> isFavorite(bool value) => _is.ColumnValue(
    table.isFavorite,
    value,
  );

  _is.ColumnValue<bool, bool> isDefault(bool value) => _is.ColumnValue(
    table.isDefault,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime? value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );
}

class SsoSavedViewsTable extends _is.Table<_is.UuidValue?> {
  SsoSavedViewsTable({super.tableRelation})
    : super(tableName: 'sso_saved_views') {
    updateTable = SsoSavedViewsUpdateTable(this);
    entityType = _is.ColumnString(
      'entityType',
      this,
    );
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    filter = _is.ColumnString(
      'filter',
      this,
    );
    sort = _is.ColumnString(
      'sort',
      this,
    );
    layout = _is.ColumnString(
      'layout',
      this,
    );
    isFavorite = _is.ColumnBool(
      'isFavorite',
      this,
    );
    isDefault = _is.ColumnBool(
      'isDefault',
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

  late final SsoSavedViewsUpdateTable updateTable;

  late final _is.ColumnString entityType;

  late final _is.ColumnUuid userId;

  late final _is.ColumnString name;

  late final _is.ColumnString filter;

  late final _is.ColumnString sort;

  late final _is.ColumnString layout;

  late final _is.ColumnBool isFavorite;

  late final _is.ColumnBool isDefault;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    entityType,
    userId,
    name,
    filter,
    sort,
    layout,
    isFavorite,
    isDefault,
    createdAt,
    updatedAt,
  ];
}

class SsoSavedViewsInclude extends _is.IncludeObject {
  SsoSavedViewsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoSavedViews.t;
}

class SsoSavedViewsIncludeList extends _is.IncludeList {
  SsoSavedViewsIncludeList._({
    _is.WhereExpressionBuilder<SsoSavedViewsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoSavedViews.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoSavedViews.t;
}

class SsoSavedViewsRepository {
  const SsoSavedViewsRepository._();

  /// Returns a list of [SsoSavedViews]s matching the given query parameters.
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
  Future<List<SsoSavedViews>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoSavedViewsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoSavedViewsTable>? orderBy,
    _is.OrderByListBuilder<SsoSavedViewsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoSavedViews>(
      where: where?.call(SsoSavedViews.t),
      orderBy: orderBy?.call(SsoSavedViews.t),
      orderByList: orderByList?.call(SsoSavedViews.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoSavedViews] matching the given query parameters.
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
  Future<SsoSavedViews?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoSavedViewsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoSavedViewsTable>? orderBy,
    _is.OrderByListBuilder<SsoSavedViewsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoSavedViews>(
      where: where?.call(SsoSavedViews.t),
      orderBy: orderBy?.call(SsoSavedViews.t),
      orderByList: orderByList?.call(SsoSavedViews.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoSavedViews] by its [id] or null if no such row exists.
  Future<SsoSavedViews?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoSavedViews>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoSavedViews]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoSavedViews]s will have their `id` fields set.
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
  Future<List<SsoSavedViews>> insert(
    _is.DatabaseSession session,
    List<SsoSavedViews> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoSavedViews>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoSavedViews] and returns the inserted row.
  ///
  /// The returned [SsoSavedViews] will have its `id` field set.
  Future<SsoSavedViews> insertRow(
    _is.DatabaseSession session,
    SsoSavedViews row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoSavedViews>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoSavedViews]s in the list and returns the resulting rows.
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
  /// The returned [SsoSavedViews]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoSavedViews>> upsert(
    _is.DatabaseSession session,
    List<SsoSavedViews> rows, {
    required _is.ColumnSelections<SsoSavedViewsTable> conflictColumns,
    _is.ColumnSelections<SsoSavedViewsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoSavedViewsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoSavedViews>(
      rows,
      conflictColumns: conflictColumns(SsoSavedViews.t),
      updateColumns: updateColumns?.call(SsoSavedViews.t),
      updateWhere: updateWhere?.call(SsoSavedViews.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoSavedViews] and returns the resulting row.
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
  /// The returned [SsoSavedViews] will have its `id` field set.
  Future<SsoSavedViews?> upsertRow(
    _is.DatabaseSession session,
    SsoSavedViews row, {
    required _is.ColumnSelections<SsoSavedViewsTable> conflictColumns,
    _is.ColumnSelections<SsoSavedViewsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoSavedViewsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoSavedViews>(
      row,
      conflictColumns: conflictColumns(SsoSavedViews.t),
      updateColumns: updateColumns?.call(SsoSavedViews.t),
      updateWhere: updateWhere?.call(SsoSavedViews.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoSavedViews]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoSavedViews>> update(
    _is.DatabaseSession session,
    List<SsoSavedViews> rows, {
    _is.ColumnSelections<SsoSavedViewsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoSavedViews>(
      rows,
      columns: columns?.call(SsoSavedViews.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoSavedViews]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoSavedViews> updateRow(
    _is.DatabaseSession session,
    SsoSavedViews row, {
    _is.ColumnSelections<SsoSavedViewsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoSavedViews>(
      row,
      columns: columns?.call(SsoSavedViews.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoSavedViews] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoSavedViews?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoSavedViewsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoSavedViews>(
      id,
      columnValues: columnValues(SsoSavedViews.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoSavedViews]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoSavedViews>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoSavedViewsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<SsoSavedViewsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoSavedViewsTable>? orderBy,
    _is.OrderByListBuilder<SsoSavedViewsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoSavedViews>(
      columnValues: columnValues(SsoSavedViews.t.updateTable),
      where: where(SsoSavedViews.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoSavedViews.t),
      orderByList: orderByList?.call(SsoSavedViews.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoSavedViews]s in the list and returns the deleted rows.
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
  Future<List<SsoSavedViews>> delete(
    _is.DatabaseSession session,
    List<SsoSavedViews> rows, {
    _is.OrderByBuilder<SsoSavedViewsTable>? orderBy,
    _is.OrderByListBuilder<SsoSavedViewsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoSavedViews>(
      rows,
      orderBy: orderBy?.call(SsoSavedViews.t),
      orderByList: orderByList?.call(SsoSavedViews.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoSavedViews].
  Future<SsoSavedViews> deleteRow(
    _is.DatabaseSession session,
    SsoSavedViews row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoSavedViews>(
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
  Future<List<SsoSavedViews>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoSavedViewsTable> where,
    _is.OrderByBuilder<SsoSavedViewsTable>? orderBy,
    _is.OrderByListBuilder<SsoSavedViewsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoSavedViews>(
      where: where(SsoSavedViews.t),
      orderBy: orderBy?.call(SsoSavedViews.t),
      orderByList: orderByList?.call(SsoSavedViews.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoSavedViewsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoSavedViews>(
      where: where?.call(SsoSavedViews.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoSavedViews] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoSavedViewsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoSavedViews>(
      where: where(SsoSavedViews.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
