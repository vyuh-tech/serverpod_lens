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

abstract class ElogPresetIndustries
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPresetIndustries._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.iconName,
    required this.displayOrder,
    required this.isActive,
  });

  factory ElogPresetIndustries({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? iconName,
    required int displayOrder,
    required bool isActive,
  }) = _ElogPresetIndustriesImpl;

  factory ElogPresetIndustries.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPresetIndustries(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      iconName: jsonSerialization['iconName'] as String?,
      displayOrder: jsonSerialization['displayOrder'] as int,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogPresetIndustriesTable();

  static const db = ElogPresetIndustriesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String? iconName;

  int displayOrder;

  bool isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPresetIndustries]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPresetIndustries copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? iconName,
    int? displayOrder,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetIndustries',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (iconName != null) 'iconName': iconName,
      'displayOrder': displayOrder,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetIndustries',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (iconName != null) 'iconName': iconName,
      'displayOrder': displayOrder,
      'isActive': isActive,
    };
  }

  static ElogPresetIndustriesInclude include() {
    return ElogPresetIndustriesInclude._();
  }

  static ElogPresetIndustriesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPresetIndustriesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetIndustriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetIndustriesTable>? orderByList,
    ElogPresetIndustriesInclude? include,
  }) {
    return ElogPresetIndustriesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetIndustries.t),
      orderByList: orderByList?.call(ElogPresetIndustries.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetIndustriesImpl extends ElogPresetIndustries {
  _ElogPresetIndustriesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? iconName,
    required int displayOrder,
    required bool isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         iconName: iconName,
         displayOrder: displayOrder,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogPresetIndustries]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPresetIndustries copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? iconName = _Undefined,
    int? displayOrder,
    bool? isActive,
  }) {
    return ElogPresetIndustries(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      iconName: iconName is String? ? iconName : this.iconName,
      displayOrder: displayOrder ?? this.displayOrder,
      isActive: isActive ?? this.isActive,
    );
  }
}

