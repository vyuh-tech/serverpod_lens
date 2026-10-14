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

abstract class PublicESignatures
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  PublicESignatures._({
    this.id,
    required this.entityType,
    this.entityId,
    required this.operation,
    required this.role,
    required this.meaning,
    required this.authMethod,
    this.remarks,
    this.versionNumber,
    this.workflowInstanceId,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PublicESignatures({
    _is.UuidValue? id,
    required String entityType,
    String? entityId,
    required String operation,
    required String role,
    required String meaning,
    required String authMethod,
    String? remarks,
    int? versionNumber,
    _is.UuidValue? workflowInstanceId,
    required _is.UuidValue createdBy,
    required _is.UuidValue updatedBy,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PublicESignaturesImpl;

  factory PublicESignatures.fromJson(Map<String, dynamic> jsonSerialization) {
    return PublicESignatures(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      entityType: jsonSerialization['entityType'] as String,
      entityId: jsonSerialization['entityId'] as String?,
      operation: jsonSerialization['operation'] as String,
      role: jsonSerialization['role'] as String,
      meaning: jsonSerialization['meaning'] as String,
      authMethod: jsonSerialization['authMethod'] as String,
      remarks: jsonSerialization['remarks'] as String?,
      versionNumber: jsonSerialization['versionNumber'] as int?,
      workflowInstanceId: jsonSerialization['workflowInstanceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowInstanceId'],
            ),
      createdBy: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['createdBy'],
      ),
      updatedBy: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['updatedBy'],
      ),
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = PublicESignaturesTable();

  static const db = PublicESignaturesRepository._();

  @override
  _is.UuidValue? id;

  String entityType;

  String? entityId;

  String operation;

  String role;

  String meaning;

  String authMethod;

  String? remarks;

  int? versionNumber;

  _is.UuidValue? workflowInstanceId;

  _is.UuidValue createdBy;

  _is.UuidValue updatedBy;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [PublicESignatures]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  PublicESignatures copyWith({
    _is.UuidValue? id,
    String? entityType,
    String? entityId,
    String? operation,
    String? role,
    String? meaning,
    String? authMethod,
    String? remarks,
    int? versionNumber,
    _is.UuidValue? workflowInstanceId,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicESignatures',
      if (id != null) 'id': id?.toJson(),
      'entityType': entityType,
      if (entityId != null) 'entityId': entityId,
      'operation': operation,
      'role': role,
      'meaning': meaning,
      'authMethod': authMethod,
      if (remarks != null) 'remarks': remarks,
      if (versionNumber != null) 'versionNumber': versionNumber,
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      'createdBy': createdBy.toJson(),
      'updatedBy': updatedBy.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicESignatures',
      if (id != null) 'id': id?.toJson(),
      'entityType': entityType,
      if (entityId != null) 'entityId': entityId,
      'operation': operation,
      'role': role,
      'meaning': meaning,
      'authMethod': authMethod,
      if (remarks != null) 'remarks': remarks,
      if (versionNumber != null) 'versionNumber': versionNumber,
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      'createdBy': createdBy.toJson(),
      'updatedBy': updatedBy.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static PublicESignaturesInclude include() {
    return PublicESignaturesInclude._();
  }

  static PublicESignaturesIncludeList includeList({
    _is.WhereExpressionBuilder<PublicESignaturesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicESignaturesTable>? orderBy,
    _is.OrderByListBuilder<PublicESignaturesTable>? orderByList,
    PublicESignaturesInclude? include,
  }) {
    return PublicESignaturesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicESignatures.t),
      orderByList: orderByList?.call(PublicESignatures.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicESignaturesImpl extends PublicESignatures {
  _PublicESignaturesImpl({
    _is.UuidValue? id,
    required String entityType,
    String? entityId,
    required String operation,
    required String role,
    required String meaning,
    required String authMethod,
    String? remarks,
    int? versionNumber,
    _is.UuidValue? workflowInstanceId,
    required _is.UuidValue createdBy,
    required _is.UuidValue updatedBy,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         entityType: entityType,
         entityId: entityId,
         operation: operation,
         role: role,
         meaning: meaning,
         authMethod: authMethod,
         remarks: remarks,
         versionNumber: versionNumber,
         workflowInstanceId: workflowInstanceId,
         createdBy: createdBy,
         updatedBy: updatedBy,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [PublicESignatures]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  PublicESignatures copyWith({
    Object? id = _Undefined,
    String? entityType,
    Object? entityId = _Undefined,
    String? operation,
    String? role,
    String? meaning,
    String? authMethod,
    Object? remarks = _Undefined,
    Object? versionNumber = _Undefined,
    Object? workflowInstanceId = _Undefined,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PublicESignatures(
      id: id is _is.UuidValue? ? id : this.id,
      entityType: entityType ?? this.entityType,
      entityId: entityId is String? ? entityId : this.entityId,
      operation: operation ?? this.operation,
      role: role ?? this.role,
      meaning: meaning ?? this.meaning,
      authMethod: authMethod ?? this.authMethod,
      remarks: remarks is String? ? remarks : this.remarks,
      versionNumber: versionNumber is int? ? versionNumber : this.versionNumber,
      workflowInstanceId: workflowInstanceId is _is.UuidValue?
          ? workflowInstanceId
          : this.workflowInstanceId,
      createdBy: createdBy ?? this.createdBy,
      updatedBy: updatedBy ?? this.updatedBy,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class PublicESignaturesUpdateTable
    extends _is.UpdateTable<PublicESignaturesTable> {
  PublicESignaturesUpdateTable(super.table);

  _is.ColumnValue<String, String> entityType(String value) => _is.ColumnValue(
    table.entityType,
    value,
  );

  _is.ColumnValue<String, String> entityId(String? value) => _is.ColumnValue(
    table.entityId,
    value,
  );

  _is.ColumnValue<String, String> operation(String value) => _is.ColumnValue(
    table.operation,
    value,
  );

  _is.ColumnValue<String, String> role(String value) => _is.ColumnValue(
    table.role,
    value,
  );

  _is.ColumnValue<String, String> meaning(String value) => _is.ColumnValue(
    table.meaning,
    value,
  );

  _is.ColumnValue<String, String> authMethod(String value) => _is.ColumnValue(
    table.authMethod,
    value,
  );

  _is.ColumnValue<String, String> remarks(String? value) => _is.ColumnValue(
    table.remarks,
    value,
  );

  _is.ColumnValue<int, int> versionNumber(int? value) => _is.ColumnValue(
    table.versionNumber,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> workflowInstanceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.workflowInstanceId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> createdBy(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.createdBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> updatedBy(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.updatedBy,
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
}

class PublicESignaturesTable extends _is.Table<_is.UuidValue?> {
  PublicESignaturesTable({super.tableRelation})
    : super(tableName: 'public_e_signatures') {
    updateTable = PublicESignaturesUpdateTable(this);
    entityType = _is.ColumnString(
      'entityType',
      this,
    );
    entityId = _is.ColumnString(
      'entityId',
      this,
    );
    operation = _is.ColumnString(
      'operation',
      this,
    );
    role = _is.ColumnString(
      'role',
      this,
    );
    meaning = _is.ColumnString(
      'meaning',
      this,
    );
    authMethod = _is.ColumnString(
      'authMethod',
      this,
    );
    remarks = _is.ColumnString(
      'remarks',
      this,
    );
    versionNumber = _is.ColumnInt(
      'versionNumber',
      this,
    );
    workflowInstanceId = _is.ColumnUuid(
      'workflowInstanceId',
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
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final PublicESignaturesUpdateTable updateTable;

  late final _is.ColumnString entityType;

  late final _is.ColumnString entityId;

  late final _is.ColumnString operation;

  late final _is.ColumnString role;

  late final _is.ColumnString meaning;

  late final _is.ColumnString authMethod;

  late final _is.ColumnString remarks;

  late final _is.ColumnInt versionNumber;

  late final _is.ColumnUuid workflowInstanceId;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    entityType,
    entityId,
    operation,
    role,
    meaning,
    authMethod,
    remarks,
    versionNumber,
    workflowInstanceId,
    createdBy,
    updatedBy,
    createdAt,
    updatedAt,
  ];
}

class PublicESignaturesInclude extends _is.IncludeObject {
  PublicESignaturesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicESignatures.t;
}

class PublicESignaturesIncludeList extends _is.IncludeList {
  PublicESignaturesIncludeList._({
    _is.WhereExpressionBuilder<PublicESignaturesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PublicESignatures.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicESignatures.t;
}

class PublicESignaturesRepository {
  const PublicESignaturesRepository._();

  /// Returns a list of [PublicESignatures]s matching the given query parameters.
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
  Future<List<PublicESignatures>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicESignaturesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicESignaturesTable>? orderBy,
    _is.OrderByListBuilder<PublicESignaturesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PublicESignatures>(
      where: where?.call(PublicESignatures.t),
      orderBy: orderBy?.call(PublicESignatures.t),
      orderByList: orderByList?.call(PublicESignatures.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PublicESignatures] matching the given query parameters.
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
  Future<PublicESignatures?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicESignaturesTable>? where,
    int? offset,
    _is.OrderByBuilder<PublicESignaturesTable>? orderBy,
    _is.OrderByListBuilder<PublicESignaturesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PublicESignatures>(
      where: where?.call(PublicESignatures.t),
      orderBy: orderBy?.call(PublicESignatures.t),
      orderByList: orderByList?.call(PublicESignatures.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PublicESignatures] by its [id] or null if no such row exists.
  Future<PublicESignatures?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PublicESignatures>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PublicESignatures]s in the list and returns the inserted rows.
  ///
  /// The returned [PublicESignatures]s will have their `id` fields set.
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
  Future<List<PublicESignatures>> insert(
    _is.DatabaseSession session,
    List<PublicESignatures> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<PublicESignatures>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [PublicESignatures] and returns the inserted row.
  ///
  /// The returned [PublicESignatures] will have its `id` field set.
  Future<PublicESignatures> insertRow(
    _is.DatabaseSession session,
    PublicESignatures row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<PublicESignatures>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [PublicESignatures]s in the list and returns the resulting rows.
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
  /// The returned [PublicESignatures]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicESignatures>> upsert(
    _is.DatabaseSession session,
    List<PublicESignatures> rows, {
    required _is.ColumnSelections<PublicESignaturesTable> conflictColumns,
    _is.ColumnSelections<PublicESignaturesTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicESignaturesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<PublicESignatures>(
      rows,
      conflictColumns: conflictColumns(PublicESignatures.t),
      updateColumns: updateColumns?.call(PublicESignatures.t),
      updateWhere: updateWhere?.call(PublicESignatures.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [PublicESignatures] and returns the resulting row.
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
  /// The returned [PublicESignatures] will have its `id` field set.
  Future<PublicESignatures?> upsertRow(
    _is.DatabaseSession session,
    PublicESignatures row, {
    required _is.ColumnSelections<PublicESignaturesTable> conflictColumns,
    _is.ColumnSelections<PublicESignaturesTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicESignaturesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<PublicESignatures>(
      row,
      conflictColumns: conflictColumns(PublicESignatures.t),
      updateColumns: updateColumns?.call(PublicESignatures.t),
      updateWhere: updateWhere?.call(PublicESignatures.t),
      transaction: transaction,
    );
  }

  /// Updates all [PublicESignatures]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicESignatures>> update(
    _is.DatabaseSession session,
    List<PublicESignatures> rows, {
    _is.ColumnSelections<PublicESignaturesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<PublicESignatures>(
      rows,
      columns: columns?.call(PublicESignatures.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [PublicESignatures]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PublicESignatures> updateRow(
    _is.DatabaseSession session,
    PublicESignatures row, {
    _is.ColumnSelections<PublicESignaturesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<PublicESignatures>(
      row,
      columns: columns?.call(PublicESignatures.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PublicESignatures] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PublicESignatures?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<PublicESignaturesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<PublicESignatures>(
      id,
      columnValues: columnValues(PublicESignatures.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PublicESignatures]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicESignatures>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<PublicESignaturesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<PublicESignaturesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicESignaturesTable>? orderBy,
    _is.OrderByListBuilder<PublicESignaturesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<PublicESignatures>(
      columnValues: columnValues(PublicESignatures.t.updateTable),
      where: where(PublicESignatures.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicESignatures.t),
      orderByList: orderByList?.call(PublicESignatures.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [PublicESignatures]s in the list and returns the deleted rows.
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
  Future<List<PublicESignatures>> delete(
    _is.DatabaseSession session,
    List<PublicESignatures> rows, {
    _is.OrderByBuilder<PublicESignaturesTable>? orderBy,
    _is.OrderByListBuilder<PublicESignaturesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<PublicESignatures>(
      rows,
      orderBy: orderBy?.call(PublicESignatures.t),
      orderByList: orderByList?.call(PublicESignatures.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [PublicESignatures].
  Future<PublicESignatures> deleteRow(
    _is.DatabaseSession session,
    PublicESignatures row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PublicESignatures>(
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
  Future<List<PublicESignatures>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicESignaturesTable> where,
    _is.OrderByBuilder<PublicESignaturesTable>? orderBy,
    _is.OrderByListBuilder<PublicESignaturesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<PublicESignatures>(
      where: where(PublicESignatures.t),
      orderBy: orderBy?.call(PublicESignatures.t),
      orderByList: orderByList?.call(PublicESignatures.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicESignaturesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<PublicESignatures>(
      where: where?.call(PublicESignatures.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PublicESignatures] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicESignaturesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PublicESignatures>(
      where: where(PublicESignatures.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
