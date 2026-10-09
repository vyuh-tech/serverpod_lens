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

abstract class ElogPresetLogTemplates
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPresetLogTemplates._({
    this.id,
    required this.industryId,
    required this.code,
    required this.name,
    required this.logType,
    this.description,
    this.template,
    required this.isDefaultEnabled,
    required this.displayOrder,
  });

  factory ElogPresetLogTemplates({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
    required String logType,
    String? description,
    String? template,
    required bool isDefaultEnabled,
    required int displayOrder,
  }) = _ElogPresetLogTemplatesImpl;

  factory ElogPresetLogTemplates.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPresetLogTemplates(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      logType: jsonSerialization['logType'] as String,
      description: jsonSerialization['description'] as String?,
      template: jsonSerialization['template'] as String?,
      isDefaultEnabled: _is.BoolJsonExtension.fromJson(
        jsonSerialization['isDefaultEnabled'],
      ),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  static final t = ElogPresetLogTemplatesTable();

  static const db = ElogPresetLogTemplatesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue industryId;

  String code;

  String name;

  String logType;

  String? description;

  String? template;

  bool isDefaultEnabled;

  int displayOrder;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPresetLogTemplates]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPresetLogTemplates copyWith({
    _is.UuidValue? id,
    _is.UuidValue? industryId,
    String? code,
    String? name,
    String? logType,
    String? description,
    String? template,
    bool? isDefaultEnabled,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetLogTemplates',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'logType': logType,
      if (description != null) 'description': description,
      if (template != null) 'template': template,
      'isDefaultEnabled': isDefaultEnabled,
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetLogTemplates',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'logType': logType,
      if (description != null) 'description': description,
      if (template != null) 'template': template,
      'isDefaultEnabled': isDefaultEnabled,
      'displayOrder': displayOrder,
    };
  }

  static ElogPresetLogTemplatesInclude include() {
    return ElogPresetLogTemplatesInclude._();
  }

  static ElogPresetLogTemplatesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPresetLogTemplatesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetLogTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetLogTemplatesTable>? orderByList,
    ElogPresetLogTemplatesInclude? include,
  }) {
    return ElogPresetLogTemplatesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetLogTemplates.t),
      orderByList: orderByList?.call(ElogPresetLogTemplates.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetLogTemplatesImpl extends ElogPresetLogTemplates {
  _ElogPresetLogTemplatesImpl({
    _is.UuidValue? id,
    required _is.UuidValue industryId,
    required String code,
    required String name,
    required String logType,
    String? description,
    String? template,
    required bool isDefaultEnabled,
    required int displayOrder,
  }) : super._(
         id: id,
         industryId: industryId,
         code: code,
         name: name,
         logType: logType,
         description: description,
         template: template,
         isDefaultEnabled: isDefaultEnabled,
         displayOrder: displayOrder,
       );

  /// Returns a shallow copy of this [ElogPresetLogTemplates]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPresetLogTemplates copyWith({
    Object? id = _Undefined,
    _is.UuidValue? industryId,
    String? code,
    String? name,
    String? logType,
    Object? description = _Undefined,
    Object? template = _Undefined,
    bool? isDefaultEnabled,
    int? displayOrder,
  }) {
    return ElogPresetLogTemplates(
      id: id is _is.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      code: code ?? this.code,
      name: name ?? this.name,
      logType: logType ?? this.logType,
      description: description is String? ? description : this.description,
      template: template is String? ? template : this.template,
      isDefaultEnabled: isDefaultEnabled ?? this.isDefaultEnabled,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}

class ElogPresetLogTemplatesUpdateTable
    extends _is.UpdateTable<ElogPresetLogTemplatesTable> {
  ElogPresetLogTemplatesUpdateTable(super.table);

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

  _is.ColumnValue<String, String> logType(String value) => _is.ColumnValue(
    table.logType,
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

class ElogPresetLogTemplatesTable extends _is.Table<_is.UuidValue?> {
  ElogPresetLogTemplatesTable({super.tableRelation})
    : super(tableName: 'elog_preset_log_templates') {
    updateTable = ElogPresetLogTemplatesUpdateTable(this);
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
    logType = _is.ColumnString(
      'logType',
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

  late final ElogPresetLogTemplatesUpdateTable updateTable;

  late final _is.ColumnUuid industryId;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString logType;

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
    logType,
    description,
    template,
    isDefaultEnabled,
    displayOrder,
  ];
}

class ElogPresetLogTemplatesInclude extends _is.IncludeObject {
  ElogPresetLogTemplatesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetLogTemplates.t;
}

class ElogPresetLogTemplatesIncludeList extends _is.IncludeList {
  ElogPresetLogTemplatesIncludeList._({
    _is.WhereExpressionBuilder<ElogPresetLogTemplatesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPresetLogTemplates.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetLogTemplates.t;
}

class ElogPresetLogTemplatesRepository {
  const ElogPresetLogTemplatesRepository._();

  /// Returns a list of [ElogPresetLogTemplates]s matching the given query parameters.
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
  Future<List<ElogPresetLogTemplates>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetLogTemplatesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetLogTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetLogTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPresetLogTemplates>(
      where: where?.call(ElogPresetLogTemplates.t),
      orderBy: orderBy?.call(ElogPresetLogTemplates.t),
      orderByList: orderByList?.call(ElogPresetLogTemplates.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPresetLogTemplates] matching the given query parameters.
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
  Future<ElogPresetLogTemplates?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetLogTemplatesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPresetLogTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetLogTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPresetLogTemplates>(
      where: where?.call(ElogPresetLogTemplates.t),
      orderBy: orderBy?.call(ElogPresetLogTemplates.t),
      orderByList: orderByList?.call(ElogPresetLogTemplates.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPresetLogTemplates] by its [id] or null if no such row exists.
  Future<ElogPresetLogTemplates?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPresetLogTemplates>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPresetLogTemplates]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPresetLogTemplates]s will have their `id` fields set.
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
  Future<List<ElogPresetLogTemplates>> insert(
    _is.DatabaseSession session,
    List<ElogPresetLogTemplates> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPresetLogTemplates>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPresetLogTemplates] and returns the inserted row.
  ///
  /// The returned [ElogPresetLogTemplates] will have its `id` field set.
  Future<ElogPresetLogTemplates> insertRow(
    _is.DatabaseSession session,
    ElogPresetLogTemplates row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPresetLogTemplates>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPresetLogTemplates]s in the list and returns the resulting rows.
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
  /// The returned [ElogPresetLogTemplates]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetLogTemplates>> upsert(
    _is.DatabaseSession session,
    List<ElogPresetLogTemplates> rows, {
    required _is.ColumnSelections<ElogPresetLogTemplatesTable> conflictColumns,
    _is.ColumnSelections<ElogPresetLogTemplatesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetLogTemplatesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPresetLogTemplates>(
      rows,
      conflictColumns: conflictColumns(ElogPresetLogTemplates.t),
      updateColumns: updateColumns?.call(ElogPresetLogTemplates.t),
      updateWhere: updateWhere?.call(ElogPresetLogTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPresetLogTemplates] and returns the resulting row.
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
  /// The returned [ElogPresetLogTemplates] will have its `id` field set.
  Future<ElogPresetLogTemplates?> upsertRow(
    _is.DatabaseSession session,
    ElogPresetLogTemplates row, {
    required _is.ColumnSelections<ElogPresetLogTemplatesTable> conflictColumns,
    _is.ColumnSelections<ElogPresetLogTemplatesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetLogTemplatesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPresetLogTemplates>(
      row,
      conflictColumns: conflictColumns(ElogPresetLogTemplates.t),
      updateColumns: updateColumns?.call(ElogPresetLogTemplates.t),
      updateWhere: updateWhere?.call(ElogPresetLogTemplates.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetLogTemplates]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetLogTemplates>> update(
    _is.DatabaseSession session,
    List<ElogPresetLogTemplates> rows, {
    _is.ColumnSelections<ElogPresetLogTemplatesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPresetLogTemplates>(
      rows,
      columns: columns?.call(ElogPresetLogTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPresetLogTemplates]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPresetLogTemplates> updateRow(
    _is.DatabaseSession session,
    ElogPresetLogTemplates row, {
    _is.ColumnSelections<ElogPresetLogTemplatesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPresetLogTemplates>(
      row,
      columns: columns?.call(ElogPresetLogTemplates.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPresetLogTemplates] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPresetLogTemplates?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPresetLogTemplatesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPresetLogTemplates>(
      id,
      columnValues: columnValues(ElogPresetLogTemplates.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetLogTemplates]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetLogTemplates>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPresetLogTemplatesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPresetLogTemplatesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetLogTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetLogTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPresetLogTemplates>(
      columnValues: columnValues(ElogPresetLogTemplates.t.updateTable),
      where: where(ElogPresetLogTemplates.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetLogTemplates.t),
      orderByList: orderByList?.call(ElogPresetLogTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPresetLogTemplates]s in the list and returns the deleted rows.
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
  Future<List<ElogPresetLogTemplates>> delete(
    _is.DatabaseSession session,
    List<ElogPresetLogTemplates> rows, {
    _is.OrderByBuilder<ElogPresetLogTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetLogTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPresetLogTemplates>(
      rows,
      orderBy: orderBy?.call(ElogPresetLogTemplates.t),
      orderByList: orderByList?.call(ElogPresetLogTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPresetLogTemplates].
  Future<ElogPresetLogTemplates> deleteRow(
    _is.DatabaseSession session,
    ElogPresetLogTemplates row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPresetLogTemplates>(
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
  Future<List<ElogPresetLogTemplates>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetLogTemplatesTable> where,
    _is.OrderByBuilder<ElogPresetLogTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetLogTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPresetLogTemplates>(
      where: where(ElogPresetLogTemplates.t),
      orderBy: orderBy?.call(ElogPresetLogTemplates.t),
      orderByList: orderByList?.call(ElogPresetLogTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetLogTemplatesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPresetLogTemplates>(
      where: where?.call(ElogPresetLogTemplates.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPresetLogTemplates] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetLogTemplatesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPresetLogTemplates>(
      where: where(ElogPresetLogTemplates.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
