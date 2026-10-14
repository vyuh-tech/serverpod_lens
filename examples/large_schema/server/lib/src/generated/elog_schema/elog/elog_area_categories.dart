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

abstract class ElogAreaCategories
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogAreaCategories._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.isActive,
  });

  factory ElogAreaCategories({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required bool isActive,
  }) = _ElogAreaCategoriesImpl;

  factory ElogAreaCategories.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogAreaCategories(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogAreaCategoriesTable();

  static const db = ElogAreaCategoriesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  bool isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogAreaCategories]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogAreaCategories copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogAreaCategories',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogAreaCategories',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'isActive': isActive,
    };
  }

  static ElogAreaCategoriesInclude include() {
    return ElogAreaCategoriesInclude._();
  }

  static ElogAreaCategoriesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogAreaCategoriesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreaCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaCategoriesTable>? orderByList,
    ElogAreaCategoriesInclude? include,
  }) {
    return ElogAreaCategoriesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogAreaCategories.t),
      orderByList: orderByList?.call(ElogAreaCategories.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogAreaCategoriesImpl extends ElogAreaCategories {
  _ElogAreaCategoriesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required bool isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogAreaCategories]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogAreaCategories copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    bool? isActive,
  }) {
    return ElogAreaCategories(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      isActive: isActive ?? this.isActive,
    );
  }
}

class ElogAreaCategoriesUpdateTable
    extends _is.UpdateTable<ElogAreaCategoriesTable> {
  ElogAreaCategoriesUpdateTable(super.table);

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogAreaCategoriesTable extends _is.Table<_is.UuidValue?> {
  ElogAreaCategoriesTable({super.tableRelation})
    : super(tableName: 'elog_area_categories') {
    updateTable = ElogAreaCategoriesUpdateTable(this);
    code = _is.ColumnString(
      'code',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogAreaCategoriesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    isActive,
  ];
}

class ElogAreaCategoriesInclude extends _is.IncludeObject {
  ElogAreaCategoriesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogAreaCategories.t;
}

class ElogAreaCategoriesIncludeList extends _is.IncludeList {
  ElogAreaCategoriesIncludeList._({
    _is.WhereExpressionBuilder<ElogAreaCategoriesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogAreaCategories.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogAreaCategories.t;
}

class ElogAreaCategoriesRepository {
  const ElogAreaCategoriesRepository._();

  /// Returns a list of [ElogAreaCategories]s matching the given query parameters.
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
  Future<List<ElogAreaCategories>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreaCategoriesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreaCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogAreaCategories>(
      where: where?.call(ElogAreaCategories.t),
      orderBy: orderBy?.call(ElogAreaCategories.t),
      orderByList: orderByList?.call(ElogAreaCategories.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogAreaCategories] matching the given query parameters.
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
  Future<ElogAreaCategories?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreaCategoriesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogAreaCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogAreaCategories>(
      where: where?.call(ElogAreaCategories.t),
      orderBy: orderBy?.call(ElogAreaCategories.t),
      orderByList: orderByList?.call(ElogAreaCategories.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogAreaCategories] by its [id] or null if no such row exists.
  Future<ElogAreaCategories?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogAreaCategories>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogAreaCategories]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogAreaCategories]s will have their `id` fields set.
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
  Future<List<ElogAreaCategories>> insert(
    _is.DatabaseSession session,
    List<ElogAreaCategories> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogAreaCategories>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogAreaCategories] and returns the inserted row.
  ///
  /// The returned [ElogAreaCategories] will have its `id` field set.
  Future<ElogAreaCategories> insertRow(
    _is.DatabaseSession session,
    ElogAreaCategories row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogAreaCategories>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogAreaCategories]s in the list and returns the resulting rows.
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
  /// The returned [ElogAreaCategories]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreaCategories>> upsert(
    _is.DatabaseSession session,
    List<ElogAreaCategories> rows, {
    required _is.ColumnSelections<ElogAreaCategoriesTable> conflictColumns,
    _is.ColumnSelections<ElogAreaCategoriesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogAreaCategoriesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogAreaCategories>(
      rows,
      conflictColumns: conflictColumns(ElogAreaCategories.t),
      updateColumns: updateColumns?.call(ElogAreaCategories.t),
      updateWhere: updateWhere?.call(ElogAreaCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogAreaCategories] and returns the resulting row.
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
  /// The returned [ElogAreaCategories] will have its `id` field set.
  Future<ElogAreaCategories?> upsertRow(
    _is.DatabaseSession session,
    ElogAreaCategories row, {
    required _is.ColumnSelections<ElogAreaCategoriesTable> conflictColumns,
    _is.ColumnSelections<ElogAreaCategoriesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogAreaCategoriesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogAreaCategories>(
      row,
      conflictColumns: conflictColumns(ElogAreaCategories.t),
      updateColumns: updateColumns?.call(ElogAreaCategories.t),
      updateWhere: updateWhere?.call(ElogAreaCategories.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogAreaCategories]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreaCategories>> update(
    _is.DatabaseSession session,
    List<ElogAreaCategories> rows, {
    _is.ColumnSelections<ElogAreaCategoriesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogAreaCategories>(
      rows,
      columns: columns?.call(ElogAreaCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogAreaCategories]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogAreaCategories> updateRow(
    _is.DatabaseSession session,
    ElogAreaCategories row, {
    _is.ColumnSelections<ElogAreaCategoriesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogAreaCategories>(
      row,
      columns: columns?.call(ElogAreaCategories.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogAreaCategories] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogAreaCategories?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogAreaCategoriesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogAreaCategories>(
      id,
      columnValues: columnValues(ElogAreaCategories.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogAreaCategories]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreaCategories>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogAreaCategoriesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogAreaCategoriesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreaCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogAreaCategories>(
      columnValues: columnValues(ElogAreaCategories.t.updateTable),
      where: where(ElogAreaCategories.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogAreaCategories.t),
      orderByList: orderByList?.call(ElogAreaCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogAreaCategories]s in the list and returns the deleted rows.
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
  Future<List<ElogAreaCategories>> delete(
    _is.DatabaseSession session,
    List<ElogAreaCategories> rows, {
    _is.OrderByBuilder<ElogAreaCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogAreaCategories>(
      rows,
      orderBy: orderBy?.call(ElogAreaCategories.t),
      orderByList: orderByList?.call(ElogAreaCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogAreaCategories].
  Future<ElogAreaCategories> deleteRow(
    _is.DatabaseSession session,
    ElogAreaCategories row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogAreaCategories>(
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
  Future<List<ElogAreaCategories>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogAreaCategoriesTable> where,
    _is.OrderByBuilder<ElogAreaCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogAreaCategories>(
      where: where(ElogAreaCategories.t),
      orderBy: orderBy?.call(ElogAreaCategories.t),
      orderByList: orderByList?.call(ElogAreaCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreaCategoriesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogAreaCategories>(
      where: where?.call(ElogAreaCategories.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogAreaCategories] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogAreaCategoriesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogAreaCategories>(
      where: where(ElogAreaCategories.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
