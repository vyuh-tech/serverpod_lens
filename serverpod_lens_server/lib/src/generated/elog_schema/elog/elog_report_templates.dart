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

abstract class ElogReportTemplates
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogReportTemplates._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.template,
  });

  factory ElogReportTemplates({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? template,
  }) = _ElogReportTemplatesImpl;

  factory ElogReportTemplates.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogReportTemplates(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      template: jsonSerialization['template'] as String?,
    );
  }

  static final t = ElogReportTemplatesTable();

  static const db = ElogReportTemplatesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String? template;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogReportTemplates]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogReportTemplates copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? template,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogReportTemplates',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (template != null) 'template': template,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogReportTemplates',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (template != null) 'template': template,
    };
  }

  static ElogReportTemplatesInclude include() {
    return ElogReportTemplatesInclude._();
  }

  static ElogReportTemplatesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogReportTemplatesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogReportTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogReportTemplatesTable>? orderByList,
    ElogReportTemplatesInclude? include,
  }) {
    return ElogReportTemplatesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogReportTemplates.t),
      orderByList: orderByList?.call(ElogReportTemplates.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogReportTemplatesImpl extends ElogReportTemplates {
  _ElogReportTemplatesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? template,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         template: template,
       );

  /// Returns a shallow copy of this [ElogReportTemplates]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogReportTemplates copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? template = _Undefined,
  }) {
    return ElogReportTemplates(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      template: template is String? ? template : this.template,
    );
  }
}

class ElogReportTemplatesUpdateTable
    extends _is.UpdateTable<ElogReportTemplatesTable> {
  ElogReportTemplatesUpdateTable(super.table);

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
}

class ElogReportTemplatesTable extends _is.Table<_is.UuidValue?> {
  ElogReportTemplatesTable({super.tableRelation})
    : super(tableName: 'elog_report_templates') {
    updateTable = ElogReportTemplatesUpdateTable(this);
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
  }

  late final ElogReportTemplatesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString template;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    template,
  ];
}

class ElogReportTemplatesInclude extends _is.IncludeObject {
  ElogReportTemplatesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogReportTemplates.t;
}

class ElogReportTemplatesIncludeList extends _is.IncludeList {
  ElogReportTemplatesIncludeList._({
    _is.WhereExpressionBuilder<ElogReportTemplatesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogReportTemplates.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogReportTemplates.t;
}

class ElogReportTemplatesRepository {
  const ElogReportTemplatesRepository._();

  /// Returns a list of [ElogReportTemplates]s matching the given query parameters.
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
  Future<List<ElogReportTemplates>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogReportTemplatesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogReportTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogReportTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogReportTemplates>(
      where: where?.call(ElogReportTemplates.t),
      orderBy: orderBy?.call(ElogReportTemplates.t),
      orderByList: orderByList?.call(ElogReportTemplates.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogReportTemplates] matching the given query parameters.
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
  Future<ElogReportTemplates?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogReportTemplatesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogReportTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogReportTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogReportTemplates>(
      where: where?.call(ElogReportTemplates.t),
      orderBy: orderBy?.call(ElogReportTemplates.t),
      orderByList: orderByList?.call(ElogReportTemplates.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogReportTemplates] by its [id] or null if no such row exists.
  Future<ElogReportTemplates?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogReportTemplates>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogReportTemplates]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogReportTemplates]s will have their `id` fields set.
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
  Future<List<ElogReportTemplates>> insert(
    _is.DatabaseSession session,
    List<ElogReportTemplates> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogReportTemplates>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogReportTemplates] and returns the inserted row.
  ///
  /// The returned [ElogReportTemplates] will have its `id` field set.
  Future<ElogReportTemplates> insertRow(
    _is.DatabaseSession session,
    ElogReportTemplates row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogReportTemplates>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogReportTemplates]s in the list and returns the resulting rows.
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
  /// The returned [ElogReportTemplates]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogReportTemplates>> upsert(
    _is.DatabaseSession session,
    List<ElogReportTemplates> rows, {
    required _is.ColumnSelections<ElogReportTemplatesTable> conflictColumns,
    _is.ColumnSelections<ElogReportTemplatesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogReportTemplatesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogReportTemplates>(
      rows,
      conflictColumns: conflictColumns(ElogReportTemplates.t),
      updateColumns: updateColumns?.call(ElogReportTemplates.t),
      updateWhere: updateWhere?.call(ElogReportTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogReportTemplates] and returns the resulting row.
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
  /// The returned [ElogReportTemplates] will have its `id` field set.
  Future<ElogReportTemplates?> upsertRow(
    _is.DatabaseSession session,
    ElogReportTemplates row, {
    required _is.ColumnSelections<ElogReportTemplatesTable> conflictColumns,
    _is.ColumnSelections<ElogReportTemplatesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogReportTemplatesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogReportTemplates>(
      row,
      conflictColumns: conflictColumns(ElogReportTemplates.t),
      updateColumns: updateColumns?.call(ElogReportTemplates.t),
      updateWhere: updateWhere?.call(ElogReportTemplates.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogReportTemplates]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogReportTemplates>> update(
    _is.DatabaseSession session,
    List<ElogReportTemplates> rows, {
    _is.ColumnSelections<ElogReportTemplatesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogReportTemplates>(
      rows,
      columns: columns?.call(ElogReportTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogReportTemplates]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogReportTemplates> updateRow(
    _is.DatabaseSession session,
    ElogReportTemplates row, {
    _is.ColumnSelections<ElogReportTemplatesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogReportTemplates>(
      row,
      columns: columns?.call(ElogReportTemplates.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogReportTemplates] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogReportTemplates?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogReportTemplatesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogReportTemplates>(
      id,
      columnValues: columnValues(ElogReportTemplates.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogReportTemplates]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogReportTemplates>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogReportTemplatesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogReportTemplatesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogReportTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogReportTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogReportTemplates>(
      columnValues: columnValues(ElogReportTemplates.t.updateTable),
      where: where(ElogReportTemplates.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogReportTemplates.t),
      orderByList: orderByList?.call(ElogReportTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogReportTemplates]s in the list and returns the deleted rows.
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
  Future<List<ElogReportTemplates>> delete(
    _is.DatabaseSession session,
    List<ElogReportTemplates> rows, {
    _is.OrderByBuilder<ElogReportTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogReportTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogReportTemplates>(
      rows,
      orderBy: orderBy?.call(ElogReportTemplates.t),
      orderByList: orderByList?.call(ElogReportTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogReportTemplates].
  Future<ElogReportTemplates> deleteRow(
    _is.DatabaseSession session,
    ElogReportTemplates row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogReportTemplates>(
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
  Future<List<ElogReportTemplates>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogReportTemplatesTable> where,
    _is.OrderByBuilder<ElogReportTemplatesTable>? orderBy,
    _is.OrderByListBuilder<ElogReportTemplatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogReportTemplates>(
      where: where(ElogReportTemplates.t),
      orderBy: orderBy?.call(ElogReportTemplates.t),
      orderByList: orderByList?.call(ElogReportTemplates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogReportTemplatesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogReportTemplates>(
      where: where?.call(ElogReportTemplates.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogReportTemplates] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogReportTemplatesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogReportTemplates>(
      where: where(ElogReportTemplates.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
