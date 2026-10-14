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

abstract class ElogEquipmentCategories
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogEquipmentCategories._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.type,
    required this.isActive,
  });

  factory ElogEquipmentCategories({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String type,
    required bool isActive,
  }) = _ElogEquipmentCategoriesImpl;

  factory ElogEquipmentCategories.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogEquipmentCategories(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      type: jsonSerialization['type'] as String,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogEquipmentCategoriesTable();

  static const db = ElogEquipmentCategoriesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String type;

  bool isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogEquipmentCategories]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogEquipmentCategories copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? type,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogEquipmentCategories',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'type': type,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogEquipmentCategories',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'type': type,
      'isActive': isActive,
    };
  }

  static ElogEquipmentCategoriesInclude include() {
    return ElogEquipmentCategoriesInclude._();
  }

  static ElogEquipmentCategoriesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogEquipmentCategoriesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentCategoriesTable>? orderByList,
    ElogEquipmentCategoriesInclude? include,
  }) {
    return ElogEquipmentCategoriesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEquipmentCategories.t),
      orderByList: orderByList?.call(ElogEquipmentCategories.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogEquipmentCategoriesImpl extends ElogEquipmentCategories {
  _ElogEquipmentCategoriesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String type,
    required bool isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         type: type,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogEquipmentCategories]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogEquipmentCategories copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? type,
    bool? isActive,
  }) {
    return ElogEquipmentCategories(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      type: type ?? this.type,
      isActive: isActive ?? this.isActive,
    );
  }
}

