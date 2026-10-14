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

abstract class ElogProblemTypes
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogProblemTypes._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.category,
    this.subcategory,
    required this.defaultSeverity,
    required this.requiresImmediateAction,
    this.detailsLogTemplateId,
    required this.appliesToAreas,
    required this.appliesToEquipment,
    required this.isActive,
  });

  factory ElogProblemTypes({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String category,
    String? subcategory,
    required String defaultSeverity,
    required bool requiresImmediateAction,
    _is.UuidValue? detailsLogTemplateId,
    required bool appliesToAreas,
    required bool appliesToEquipment,
    required bool isActive,
  }) = _ElogProblemTypesImpl;

  factory ElogProblemTypes.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogProblemTypes(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      category: jsonSerialization['category'] as String,
      subcategory: jsonSerialization['subcategory'] as String?,
      defaultSeverity: jsonSerialization['defaultSeverity'] as String,
      requiresImmediateAction: _is.BoolJsonExtension.fromJson(
        jsonSerialization['requiresImmediateAction'],
      ),
      detailsLogTemplateId: jsonSerialization['detailsLogTemplateId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['detailsLogTemplateId'],
            ),
      appliesToAreas: _is.BoolJsonExtension.fromJson(
        jsonSerialization['appliesToAreas'],
      ),
      appliesToEquipment: _is.BoolJsonExtension.fromJson(
        jsonSerialization['appliesToEquipment'],
      ),
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogProblemTypesTable();

  static const db = ElogProblemTypesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String category;

  String? subcategory;

  String defaultSeverity;

  bool requiresImmediateAction;

  _is.UuidValue? detailsLogTemplateId;

  bool appliesToAreas;

  bool appliesToEquipment;

  bool isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogProblemTypes]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogProblemTypes copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? category,
    String? subcategory,
    String? defaultSeverity,
    bool? requiresImmediateAction,
    _is.UuidValue? detailsLogTemplateId,
    bool? appliesToAreas,
    bool? appliesToEquipment,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogProblemTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'category': category,
      if (subcategory != null) 'subcategory': subcategory,
      'defaultSeverity': defaultSeverity,
      'requiresImmediateAction': requiresImmediateAction,
      if (detailsLogTemplateId != null)
        'detailsLogTemplateId': detailsLogTemplateId?.toJson(),
      'appliesToAreas': appliesToAreas,
      'appliesToEquipment': appliesToEquipment,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogProblemTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'category': category,
      if (subcategory != null) 'subcategory': subcategory,
      'defaultSeverity': defaultSeverity,
      'requiresImmediateAction': requiresImmediateAction,
      if (detailsLogTemplateId != null)
        'detailsLogTemplateId': detailsLogTemplateId?.toJson(),
      'appliesToAreas': appliesToAreas,
      'appliesToEquipment': appliesToEquipment,
      'isActive': isActive,
    };
  }

  static ElogProblemTypesInclude include() {
    return ElogProblemTypesInclude._();
  }

  static ElogProblemTypesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogProblemTypesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogProblemTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogProblemTypesTable>? orderByList,
    ElogProblemTypesInclude? include,
  }) {
    return ElogProblemTypesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogProblemTypes.t),
      orderByList: orderByList?.call(ElogProblemTypes.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogProblemTypesImpl extends ElogProblemTypes {
  _ElogProblemTypesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String category,
    String? subcategory,
    required String defaultSeverity,
    required bool requiresImmediateAction,
    _is.UuidValue? detailsLogTemplateId,
    required bool appliesToAreas,
    required bool appliesToEquipment,
    required bool isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         category: category,
         subcategory: subcategory,
         defaultSeverity: defaultSeverity,
         requiresImmediateAction: requiresImmediateAction,
         detailsLogTemplateId: detailsLogTemplateId,
         appliesToAreas: appliesToAreas,
         appliesToEquipment: appliesToEquipment,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogProblemTypes]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogProblemTypes copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? category,
    Object? subcategory = _Undefined,
    String? defaultSeverity,
    bool? requiresImmediateAction,
    Object? detailsLogTemplateId = _Undefined,
    bool? appliesToAreas,
    bool? appliesToEquipment,
    bool? isActive,
  }) {
    return ElogProblemTypes(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      category: category ?? this.category,
      subcategory: subcategory is String? ? subcategory : this.subcategory,
      defaultSeverity: defaultSeverity ?? this.defaultSeverity,
      requiresImmediateAction:
          requiresImmediateAction ?? this.requiresImmediateAction,
      detailsLogTemplateId: detailsLogTemplateId is _is.UuidValue?
          ? detailsLogTemplateId
          : this.detailsLogTemplateId,
      appliesToAreas: appliesToAreas ?? this.appliesToAreas,
      appliesToEquipment: appliesToEquipment ?? this.appliesToEquipment,
      isActive: isActive ?? this.isActive,
    );
  }
}