class ElogPresetIndustriesUpdateTable
    extends _is.UpdateTable<ElogPresetIndustriesTable> {
  ElogPresetIndustriesUpdateTable(super.table);

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

  _is.ColumnValue<String, String> iconName(String? value) => _is.ColumnValue(
    table.iconName,
    value,
  );

  _is.ColumnValue<int, int> displayOrder(int value) => _is.ColumnValue(
    table.displayOrder,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogPresetIndustriesTable extends _is.Table<_is.UuidValue?> {
  ElogPresetIndustriesTable({super.tableRelation})
    : super(tableName: 'elog_preset_industries') {
    updateTable = ElogPresetIndustriesUpdateTable(this);
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
    iconName = _is.ColumnString(
      'iconName',
      this,
    );
    displayOrder = _is.ColumnInt(
      'displayOrder',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogPresetIndustriesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString iconName;

  late final _is.ColumnInt displayOrder;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    iconName,
    displayOrder,
    isActive,
  ];
}

class ElogPresetIndustriesInclude extends _is.IncludeObject {
  ElogPresetIndustriesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetIndustries.t;
}

class ElogPresetIndustriesIncludeList extends _is.IncludeList {
  ElogPresetIndustriesIncludeList._({
    _is.WhereExpressionBuilder<ElogPresetIndustriesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPresetIndustries.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetIndustries.t;
}

class ElogPresetIndustriesRepository {
  const ElogPresetIndustriesRepository._();

  /// Returns a list of [ElogPresetIndustries]s matching the given query parameters.
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
  Future<List<ElogPresetIndustries>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetIndustriesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetIndustriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetIndustriesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPresetIndustries>(
      where: where?.call(ElogPresetIndustries.t),
      orderBy: orderBy?.call(ElogPresetIndustries.t),
      orderByList: orderByList?.call(ElogPresetIndustries.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPresetIndustries] matching the given query parameters.
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
  Future<ElogPresetIndustries?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetIndustriesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPresetIndustriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetIndustriesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPresetIndustries>(
      where: where?.call(ElogPresetIndustries.t),
      orderBy: orderBy?.call(ElogPresetIndustries.t),
      orderByList: orderByList?.call(ElogPresetIndustries.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPresetIndustries] by its [id] or null if no such row exists.
  Future<ElogPresetIndustries?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPresetIndustries>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPresetIndustries]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPresetIndustries]s will have their `id` fields set.
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
  Future<List<ElogPresetIndustries>> insert(
    _is.DatabaseSession session,
    List<ElogPresetIndustries> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPresetIndustries>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPresetIndustries] and returns the inserted row.
  ///
  /// The returned [ElogPresetIndustries] will have its `id` field set.
  Future<ElogPresetIndustries> insertRow(
    _is.DatabaseSession session,
    ElogPresetIndustries row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPresetIndustries>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPresetIndustries]s in the list and returns the resulting rows.
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
  /// The returned [ElogPresetIndustries]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetIndustries>> upsert(
    _is.DatabaseSession session,
    List<ElogPresetIndustries> rows, {
    required _is.ColumnSelections<ElogPresetIndustriesTable> conflictColumns,
    _is.ColumnSelections<ElogPresetIndustriesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetIndustriesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPresetIndustries>(
      rows,
      conflictColumns: conflictColumns(ElogPresetIndustries.t),
      updateColumns: updateColumns?.call(ElogPresetIndustries.t),
      updateWhere: updateWhere?.call(ElogPresetIndustries.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPresetIndustries] and returns the resulting row.
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
  /// The returned [ElogPresetIndustries] will have its `id` field set.
  Future<ElogPresetIndustries?> upsertRow(
    _is.DatabaseSession session,
    ElogPresetIndustries row, {
    required _is.ColumnSelections<ElogPresetIndustriesTable> conflictColumns,
    _is.ColumnSelections<ElogPresetIndustriesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetIndustriesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPresetIndustries>(
      row,
      conflictColumns: conflictColumns(ElogPresetIndustries.t),
      updateColumns: updateColumns?.call(ElogPresetIndustries.t),
      updateWhere: updateWhere?.call(ElogPresetIndustries.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetIndustries]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetIndustries>> update(
    _is.DatabaseSession session,
    List<ElogPresetIndustries> rows, {
    _is.ColumnSelections<ElogPresetIndustriesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPresetIndustries>(
      rows,
      columns: columns?.call(ElogPresetIndustries.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPresetIndustries]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPresetIndustries> updateRow(
    _is.DatabaseSession session,
    ElogPresetIndustries row, {
    _is.ColumnSelections<ElogPresetIndustriesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPresetIndustries>(
      row,
      columns: columns?.call(ElogPresetIndustries.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPresetIndustries] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPresetIndustries?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPresetIndustriesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPresetIndustries>(
      id,
      columnValues: columnValues(ElogPresetIndustries.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetIndustries]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetIndustries>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPresetIndustriesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPresetIndustriesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetIndustriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetIndustriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPresetIndustries>(
      columnValues: columnValues(ElogPresetIndustries.t.updateTable),
      where: where(ElogPresetIndustries.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetIndustries.t),
      orderByList: orderByList?.call(ElogPresetIndustries.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPresetIndustries]s in the list and returns the deleted rows.
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
  Future<List<ElogPresetIndustries>> delete(
    _is.DatabaseSession session,
    List<ElogPresetIndustries> rows, {
    _is.OrderByBuilder<ElogPresetIndustriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetIndustriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPresetIndustries>(
      rows,
      orderBy: orderBy?.call(ElogPresetIndustries.t),
      orderByList: orderByList?.call(ElogPresetIndustries.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPresetIndustries].
  Future<ElogPresetIndustries> deleteRow(
    _is.DatabaseSession session,
    ElogPresetIndustries row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPresetIndustries>(
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
  Future<List<ElogPresetIndustries>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetIndustriesTable> where,
    _is.OrderByBuilder<ElogPresetIndustriesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetIndustriesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPresetIndustries>(
      where: where(ElogPresetIndustries.t),
      orderBy: orderBy?.call(ElogPresetIndustries.t),
      orderByList: orderByList?.call(ElogPresetIndustries.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetIndustriesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPresetIndustries>(
      where: where?.call(ElogPresetIndustries.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPresetIndustries] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetIndustriesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPresetIndustries>(
      where: where(ElogPresetIndustries.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
