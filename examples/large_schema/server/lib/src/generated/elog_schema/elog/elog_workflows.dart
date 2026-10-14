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

abstract class ElogWorkflows
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogWorkflows._({
    this.id,
    required this.idField,
    required this.code,
    required this.name,
    this.description,
    required this.version,
    required this.isActive,
    required this.template,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogWorkflows({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required String code,
    required String name,
    String? description,
    required int version,
    required bool isActive,
    required String template,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _ElogWorkflowsImpl;

  factory ElogWorkflows.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogWorkflows(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      version: jsonSerialization['version'] as int,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      template: jsonSerialization['template'] as String,
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['createdBy']),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['updatedBy']),
    );
  }

  static final t = ElogWorkflowsTable();

  static const db = ElogWorkflowsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue idField;

  String code;

  String name;

  String? description;

  int version;

  bool isActive;

  String template;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogWorkflows]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogWorkflows copyWith({
    _is.UuidValue? id,
    _is.UuidValue? idField,
    String? code,
    String? name,
    String? description,
    int? version,
    bool? isActive,
    String? template,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogWorkflows',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'version': version,
      'isActive': isActive,
      'template': template,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogWorkflows',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'version': version,
      'isActive': isActive,
      'template': template,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static ElogWorkflowsInclude include() {
    return ElogWorkflowsInclude._();
  }

  static ElogWorkflowsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogWorkflowsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogWorkflowsTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkflowsTable>? orderByList,
    ElogWorkflowsInclude? include,
  }) {
    return ElogWorkflowsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogWorkflows.t),
      orderByList: orderByList?.call(ElogWorkflows.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogWorkflowsImpl extends ElogWorkflows {
  _ElogWorkflowsImpl({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required String code,
    required String name,
    String? description,
    required int version,
    required bool isActive,
    required String template,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) : super._(
         id: id,
         idField: idField,
         code: code,
         name: name,
         description: description,
         version: version,
         isActive: isActive,
         template: template,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogWorkflows]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogWorkflows copyWith({
    Object? id = _Undefined,
    _is.UuidValue? idField,
    String? code,
    String? name,
    Object? description = _Undefined,
    int? version,
    bool? isActive,
    String? template,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogWorkflows(
      id: id is _is.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      version: version ?? this.version,
      isActive: isActive ?? this.isActive,
      template: template ?? this.template,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class ElogWorkflowsUpdateTable extends _is.UpdateTable<ElogWorkflowsTable> {
  ElogWorkflowsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> idField(_is.UuidValue value) =>
      _is.ColumnValue(
        table.idField,
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

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<int, int> version(int value) => _is.ColumnValue(
    table.version,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<String, String> template(String value) => _is.ColumnValue(
    table.template,
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

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> createdBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.createdBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> updatedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.updatedBy,
    value,
  );
}

class ElogWorkflowsTable extends _is.Table<_is.UuidValue?> {
  ElogWorkflowsTable({super.tableRelation})
    : super(tableName: 'elog_workflows') {
    updateTable = ElogWorkflowsUpdateTable(this);
    idField = _is.ColumnUuid(
      'idField',
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
    description = _is.ColumnString(
      'description',
      this,
    );
    version = _is.ColumnInt(
      'version',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
    template = _is.ColumnString(
      'template',
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
    createdBy = _is.ColumnUuid(
      'createdBy',
      this,
    );
    updatedBy = _is.ColumnUuid(
      'updatedBy',
      this,
    );
  }

  late final ElogWorkflowsUpdateTable updateTable;

  late final _is.ColumnUuid idField;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnInt version;

  late final _is.ColumnBool isActive;

  late final _is.ColumnString template;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    idField,
    code,
    name,
    description,
    version,
    isActive,
    template,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class ElogWorkflowsInclude extends _is.IncludeObject {
  ElogWorkflowsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogWorkflows.t;
}

class ElogWorkflowsIncludeList extends _is.IncludeList {
  ElogWorkflowsIncludeList._({
    _is.WhereExpressionBuilder<ElogWorkflowsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogWorkflows.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogWorkflows.t;
}

class ElogWorkflowsRepository {
  const ElogWorkflowsRepository._();

  /// Returns a list of [ElogWorkflows]s matching the given query parameters.
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
  Future<List<ElogWorkflows>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogWorkflowsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogWorkflowsTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkflowsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogWorkflows>(
      where: where?.call(ElogWorkflows.t),
      orderBy: orderBy?.call(ElogWorkflows.t),
      orderByList: orderByList?.call(ElogWorkflows.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogWorkflows] matching the given query parameters.
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
  Future<ElogWorkflows?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogWorkflowsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogWorkflowsTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkflowsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogWorkflows>(
      where: where?.call(ElogWorkflows.t),
      orderBy: orderBy?.call(ElogWorkflows.t),
      orderByList: orderByList?.call(ElogWorkflows.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogWorkflows] by its [id] or null if no such row exists.
  Future<ElogWorkflows?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogWorkflows>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogWorkflows]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogWorkflows]s will have their `id` fields set.
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
  Future<List<ElogWorkflows>> insert(
    _is.DatabaseSession session,
    List<ElogWorkflows> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogWorkflows>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogWorkflows] and returns the inserted row.
  ///
  /// The returned [ElogWorkflows] will have its `id` field set.
  Future<ElogWorkflows> insertRow(
    _is.DatabaseSession session,
    ElogWorkflows row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogWorkflows>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogWorkflows]s in the list and returns the resulting rows.
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
  /// The returned [ElogWorkflows]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogWorkflows>> upsert(
    _is.DatabaseSession session,
    List<ElogWorkflows> rows, {
    required _is.ColumnSelections<ElogWorkflowsTable> conflictColumns,
    _is.ColumnSelections<ElogWorkflowsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogWorkflowsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogWorkflows>(
      rows,
      conflictColumns: conflictColumns(ElogWorkflows.t),
      updateColumns: updateColumns?.call(ElogWorkflows.t),
      updateWhere: updateWhere?.call(ElogWorkflows.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogWorkflows] and returns the resulting row.
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
  /// The returned [ElogWorkflows] will have its `id` field set.
  Future<ElogWorkflows?> upsertRow(
    _is.DatabaseSession session,
    ElogWorkflows row, {
    required _is.ColumnSelections<ElogWorkflowsTable> conflictColumns,
    _is.ColumnSelections<ElogWorkflowsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogWorkflowsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogWorkflows>(
      row,
      conflictColumns: conflictColumns(ElogWorkflows.t),
      updateColumns: updateColumns?.call(ElogWorkflows.t),
      updateWhere: updateWhere?.call(ElogWorkflows.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogWorkflows]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogWorkflows>> update(
    _is.DatabaseSession session,
    List<ElogWorkflows> rows, {
    _is.ColumnSelections<ElogWorkflowsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogWorkflows>(
      rows,
      columns: columns?.call(ElogWorkflows.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogWorkflows]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogWorkflows> updateRow(
    _is.DatabaseSession session,
    ElogWorkflows row, {
    _is.ColumnSelections<ElogWorkflowsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogWorkflows>(
      row,
      columns: columns?.call(ElogWorkflows.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogWorkflows] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogWorkflows?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogWorkflowsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogWorkflows>(
      id,
      columnValues: columnValues(ElogWorkflows.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogWorkflows]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogWorkflows>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogWorkflowsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogWorkflowsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogWorkflowsTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkflowsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogWorkflows>(
      columnValues: columnValues(ElogWorkflows.t.updateTable),
      where: where(ElogWorkflows.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogWorkflows.t),
      orderByList: orderByList?.call(ElogWorkflows.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogWorkflows]s in the list and returns the deleted rows.
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
  Future<List<ElogWorkflows>> delete(
    _is.DatabaseSession session,
    List<ElogWorkflows> rows, {
    _is.OrderByBuilder<ElogWorkflowsTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkflowsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogWorkflows>(
      rows,
      orderBy: orderBy?.call(ElogWorkflows.t),
      orderByList: orderByList?.call(ElogWorkflows.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogWorkflows].
  Future<ElogWorkflows> deleteRow(
    _is.DatabaseSession session,
    ElogWorkflows row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogWorkflows>(
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
  Future<List<ElogWorkflows>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogWorkflowsTable> where,
    _is.OrderByBuilder<ElogWorkflowsTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkflowsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogWorkflows>(
      where: where(ElogWorkflows.t),
      orderBy: orderBy?.call(ElogWorkflows.t),
      orderByList: orderByList?.call(ElogWorkflows.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogWorkflowsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogWorkflows>(
      where: where?.call(ElogWorkflows.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogWorkflows] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogWorkflowsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogWorkflows>(
      where: where(ElogWorkflows.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