class ElogProblemTypesUpdateTable
    extends _is.UpdateTable<ElogProblemTypesTable> {
  ElogProblemTypesUpdateTable(super.table);

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

  _is.ColumnValue<String, String> category(String value) => _is.ColumnValue(
    table.category,
    value,
  );

  _is.ColumnValue<String, String> subcategory(String? value) => _is.ColumnValue(
    table.subcategory,
    value,
  );

  _is.ColumnValue<String, String> defaultSeverity(String value) =>
      _is.ColumnValue(
        table.defaultSeverity,
        value,
      );

  _is.ColumnValue<bool, bool> requiresImmediateAction(bool value) =>
      _is.ColumnValue(
        table.requiresImmediateAction,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> detailsLogTemplateId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.detailsLogTemplateId,
    value,
  );

  _is.ColumnValue<bool, bool> appliesToAreas(bool value) => _is.ColumnValue(
    table.appliesToAreas,
    value,
  );

  _is.ColumnValue<bool, bool> appliesToEquipment(bool value) => _is.ColumnValue(
    table.appliesToEquipment,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogProblemTypesTable extends _is.Table<_is.UuidValue?> {
  ElogProblemTypesTable({super.tableRelation})
    : super(tableName: 'elog_problem_types') {
    updateTable = ElogProblemTypesUpdateTable(this);
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
    category = _is.ColumnString(
      'category',
      this,
    );
    subcategory = _is.ColumnString(
      'subcategory',
      this,
    );
    defaultSeverity = _is.ColumnString(
      'defaultSeverity',
      this,
    );
    requiresImmediateAction = _is.ColumnBool(
      'requiresImmediateAction',
      this,
    );
    detailsLogTemplateId = _is.ColumnUuid(
      'detailsLogTemplateId',
      this,
    );
    appliesToAreas = _is.ColumnBool(
      'appliesToAreas',
      this,
    );
    appliesToEquipment = _is.ColumnBool(
      'appliesToEquipment',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogProblemTypesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString category;

  late final _is.ColumnString subcategory;

  late final _is.ColumnString defaultSeverity;

  late final _is.ColumnBool requiresImmediateAction;

  late final _is.ColumnUuid detailsLogTemplateId;

  late final _is.ColumnBool appliesToAreas;

  late final _is.ColumnBool appliesToEquipment;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    category,
    subcategory,
    defaultSeverity,
    requiresImmediateAction,
    detailsLogTemplateId,
    appliesToAreas,
    appliesToEquipment,
    isActive,
  ];
}

class ElogProblemTypesInclude extends _is.IncludeObject {
  ElogProblemTypesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogProblemTypes.t;
}

class ElogProblemTypesIncludeList extends _is.IncludeList {
  ElogProblemTypesIncludeList._({
    _is.WhereExpressionBuilder<ElogProblemTypesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogProblemTypes.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogProblemTypes.t;
}

class ElogProblemTypesRepository {
  const ElogProblemTypesRepository._();

  /// Returns a list of [ElogProblemTypes]s matching the given query parameters.
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
  Future<List<ElogProblemTypes>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogProblemTypesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogProblemTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogProblemTypesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogProblemTypes>(
      where: where?.call(ElogProblemTypes.t),
      orderBy: orderBy?.call(ElogProblemTypes.t),
      orderByList: orderByList?.call(ElogProblemTypes.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogProblemTypes] matching the given query parameters.
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
  Future<ElogProblemTypes?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogProblemTypesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogProblemTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogProblemTypesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogProblemTypes>(
      where: where?.call(ElogProblemTypes.t),
      orderBy: orderBy?.call(ElogProblemTypes.t),
      orderByList: orderByList?.call(ElogProblemTypes.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogProblemTypes] by its [id] or null if no such row exists.
  Future<ElogProblemTypes?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogProblemTypes>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogProblemTypes]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogProblemTypes]s will have their `id` fields set.
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
  Future<List<ElogProblemTypes>> insert(
    _is.DatabaseSession session,
    List<ElogProblemTypes> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogProblemTypes>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogProblemTypes] and returns the inserted row.
  ///
  /// The returned [ElogProblemTypes] will have its `id` field set.
  Future<ElogProblemTypes> insertRow(
    _is.DatabaseSession session,
    ElogProblemTypes row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogProblemTypes>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogProblemTypes]s in the list and returns the resulting rows.
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
  /// The returned [ElogProblemTypes]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogProblemTypes>> upsert(
    _is.DatabaseSession session,
    List<ElogProblemTypes> rows, {
    required _is.ColumnSelections<ElogProblemTypesTable> conflictColumns,
    _is.ColumnSelections<ElogProblemTypesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogProblemTypesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogProblemTypes>(
      rows,
      conflictColumns: conflictColumns(ElogProblemTypes.t),
      updateColumns: updateColumns?.call(ElogProblemTypes.t),
      updateWhere: updateWhere?.call(ElogProblemTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogProblemTypes] and returns the resulting row.
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
  /// The returned [ElogProblemTypes] will have its `id` field set.
  Future<ElogProblemTypes?> upsertRow(
    _is.DatabaseSession session,
    ElogProblemTypes row, {
    required _is.ColumnSelections<ElogProblemTypesTable> conflictColumns,
    _is.ColumnSelections<ElogProblemTypesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogProblemTypesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogProblemTypes>(
      row,
      conflictColumns: conflictColumns(ElogProblemTypes.t),
      updateColumns: updateColumns?.call(ElogProblemTypes.t),
      updateWhere: updateWhere?.call(ElogProblemTypes.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogProblemTypes]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogProblemTypes>> update(
    _is.DatabaseSession session,
    List<ElogProblemTypes> rows, {
    _is.ColumnSelections<ElogProblemTypesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogProblemTypes>(
      rows,
      columns: columns?.call(ElogProblemTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogProblemTypes]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogProblemTypes> updateRow(
    _is.DatabaseSession session,
    ElogProblemTypes row, {
    _is.ColumnSelections<ElogProblemTypesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogProblemTypes>(
      row,
      columns: columns?.call(ElogProblemTypes.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogProblemTypes] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogProblemTypes?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogProblemTypesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogProblemTypes>(
      id,
      columnValues: columnValues(ElogProblemTypes.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogProblemTypes]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogProblemTypes>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogProblemTypesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogProblemTypesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogProblemTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogProblemTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogProblemTypes>(
      columnValues: columnValues(ElogProblemTypes.t.updateTable),
      where: where(ElogProblemTypes.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogProblemTypes.t),
      orderByList: orderByList?.call(ElogProblemTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogProblemTypes]s in the list and returns the deleted rows.
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
  Future<List<ElogProblemTypes>> delete(
    _is.DatabaseSession session,
    List<ElogProblemTypes> rows, {
    _is.OrderByBuilder<ElogProblemTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogProblemTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogProblemTypes>(
      rows,
      orderBy: orderBy?.call(ElogProblemTypes.t),
      orderByList: orderByList?.call(ElogProblemTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogProblemTypes].
  Future<ElogProblemTypes> deleteRow(
    _is.DatabaseSession session,
    ElogProblemTypes row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogProblemTypes>(
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
  Future<List<ElogProblemTypes>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogProblemTypesTable> where,
    _is.OrderByBuilder<ElogProblemTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogProblemTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogProblemTypes>(
      where: where(ElogProblemTypes.t),
      orderBy: orderBy?.call(ElogProblemTypes.t),
      orderByList: orderByList?.call(ElogProblemTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogProblemTypesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogProblemTypes>(
      where: where?.call(ElogProblemTypes.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogProblemTypes] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogProblemTypesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogProblemTypes>(
      where: where(ElogProblemTypes.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
