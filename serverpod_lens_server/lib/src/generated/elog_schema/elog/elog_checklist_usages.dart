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

abstract class ElogChecklistUsages
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogChecklistUsages._({
    this.id,
    required this.name,
    required this.checklistTemplateId,
    required this.checklistTemplateVersionNumber,
    this.resourceType,
    this.resourceId,
    required this.status,
    this.totalInstructions,
    this.completedInstructions,
  });

  factory ElogChecklistUsages({
    _is.UuidValue? id,
    required String name,
    required _is.UuidValue checklistTemplateId,
    required int checklistTemplateVersionNumber,
    String? resourceType,
    _is.UuidValue? resourceId,
    required String status,
    int? totalInstructions,
    int? completedInstructions,
  }) = _ElogChecklistUsagesImpl;

  factory ElogChecklistUsages.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogChecklistUsages(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      checklistTemplateId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['checklistTemplateId'],
      ),
      checklistTemplateVersionNumber:
          jsonSerialization['checklistTemplateVersionNumber'] as int,
      resourceType: jsonSerialization['resourceType'] as String?,
      resourceId: jsonSerialization['resourceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceId'],
            ),
      status: jsonSerialization['status'] as String,
      totalInstructions: jsonSerialization['totalInstructions'] as int?,
      completedInstructions: jsonSerialization['completedInstructions'] as int?,
    );
  }

  static final t = ElogChecklistUsagesTable();

  static const db = ElogChecklistUsagesRepository._();

  @override
  _is.UuidValue? id;

  String name;

  _is.UuidValue checklistTemplateId;

  int checklistTemplateVersionNumber;

  String? resourceType;

  _is.UuidValue? resourceId;

  String status;

  int? totalInstructions;

  int? completedInstructions;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogChecklistUsages]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogChecklistUsages copyWith({
    _is.UuidValue? id,
    String? name,
    _is.UuidValue? checklistTemplateId,
    int? checklistTemplateVersionNumber,
    String? resourceType,
    _is.UuidValue? resourceId,
    String? status,
    int? totalInstructions,
    int? completedInstructions,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogChecklistUsages',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'checklistTemplateId': checklistTemplateId.toJson(),
      'checklistTemplateVersionNumber': checklistTemplateVersionNumber,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      'status': status,
      if (totalInstructions != null) 'totalInstructions': totalInstructions,
      if (completedInstructions != null)
        'completedInstructions': completedInstructions,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogChecklistUsages',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'checklistTemplateId': checklistTemplateId.toJson(),
      'checklistTemplateVersionNumber': checklistTemplateVersionNumber,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      'status': status,
      if (totalInstructions != null) 'totalInstructions': totalInstructions,
      if (completedInstructions != null)
        'completedInstructions': completedInstructions,
    };
  }

  static ElogChecklistUsagesInclude include() {
    return ElogChecklistUsagesInclude._();
  }

  static ElogChecklistUsagesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogChecklistUsagesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogChecklistUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsagesTable>? orderByList,
    ElogChecklistUsagesInclude? include,
  }) {
    return ElogChecklistUsagesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogChecklistUsages.t),
      orderByList: orderByList?.call(ElogChecklistUsages.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogChecklistUsagesImpl extends ElogChecklistUsages {
  _ElogChecklistUsagesImpl({
    _is.UuidValue? id,
    required String name,
    required _is.UuidValue checklistTemplateId,
    required int checklistTemplateVersionNumber,
    String? resourceType,
    _is.UuidValue? resourceId,
    required String status,
    int? totalInstructions,
    int? completedInstructions,
  }) : super._(
         id: id,
         name: name,
         checklistTemplateId: checklistTemplateId,
         checklistTemplateVersionNumber: checklistTemplateVersionNumber,
         resourceType: resourceType,
         resourceId: resourceId,
         status: status,
         totalInstructions: totalInstructions,
         completedInstructions: completedInstructions,
       );

  /// Returns a shallow copy of this [ElogChecklistUsages]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogChecklistUsages copyWith({
    Object? id = _Undefined,
    String? name,
    _is.UuidValue? checklistTemplateId,
    int? checklistTemplateVersionNumber,
    Object? resourceType = _Undefined,
    Object? resourceId = _Undefined,
    String? status,
    Object? totalInstructions = _Undefined,
    Object? completedInstructions = _Undefined,
  }) {
    return ElogChecklistUsages(
      id: id is _is.UuidValue? ? id : this.id,
      name: name ?? this.name,
      checklistTemplateId: checklistTemplateId ?? this.checklistTemplateId,
      checklistTemplateVersionNumber:
          checklistTemplateVersionNumber ?? this.checklistTemplateVersionNumber,
      resourceType: resourceType is String? ? resourceType : this.resourceType,
      resourceId: resourceId is _is.UuidValue? ? resourceId : this.resourceId,
      status: status ?? this.status,
      totalInstructions: totalInstructions is int?
          ? totalInstructions
          : this.totalInstructions,
      completedInstructions: completedInstructions is int?
          ? completedInstructions
          : this.completedInstructions,
    );
  }
}

