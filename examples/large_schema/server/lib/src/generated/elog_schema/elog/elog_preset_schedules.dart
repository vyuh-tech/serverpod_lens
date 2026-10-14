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
import 'package:serverpod_lens_server/src/generated/protocol.dart' as _ioh8es0p;

abstract class ElogPresetSchedules
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPresetSchedules._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.scheduleConfig,
    this.effectiveFrom,
    this.effectiveUntil,
    this.toleranceMinutes,
    this.escalationMinutes,
    this.resourceType,
    this.resourceIds,
    this.isActive,
    this.priority,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogPresetSchedules({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String scheduleConfig,
    DateTime? effectiveFrom,
    DateTime? effectiveUntil,
    int? toleranceMinutes,
    int? escalationMinutes,
    String? resourceType,
    List<_is.UuidValue>? resourceIds,
    bool? isActive,
    int? priority,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _ElogPresetSchedulesImpl;

  factory ElogPresetSchedules.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPresetSchedules(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      scheduleConfig: jsonSerialization['scheduleConfig'] as String,
      effectiveFrom: jsonSerialization['effectiveFrom'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['effectiveFrom'],
            ),
      effectiveUntil: jsonSerialization['effectiveUntil'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['effectiveUntil'],
            ),
      toleranceMinutes: jsonSerialization['toleranceMinutes'] as int?,
      escalationMinutes: jsonSerialization['escalationMinutes'] as int?,
      resourceType: jsonSerialization['resourceType'] as String?,
      resourceIds: jsonSerialization['resourceIds'] == null
          ? null
          : _ioh8es0p.Protocol().deserialize<List<_is.UuidValue>>(
              jsonSerialization['resourceIds'],
            ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      priority: jsonSerialization['priority'] as int?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['createdBy']),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['updatedBy']),
    );
  }

  static final t = ElogPresetSchedulesTable();

  static const db = ElogPresetSchedulesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String scheduleConfig;

  DateTime? effectiveFrom;

  DateTime? effectiveUntil;

  int? toleranceMinutes;

  int? escalationMinutes;

  String? resourceType;

  List<_is.UuidValue>? resourceIds;

  bool? isActive;

  int? priority;

  DateTime? createdAt;

  DateTime? updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPresetSchedules]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPresetSchedules copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? scheduleConfig,
    DateTime? effectiveFrom,
    DateTime? effectiveUntil,
    int? toleranceMinutes,
    int? escalationMinutes,
    String? resourceType,
    List<_is.UuidValue>? resourceIds,
    bool? isActive,
    int? priority,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetSchedules',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'scheduleConfig': scheduleConfig,
      if (effectiveFrom != null) 'effectiveFrom': effectiveFrom?.toJson(),
      if (effectiveUntil != null) 'effectiveUntil': effectiveUntil?.toJson(),
      if (toleranceMinutes != null) 'toleranceMinutes': toleranceMinutes,
      if (escalationMinutes != null) 'escalationMinutes': escalationMinutes,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceIds != null)
        'resourceIds': resourceIds?.toJson(valueToJson: (v) => v.toJson()),
      if (isActive != null) 'isActive': isActive,
      if (priority != null) 'priority': priority,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetSchedules',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'scheduleConfig': scheduleConfig,
      if (effectiveFrom != null) 'effectiveFrom': effectiveFrom?.toJson(),
      if (effectiveUntil != null) 'effectiveUntil': effectiveUntil?.toJson(),
      if (toleranceMinutes != null) 'toleranceMinutes': toleranceMinutes,
      if (escalationMinutes != null) 'escalationMinutes': escalationMinutes,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceIds != null)
        'resourceIds': resourceIds?.toJson(valueToJson: (v) => v.toJson()),
      if (isActive != null) 'isActive': isActive,
      if (priority != null) 'priority': priority,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static ElogPresetSchedulesInclude include() {
    return ElogPresetSchedulesInclude._();
  }

  static ElogPresetSchedulesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPresetSchedulesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetSchedulesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetSchedulesTable>? orderByList,
    ElogPresetSchedulesInclude? include,
  }) {
    return ElogPresetSchedulesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetSchedules.t),
      orderByList: orderByList?.call(ElogPresetSchedules.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetSchedulesImpl extends ElogPresetSchedules {
  _ElogPresetSchedulesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String scheduleConfig,
    DateTime? effectiveFrom,
    DateTime? effectiveUntil,
    int? toleranceMinutes,
    int? escalationMinutes,
    String? resourceType,
    List<_is.UuidValue>? resourceIds,
    bool? isActive,
    int? priority,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         scheduleConfig: scheduleConfig,
         effectiveFrom: effectiveFrom,
         effectiveUntil: effectiveUntil,
         toleranceMinutes: toleranceMinutes,
         escalationMinutes: escalationMinutes,
         resourceType: resourceType,
         resourceIds: resourceIds,
         isActive: isActive,
         priority: priority,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogPresetSchedules]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPresetSchedules copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? scheduleConfig,
    Object? effectiveFrom = _Undefined,
    Object? effectiveUntil = _Undefined,
    Object? toleranceMinutes = _Undefined,
    Object? escalationMinutes = _Undefined,
    Object? resourceType = _Undefined,
    Object? resourceIds = _Undefined,
    Object? isActive = _Undefined,
    Object? priority = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogPresetSchedules(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      scheduleConfig: scheduleConfig ?? this.scheduleConfig,
      effectiveFrom: effectiveFrom is DateTime?
          ? effectiveFrom
          : this.effectiveFrom,
      effectiveUntil: effectiveUntil is DateTime?
          ? effectiveUntil
          : this.effectiveUntil,
      toleranceMinutes: toleranceMinutes is int?
          ? toleranceMinutes
          : this.toleranceMinutes,
      escalationMinutes: escalationMinutes is int?
          ? escalationMinutes
          : this.escalationMinutes,
      resourceType: resourceType is String? ? resourceType : this.resourceType,
      resourceIds: resourceIds is List<_is.UuidValue>?
          ? resourceIds
          : this.resourceIds?.map((e0) => e0).toList(),
      isActive: isActive is bool? ? isActive : this.isActive,
      priority: priority is int? ? priority : this.priority,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class ElogPresetSchedulesUpdateTable
    extends _is.UpdateTable<ElogPresetSchedulesTable> {
  ElogPresetSchedulesUpdateTable(super.table);

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

  _is.ColumnValue<String, String> scheduleConfig(String value) =>
      _is.ColumnValue(
        table.scheduleConfig,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> effectiveFrom(DateTime? value) =>
      _is.ColumnValue(
        table.effectiveFrom,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> effectiveUntil(DateTime? value) =>
      _is.ColumnValue(
        table.effectiveUntil,
        value,
      );

  _is.ColumnValue<int, int> toleranceMinutes(int? value) => _is.ColumnValue(
    table.toleranceMinutes,
    value,
  );

  _is.ColumnValue<int, int> escalationMinutes(int? value) => _is.ColumnValue(
    table.escalationMinutes,
    value,
  );

  _is.ColumnValue<String, String> resourceType(String? value) =>
      _is.ColumnValue(
        table.resourceType,
        value,
      );

  _is.ColumnValue<List<_is.UuidValue>, List<_is.UuidValue>> resourceIds(
    List<_is.UuidValue>? value,
  ) => _is.ColumnValue(
    table.resourceIds,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<int, int> priority(int? value) => _is.ColumnValue(
    table.priority,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime? value) =>
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

class ElogPresetSchedulesTable extends _is.Table<_is.UuidValue?> {
  ElogPresetSchedulesTable({super.tableRelation})
    : super(tableName: 'elog_preset_schedules') {
    updateTable = ElogPresetSchedulesUpdateTable(this);
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
    scheduleConfig = _is.ColumnString(
      'scheduleConfig',
      this,
    );
    effectiveFrom = _is.ColumnDateTime(
      'effectiveFrom',
      this,
    );
    effectiveUntil = _is.ColumnDateTime(
      'effectiveUntil',
      this,
    );
    toleranceMinutes = _is.ColumnInt(
      'toleranceMinutes',
      this,
    );
    escalationMinutes = _is.ColumnInt(
      'escalationMinutes',
      this,
    );
    resourceType = _is.ColumnString(
      'resourceType',
      this,
    );
    resourceIds = _is.ColumnSerializable<List<_is.UuidValue>>(
      'resourceIds',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
    priority = _is.ColumnInt(
      'priority',
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

  late final ElogPresetSchedulesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString scheduleConfig;

  late final _is.ColumnDateTime effectiveFrom;

  late final _is.ColumnDateTime effectiveUntil;

  late final _is.ColumnInt toleranceMinutes;

  late final _is.ColumnInt escalationMinutes;

  late final _is.ColumnString resourceType;

  late final _is.ColumnSerializable<List<_is.UuidValue>> resourceIds;

  late final _is.ColumnBool isActive;

  late final _is.ColumnInt priority;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    scheduleConfig,
    effectiveFrom,
    effectiveUntil,
    toleranceMinutes,
    escalationMinutes,
    resourceType,
    resourceIds,
    isActive,
    priority,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class ElogPresetSchedulesInclude extends _is.IncludeObject {
  ElogPresetSchedulesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetSchedules.t;
}

class ElogPresetSchedulesIncludeList extends _is.IncludeList {
  ElogPresetSchedulesIncludeList._({
    _is.WhereExpressionBuilder<ElogPresetSchedulesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPresetSchedules.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPresetSchedules.t;
}

class ElogPresetSchedulesRepository {
  const ElogPresetSchedulesRepository._();

  /// Returns a list of [ElogPresetSchedules]s matching the given query parameters.
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
  Future<List<ElogPresetSchedules>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetSchedulesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetSchedulesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetSchedulesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPresetSchedules>(
      where: where?.call(ElogPresetSchedules.t),
      orderBy: orderBy?.call(ElogPresetSchedules.t),
      orderByList: orderByList?.call(ElogPresetSchedules.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPresetSchedules] matching the given query parameters.
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
  Future<ElogPresetSchedules?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetSchedulesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPresetSchedulesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetSchedulesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPresetSchedules>(
      where: where?.call(ElogPresetSchedules.t),
      orderBy: orderBy?.call(ElogPresetSchedules.t),
      orderByList: orderByList?.call(ElogPresetSchedules.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPresetSchedules] by its [id] or null if no such row exists.
  Future<ElogPresetSchedules?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPresetSchedules>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPresetSchedules]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPresetSchedules]s will have their `id` fields set.
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
  Future<List<ElogPresetSchedules>> insert(
    _is.DatabaseSession session,
    List<ElogPresetSchedules> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPresetSchedules>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPresetSchedules] and returns the inserted row.
  ///
  /// The returned [ElogPresetSchedules] will have its `id` field set.
  Future<ElogPresetSchedules> insertRow(
    _is.DatabaseSession session,
    ElogPresetSchedules row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPresetSchedules>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPresetSchedules]s in the list and returns the resulting rows.
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
  /// The returned [ElogPresetSchedules]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetSchedules>> upsert(
    _is.DatabaseSession session,
    List<ElogPresetSchedules> rows, {
    required _is.ColumnSelections<ElogPresetSchedulesTable> conflictColumns,
    _is.ColumnSelections<ElogPresetSchedulesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetSchedulesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPresetSchedules>(
      rows,
      conflictColumns: conflictColumns(ElogPresetSchedules.t),
      updateColumns: updateColumns?.call(ElogPresetSchedules.t),
      updateWhere: updateWhere?.call(ElogPresetSchedules.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPresetSchedules] and returns the resulting row.
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
  /// The returned [ElogPresetSchedules] will have its `id` field set.
  Future<ElogPresetSchedules?> upsertRow(
    _is.DatabaseSession session,
    ElogPresetSchedules row, {
    required _is.ColumnSelections<ElogPresetSchedulesTable> conflictColumns,
    _is.ColumnSelections<ElogPresetSchedulesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPresetSchedulesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPresetSchedules>(
      row,
      conflictColumns: conflictColumns(ElogPresetSchedules.t),
      updateColumns: updateColumns?.call(ElogPresetSchedules.t),
      updateWhere: updateWhere?.call(ElogPresetSchedules.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetSchedules]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetSchedules>> update(
    _is.DatabaseSession session,
    List<ElogPresetSchedules> rows, {
    _is.ColumnSelections<ElogPresetSchedulesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPresetSchedules>(
      rows,
      columns: columns?.call(ElogPresetSchedules.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPresetSchedules]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPresetSchedules> updateRow(
    _is.DatabaseSession session,
    ElogPresetSchedules row, {
    _is.ColumnSelections<ElogPresetSchedulesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPresetSchedules>(
      row,
      columns: columns?.call(ElogPresetSchedules.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPresetSchedules] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPresetSchedules?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPresetSchedulesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPresetSchedules>(
      id,
      columnValues: columnValues(ElogPresetSchedules.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPresetSchedules]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPresetSchedules>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPresetSchedulesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPresetSchedulesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPresetSchedulesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetSchedulesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPresetSchedules>(
      columnValues: columnValues(ElogPresetSchedules.t.updateTable),
      where: where(ElogPresetSchedules.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPresetSchedules.t),
      orderByList: orderByList?.call(ElogPresetSchedules.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPresetSchedules]s in the list and returns the deleted rows.
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
  Future<List<ElogPresetSchedules>> delete(
    _is.DatabaseSession session,
    List<ElogPresetSchedules> rows, {
    _is.OrderByBuilder<ElogPresetSchedulesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetSchedulesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPresetSchedules>(
      rows,
      orderBy: orderBy?.call(ElogPresetSchedules.t),
      orderByList: orderByList?.call(ElogPresetSchedules.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPresetSchedules].
  Future<ElogPresetSchedules> deleteRow(
    _is.DatabaseSession session,
    ElogPresetSchedules row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPresetSchedules>(
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
  Future<List<ElogPresetSchedules>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetSchedulesTable> where,
    _is.OrderByBuilder<ElogPresetSchedulesTable>? orderBy,
    _is.OrderByListBuilder<ElogPresetSchedulesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPresetSchedules>(
      where: where(ElogPresetSchedules.t),
      orderBy: orderBy?.call(ElogPresetSchedules.t),
      orderByList: orderByList?.call(ElogPresetSchedules.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPresetSchedulesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPresetSchedules>(
      where: where?.call(ElogPresetSchedules.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPresetSchedules] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPresetSchedulesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPresetSchedules>(
      where: where(ElogPresetSchedules.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
