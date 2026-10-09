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

abstract class ElogCleaningTypes
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogCleaningTypes._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.category,
    this.estimatedDurationMinutes,
    this.holdTimeMinutes,
    required this.tierRank,
    this.validityMinutes,
    this.checklistTemplateId,
    this.logTemplateId,
    this.appliesToAreas,
    this.appliesToEquipment,
    this.instructions,
    this.sopReference,
    this.color,
    this.icon,
    this.isActive,
  });

  factory ElogCleaningTypes({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String category,
    int? estimatedDurationMinutes,
    int? holdTimeMinutes,
    required int tierRank,
    int? validityMinutes,
    _is.UuidValue? checklistTemplateId,
    _is.UuidValue? logTemplateId,
    bool? appliesToAreas,
    bool? appliesToEquipment,
    String? instructions,
    String? sopReference,
    String? color,
    String? icon,
    bool? isActive,
  }) = _ElogCleaningTypesImpl;

  factory ElogCleaningTypes.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogCleaningTypes(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      category: jsonSerialization['category'] as String,
      estimatedDurationMinutes:
          jsonSerialization['estimatedDurationMinutes'] as int?,
      holdTimeMinutes: jsonSerialization['holdTimeMinutes'] as int?,
      tierRank: jsonSerialization['tierRank'] as int,
      validityMinutes: jsonSerialization['validityMinutes'] as int?,
      checklistTemplateId: jsonSerialization['checklistTemplateId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['checklistTemplateId'],
            ),
      logTemplateId: jsonSerialization['logTemplateId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['logTemplateId'],
            ),
      appliesToAreas: jsonSerialization['appliesToAreas'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['appliesToAreas']),
      appliesToEquipment: jsonSerialization['appliesToEquipment'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(
              jsonSerialization['appliesToEquipment'],
            ),
      instructions: jsonSerialization['instructions'] as String?,
      sopReference: jsonSerialization['sopReference'] as String?,
      color: jsonSerialization['color'] as String?,
      icon: jsonSerialization['icon'] as String?,
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogCleaningTypesTable();

  static const db = ElogCleaningTypesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String category;

  int? estimatedDurationMinutes;

  int? holdTimeMinutes;

  int tierRank;

  int? validityMinutes;

  _is.UuidValue? checklistTemplateId;

  _is.UuidValue? logTemplateId;

  bool? appliesToAreas;

  bool? appliesToEquipment;

  String? instructions;

  String? sopReference;

  String? color;

  String? icon;

  bool? isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogCleaningTypes]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogCleaningTypes copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? category,
    int? estimatedDurationMinutes,
    int? holdTimeMinutes,
    int? tierRank,
    int? validityMinutes,
    _is.UuidValue? checklistTemplateId,
    _is.UuidValue? logTemplateId,
    bool? appliesToAreas,
    bool? appliesToEquipment,
    String? instructions,
    String? sopReference,
    String? color,
    String? icon,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogCleaningTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'category': category,
      if (estimatedDurationMinutes != null)
        'estimatedDurationMinutes': estimatedDurationMinutes,
      if (holdTimeMinutes != null) 'holdTimeMinutes': holdTimeMinutes,
      'tierRank': tierRank,
      if (validityMinutes != null) 'validityMinutes': validityMinutes,
      if (checklistTemplateId != null)
        'checklistTemplateId': checklistTemplateId?.toJson(),
      if (logTemplateId != null) 'logTemplateId': logTemplateId?.toJson(),
      if (appliesToAreas != null) 'appliesToAreas': appliesToAreas,
      if (appliesToEquipment != null) 'appliesToEquipment': appliesToEquipment,
      if (instructions != null) 'instructions': instructions,
      if (sopReference != null) 'sopReference': sopReference,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogCleaningTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'category': category,
      if (estimatedDurationMinutes != null)
        'estimatedDurationMinutes': estimatedDurationMinutes,
      if (holdTimeMinutes != null) 'holdTimeMinutes': holdTimeMinutes,
      'tierRank': tierRank,
      if (validityMinutes != null) 'validityMinutes': validityMinutes,
      if (checklistTemplateId != null)
        'checklistTemplateId': checklistTemplateId?.toJson(),
      if (logTemplateId != null) 'logTemplateId': logTemplateId?.toJson(),
      if (appliesToAreas != null) 'appliesToAreas': appliesToAreas,
      if (appliesToEquipment != null) 'appliesToEquipment': appliesToEquipment,
      if (instructions != null) 'instructions': instructions,
      if (sopReference != null) 'sopReference': sopReference,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (isActive != null) 'isActive': isActive,
    };
  }

  static ElogCleaningTypesInclude include() {
    return ElogCleaningTypesInclude._();
  }

  static ElogCleaningTypesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogCleaningTypesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogCleaningTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogCleaningTypesTable>? orderByList,
    ElogCleaningTypesInclude? include,
  }) {
    return ElogCleaningTypesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogCleaningTypes.t),
      orderByList: orderByList?.call(ElogCleaningTypes.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogCleaningTypesImpl extends ElogCleaningTypes {
  _ElogCleaningTypesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String category,
    int? estimatedDurationMinutes,
    int? holdTimeMinutes,
    required int tierRank,
    int? validityMinutes,
    _is.UuidValue? checklistTemplateId,
    _is.UuidValue? logTemplateId,
    bool? appliesToAreas,
    bool? appliesToEquipment,
    String? instructions,
    String? sopReference,
    String? color,
    String? icon,
    bool? isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         category: category,
         estimatedDurationMinutes: estimatedDurationMinutes,
         holdTimeMinutes: holdTimeMinutes,
         tierRank: tierRank,
         validityMinutes: validityMinutes,
         checklistTemplateId: checklistTemplateId,
         logTemplateId: logTemplateId,
         appliesToAreas: appliesToAreas,
         appliesToEquipment: appliesToEquipment,
         instructions: instructions,
         sopReference: sopReference,
         color: color,
         icon: icon,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogCleaningTypes]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogCleaningTypes copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? category,
    Object? estimatedDurationMinutes = _Undefined,
    Object? holdTimeMinutes = _Undefined,
    int? tierRank,
    Object? validityMinutes = _Undefined,
    Object? checklistTemplateId = _Undefined,
    Object? logTemplateId = _Undefined,
    Object? appliesToAreas = _Undefined,
    Object? appliesToEquipment = _Undefined,
    Object? instructions = _Undefined,
    Object? sopReference = _Undefined,
    Object? color = _Undefined,
    Object? icon = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return ElogCleaningTypes(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      category: category ?? this.category,
      estimatedDurationMinutes: estimatedDurationMinutes is int?
          ? estimatedDurationMinutes
          : this.estimatedDurationMinutes,
      holdTimeMinutes: holdTimeMinutes is int?
          ? holdTimeMinutes
          : this.holdTimeMinutes,
      tierRank: tierRank ?? this.tierRank,
      validityMinutes: validityMinutes is int?
          ? validityMinutes
          : this.validityMinutes,
      checklistTemplateId: checklistTemplateId is _is.UuidValue?
          ? checklistTemplateId
          : this.checklistTemplateId,
      logTemplateId: logTemplateId is _is.UuidValue?
          ? logTemplateId
          : this.logTemplateId,
      appliesToAreas: appliesToAreas is bool?
          ? appliesToAreas
          : this.appliesToAreas,
      appliesToEquipment: appliesToEquipment is bool?
          ? appliesToEquipment
          : this.appliesToEquipment,
      instructions: instructions is String? ? instructions : this.instructions,
      sopReference: sopReference is String? ? sopReference : this.sopReference,
      color: color is String? ? color : this.color,
      icon: icon is String? ? icon : this.icon,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}

class ElogCleaningTypesUpdateTable
    extends _is.UpdateTable<ElogCleaningTypesTable> {
  ElogCleaningTypesUpdateTable(super.table);

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

  _is.ColumnValue<int, int> estimatedDurationMinutes(int? value) =>
      _is.ColumnValue(
        table.estimatedDurationMinutes,
        value,
      );

  _is.ColumnValue<int, int> holdTimeMinutes(int? value) => _is.ColumnValue(
    table.holdTimeMinutes,
    value,
  );

  _is.ColumnValue<int, int> tierRank(int value) => _is.ColumnValue(
    table.tierRank,
    value,
  );

  _is.ColumnValue<int, int> validityMinutes(int? value) => _is.ColumnValue(
    table.validityMinutes,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> checklistTemplateId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.checklistTemplateId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> logTemplateId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.logTemplateId,
    value,
  );

  _is.ColumnValue<bool, bool> appliesToAreas(bool? value) => _is.ColumnValue(
    table.appliesToAreas,
    value,
  );

  _is.ColumnValue<bool, bool> appliesToEquipment(bool? value) =>
      _is.ColumnValue(
        table.appliesToEquipment,
        value,
      );

  _is.ColumnValue<String, String> instructions(String? value) =>
      _is.ColumnValue(
        table.instructions,
        value,
      );

  _is.ColumnValue<String, String> sopReference(String? value) =>
      _is.ColumnValue(
        table.sopReference,
        value,
      );

  _is.ColumnValue<String, String> color(String? value) => _is.ColumnValue(
    table.color,
    value,
  );

  _is.ColumnValue<String, String> icon(String? value) => _is.ColumnValue(
    table.icon,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogCleaningTypesTable extends _is.Table<_is.UuidValue?> {
  ElogCleaningTypesTable({super.tableRelation})
    : super(tableName: 'elog_cleaning_types') {
    updateTable = ElogCleaningTypesUpdateTable(this);
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
    estimatedDurationMinutes = _is.ColumnInt(
      'estimatedDurationMinutes',
      this,
    );
    holdTimeMinutes = _is.ColumnInt(
      'holdTimeMinutes',
      this,
    );
    tierRank = _is.ColumnInt(
      'tierRank',
      this,
    );
    validityMinutes = _is.ColumnInt(
      'validityMinutes',
      this,
    );
    checklistTemplateId = _is.ColumnUuid(
      'checklistTemplateId',
      this,
    );
    logTemplateId = _is.ColumnUuid(
      'logTemplateId',
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
    instructions = _is.ColumnString(
      'instructions',
      this,
    );
    sopReference = _is.ColumnString(
      'sopReference',
      this,
    );
    color = _is.ColumnString(
      'color',
      this,
    );
    icon = _is.ColumnString(
      'icon',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogCleaningTypesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString category;

  late final _is.ColumnInt estimatedDurationMinutes;

  late final _is.ColumnInt holdTimeMinutes;

  late final _is.ColumnInt tierRank;

  late final _is.ColumnInt validityMinutes;

  late final _is.ColumnUuid checklistTemplateId;

  late final _is.ColumnUuid logTemplateId;

  late final _is.ColumnBool appliesToAreas;

  late final _is.ColumnBool appliesToEquipment;

  late final _is.ColumnString instructions;

  late final _is.ColumnString sopReference;

  late final _is.ColumnString color;

  late final _is.ColumnString icon;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    category,
    estimatedDurationMinutes,
    holdTimeMinutes,
    tierRank,
    validityMinutes,
    checklistTemplateId,
    logTemplateId,
    appliesToAreas,
    appliesToEquipment,
    instructions,
    sopReference,
    color,
    icon,
    isActive,
  ];
}

class ElogCleaningTypesInclude extends _is.IncludeObject {
  ElogCleaningTypesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogCleaningTypes.t;
}

class ElogCleaningTypesIncludeList extends _is.IncludeList {
  ElogCleaningTypesIncludeList._({
    _is.WhereExpressionBuilder<ElogCleaningTypesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogCleaningTypes.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogCleaningTypes.t;
}

class ElogCleaningTypesRepository {
  const ElogCleaningTypesRepository._();

  /// Returns a list of [ElogCleaningTypes]s matching the given query parameters.
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
  Future<List<ElogCleaningTypes>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogCleaningTypesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogCleaningTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogCleaningTypesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogCleaningTypes>(
      where: where?.call(ElogCleaningTypes.t),
      orderBy: orderBy?.call(ElogCleaningTypes.t),
      orderByList: orderByList?.call(ElogCleaningTypes.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogCleaningTypes] matching the given query parameters.
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
  Future<ElogCleaningTypes?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogCleaningTypesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogCleaningTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogCleaningTypesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogCleaningTypes>(
      where: where?.call(ElogCleaningTypes.t),
      orderBy: orderBy?.call(ElogCleaningTypes.t),
      orderByList: orderByList?.call(ElogCleaningTypes.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogCleaningTypes] by its [id] or null if no such row exists.
  Future<ElogCleaningTypes?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogCleaningTypes>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogCleaningTypes]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogCleaningTypes]s will have their `id` fields set.
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
  Future<List<ElogCleaningTypes>> insert(
    _is.DatabaseSession session,
    List<ElogCleaningTypes> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogCleaningTypes>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogCleaningTypes] and returns the inserted row.
  ///
  /// The returned [ElogCleaningTypes] will have its `id` field set.
  Future<ElogCleaningTypes> insertRow(
    _is.DatabaseSession session,
    ElogCleaningTypes row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogCleaningTypes>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogCleaningTypes]s in the list and returns the resulting rows.
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
  /// The returned [ElogCleaningTypes]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogCleaningTypes>> upsert(
    _is.DatabaseSession session,
    List<ElogCleaningTypes> rows, {
    required _is.ColumnSelections<ElogCleaningTypesTable> conflictColumns,
    _is.ColumnSelections<ElogCleaningTypesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogCleaningTypesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogCleaningTypes>(
      rows,
      conflictColumns: conflictColumns(ElogCleaningTypes.t),
      updateColumns: updateColumns?.call(ElogCleaningTypes.t),
      updateWhere: updateWhere?.call(ElogCleaningTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogCleaningTypes] and returns the resulting row.
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
  /// The returned [ElogCleaningTypes] will have its `id` field set.
  Future<ElogCleaningTypes?> upsertRow(
    _is.DatabaseSession session,
    ElogCleaningTypes row, {
    required _is.ColumnSelections<ElogCleaningTypesTable> conflictColumns,
    _is.ColumnSelections<ElogCleaningTypesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogCleaningTypesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogCleaningTypes>(
      row,
      conflictColumns: conflictColumns(ElogCleaningTypes.t),
      updateColumns: updateColumns?.call(ElogCleaningTypes.t),
      updateWhere: updateWhere?.call(ElogCleaningTypes.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogCleaningTypes]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogCleaningTypes>> update(
    _is.DatabaseSession session,
    List<ElogCleaningTypes> rows, {
    _is.ColumnSelections<ElogCleaningTypesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogCleaningTypes>(
      rows,
      columns: columns?.call(ElogCleaningTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogCleaningTypes]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogCleaningTypes> updateRow(
    _is.DatabaseSession session,
    ElogCleaningTypes row, {
    _is.ColumnSelections<ElogCleaningTypesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogCleaningTypes>(
      row,
      columns: columns?.call(ElogCleaningTypes.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogCleaningTypes] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogCleaningTypes?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogCleaningTypesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogCleaningTypes>(
      id,
      columnValues: columnValues(ElogCleaningTypes.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogCleaningTypes]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogCleaningTypes>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogCleaningTypesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogCleaningTypesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogCleaningTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogCleaningTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogCleaningTypes>(
      columnValues: columnValues(ElogCleaningTypes.t.updateTable),
      where: where(ElogCleaningTypes.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogCleaningTypes.t),
      orderByList: orderByList?.call(ElogCleaningTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogCleaningTypes]s in the list and returns the deleted rows.
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
  Future<List<ElogCleaningTypes>> delete(
    _is.DatabaseSession session,
    List<ElogCleaningTypes> rows, {
    _is.OrderByBuilder<ElogCleaningTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogCleaningTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogCleaningTypes>(
      rows,
      orderBy: orderBy?.call(ElogCleaningTypes.t),
      orderByList: orderByList?.call(ElogCleaningTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogCleaningTypes].
  Future<ElogCleaningTypes> deleteRow(
    _is.DatabaseSession session,
    ElogCleaningTypes row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogCleaningTypes>(
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
  Future<List<ElogCleaningTypes>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogCleaningTypesTable> where,
    _is.OrderByBuilder<ElogCleaningTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogCleaningTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogCleaningTypes>(
      where: where(ElogCleaningTypes.t),
      orderBy: orderBy?.call(ElogCleaningTypes.t),
      orderByList: orderByList?.call(ElogCleaningTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogCleaningTypesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogCleaningTypes>(
      where: where?.call(ElogCleaningTypes.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogCleaningTypes] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogCleaningTypesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogCleaningTypes>(
      where: where(ElogCleaningTypes.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