class ElogChecklistUsagesUpdateTable
    extends _is.UpdateTable<ElogChecklistUsagesTable> {
  ElogChecklistUsagesUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> checklistTemplateId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.checklistTemplateId,
    value,
  );

  _is.ColumnValue<int, int> checklistTemplateVersionNumber(int value) =>
      _is.ColumnValue(
        table.checklistTemplateVersionNumber,
        value,
      );

  _is.ColumnValue<String, String> resourceType(String? value) =>
      _is.ColumnValue(
        table.resourceType,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> resourceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.resourceId,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<int, int> totalInstructions(int? value) => _is.ColumnValue(
    table.totalInstructions,
    value,
  );

  _is.ColumnValue<int, int> completedInstructions(int? value) =>
      _is.ColumnValue(
        table.completedInstructions,
        value,
      );
}

class ElogChecklistUsagesTable extends _is.Table<_is.UuidValue?> {
  ElogChecklistUsagesTable({super.tableRelation})
    : super(tableName: 'elog_checklist_usages') {
    updateTable = ElogChecklistUsagesUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    checklistTemplateId = _is.ColumnUuid(
      'checklistTemplateId',
      this,
    );
    checklistTemplateVersionNumber = _is.ColumnInt(
      'checklistTemplateVersionNumber',
      this,
    );
    resourceType = _is.ColumnString(
      'resourceType',
      this,
    );
    resourceId = _is.ColumnUuid(
      'resourceId',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    totalInstructions = _is.ColumnInt(
      'totalInstructions',
      this,
    );
    completedInstructions = _is.ColumnInt(
      'completedInstructions',
      this,
    );
  }

  late final ElogChecklistUsagesUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnUuid checklistTemplateId;

  late final _is.ColumnInt checklistTemplateVersionNumber;

  late final _is.ColumnString resourceType;

  late final _is.ColumnUuid resourceId;

  late final _is.ColumnString status;

  late final _is.ColumnInt totalInstructions;

  late final _is.ColumnInt completedInstructions;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    checklistTemplateId,
    checklistTemplateVersionNumber,
    resourceType,
    resourceId,
    status,
    totalInstructions,
    completedInstructions,
  ];
}

class ElogChecklistUsagesInclude extends _is.IncludeObject {
  ElogChecklistUsagesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogChecklistUsages.t;
}

