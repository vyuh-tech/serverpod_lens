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

abstract class ElogResourceStates
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogResourceStates._({
    this.id,
    required this.resourceType,
    required this.resourceId,
    required this.states,
    required this.totalUsageCount,
    required this.usagesSinceLastCleaning,
    required this.usagesSinceLastInspection,
    required this.usagesSinceLastMaintenance,
    this.lastEventAt,
    required this.isBlocked,
    this.blockingReason,
    required this.versionNumber,
    required this.status,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogResourceStates({
    _is.UuidValue? id,
    required String resourceType,
    required _is.UuidValue resourceId,
    required String states,
    required int totalUsageCount,
    required int usagesSinceLastCleaning,
    required int usagesSinceLastInspection,
    required int usagesSinceLastMaintenance,
    DateTime? lastEventAt,
    required bool isBlocked,
    String? blockingReason,
    required int versionNumber,
    required String status,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _ElogResourceStatesImpl;

  factory ElogResourceStates.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogResourceStates(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      resourceType: jsonSerialization['resourceType'] as String,
      resourceId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['resourceId'],
      ),
      states: jsonSerialization['states'] as String,
      totalUsageCount: jsonSerialization['totalUsageCount'] as int,
      usagesSinceLastCleaning:
          jsonSerialization['usagesSinceLastCleaning'] as int,
      usagesSinceLastInspection:
          jsonSerialization['usagesSinceLastInspection'] as int,
      usagesSinceLastMaintenance:
          jsonSerialization['usagesSinceLastMaintenance'] as int,
      lastEventAt: jsonSerialization['lastEventAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastEventAt'],
            ),
      isBlocked: _is.BoolJsonExtension.fromJson(jsonSerialization['isBlocked']),
      blockingReason: jsonSerialization['blockingReason'] as String?,
      versionNumber: jsonSerialization['versionNumber'] as int,
      status: jsonSerialization['status'] as String,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
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

  static final t = ElogResourceStatesTable();

  static const db = ElogResourceStatesRepository._();

  @override
  _is.UuidValue? id;

  String resourceType;

  _is.UuidValue resourceId;

  String states;

  int totalUsageCount;

  int usagesSinceLastCleaning;

  int usagesSinceLastInspection;

  int usagesSinceLastMaintenance;

  DateTime? lastEventAt;

  bool isBlocked;

  String? blockingReason;

  int versionNumber;

  String status;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogResourceStates]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogResourceStates copyWith({
    _is.UuidValue? id,
    String? resourceType,
    _is.UuidValue? resourceId,
    String? states,
    int? totalUsageCount,
    int? usagesSinceLastCleaning,
    int? usagesSinceLastInspection,
    int? usagesSinceLastMaintenance,
    DateTime? lastEventAt,
    bool? isBlocked,
    String? blockingReason,
    int? versionNumber,
    String? status,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogResourceStates',
      if (id != null) 'id': id?.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      'states': states,
      'totalUsageCount': totalUsageCount,
      'usagesSinceLastCleaning': usagesSinceLastCleaning,
      'usagesSinceLastInspection': usagesSinceLastInspection,
      'usagesSinceLastMaintenance': usagesSinceLastMaintenance,
      if (lastEventAt != null) 'lastEventAt': lastEventAt?.toJson(),
      'isBlocked': isBlocked,
      if (blockingReason != null) 'blockingReason': blockingReason,
      'versionNumber': versionNumber,
      'status': status,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogResourceStates',
      if (id != null) 'id': id?.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      'states': states,
      'totalUsageCount': totalUsageCount,
      'usagesSinceLastCleaning': usagesSinceLastCleaning,
      'usagesSinceLastInspection': usagesSinceLastInspection,
      'usagesSinceLastMaintenance': usagesSinceLastMaintenance,
      if (lastEventAt != null) 'lastEventAt': lastEventAt?.toJson(),
      'isBlocked': isBlocked,
      if (blockingReason != null) 'blockingReason': blockingReason,
      'versionNumber': versionNumber,
      'status': status,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static ElogResourceStatesInclude include() {
    return ElogResourceStatesInclude._();
  }

  static ElogResourceStatesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogResourceStatesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceStatesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceStatesTable>? orderByList,
    ElogResourceStatesInclude? include,
  }) {
    return ElogResourceStatesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogResourceStates.t),
      orderByList: orderByList?.call(ElogResourceStates.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogResourceStatesImpl extends ElogResourceStates {
  _ElogResourceStatesImpl({
    _is.UuidValue? id,
    required String resourceType,
    required _is.UuidValue resourceId,
    required String states,
    required int totalUsageCount,
    required int usagesSinceLastCleaning,
    required int usagesSinceLastInspection,
    required int usagesSinceLastMaintenance,
    DateTime? lastEventAt,
    required bool isBlocked,
    String? blockingReason,
    required int versionNumber,
    required String status,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) : super._(
         id: id,
         resourceType: resourceType,
         resourceId: resourceId,
         states: states,
         totalUsageCount: totalUsageCount,
         usagesSinceLastCleaning: usagesSinceLastCleaning,
         usagesSinceLastInspection: usagesSinceLastInspection,
         usagesSinceLastMaintenance: usagesSinceLastMaintenance,
         lastEventAt: lastEventAt,
         isBlocked: isBlocked,
         blockingReason: blockingReason,
         versionNumber: versionNumber,
         status: status,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogResourceStates]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogResourceStates copyWith({
    Object? id = _Undefined,
    String? resourceType,
    _is.UuidValue? resourceId,
    String? states,
    int? totalUsageCount,
    int? usagesSinceLastCleaning,
    int? usagesSinceLastInspection,
    int? usagesSinceLastMaintenance,
    Object? lastEventAt = _Undefined,
    bool? isBlocked,
    Object? blockingReason = _Undefined,
    int? versionNumber,
    String? status,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogResourceStates(
      id: id is _is.UuidValue? ? id : this.id,
      resourceType: resourceType ?? this.resourceType,
      resourceId: resourceId ?? this.resourceId,
      states: states ?? this.states,
      totalUsageCount: totalUsageCount ?? this.totalUsageCount,
      usagesSinceLastCleaning:
          usagesSinceLastCleaning ?? this.usagesSinceLastCleaning,
      usagesSinceLastInspection:
          usagesSinceLastInspection ?? this.usagesSinceLastInspection,
      usagesSinceLastMaintenance:
          usagesSinceLastMaintenance ?? this.usagesSinceLastMaintenance,
      lastEventAt: lastEventAt is DateTime? ? lastEventAt : this.lastEventAt,
      isBlocked: isBlocked ?? this.isBlocked,
      blockingReason: blockingReason is String?
          ? blockingReason
          : this.blockingReason,
      versionNumber: versionNumber ?? this.versionNumber,
      status: status ?? this.status,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class ElogResourceStatesUpdateTable
    extends _is.UpdateTable<ElogResourceStatesTable> {
  ElogResourceStatesUpdateTable(super.table);

  _is.ColumnValue<String, String> resourceType(String value) => _is.ColumnValue(
    table.resourceType,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> resourceId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.resourceId,
    value,
  );

  _is.ColumnValue<String, String> states(String value) => _is.ColumnValue(
    table.states,
    value,
  );

  _is.ColumnValue<int, int> totalUsageCount(int value) => _is.ColumnValue(
    table.totalUsageCount,
    value,
  );

  _is.ColumnValue<int, int> usagesSinceLastCleaning(int value) =>
      _is.ColumnValue(
        table.usagesSinceLastCleaning,
        value,
      );

  _is.ColumnValue<int, int> usagesSinceLastInspection(int value) =>
      _is.ColumnValue(
        table.usagesSinceLastInspection,
        value,
      );

  _is.ColumnValue<int, int> usagesSinceLastMaintenance(int value) =>
      _is.ColumnValue(
        table.usagesSinceLastMaintenance,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> lastEventAt(DateTime? value) =>
      _is.ColumnValue(
        table.lastEventAt,
        value,
      );

  _is.ColumnValue<bool, bool> isBlocked(bool value) => _is.ColumnValue(
    table.isBlocked,
    value,
  );

  _is.ColumnValue<String, String> blockingReason(String? value) =>
      _is.ColumnValue(
        table.blockingReason,
        value,
      );

  _is.ColumnValue<int, int> versionNumber(int value) => _is.ColumnValue(
    table.versionNumber,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
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

class ElogResourceStatesTable extends _is.Table<_is.UuidValue?> {
  ElogResourceStatesTable({super.tableRelation})
    : super(tableName: 'elog_resource_states') {
    updateTable = ElogResourceStatesUpdateTable(this);
    resourceType = _is.ColumnString(
      'resourceType',
      this,
    );
    resourceId = _is.ColumnUuid(
      'resourceId',
      this,
    );
    states = _is.ColumnString(
      'states',
      this,
    );
    totalUsageCount = _is.ColumnInt(
      'totalUsageCount',
      this,
    );
    usagesSinceLastCleaning = _is.ColumnInt(
      'usagesSinceLastCleaning',
      this,
    );
    usagesSinceLastInspection = _is.ColumnInt(
      'usagesSinceLastInspection',
      this,
    );
    usagesSinceLastMaintenance = _is.ColumnInt(
      'usagesSinceLastMaintenance',
      this,
    );
    lastEventAt = _is.ColumnDateTime(
      'lastEventAt',
      this,
    );
    isBlocked = _is.ColumnBool(
      'isBlocked',
      this,
    );
    blockingReason = _is.ColumnString(
      'blockingReason',
      this,
    );
    versionNumber = _is.ColumnInt(
      'versionNumber',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
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

  late final ElogResourceStatesUpdateTable updateTable;

  late final _is.ColumnString resourceType;

  late final _is.ColumnUuid resourceId;

  late final _is.ColumnString states;

  late final _is.ColumnInt totalUsageCount;

  late final _is.ColumnInt usagesSinceLastCleaning;

  late final _is.ColumnInt usagesSinceLastInspection;

  late final _is.ColumnInt usagesSinceLastMaintenance;

  late final _is.ColumnDateTime lastEventAt;

  late final _is.ColumnBool isBlocked;

  late final _is.ColumnString blockingReason;

  late final _is.ColumnInt versionNumber;

  late final _is.ColumnString status;

  late final _is.ColumnBool isActive;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    resourceType,
    resourceId,
    states,
    totalUsageCount,
    usagesSinceLastCleaning,
    usagesSinceLastInspection,
    usagesSinceLastMaintenance,
    lastEventAt,
    isBlocked,
    blockingReason,
    versionNumber,
    status,
    isActive,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class ElogResourceStatesInclude extends _is.IncludeObject {
  ElogResourceStatesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogResourceStates.t;
}

class ElogResourceStatesIncludeList extends _is.IncludeList {
  ElogResourceStatesIncludeList._({
    _is.WhereExpressionBuilder<ElogResourceStatesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogResourceStates.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogResourceStates.t;
}

class ElogResourceStatesRepository {
  const ElogResourceStatesRepository._();

  /// Returns a list of [ElogResourceStates]s matching the given query parameters.
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
  Future<List<ElogResourceStates>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceStatesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceStatesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceStatesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogResourceStates>(
      where: where?.call(ElogResourceStates.t),
      orderBy: orderBy?.call(ElogResourceStates.t),
      orderByList: orderByList?.call(ElogResourceStates.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogResourceStates] matching the given query parameters.
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
  Future<ElogResourceStates?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceStatesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogResourceStatesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceStatesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogResourceStates>(
      where: where?.call(ElogResourceStates.t),
      orderBy: orderBy?.call(ElogResourceStates.t),
      orderByList: orderByList?.call(ElogResourceStates.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogResourceStates] by its [id] or null if no such row exists.
  Future<ElogResourceStates?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogResourceStates>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogResourceStates]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogResourceStates]s will have their `id` fields set.
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
  Future<List<ElogResourceStates>> insert(
    _is.DatabaseSession session,
    List<ElogResourceStates> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogResourceStates>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogResourceStates] and returns the inserted row.
  ///
  /// The returned [ElogResourceStates] will have its `id` field set.
  Future<ElogResourceStates> insertRow(
    _is.DatabaseSession session,
    ElogResourceStates row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogResourceStates>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogResourceStates]s in the list and returns the resulting rows.
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
  /// The returned [ElogResourceStates]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceStates>> upsert(
    _is.DatabaseSession session,
    List<ElogResourceStates> rows, {
    required _is.ColumnSelections<ElogResourceStatesTable> conflictColumns,
    _is.ColumnSelections<ElogResourceStatesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogResourceStatesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogResourceStates>(
      rows,
      conflictColumns: conflictColumns(ElogResourceStates.t),
      updateColumns: updateColumns?.call(ElogResourceStates.t),
      updateWhere: updateWhere?.call(ElogResourceStates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogResourceStates] and returns the resulting row.
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
  /// The returned [ElogResourceStates] will have its `id` field set.
  Future<ElogResourceStates?> upsertRow(
    _is.DatabaseSession session,
    ElogResourceStates row, {
    required _is.ColumnSelections<ElogResourceStatesTable> conflictColumns,
    _is.ColumnSelections<ElogResourceStatesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogResourceStatesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogResourceStates>(
      row,
      conflictColumns: conflictColumns(ElogResourceStates.t),
      updateColumns: updateColumns?.call(ElogResourceStates.t),
      updateWhere: updateWhere?.call(ElogResourceStates.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogResourceStates]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceStates>> update(
    _is.DatabaseSession session,
    List<ElogResourceStates> rows, {
    _is.ColumnSelections<ElogResourceStatesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogResourceStates>(
      rows,
      columns: columns?.call(ElogResourceStates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogResourceStates]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogResourceStates> updateRow(
    _is.DatabaseSession session,
    ElogResourceStates row, {
    _is.ColumnSelections<ElogResourceStatesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogResourceStates>(
      row,
      columns: columns?.call(ElogResourceStates.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogResourceStates] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogResourceStates?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogResourceStatesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogResourceStates>(
      id,
      columnValues: columnValues(ElogResourceStates.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogResourceStates]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceStates>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogResourceStatesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogResourceStatesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceStatesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceStatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogResourceStates>(
      columnValues: columnValues(ElogResourceStates.t.updateTable),
      where: where(ElogResourceStates.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogResourceStates.t),
      orderByList: orderByList?.call(ElogResourceStates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogResourceStates]s in the list and returns the deleted rows.
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
  Future<List<ElogResourceStates>> delete(
    _is.DatabaseSession session,
    List<ElogResourceStates> rows, {
    _is.OrderByBuilder<ElogResourceStatesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceStatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogResourceStates>(
      rows,
      orderBy: orderBy?.call(ElogResourceStates.t),
      orderByList: orderByList?.call(ElogResourceStates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogResourceStates].
  Future<ElogResourceStates> deleteRow(
    _is.DatabaseSession session,
    ElogResourceStates row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogResourceStates>(
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
  Future<List<ElogResourceStates>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogResourceStatesTable> where,
    _is.OrderByBuilder<ElogResourceStatesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceStatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogResourceStates>(
      where: where(ElogResourceStates.t),
      orderBy: orderBy?.call(ElogResourceStates.t),
      orderByList: orderByList?.call(ElogResourceStates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceStatesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogResourceStates>(
      where: where?.call(ElogResourceStates.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogResourceStates] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogResourceStatesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogResourceStates>(
      where: where(ElogResourceStates.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
