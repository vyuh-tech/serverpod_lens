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

abstract class ElogPresetAreaCategories
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPresetAreaCategories._({
    this.id,
    required this.industryId,
    required this.code,
    required this.name,
  });

  factory ElogPresetAreaCategories({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
  }) = _ElogPresetAreaCategoriesImpl;

  factory ElogPresetAreaCategories.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPresetAreaCategories(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
    );
  }

  static final t = ElogPresetAreaCategoriesTable();

  static const db = ElogPresetAreaCategoriesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue industryId;

  String code;

  String name;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPresetAreaCategories]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPresetAreaCategories copyWith({
    _is.UuidValue? id,
    _is.UuidValue? industryId,
    String? code,
    String? name,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetAreaCategories',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetAreaCategories',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
    };
  }

  static ElogPresetAreaCategoriesInclude include() {
    return ElogPresetAreaCategoriesInclude._();
  }

  static ElogPresetAreaCategoriesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPresetAreaCategoriesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetAreaCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetAreaCategoriesTable>? orderByList,
    ElogPresetAreaCategoriesInclude? include,
  }) {
    return ElogPresetAreaCategoriesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetAreaCategories.t),
      orderByList: orderByList?.call(ElogPresetAreaCategories.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetAreaCategoriesImpl extends ElogPresetAreaCategories {
  _ElogPresetAreaCategoriesImpl({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
  }) : super._(
         id: id,
         industryId: industryId,
         code: code,
         name: name,
       );

  /// Returns a shallow copy of this [ElogPresetAreaCategories]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPresetAreaCategories copyWith({
    Object? id = _Undefined,
    _is.UuidValue? industryId,
    String? code,
    String? name,
  }) {
    return ElogPresetAreaCategories(
      id: id is _is.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      code: code ?? this.code,
      name: name ?? this.name,
    );
  }
}

class ElogPresetAreaCategoriesUpdateTable
    extends _is.UpdateTable<ElogPresetAreaCategoriesTable> {
  ElogPresetAreaCategoriesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> industryId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.industryId,
    value,
  );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );
}

