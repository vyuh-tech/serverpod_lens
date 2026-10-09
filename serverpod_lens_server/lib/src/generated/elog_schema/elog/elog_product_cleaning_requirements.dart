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

abstract class ElogProductCleaningRequirements
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogProductCleaningRequirements._({
    this.id,
    this.fromProductId,
    this.toProductId,
    required this.cleaningTypeId,
    required this.resourceType,
    this.equipmentCategoryId,
    this.priority,
    this.notes,
    this.regulatoryReference,
    this.isActive,
  });

  factory ElogProductCleaningRequirements({
    _is.UuidValue? id,
    _is.UuidValue? fromProductId,
    _is.UuidValue? toProductId,
    required _is.UuidValue cleaningTypeId,
    required String resourceType,
    _is.UuidValue? equipmentCategoryId,
    int? priority,
    String? notes,
    String? regulatoryReference,
    bool? isActive,
  }) = _ElogProductCleaningRequirementsImpl;

  factory ElogProductCleaningRequirements.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogProductCleaningRequirements(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      fromProductId: jsonSerialization['fromProductId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['fromProductId'],
            ),
      toProductId: jsonSerialization['toProductId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['toProductId'],
            ),
      cleaningTypeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['cleaningTypeId'],
      ),
      resourceType: jsonSerialization['resourceType'] as String,
      equipmentCategoryId: jsonSerialization['equipmentCategoryId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['equipmentCategoryId'],
            ),
      priority: jsonSerialization['priority'] as int?,
      notes: jsonSerialization['notes'] as String?,
      regulatoryReference: jsonSerialization['regulatoryReference'] as String?,
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogProductCleaningRequirementsTable();

  static const db = ElogProductCleaningRequirementsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue? fromProductId;

  _is.UuidValue? toProductId;

  _is.UuidValue cleaningTypeId;

  String resourceType;

  _is.UuidValue? equipmentCategoryId;

  int? priority;

  String? notes;

  String? regulatoryReference;

  bool? isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogProductCleaningRequirements]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogProductCleaningRequirements copyWith({
    _is.UuidValue? id,
    _is.UuidValue? fromProductId,
    _is.UuidValue? toProductId,
    _is.UuidValue? cleaningTypeId,
    String? resourceType,
    _is.UuidValue? equipmentCategoryId,
    int? priority,
    String? notes,
    String? regulatoryReference,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogProductCleaningRequirements',
      if (id != null) 'id': id?.toJson(),
      if (fromProductId != null) 'fromProductId': fromProductId?.toJson(),
      if (toProductId != null) 'toProductId': toProductId?.toJson(),
      'cleaningTypeId': cleaningTypeId.toJson(),
      'resourceType': resourceType,
      if (equipmentCategoryId != null)
        'equipmentCategoryId': equipmentCategoryId?.toJson(),
      if (priority != null) 'priority': priority,
      if (notes != null) 'notes': notes,
      if (regulatoryReference != null)
        'regulatoryReference': regulatoryReference,
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogProductCleaningRequirements',
      if (id != null) 'id': id?.toJson(),
      if (fromProductId != null) 'fromProductId': fromProductId?.toJson(),
      if (toProductId != null) 'toProductId': toProductId?.toJson(),
      'cleaningTypeId': cleaningTypeId.toJson(),
      'resourceType': resourceType,
      if (equipmentCategoryId != null)
        'equipmentCategoryId': equipmentCategoryId?.toJson(),
      if (priority != null) 'priority': priority,
      if (notes != null) 'notes': notes,
      if (regulatoryReference != null)
        'regulatoryReference': regulatoryReference,
      if (isActive != null) 'isActive': isActive,
    };
  }

  static ElogProductCleaningRequirementsInclude include() {
    return ElogProductCleaningRequirementsInclude._();
  }

  static ElogProductCleaningRequirementsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogProductCleaningRequirementsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogProductCleaningRequirementsTable>? orderBy,
    _is.OrderByListBuilder<ElogProductCleaningRequirementsTable>? orderByList,
    ElogProductCleaningRequirementsInclude? include,
  }) {
    return ElogProductCleaningRequirementsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogProductCleaningRequirements.t),
      orderByList: orderByList?.call(ElogProductCleaningRequirements.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogProductCleaningRequirementsImpl
    extends ElogProductCleaningRequirements {
  _ElogProductCleaningRequirementsImpl({
    _is.UuidValue? id,
    _is.UuidValue? fromProductId,
    _is.UuidValue? toProductId,
    required _is.UuidValue cleaningTypeId,
    required String resourceType,
    _is.UuidValue? equipmentCategoryId,
    int? priority,
    String? notes,
    String? regulatoryReference,
    bool? isActive,
  }) : super._(
         id: id,
         fromProductId: fromProductId,
         toProductId: toProductId,
         cleaningTypeId: cleaningTypeId,
         resourceType: resourceType,
         equipmentCategoryId: equipmentCategoryId,
         priority: priority,
         notes: notes,
         regulatoryReference: regulatoryReference,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogProductCleaningRequirements]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogProductCleaningRequirements copyWith({
    Object? id = _Undefined,
    Object? fromProductId = _Undefined,
    Object? toProductId = _Undefined,
    _is.UuidValue? cleaningTypeId,
    String? resourceType,
    Object? equipmentCategoryId = _Undefined,
    Object? priority = _Undefined,
    Object? notes = _Undefined,
    Object? regulatoryReference = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return ElogProductCleaningRequirements(
      id: id is _is.UuidValue? ? id : this.id,
      fromProductId: fromProductId is _is.UuidValue?
          ? fromProductId
          : this.fromProductId,
      toProductId: toProductId is _is.UuidValue?
          ? toProductId
          : this.toProductId,
      cleaningTypeId: cleaningTypeId ?? this.cleaningTypeId,
      resourceType: resourceType ?? this.resourceType,
      equipmentCategoryId: equipmentCategoryId is _is.UuidValue?
          ? equipmentCategoryId
          : this.equipmentCategoryId,
      priority: priority is int? ? priority : this.priority,
      notes: notes is String? ? notes : this.notes,
      regulatoryReference: regulatoryReference is String?
          ? regulatoryReference
          : this.regulatoryReference,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}

class ElogProductCleaningRequirementsUpdateTable
    extends _is.UpdateTable<ElogProductCleaningRequirementsTable> {
  ElogProductCleaningRequirementsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> fromProductId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.fromProductId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> toProductId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.toProductId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> cleaningTypeId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.cleaningTypeId,
    value,
  );

  _is.ColumnValue<String, String> resourceType(String value) => _is.ColumnValue(
    table.resourceType,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> equipmentCategoryId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.equipmentCategoryId,
    value,
  );

  _is.ColumnValue<int, int> priority(int? value) => _is.ColumnValue(
    table.priority,
    value,
  );

  _is.ColumnValue<String, String> notes(String? value) => _is.ColumnValue(
    table.notes,
    value,
  );

  _is.ColumnValue<String, String> regulatoryReference(String? value) =>
      _is.ColumnValue(
        table.regulatoryReference,
        value,
      );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogProductCleaningRequirementsTable extends _is.Table<_is.UuidValue?> {
  ElogProductCleaningRequirementsTable({super.tableRelation})
    : super(tableName: 'elog_product_cleaning_requirements') {
    updateTable = ElogProductCleaningRequirementsUpdateTable(this);
    fromProductId = _is.ColumnUuid(
      'fromProductId',
      this,
    );
    toProductId = _is.ColumnUuid(
      'toProductId',
      this,
    );
    cleaningTypeId = _is.ColumnUuid(
      'cleaningTypeId',
      this,
    );
    resourceType = _is.ColumnString(
      'resourceType',
      this,
    );
    equipmentCategoryId = _is.ColumnUuid(
      'equipmentCategoryId',
      this,
    );
    priority = _is.ColumnInt(
      'priority',
      this,
    );
    notes = _is.ColumnString(
      'notes',
      this,
    );
    regulatoryReference = _is.ColumnString(
      'regulatoryReference',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogProductCleaningRequirementsUpdateTable updateTable;

  late final _is.ColumnUuid fromProductId;

  late final _is.ColumnUuid toProductId;

  late final _is.ColumnUuid cleaningTypeId;

  late final _is.ColumnString resourceType;

  late final _is.ColumnUuid equipmentCategoryId;

  late final _is.ColumnInt priority;

  late final _is.ColumnString notes;

  late final _is.ColumnString regulatoryReference;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    fromProductId,
    toProductId,
    cleaningTypeId,
    resourceType,
    equipmentCategoryId,
    priority,
    notes,
    regulatoryReference,
    isActive,
  ];
}

class ElogProductCleaningRequirementsInclude extends _is.IncludeObject {
  ElogProductCleaningRequirementsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogProductCleaningRequirements.t;
}

class ElogProductCleaningRequirementsIncludeList extends _is.IncludeList {
  ElogProductCleaningRequirementsIncludeList._({
    _is.WhereExpressionBuilder<ElogProductCleaningRequirementsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogProductCleaningRequirements.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogProductCleaningRequirements.t;
}

class ElogProductCleaningRequirementsRepository {
  const ElogProductCleaningRequirementsRepository._();

  /// Returns a list of [ElogProductCleaningRequirements]s matching the given query parameters.
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
  Future<List<ElogProductCleaningRequirements>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogProductCleaningRequirementsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogProductCleaningRequirementsTable>? orderBy,
    _is.OrderByListBuilder<ElogProductCleaningRequirementsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogProductCleaningRequirements>(
      where: where?.call(ElogProductCleaningRequirements.t),
      orderBy: orderBy?.call(ElogProductCleaningRequirements.t),
      orderByList: orderByList?.call(ElogProductCleaningRequirements.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogProductCleaningRequirements] matching the given query parameters.
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
  Future<ElogProductCleaningRequirements?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogProductCleaningRequirementsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogProductCleaningRequirementsTable>? orderBy,
    _is.OrderByListBuilder<ElogProductCleaningRequirementsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogProductCleaningRequirements>(
      where: where?.call(ElogProductCleaningRequirements.t),
      orderBy: orderBy?.call(ElogProductCleaningRequirements.t),
      orderByList: orderByList?.call(ElogProductCleaningRequirements.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogProductCleaningRequirements] by its [id] or null if no such row exists.
  Future<ElogProductCleaningRequirements?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogProductCleaningRequirements>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogProductCleaningRequirements]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogProductCleaningRequirements]s will have their `id` fields set.
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
  Future<List<ElogProductCleaningRequirements>> insert(
    _is.DatabaseSession session,
    List<ElogProductCleaningRequirements> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogProductCleaningRequirements>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogProductCleaningRequirements] and returns the inserted row.
  ///
  /// The returned [ElogProductCleaningRequirements] will have its `id` field set.
  Future<ElogProductCleaningRequirements> insertRow(
    _is.DatabaseSession session,
    ElogProductCleaningRequirements row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogProductCleaningRequirements>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogProductCleaningRequirements]s in the list and returns the resulting rows.
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
  /// The returned [ElogProductCleaningRequirements]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogProductCleaningRequirements>> upsert(
    _is.DatabaseSession session,
    List<ElogProductCleaningRequirements> rows, {
    required _is.ColumnSelections<ElogProductCleaningRequirementsTable>
    conflictColumns,
    _is.ColumnSelections<ElogProductCleaningRequirementsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogProductCleaningRequirementsTable>?
    updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogProductCleaningRequirements>(
      rows,
      conflictColumns: conflictColumns(ElogProductCleaningRequirements.t),
      updateColumns: updateColumns?.call(ElogProductCleaningRequirements.t),
      updateWhere: updateWhere?.call(ElogProductCleaningRequirements.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogProductCleaningRequirements] and returns the resulting row.
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
  /// The returned [ElogProductCleaningRequirements] will have its `id` field set.
  Future<ElogProductCleaningRequirements?> upsertRow(
    _is.DatabaseSession session,
    ElogProductCleaningRequirements row, {
    required _is.ColumnSelections<ElogProductCleaningRequirementsTable>
    conflictColumns,
    _is.ColumnSelections<ElogProductCleaningRequirementsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogProductCleaningRequirementsTable>?
    updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogProductCleaningRequirements>(
      row,
      conflictColumns: conflictColumns(ElogProductCleaningRequirements.t),
      updateColumns: updateColumns?.call(ElogProductCleaningRequirements.t),
      updateWhere: updateWhere?.call(ElogProductCleaningRequirements.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogProductCleaningRequirements]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogProductCleaningRequirements>> update(
    _is.DatabaseSession session,
    List<ElogProductCleaningRequirements> rows, {
    _is.ColumnSelections<ElogProductCleaningRequirementsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogProductCleaningRequirements>(
      rows,
      columns: columns?.call(ElogProductCleaningRequirements.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogProductCleaningRequirements]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogProductCleaningRequirements> updateRow(
    _is.DatabaseSession session,
    ElogProductCleaningRequirements row, {
    _is.ColumnSelections<ElogProductCleaningRequirementsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogProductCleaningRequirements>(
      row,
      columns: columns?.call(ElogProductCleaningRequirements.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogProductCleaningRequirements] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogProductCleaningRequirements?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<
      ElogProductCleaningRequirementsUpdateTable
    >
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogProductCleaningRequirements>(
      id,
      columnValues: columnValues(ElogProductCleaningRequirements.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogProductCleaningRequirements]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogProductCleaningRequirements>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<
      ElogProductCleaningRequirementsUpdateTable
    >
    columnValues,
    required _is.WhereExpressionBuilder<ElogProductCleaningRequirementsTable>
    where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogProductCleaningRequirementsTable>? orderBy,
    _is.OrderByListBuilder<ElogProductCleaningRequirementsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogProductCleaningRequirements>(
      columnValues: columnValues(ElogProductCleaningRequirements.t.updateTable),
      where: where(ElogProductCleaningRequirements.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogProductCleaningRequirements.t),
      orderByList: orderByList?.call(ElogProductCleaningRequirements.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogProductCleaningRequirements]s in the list and returns the deleted rows.
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
  Future<List<ElogProductCleaningRequirements>> delete(
    _is.DatabaseSession session,
    List<ElogProductCleaningRequirements> rows, {
    _is.OrderByBuilder<ElogProductCleaningRequirementsTable>? orderBy,
    _is.OrderByListBuilder<ElogProductCleaningRequirementsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogProductCleaningRequirements>(
      rows,
      orderBy: orderBy?.call(ElogProductCleaningRequirements.t),
      orderByList: orderByList?.call(ElogProductCleaningRequirements.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogProductCleaningRequirements].
  Future<ElogProductCleaningRequirements> deleteRow(
    _is.DatabaseSession session,
    ElogProductCleaningRequirements row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogProductCleaningRequirements>(
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
  Future<List<ElogProductCleaningRequirements>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogProductCleaningRequirementsTable>
    where,
    _is.OrderByBuilder<ElogProductCleaningRequirementsTable>? orderBy,
    _is.OrderByListBuilder<ElogProductCleaningRequirementsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogProductCleaningRequirements>(
      where: where(ElogProductCleaningRequirements.t),
      orderBy: orderBy?.call(ElogProductCleaningRequirements.t),
      orderByList: orderByList?.call(ElogProductCleaningRequirements.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogProductCleaningRequirementsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogProductCleaningRequirements>(
      where: where?.call(ElogProductCleaningRequirements.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogProductCleaningRequirements] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogProductCleaningRequirementsTable>
    where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogProductCleaningRequirements>(
      where: where(ElogProductCleaningRequirements.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
