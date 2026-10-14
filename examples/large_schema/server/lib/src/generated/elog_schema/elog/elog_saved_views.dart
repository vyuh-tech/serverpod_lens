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

abstract class ElogSavedViews
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogSavedViews._({
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

  factory ElogSavedViews({
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
  }) = _ElogSavedViewsImpl;

  factory ElogSavedViews.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogSavedViews(
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

  static final t = ElogSavedViewsTable();

  static const db = ElogSavedViewsRepository._();

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

  /// Returns a shallow copy of this [ElogSavedViews]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogSavedViews copyWith({
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
      '__className__': 'ElogSavedViews',
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
      '__className__': 'ElogSavedViews',
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

  static ElogSavedViewsInclude include() {
    return ElogSavedViewsInclude._();
  }

  static ElogSavedViewsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogSavedViewsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogSavedViewsTable>? orderBy,
    _is.OrderByListBuilder<ElogSavedViewsTable>? orderByList,
    ElogSavedViewsInclude? include,
  }) {
    return ElogSavedViewsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogSavedViews.t),
      orderByList: orderByList?.call(ElogSavedViews.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogSavedViewsImpl extends ElogSavedViews {
  _ElogSavedViewsImpl({
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

  /// Returns a shallow copy of this [ElogSavedViews]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogSavedViews copyWith({
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
    return ElogSavedViews(
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

class ElogSavedViewsUpdateTable extends _is.UpdateTable<ElogSavedViewsTable> {
  ElogSavedViewsUpdateTable(super.table);

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

class ElogSavedViewsTable extends _is.Table<_is.UuidValue?> {
  ElogSavedViewsTable({super.tableRelation})
    : super(tableName: 'elog_saved_views') {
    updateTable = ElogSavedViewsUpdateTable(this);
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

  late final ElogSavedViewsUpdateTable updateTable;

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

class ElogSavedViewsInclude extends _is.IncludeObject {
  ElogSavedViewsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogSavedViews.t;
}

class ElogSavedViewsIncludeList extends _is.IncludeList {
  ElogSavedViewsIncludeList._({
    _is.WhereExpressionBuilder<ElogSavedViewsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogSavedViews.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogSavedViews.t;
}

class ElogSavedViewsRepository {
  const ElogSavedViewsRepository._();

  /// Returns a list of [ElogSavedViews]s matching the given query parameters.
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
  Future<List<ElogSavedViews>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogSavedViewsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogSavedViewsTable>? orderBy,
    _is.OrderByListBuilder<ElogSavedViewsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogSavedViews>(
      where: where?.call(ElogSavedViews.t),
      orderBy: orderBy?.call(ElogSavedViews.t),
      orderByList: orderByList?.call(ElogSavedViews.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogSavedViews] matching the given query parameters.
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
  Future<ElogSavedViews?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogSavedViewsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogSavedViewsTable>? orderBy,
    _is.OrderByListBuilder<ElogSavedViewsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogSavedViews>(
      where: where?.call(ElogSavedViews.t),
      orderBy: orderBy?.call(ElogSavedViews.t),
      orderByList: orderByList?.call(ElogSavedViews.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogSavedViews] by its [id] or null if no such row exists.
  Future<ElogSavedViews?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogSavedViews>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogSavedViews]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogSavedViews]s will have their `id` fields set.
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
  Future<List<ElogSavedViews>> insert(
    _is.DatabaseSession session,
    List<ElogSavedViews> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogSavedViews>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogSavedViews] and returns the inserted row.
  ///
  /// The returned [ElogSavedViews] will have its `id` field set.
  Future<ElogSavedViews> insertRow(
    _is.DatabaseSession session,
    ElogSavedViews row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogSavedViews>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogSavedViews]s in the list and returns the resulting rows.
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
  /// The returned [ElogSavedViews]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogSavedViews>> upsert(
    _is.DatabaseSession session,
    List<ElogSavedViews> rows, {
    required _is.ColumnSelections<ElogSavedViewsTable> conflictColumns,
    _is.ColumnSelections<ElogSavedViewsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogSavedViewsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogSavedViews>(
      rows,
      conflictColumns: conflictColumns(ElogSavedViews.t),
      updateColumns: updateColumns?.call(ElogSavedViews.t),
      updateWhere: updateWhere?.call(ElogSavedViews.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogSavedViews] and returns the resulting row.
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
  /// The returned [ElogSavedViews] will have its `id` field set.
  Future<ElogSavedViews?> upsertRow(
    _is.DatabaseSession session,
    ElogSavedViews row, {
    required _is.ColumnSelections<ElogSavedViewsTable> conflictColumns,
    _is.ColumnSelections<ElogSavedViewsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogSavedViewsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogSavedViews>(
      row,
      conflictColumns: conflictColumns(ElogSavedViews.t),
      updateColumns: updateColumns?.call(ElogSavedViews.t),
      updateWhere: updateWhere?.call(ElogSavedViews.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogSavedViews]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogSavedViews>> update(
    _is.DatabaseSession session,
    List<ElogSavedViews> rows, {
    _is.ColumnSelections<ElogSavedViewsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogSavedViews>(
      rows,
      columns: columns?.call(ElogSavedViews.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogSavedViews]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogSavedViews> updateRow(
    _is.DatabaseSession session,
    ElogSavedViews row, {
    _is.ColumnSelections<ElogSavedViewsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogSavedViews>(
      row,
      columns: columns?.call(ElogSavedViews.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogSavedViews] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogSavedViews?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogSavedViewsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogSavedViews>(
      id,
      columnValues: columnValues(ElogSavedViews.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogSavedViews]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogSavedViews>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogSavedViewsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogSavedViewsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogSavedViewsTable>? orderBy,
    _is.OrderByListBuilder<ElogSavedViewsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogSavedViews>(
      columnValues: columnValues(ElogSavedViews.t.updateTable),
      where: where(ElogSavedViews.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogSavedViews.t),
      orderByList: orderByList?.call(ElogSavedViews.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogSavedViews]s in the list and returns the deleted rows.
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
  Future<List<ElogSavedViews>> delete(
    _is.DatabaseSession session,
    List<ElogSavedViews> rows, {
    _is.OrderByBuilder<ElogSavedViewsTable>? orderBy,
    _is.OrderByListBuilder<ElogSavedViewsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogSavedViews>(
      rows,
      orderBy: orderBy?.call(ElogSavedViews.t),
      orderByList: orderByList?.call(ElogSavedViews.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogSavedViews].
  Future<ElogSavedViews> deleteRow(
    _is.DatabaseSession session,
    ElogSavedViews row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogSavedViews>(
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
  Future<List<ElogSavedViews>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogSavedViewsTable> where,
    _is.OrderByBuilder<ElogSavedViewsTable>? orderBy,
    _is.OrderByListBuilder<ElogSavedViewsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogSavedViews>(
      where: where(ElogSavedViews.t),
      orderBy: orderBy?.call(ElogSavedViews.t),
      orderByList: orderByList?.call(ElogSavedViews.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogSavedViewsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogSavedViews>(
      where: where?.call(ElogSavedViews.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogSavedViews] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogSavedViewsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogSavedViews>(
      where: where(ElogSavedViews.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
