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

abstract class ElogPresetEquipmentCategories
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPresetEquipmentCategories._({
    this.id,
    required this.industryId,
    required this.code,
    required this.name,
    required this.type,
  });

  factory ElogPresetEquipmentCategories({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
    required String type,
  }) = _ElogPresetEquipmentCategoriesImpl;

  factory ElogPresetEquipmentCategories.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPresetEquipmentCategories(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      type: jsonSerialization['type'] as String,
    );
  }

  static final t = ElogPresetEquipmentCategoriesTable();

  static const db = ElogPresetEquipmentCategoriesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue industryId;

  String code;

  String name;

  String type;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPresetEquipmentCategories]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPresetEquipmentCategories copyWith({
    _is.UuidValue? id,
    _is.UuidValue? industryId,
    String? code,
    String? name,
    String? type,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetEquipmentCategories',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'type': type,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetEquipmentCategories',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'type': type,
    };
  }

  static ElogPresetEquipmentCategoriesInclude include() {
    return ElogPresetEquipmentCategoriesInclude._();
  }

  static ElogPresetEquipmentCategoriesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPresetEquipmentCategoriesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetEquipmentCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetEquipmentCategoriesTable>? orderByList,
    ElogPresetEquipmentCategoriesInclude? include,
  }) {
    return ElogPresetEquipmentCategoriesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetEquipmentCategories.t),
      orderByList: orderByList?.call(ElogPresetEquipmentCategories.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetEquipmentCategoriesImpl extends ElogPresetEquipmentCategories {
  _ElogPresetEquipmentCategoriesImpl({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
    required String type,
  }) : super._(
         id: id,
         industryId: industryId,
         code: code,
         name: name,
         type: type,
       );

  /// Returns a shallow copy of this [ElogPresetEquipmentCategories]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPresetEquipmentCategories copyWith({
    Object? id = _Undefined,
    _is.UuidValue? industryId,
    String? code,
    String? name,
    String? type,
  }) {
    return ElogPresetEquipmentCategories(
      id: id is _is.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      code: code ?? this.code,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}

class ElogPresetEquipmentCategoriesUpdateTable
    extends _is.UpdateTable<ElogPresetEquipmentCategoriesTable> {
  ElogPresetEquipmentCategoriesUpdateTable(super.table);

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

  _is.ColumnValue<String, String> type(String value) => _is.ColumnValue(
    table.type,
    value,
  );
}

class ElogPresetEquipmentCategoriesTable extends _is.Table<_is.UuidValue?> {
  ElogPresetEquipmentCategoriesTable({super.tableRelation})
    : super(tableName: 'elog_preset_equipment_categories') {
    updateTable = ElogPresetEquipmentCategoriesUpdateTable(this);
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
    type = _is.ColumnString(
      'type',
      this,
    );
  }

  late final ElogPresetEquipmentCategoriesUpdateTable updateTable;

  late final _is.ColumnUuid industryId;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString type;

  @override
  List<_is.Column> get columns => [
    id,
    industryId,
    code,
    name,
    type,
  ];
}

class ElogPresetEquipmentCategoriesInclude extends _is.IncludeObject {
  ElogPresetEquipmentCategoriesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetEquipmentCategories.t;
}

class ElogPresetEquipmentCategoriesIncludeList extends _is.IncludeList {
  ElogPresetEquipmentCategoriesIncludeList._({
    _is.WhereExpressionBuilder<ElogPresetEquipmentCategoriesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPresetEquipmentCategories.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetEquipmentCategories.t;
}

class ElogPresetEquipmentCategoriesRepository {
  const ElogPresetEquipmentCategoriesRepository._();

  /// Returns a list of [ElogPresetEquipmentCategories]s matching the given query parameters.
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
  Future<List<ElogPresetEquipmentCategories>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetEquipmentCategoriesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetEquipmentCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetEquipmentCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPresetEquipmentCategories>(
      where: where?.call(ElogPresetEquipmentCategories.t),
      orderBy: orderBy?.call(ElogPresetEquipmentCategories.t),
      orderByList: orderByList?.call(ElogPresetEquipmentCategories.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPresetEquipmentCategories] matching the given query parameters.
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
  Future<ElogPresetEquipmentCategories?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetEquipmentCategoriesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPresetEquipmentCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetEquipmentCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPresetEquipmentCategories>(
      where: where?.call(ElogPresetEquipmentCategories.t),
      orderBy: orderBy?.call(ElogPresetEquipmentCategories.t),
      orderByList: orderByList?.call(ElogPresetEquipmentCategories.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPresetEquipmentCategories] by its [id] or null if no such row exists.
  Future<ElogPresetEquipmentCategories?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPresetEquipmentCategories>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPresetEquipmentCategories]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPresetEquipmentCategories]s will have their `id` fields set.
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
  Future<List<ElogPresetEquipmentCategories>> insert(
    _is.DatabaseSession session,
    List<ElogPresetEquipmentCategories> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPresetEquipmentCategories>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPresetEquipmentCategories] and returns the inserted row.
  ///
  /// The returned [ElogPresetEquipmentCategories] will have its `id` field set.
  Future<ElogPresetEquipmentCategories> insertRow(
    _is.DatabaseSession session,
    ElogPresetEquipmentCategories row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPresetEquipmentCategories>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPresetEquipmentCategories]s in the list and returns the resulting rows.
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
  /// The returned [ElogPresetEquipmentCategories]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetEquipmentCategories>> upsert(
    _is.DatabaseSession session,
    List<ElogPresetEquipmentCategories> rows, {
    required _is.ColumnSelections<ElogPresetEquipmentCategoriesTable>
    conflictColumns,
    _is.ColumnSelections<ElogPresetEquipmentCategoriesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetEquipmentCategoriesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPresetEquipmentCategories>(
      rows,
      conflictColumns: conflictColumns(ElogPresetEquipmentCategories.t),
      updateColumns: updateColumns?.call(ElogPresetEquipmentCategories.t),
      updateWhere: updateWhere?.call(ElogPresetEquipmentCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPresetEquipmentCategories] and returns the resulting row.
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
  /// The returned [ElogPresetEquipmentCategories] will have its `id` field set.
  Future<ElogPresetEquipmentCategories?> upsertRow(
    _is.DatabaseSession session,
    ElogPresetEquipmentCategories row, {
    required _is.ColumnSelections<ElogPresetEquipmentCategoriesTable>
    conflictColumns,
    _is.ColumnSelections<ElogPresetEquipmentCategoriesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetEquipmentCategoriesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPresetEquipmentCategories>(
      row,
      conflictColumns: conflictColumns(ElogPresetEquipmentCategories.t),
      updateColumns: updateColumns?.call(ElogPresetEquipmentCategories.t),
      updateWhere: updateWhere?.call(ElogPresetEquipmentCategories.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetEquipmentCategories]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetEquipmentCategories>> update(
    _is.DatabaseSession session,
    List<ElogPresetEquipmentCategories> rows, {
    _is.ColumnSelections<ElogPresetEquipmentCategoriesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPresetEquipmentCategories>(
      rows,
      columns: columns?.call(ElogPresetEquipmentCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPresetEquipmentCategories]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPresetEquipmentCategories> updateRow(
    _is.DatabaseSession session,
    ElogPresetEquipmentCategories row, {
    _is.ColumnSelections<ElogPresetEquipmentCategoriesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPresetEquipmentCategories>(
      row,
      columns: columns?.call(ElogPresetEquipmentCategories.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPresetEquipmentCategories] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPresetEquipmentCategories?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<
      ElogPresetEquipmentCategoriesUpdateTable
    >
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPresetEquipmentCategories>(
      id,
      columnValues: columnValues(ElogPresetEquipmentCategories.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetEquipmentCategories]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetEquipmentCategories>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<
      ElogPresetEquipmentCategoriesUpdateTable
    >
    columnValues,
    required _is.WhereExpressionBuilder<ElogPresetEquipmentCategoriesTable>
    where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetEquipmentCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetEquipmentCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPresetEquipmentCategories>(
      columnValues: columnValues(ElogPresetEquipmentCategories.t.updateTable),
      where: where(ElogPresetEquipmentCategories.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetEquipmentCategories.t),
      orderByList: orderByList?.call(ElogPresetEquipmentCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPresetEquipmentCategories]s in the list and returns the deleted rows.
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
  Future<List<ElogPresetEquipmentCategories>> delete(
    _is.DatabaseSession session,
    List<ElogPresetEquipmentCategories> rows, {
    _is.OrderByBuilder<ElogPresetEquipmentCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetEquipmentCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPresetEquipmentCategories>(
      rows,
      orderBy: orderBy?.call(ElogPresetEquipmentCategories.t),
      orderByList: orderByList?.call(ElogPresetEquipmentCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPresetEquipmentCategories].
  Future<ElogPresetEquipmentCategories> deleteRow(
    _is.DatabaseSession session,
    ElogPresetEquipmentCategories row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPresetEquipmentCategories>(
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
  Future<List<ElogPresetEquipmentCategories>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetEquipmentCategoriesTable>
    where,
    _is.OrderByBuilder<ElogPresetEquipmentCategoriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetEquipmentCategoriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPresetEquipmentCategories>(
      where: where(ElogPresetEquipmentCategories.t),
      orderBy: orderBy?.call(ElogPresetEquipmentCategories.t),
      orderByList: orderByList?.call(ElogPresetEquipmentCategories.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetEquipmentCategoriesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPresetEquipmentCategories>(
      where: where?.call(ElogPresetEquipmentCategories.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPresetEquipmentCategories] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetEquipmentCategoriesTable>
    where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPresetEquipmentCategories>(
      where: where(ElogPresetEquipmentCategories.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
