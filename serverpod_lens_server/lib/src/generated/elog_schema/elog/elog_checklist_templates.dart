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

abstract class ElogChecklistTemplates
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogChecklistTemplates._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.template,
    required this.printConfig,
    this.checklistType,
  });

  factory ElogChecklistTemplates({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? template,
    required String printConfig,
    String? checklistType,
  }) = _ElogChecklistTemplatesImpl;

  factory ElogChecklistTemplates.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogChecklistTemplates(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      template: jsonSerialization['template'] as String?,
      printConfig: jsonSerialization['printConfig'] as String,
      checklistType: jsonSerialization['checklistType'] as String?,
    );
  }

  static final t = ElogChecklistTemplatesTable();

  static const db = ElogChecklistTemplatesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String? template;

  String printConfig;

  String? checklistType;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogChecklistTemplates]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogChecklistTemplates copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? template,
    String? printConfig,
    String? checklistType,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogChecklistTemplates',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (template != null) 'template': template,
      'printConfig': printConfig,
      if (checklistType != null) 'checklistType': checklistType,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogChecklistTemplates',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (template != null) 'template': template,
      'printConfig': printConfig,
      if (checklistType != null) 'checklistType': checklistType,
    };
  }

  static ElogChecklistTemplatesInclude include() {
    return ElogChecklistTemplatesInclude._();
  }

  static ElogChecklistTemplatesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogChecklistTemplatesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogChecklistTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistTemplatesTable>? orderByList,
    ElogChecklistTemplatesInclude? include,
  }) {
    return ElogChecklistTemplatesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogChecklistTemplates.t),
      orderByList: orderByList?.call(ElogChecklistTemplates.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogChecklistTemplatesImpl extends ElogChecklistTemplates {
  _ElogChecklistTemplatesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? template,
    required String printConfig,
    String? checklistType,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         template: template,
         printConfig: printConfig,
         checklistType: checklistType,
       );

  /// Returns a shallow copy of this [ElogChecklistTemplates]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogChecklistTemplates copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? template = _Undefined,
    String? printConfig,
    Object? checklistType = _Undefined,
  }) {
    return ElogChecklistTemplates(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      template: template is String? ? template : this.template,
      printConfig: printConfig ?? this.printConfig,
      checklistType: checklistType is String?
          ? checklistType
          : this.checklistType,
    );
  }
}

class ElogChecklistTemplatesUpdateTable
    extends _is.UpdateTable<ElogChecklistTemplatesTable> {
  ElogChecklistTemplatesUpdateTable(super.table);

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

  _is.ColumnValue<String, String> template(String? value) => _is.ColumnValue(
    table.template,
    value,
  );

  _is.ColumnValue<String, String> printConfig(String value) => _is.ColumnValue(
    table.printConfig,
    value,
  );

  _is.ColumnValue<String, String> checklistType(String? value) =>
      _is.ColumnValue(
        table.checklistType,
        value,
      );
}

class ElogChecklistTemplatesTable extends _is.Table<_is.UuidValue?> {
  ElogChecklistTemplatesTable({super.tableRelation})
    : super(tableName: 'elog_checklist_templates') {
    updateTable = ElogChecklistTemplatesUpdateTable(this);
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
    template = _is.ColumnString(
      'template',
      this,
    );
    printConfig = _is.ColumnString(
      'printConfig',
      this,
    );
    checklistType = _is.ColumnString(
      'checklistType',
      this,
    );
  }

  late final ElogChecklistTemplatesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString template;

  late final _is.ColumnString printConfig;

  late final _is.ColumnString checklistType;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    template,
    printConfig,
    checklistType,
  ];
}

class ElogChecklistTemplatesInclude extends _is.IncludeObject {
  ElogChecklistTemplatesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogChecklistTemplates.t;
}