class ElogPresetAreaCategoriesTable extends _is.Table<_is.UuidValue?> {
  ElogPresetAreaCategoriesTable({super.tableRelation})
    : super(tableName: 'elog_preset_area_categories') {
    updateTable = ElogPresetAreaCategoriesUpdateTable(this);
    industryId = _is.ColumnUuid(
      'industryId',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
  }

  late final ElogPresetAreaCategoriesUpdateTable updateTable;

  late final _is.ColumnUuid industryId;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  @override
  List<_is.Column> get columns => [
    id,
    industryId,
    code,
    name,
  ];
}

class ElogPresetAreaCategoriesInclude extends _is.IncludeObject {
  ElogPresetAreaCategoriesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetAreaCategories.t;
}

class ElogPresetAreaCategoriesIncludeList extends _is.IncludeList {
  ElogPresetAreaCategoriesIncludeList._({
    _is.WhereExpressionBuilder<ElogPresetAreaCategoriesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPresetAreaCategories.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetAreaCategories.t;
}

class ElogPresetAreaCategoriesRepository {
  const ElogPresetAreaCategoriesRepository._();

  /// Returns a list of [ElogPresetAreaCategories]s matching the given query parameters.
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
  Future<List<ElogPresetAreaCategories>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetAreaCategoriesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetAreaCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetAreaCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPresetAreaCategories>(
      where: where?.call(ElogPresetAreaCategories.t),
      orderBy: orderBy?.call(ElogPresetAreaCategories.t),
      orderByList: orderByList?.call(ElogPresetAreaCategories.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPresetAreaCategories] matching the given query parameters.
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
  Future<ElogPresetAreaCategories?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetAreaCategoriesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPresetAreaCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetAreaCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPresetAreaCategories>(
      where: where?.call(ElogPresetAreaCategories.t),
      orderBy: orderBy?.call(ElogPresetAreaCategories.t),
      orderByList: orderByList?.call(ElogPresetAreaCategories.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPresetAreaCategories] by its [id] or null if no such row exists.
  Future<ElogPresetAreaCategories?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPresetAreaCategories>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPresetAreaCategories]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPresetAreaCategories]s will have their `id` fields set.
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
  Future<List<ElogPresetAreaCategories>> insert(
    _is.DatabaseSession session,
    List<ElogPresetAreaCategories> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPresetAreaCategories>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPresetAreaCategories] and returns the inserted row.
  ///
  /// The returned [ElogPresetAreaCategories] will have its `id` field set.
  Future<ElogPresetAreaCategories> insertRow(
    _is.DatabaseSession session,
    ElogPresetAreaCategories row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPresetAreaCategories>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPresetAreaCategories]s in the list and returns the resulting rows.
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
  /// The returned [ElogPresetAreaCategories]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetAreaCategories>> upsert(
    _is.DatabaseSession session,
    List<ElogPresetAreaCategories> rows, {
    required _is.ColumnSelections<ElogPresetAreaCategoriesTable>
    conflictColumns,
    _is.ColumnSelections<ElogPresetAreaCategoriesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetAreaCategoriesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPresetAreaCategories>(
      rows,
      conflictColumns: conflictColumns(ElogPresetAreaCategories.t),
      updateColumns: updateColumns?.call(ElogPresetAreaCategories.t),
      updateWhere: updateWhere?.call(ElogPresetAreaCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPresetAreaCategories] and returns the resulting row.
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
  /// The returned [ElogPresetAreaCategories] will have its `id` field set.
  Future<ElogPresetAreaCategories?> upsertRow(
    _is.DatabaseSession session,
    ElogPresetAreaCategories row, {
    required _is.ColumnSelections<ElogPresetAreaCategoriesTable>
    conflictColumns,
    _is.ColumnSelections<ElogPresetAreaCategoriesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetAreaCategoriesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPresetAreaCategories>(
      row,
      conflictColumns: conflictColumns(ElogPresetAreaCategories.t),
      updateColumns: updateColumns?.call(ElogPresetAreaCategories.t),
      updateWhere: updateWhere?.call(ElogPresetAreaCategories.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetAreaCategories]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetAreaCategories>> update(
    _is.DatabaseSession session,
    List<ElogPresetAreaCategories> rows, {
    _is.ColumnSelections<ElogPresetAreaCategoriesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPresetAreaCategories>(
      rows,
      columns: columns?.call(ElogPresetAreaCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPresetAreaCategories]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPresetAreaCategories> updateRow(
    _is.DatabaseSession session,
    ElogPresetAreaCategories row, {
    _is.ColumnSelections<ElogPresetAreaCategoriesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPresetAreaCategories>(
      row,
      columns: columns?.call(ElogPresetAreaCategories.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPresetAreaCategories] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPresetAreaCategories?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPresetAreaCategoriesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPresetAreaCategories>(
      id,
      columnValues: columnValues(ElogPresetAreaCategories.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetAreaCategories]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetAreaCategories>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPresetAreaCategoriesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPresetAreaCategoriesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetAreaCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetAreaCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPresetAreaCategories>(
      columnValues: columnValues(ElogPresetAreaCategories.t.updateTable),
      where: where(ElogPresetAreaCategories.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetAreaCategories.t),
      orderByList: orderByList?.call(ElogPresetAreaCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPresetAreaCategories]s in the list and returns the deleted rows.
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
  Future<List<ElogPresetAreaCategories>> delete(
    _is.DatabaseSession session,
    List<ElogPresetAreaCategories> rows, {
    _is.OrderByBuilder<ElogPresetAreaCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetAreaCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPresetAreaCategories>(
      rows,
      orderBy: orderBy?.call(ElogPresetAreaCategories.t),
      orderByList: orderByList?.call(ElogPresetAreaCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPresetAreaCategories].
  Future<ElogPresetAreaCategories> deleteRow(
    _is.DatabaseSession session,
    ElogPresetAreaCategories row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPresetAreaCategories>(
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
  Future<List<ElogPresetAreaCategories>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetAreaCategoriesTable> where,
    _is.OrderByBuilder<ElogPresetAreaCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetAreaCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPresetAreaCategories>(
      where: where(ElogPresetAreaCategories.t),
      orderBy: orderBy?.call(ElogPresetAreaCategories.t),
      orderByList: orderByList?.call(ElogPresetAreaCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetAreaCategoriesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPresetAreaCategories>(
      where: where?.call(ElogPresetAreaCategories.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPresetAreaCategories] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetAreaCategoriesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPresetAreaCategories>(
      where: where(ElogPresetAreaCategories.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