class ElogChecklistUsagesIncludeList extends _is.IncludeList {
  ElogChecklistUsagesIncludeList._({
    _is.WhereExpressionBuilder<ElogChecklistUsagesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogChecklistUsages.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogChecklistUsages.t;
}

class ElogChecklistUsagesRepository {
  const ElogChecklistUsagesRepository._();

  /// Returns a list of [ElogChecklistUsages]s matching the given query parameters.
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
  Future<List<ElogChecklistUsages>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogChecklistUsagesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogChecklistUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsagesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogChecklistUsages>(
      where: where?.call(ElogChecklistUsages.t),
      orderBy: orderBy?.call(ElogChecklistUsages.t),
      orderByList: orderByList?.call(ElogChecklistUsages.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogChecklistUsages] matching the given query parameters.
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
  Future<ElogChecklistUsages?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogChecklistUsagesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogChecklistUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsagesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogChecklistUsages>(
      where: where?.call(ElogChecklistUsages.t),
      orderBy: orderBy?.call(ElogChecklistUsages.t),
      orderByList: orderByList?.call(ElogChecklistUsages.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogChecklistUsages] by its [id] or null if no such row exists.
  Future<ElogChecklistUsages?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogChecklistUsages>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogChecklistUsages]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogChecklistUsages]s will have their `id` fields set.
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
  Future<List<ElogChecklistUsages>> insert(
    _is.DatabaseSession session,
    List<ElogChecklistUsages> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogChecklistUsages>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogChecklistUsages] and returns the inserted row.
  ///
  /// The returned [ElogChecklistUsages] will have its `id` field set.
  Future<ElogChecklistUsages> insertRow(
    _is.DatabaseSession session,
    ElogChecklistUsages row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogChecklistUsages>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogChecklistUsages]s in the list and returns the resulting rows.
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
  /// The returned [ElogChecklistUsages]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogChecklistUsages>> upsert(
    _is.DatabaseSession session,
    List<ElogChecklistUsages> rows, {
    required _is.ColumnSelections<ElogChecklistUsagesTable> conflictColumns,
    _is.ColumnSelections<ElogChecklistUsagesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogChecklistUsagesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogChecklistUsages>(
      rows,
      conflictColumns: conflictColumns(ElogChecklistUsages.t),
      updateColumns: updateColumns?.call(ElogChecklistUsages.t),
      updateWhere: updateWhere?.call(ElogChecklistUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogChecklistUsages] and returns the resulting row.
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
  /// The returned [ElogChecklistUsages] will have its `id` field set.
  Future<ElogChecklistUsages?> upsertRow(
    _is.DatabaseSession session,
    ElogChecklistUsages row, {
    required _is.ColumnSelections<ElogChecklistUsagesTable> conflictColumns,
    _is.ColumnSelections<ElogChecklistUsagesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogChecklistUsagesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogChecklistUsages>(
      row,
      conflictColumns: conflictColumns(ElogChecklistUsages.t),
      updateColumns: updateColumns?.call(ElogChecklistUsages.t),
      updateWhere: updateWhere?.call(ElogChecklistUsages.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogChecklistUsages]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogChecklistUsages>> update(
    _is.DatabaseSession session,
    List<ElogChecklistUsages> rows, {
    _is.ColumnSelections<ElogChecklistUsagesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogChecklistUsages>(
      rows,
      columns: columns?.call(ElogChecklistUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogChecklistUsages]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogChecklistUsages> updateRow(
    _is.DatabaseSession session,
    ElogChecklistUsages row, {
    _is.ColumnSelections<ElogChecklistUsagesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogChecklistUsages>(
      row,
      columns: columns?.call(ElogChecklistUsages.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogChecklistUsages] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogChecklistUsages?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogChecklistUsagesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogChecklistUsages>(
      id,
      columnValues: columnValues(ElogChecklistUsages.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogChecklistUsages]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogChecklistUsages>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogChecklistUsagesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogChecklistUsagesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogChecklistUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsagesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogChecklistUsages>(
      columnValues: columnValues(ElogChecklistUsages.t.updateTable),
      where: where(ElogChecklistUsages.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogChecklistUsages.t),
      orderByList: orderByList?.call(ElogChecklistUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogChecklistUsages]s in the list and returns the deleted rows.
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
  Future<List<ElogChecklistUsages>> delete(
    _is.DatabaseSession session,
    List<ElogChecklistUsages> rows, {
    _is.OrderByBuilder<ElogChecklistUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsagesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogChecklistUsages>(
      rows,
      orderBy: orderBy?.call(ElogChecklistUsages.t),
      orderByList: orderByList?.call(ElogChecklistUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogChecklistUsages].
  Future<ElogChecklistUsages> deleteRow(
    _is.DatabaseSession session,
    ElogChecklistUsages row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogChecklistUsages>(
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
  Future<List<ElogChecklistUsages>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogChecklistUsagesTable> where,
    _is.OrderByBuilder<ElogChecklistUsagesTable>? orderBy,
    _is.OrderByListBuilder<ElogChecklistUsagesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogChecklistUsages>(
      where: where(ElogChecklistUsages.t),
      orderBy: orderBy?.call(ElogChecklistUsages.t),
      orderByList: orderByList?.call(ElogChecklistUsages.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogChecklistUsagesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogChecklistUsages>(
      where: where?.call(ElogChecklistUsages.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogChecklistUsages] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogChecklistUsagesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogChecklistUsages>(
      where: where(ElogChecklistUsages.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