class ElogChecklistTemplatesIncludeList extends _is.IncludeList {
  ElogChecklistTemplatesIncludeList._({
    _is.WhereExpressionBuilder<ElogChecklistTemplatesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogChecklistTemplates.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogChecklistTemplates.t;
}

class ElogChecklistTemplatesRepository {
  const ElogChecklistTemplatesRepository._();

  /// Returns a list of [ElogChecklistTemplates]s matching the given query parameters.
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
  Future<List<ElogChecklistTemplates>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogChecklistTemplatesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogChecklistTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogChecklistTemplates>(
      where: where?.call(ElogChecklistTemplates.t),
      orderBy: orderBy?.call(ElogChecklistTemplates.t),
      orderByList: orderByList?.call(ElogChecklistTemplates.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogChecklistTemplates] matching the given query parameters.
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
  Future<ElogChecklistTemplates?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogChecklistTemplatesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogChecklistTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogChecklistTemplates>(
      where: where?.call(ElogChecklistTemplates.t),
      orderBy: orderBy?.call(ElogChecklistTemplates.t),
      orderByList: orderByList?.call(ElogChecklistTemplates.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogChecklistTemplates] by its [id] or null if no such row exists.
  Future<ElogChecklistTemplates?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogChecklistTemplates>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogChecklistTemplates]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogChecklistTemplates]s will have their `id` fields set.
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
  Future<List<ElogChecklistTemplates>> insert(
    _is.DatabaseSession session,
    List<ElogChecklistTemplates> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogChecklistTemplates>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogChecklistTemplates] and returns the inserted row.
  ///
  /// The returned [ElogChecklistTemplates] will have its `id` field set.
  Future<ElogChecklistTemplates> insertRow(
    _is.DatabaseSession session,
    ElogChecklistTemplates row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogChecklistTemplates>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogChecklistTemplates]s in the list and returns the resulting rows.
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
  /// The returned [ElogChecklistTemplates]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogChecklistTemplates>> upsert(
    _is.DatabaseSession session,
    List<ElogChecklistTemplates> rows, {
    required _is.ColumnSelections<ElogChecklistTemplatesTable> conflictColumns,
    _is.ColumnSelections<ElogChecklistTemplatesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogChecklistTemplatesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogChecklistTemplates>(
      rows,
      conflictColumns: conflictColumns(ElogChecklistTemplates.t),
      updateColumns: updateColumns?.call(ElogChecklistTemplates.t),
      updateWhere: updateWhere?.call(ElogChecklistTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogChecklistTemplates] and returns the resulting row.
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
  /// The returned [ElogChecklistTemplates] will have its `id` field set.
  Future<ElogChecklistTemplates?> upsertRow(
    _is.DatabaseSession session,
    ElogChecklistTemplates row, {
    required _is.ColumnSelections<ElogChecklistTemplatesTable> conflictColumns,
    _is.ColumnSelections<ElogChecklistTemplatesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogChecklistTemplatesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogChecklistTemplates>(
      row,
      conflictColumns: conflictColumns(ElogChecklistTemplates.t),
      updateColumns: updateColumns?.call(ElogChecklistTemplates.t),
      updateWhere: updateWhere?.call(ElogChecklistTemplates.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogChecklistTemplates]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogChecklistTemplates>> update(
    _is.DatabaseSession session,
    List<ElogChecklistTemplates> rows, {
    _is.ColumnSelections<ElogChecklistTemplatesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogChecklistTemplates>(
      rows,
      columns: columns?.call(ElogChecklistTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogChecklistTemplates]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogChecklistTemplates> updateRow(
    _is.DatabaseSession session,
    ElogChecklistTemplates row, {
    _is.ColumnSelections<ElogChecklistTemplatesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogChecklistTemplates>(
      row,
      columns: columns?.call(ElogChecklistTemplates.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogChecklistTemplates] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogChecklistTemplates?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogChecklistTemplatesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogChecklistTemplates>(
      id,
      columnValues: columnValues(ElogChecklistTemplates.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogChecklistTemplates]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogChecklistTemplates>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogChecklistTemplatesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogChecklistTemplatesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogChecklistTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogChecklistTemplates>(
      columnValues: columnValues(ElogChecklistTemplates.t.updateTable),
      where: where(ElogChecklistTemplates.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogChecklistTemplates.t),
      orderByList: orderByList?.call(ElogChecklistTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogChecklistTemplates]s in the list and returns the deleted rows.
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
  Future<List<ElogChecklistTemplates>> delete(
    _is.DatabaseSession session,
    List<ElogChecklistTemplates> rows, {
    _is.OrderByBuilder<ElogChecklistTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogChecklistTemplates>(
      rows,
      orderBy: orderBy?.call(ElogChecklistTemplates.t),
      orderByList: orderByList?.call(ElogChecklistTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogChecklistTemplates].
  Future<ElogChecklistTemplates> deleteRow(
    _is.DatabaseSession session,
    ElogChecklistTemplates row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogChecklistTemplates>(
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
  Future<List<ElogChecklistTemplates>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogChecklistTemplatesTable> where,
    _is.OrderByBuilder<ElogChecklistTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogChecklistTemplates>(
      where: where(ElogChecklistTemplates.t),
      orderBy: orderBy?.call(ElogChecklistTemplates.t),
      orderByList: orderByList?.call(ElogChecklistTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogChecklistTemplatesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogChecklistTemplates>(
      where: where?.call(ElogChecklistTemplates.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogChecklistTemplates] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogChecklistTemplatesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogChecklistTemplates>(
      where: where(ElogChecklistTemplates.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
