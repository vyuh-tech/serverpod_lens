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

abstract class ElogPresetChecklists
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPresetChecklists._({
    this.id,
    required this.industryId,
    required this.code,
    required this.name,
    required this.checklistType,
    this.description,
    this.template,
    required this.isDefaultEnabled,
    required this.displayOrder,
  });

  factory ElogPresetChecklists({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
    required String checklistType,
    String? description,
    String? template,
    required bool isDefaultEnabled,
    required int displayOrder,
  }) = _ElogPresetChecklistsImpl;

  factory ElogPresetChecklists.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPresetChecklists(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      checklistType: jsonSerialization['checklistType'] as String,
      description: jsonSerialization['description'] as String?,
      template: jsonSerialization['template'] as String?,
      isDefaultEnabled: _is.BoolJsonExtension.fromJson(
        jsonSerialization['isDefaultEnabled'],
      ),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  static final t = ElogPresetChecklistsTable();

  static const db = ElogPresetChecklistsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue industryId;

  String code;

  String name;

  String checklistType;

  String? description;

  String? template;

  bool isDefaultEnabled;

  int displayOrder;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPresetChecklists]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPresetChecklists copyWith({
    _is.UuidValue? id,
    _is.UuidValue? industryId,
    String? code,
    String? name,
    String? checklistType,
    String? description,
    String? template,
    bool? isDefaultEnabled,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetChecklists',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'checklistType': checklistType,
      if (description != null) 'description': description,
      if (template != null) 'template': template,
      'isDefaultEnabled': isDefaultEnabled,
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetChecklists',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'checklistType': checklistType,
      if (description != null) 'description': description,
      if (template != null) 'template': template,
      'isDefaultEnabled': isDefaultEnabled,
      'displayOrder': displayOrder,
    };
  }

  static ElogPresetChecklistsInclude include() {
    return ElogPresetChecklistsInclude._();
  }

  static ElogPresetChecklistsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPresetChecklistsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetChecklistsTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetChecklistsTable>? orderByList,
    ElogPresetChecklistsInclude? include,
  }) {
    return ElogPresetChecklistsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetChecklists.t),
      orderByList: orderByList?.call(ElogPresetChecklists.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetChecklistsImpl extends ElogPresetChecklists {
  _ElogPresetChecklistsImpl({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
    required String checklistType,
    String? description,
    String? template,
    required bool isDefaultEnabled,
    required int displayOrder,
  }) : super._(
         id: id,
         industryId: industryId,
         code: code,
         name: name,
         checklistType: checklistType,
         description: description,
         template: template,
         isDefaultEnabled: isDefaultEnabled,
         displayOrder: displayOrder,
       );

  /// Returns a shallow copy of this [ElogPresetChecklists]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPresetChecklists copyWith({
    Object? id = _Undefined,
    _is.UuidValue? industryId,
    String? code,
    String? name,
    String? checklistType,
    Object? description = _Undefined,
    Object? template = _Undefined,
    bool? isDefaultEnabled,
    int? displayOrder,
  }) {
    return ElogPresetChecklists(
      id: id is _is.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      code: code ?? this.code,
      name: name ?? this.name,
      checklistType: checklistType ?? this.checklistType,
      description: description is String? ? description : this.description,
      template: template is String? ? template : this.template,
      isDefaultEnabled: isDefaultEnabled ?? this.isDefaultEnabled,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}

class ElogPresetChecklistsUpdateTable
    extends _is.UpdateTable<ElogPresetChecklistsTable> {
  ElogPresetChecklistsUpdateTable(super.table);

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

  _is.ColumnValue<String, String> checklistType(String value) =>
      _is.ColumnValue(
        table.checklistType,
        value,
      );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<String, String> template(String? value) => _is.ColumnValue(
    table.template,
    value,
  );

  _is.ColumnValue<bool, bool> isDefaultEnabled(bool value) => _is.ColumnValue(
    table.isDefaultEnabled,
    value,
  );

  _is.ColumnValue<int, int> displayOrder(int value) => _is.ColumnValue(
    table.displayOrder,
    value,
  );
}

class ElogPresetChecklistsTable extends _is.Table<_is.UuidValue?> {
  ElogPresetChecklistsTable({super.tableRelation})
    : super(tableName: 'elog_preset_checklists') {
    updateTable = ElogPresetChecklistsUpdateTable(this);
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
    checklistType = _is.ColumnString(
      'checklistType',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    template = _is.ColumnString(
      'template',
      this,
    );
    isDefaultEnabled = _is.ColumnBool(
      'isDefaultEnabled',
      this,
    );
    displayOrder = _is.ColumnInt(
      'displayOrder',
      this,
    );
  }

  late final ElogPresetChecklistsUpdateTable updateTable;

  late final _is.ColumnUuid industryId;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString checklistType;

  late final _is.ColumnString description;

  late final _is.ColumnString template;

  late final _is.ColumnBool isDefaultEnabled;

  late final _is.ColumnInt displayOrder;

  @override
  List<_is.Column> get columns => [
    id,
    industryId,
    code,
    name,
    checklistType,
    description,
    template,
    isDefaultEnabled,
    displayOrder,
  ];
}

class ElogPresetChecklistsInclude extends _is.IncludeObject {
  ElogPresetChecklistsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetChecklists.t;
}

class ElogPresetChecklistsIncludeList extends _is.IncludeList {
  ElogPresetChecklistsIncludeList._({
    _is.WhereExpressionBuilder<ElogPresetChecklistsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPresetChecklists.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetChecklists.t;
}

class ElogPresetChecklistsRepository {
  const ElogPresetChecklistsRepository._();

  /// Returns a list of [ElogPresetChecklists]s matching the given query parameters.
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
  Future<List<ElogPresetChecklists>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetChecklistsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetChecklistsTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetChecklistsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPresetChecklists>(
      where: where?.call(ElogPresetChecklists.t),
      orderBy: orderBy?.call(ElogPresetChecklists.t),
      orderByList: orderByList?.call(ElogPresetChecklists.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPresetChecklists] matching the given query parameters.
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
  Future<ElogPresetChecklists?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetChecklistsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPresetChecklistsTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetChecklistsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPresetChecklists>(
      where: where?.call(ElogPresetChecklists.t),
      orderBy: orderBy?.call(ElogPresetChecklists.t),
      orderByList: orderByList?.call(ElogPresetChecklists.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPresetChecklists] by its [id] or null if no such row exists.
  Future<ElogPresetChecklists?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPresetChecklists>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPresetChecklists]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPresetChecklists]s will have their `id` fields set.
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
  Future<List<ElogPresetChecklists>> insert(
    _is.DatabaseSession session,
    List<ElogPresetChecklists> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPresetChecklists>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPresetChecklists] and returns the inserted row.
  ///
  /// The returned [ElogPresetChecklists] will have its `id` field set.
  Future<ElogPresetChecklists> insertRow(
    _is.DatabaseSession session,
    ElogPresetChecklists row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPresetChecklists>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPresetChecklists]s in the list and returns the resulting rows.
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
  /// The returned [ElogPresetChecklists]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetChecklists>> upsert(
    _is.DatabaseSession session,
    List<ElogPresetChecklists> rows, {
    required _is.ColumnSelections<ElogPresetChecklistsTable> conflictColumns,
    _is.ColumnSelections<ElogPresetChecklistsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetChecklistsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPresetChecklists>(
      rows,
      conflictColumns: conflictColumns(ElogPresetChecklists.t),
      updateColumns: updateColumns?.call(ElogPresetChecklists.t),
      updateWhere: updateWhere?.call(ElogPresetChecklists.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPresetChecklists] and returns the resulting row.
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
  /// The returned [ElogPresetChecklists] will have its `id` field set.
  Future<ElogPresetChecklists?> upsertRow(
    _is.DatabaseSession session,
    ElogPresetChecklists row, {
    required _is.ColumnSelections<ElogPresetChecklistsTable> conflictColumns,
    _is.ColumnSelections<ElogPresetChecklistsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetChecklistsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPresetChecklists>(
      row,
      conflictColumns: conflictColumns(ElogPresetChecklists.t),
      updateColumns: updateColumns?.call(ElogPresetChecklists.t),
      updateWhere: updateWhere?.call(ElogPresetChecklists.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetChecklists]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetChecklists>> update(
    _is.DatabaseSession session,
    List<ElogPresetChecklists> rows, {
    _is.ColumnSelections<ElogPresetChecklistsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPresetChecklists>(
      rows,
      columns: columns?.call(ElogPresetChecklists.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPresetChecklists]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPresetChecklists> updateRow(
    _is.DatabaseSession session,
    ElogPresetChecklists row, {
    _is.ColumnSelections<ElogPresetChecklistsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPresetChecklists>(
      row,
      columns: columns?.call(ElogPresetChecklists.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPresetChecklists] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPresetChecklists?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPresetChecklistsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPresetChecklists>(
      id,
      columnValues: columnValues(ElogPresetChecklists.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetChecklists]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetChecklists>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPresetChecklistsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPresetChecklistsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetChecklistsTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetChecklistsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPresetChecklists>(
      columnValues: columnValues(ElogPresetChecklists.t.updateTable),
      where: where(ElogPresetChecklists.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetChecklists.t),
      orderByList: orderByList?.call(ElogPresetChecklists.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPresetChecklists]s in the list and returns the deleted rows.
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
  Future<List<ElogPresetChecklists>> delete(
    _is.DatabaseSession session,
    List<ElogPresetChecklists> rows, {
    _is.OrderByBuilder<ElogPresetChecklistsTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetChecklistsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPresetChecklists>(
      rows,
      orderBy: orderBy?.call(ElogPresetChecklists.t),
      orderByList: orderByList?.call(ElogPresetChecklists.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPresetChecklists].
  Future<ElogPresetChecklists> deleteRow(
    _is.DatabaseSession session,
    ElogPresetChecklists row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPresetChecklists>(
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
  Future<List<ElogPresetChecklists>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetChecklistsTable> where,
    _is.OrderByBuilder<ElogPresetChecklistsTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetChecklistsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPresetChecklists>(
      where: where(ElogPresetChecklists.t),
      orderBy: orderBy?.call(ElogPresetChecklists.t),
      orderByList: orderByList?.call(ElogPresetChecklists.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetChecklistsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPresetChecklists>(
      where: where?.call(ElogPresetChecklists.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPresetChecklists] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetChecklistsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPresetChecklists>(
      where: where(ElogPresetChecklists.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