class ElogEquipmentCategoriesUpdateTable
    extends _is.UpdateTable<ElogEquipmentCategoriesTable> {
  ElogEquipmentCategoriesUpdateTable(super.table);

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

  _is.ColumnValue<String, String> type(String value) => _is.ColumnValue(
    table.type,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogEquipmentCategoriesTable extends _is.Table<_is.UuidValue?> {
  ElogEquipmentCategoriesTable({super.tableRelation})
    : super(tableName: 'elog_equipment_categories') {
    updateTable = ElogEquipmentCategoriesUpdateTable(this);
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
    type = _is.ColumnString(
      'type',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogEquipmentCategoriesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString type;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    type,
    isActive,
  ];
}

class ElogEquipmentCategoriesInclude extends _is.IncludeObject {
  ElogEquipmentCategoriesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEquipmentCategories.t;
}

class ElogEquipmentCategoriesIncludeList extends _is.IncludeList {
  ElogEquipmentCategoriesIncludeList._({
    _is.WhereExpressionBuilder<ElogEquipmentCategoriesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogEquipmentCategories.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEquipmentCategories.t;
}

class ElogEquipmentCategoriesRepository {
  const ElogEquipmentCategoriesRepository._();

  /// Returns a list of [ElogEquipmentCategories]s matching the given query parameters.
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
  Future<List<ElogEquipmentCategories>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentCategoriesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogEquipmentCategories>(
      where: where?.call(ElogEquipmentCategories.t),
      orderBy: orderBy?.call(ElogEquipmentCategories.t),
      orderByList: orderByList?.call(ElogEquipmentCategories.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogEquipmentCategories] matching the given query parameters.
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
  Future<ElogEquipmentCategories?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentCategoriesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogEquipmentCategories>(
      where: where?.call(ElogEquipmentCategories.t),
      orderBy: orderBy?.call(ElogEquipmentCategories.t),
      orderByList: orderByList?.call(ElogEquipmentCategories.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogEquipmentCategories] by its [id] or null if no such row exists.
  Future<ElogEquipmentCategories?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogEquipmentCategories>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogEquipmentCategories]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogEquipmentCategories]s will have their `id` fields set.
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
  Future<List<ElogEquipmentCategories>> insert(
    _is.DatabaseSession session,
    List<ElogEquipmentCategories> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogEquipmentCategories>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogEquipmentCategories] and returns the inserted row.
  ///
  /// The returned [ElogEquipmentCategories] will have its `id` field set.
  Future<ElogEquipmentCategories> insertRow(
    _is.DatabaseSession session,
    ElogEquipmentCategories row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogEquipmentCategories>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogEquipmentCategories]s in the list and returns the resulting rows.
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
  /// The returned [ElogEquipmentCategories]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipmentCategories>> upsert(
    _is.DatabaseSession session,
    List<ElogEquipmentCategories> rows, {
    required _is.ColumnSelections<ElogEquipmentCategoriesTable> conflictColumns,
    _is.ColumnSelections<ElogEquipmentCategoriesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEquipmentCategoriesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogEquipmentCategories>(
      rows,
      conflictColumns: conflictColumns(ElogEquipmentCategories.t),
      updateColumns: updateColumns?.call(ElogEquipmentCategories.t),
      updateWhere: updateWhere?.call(ElogEquipmentCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogEquipmentCategories] and returns the resulting row.
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
  /// The returned [ElogEquipmentCategories] will have its `id` field set.
  Future<ElogEquipmentCategories?> upsertRow(
    _is.DatabaseSession session,
    ElogEquipmentCategories row, {
    required _is.ColumnSelections<ElogEquipmentCategoriesTable> conflictColumns,
    _is.ColumnSelections<ElogEquipmentCategoriesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEquipmentCategoriesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogEquipmentCategories>(
      row,
      conflictColumns: conflictColumns(ElogEquipmentCategories.t),
      updateColumns: updateColumns?.call(ElogEquipmentCategories.t),
      updateWhere: updateWhere?.call(ElogEquipmentCategories.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEquipmentCategories]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipmentCategories>> update(
    _is.DatabaseSession session,
    List<ElogEquipmentCategories> rows, {
    _is.ColumnSelections<ElogEquipmentCategoriesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogEquipmentCategories>(
      rows,
      columns: columns?.call(ElogEquipmentCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogEquipmentCategories]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogEquipmentCategories> updateRow(
    _is.DatabaseSession session,
    ElogEquipmentCategories row, {
    _is.ColumnSelections<ElogEquipmentCategoriesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogEquipmentCategories>(
      row,
      columns: columns?.call(ElogEquipmentCategories.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogEquipmentCategories] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogEquipmentCategories?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogEquipmentCategoriesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogEquipmentCategories>(
      id,
      columnValues: columnValues(ElogEquipmentCategories.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEquipmentCategories]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipmentCategories>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogEquipmentCategoriesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogEquipmentCategoriesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogEquipmentCategories>(
      columnValues: columnValues(ElogEquipmentCategories.t.updateTable),
      where: where(ElogEquipmentCategories.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEquipmentCategories.t),
      orderByList: orderByList?.call(ElogEquipmentCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogEquipmentCategories]s in the list and returns the deleted rows.
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
  Future<List<ElogEquipmentCategories>> delete(
    _is.DatabaseSession session,
    List<ElogEquipmentCategories> rows, {
    _is.OrderByBuilder<ElogEquipmentCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogEquipmentCategories>(
      rows,
      orderBy: orderBy?.call(ElogEquipmentCategories.t),
      orderByList: orderByList?.call(ElogEquipmentCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogEquipmentCategories].
  Future<ElogEquipmentCategories> deleteRow(
    _is.DatabaseSession session,
    ElogEquipmentCategories row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogEquipmentCategories>(
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
  Future<List<ElogEquipmentCategories>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEquipmentCategoriesTable> where,
    _is.OrderByBuilder<ElogEquipmentCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogEquipmentCategories>(
      where: where(ElogEquipmentCategories.t),
      orderBy: orderBy?.call(ElogEquipmentCategories.t),
      orderByList: orderByList?.call(ElogEquipmentCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentCategoriesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogEquipmentCategories>(
      where: where?.call(ElogEquipmentCategories.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogEquipmentCategories] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEquipmentCategoriesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogEquipmentCategories>(
      where: where(ElogEquipmentCategories.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
