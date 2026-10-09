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

abstract class ElogResourceFlags
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogResourceFlags._({
    this.id,
    required this.flagTypeId,
    required this.resourceType,
    required this.resourceId,
    required this.flagStatus,
    this.problemId,
    required this.flaggedAt,
    required this.flaggedBy,
    this.reason,
    this.clearanceRequestedAt,
    this.clearanceRequestedBy,
    this.clearanceLogUsageId,
    this.clearedAt,
    this.clearedBy,
    this.clearanceNotes,
    required this.versionNumber,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogResourceFlags({
    _is.UuidValue? id,
    required _is.UuidValue flagTypeId,
    required String resourceType,
    required _is.UuidValue resourceId,
    required String flagStatus,
    _is.UuidValue? problemId,
    required DateTime flaggedAt,
    required _is.UuidValue flaggedBy,
    String? reason,
    DateTime? clearanceRequestedAt,
    _is.UuidValue? clearanceRequestedBy,
    _is.UuidValue? clearanceLogUsageId,
    DateTime? clearedAt,
    _is.UuidValue? clearedBy,
    String? clearanceNotes,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _ElogResourceFlagsImpl;

  factory ElogResourceFlags.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogResourceFlags(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      flagTypeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['flagTypeId'],
      ),
      resourceType: jsonSerialization['resourceType'] as String,
      resourceId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['resourceId'],
      ),
      flagStatus: jsonSerialization['flagStatus'] as String,
      problemId: jsonSerialization['problemId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['problemId']),
      flaggedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['flaggedAt'],
      ),
      flaggedBy: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['flaggedBy'],
      ),
      reason: jsonSerialization['reason'] as String?,
      clearanceRequestedAt: jsonSerialization['clearanceRequestedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['clearanceRequestedAt'],
            ),
      clearanceRequestedBy: jsonSerialization['clearanceRequestedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['clearanceRequestedBy'],
            ),
      clearanceLogUsageId: jsonSerialization['clearanceLogUsageId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['clearanceLogUsageId'],
            ),
      clearedAt: jsonSerialization['clearedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['clearedAt']),
      clearedBy: jsonSerialization['clearedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['clearedBy']),
      clearanceNotes: jsonSerialization['clearanceNotes'] as String?,
      versionNumber: jsonSerialization['versionNumber'] as int,
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

  static final t = ElogResourceFlagsTable();

  static const db = ElogResourceFlagsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue flagTypeId;

  String resourceType;

  _is.UuidValue resourceId;

  String flagStatus;

  _is.UuidValue? problemId;

  DateTime flaggedAt;

  _is.UuidValue flaggedBy;

  String? reason;

  DateTime? clearanceRequestedAt;

  _is.UuidValue? clearanceRequestedBy;

  _is.UuidValue? clearanceLogUsageId;

  DateTime? clearedAt;

  _is.UuidValue? clearedBy;

  String? clearanceNotes;

  int versionNumber;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogResourceFlags]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogResourceFlags copyWith({
    _is.UuidValue? id,
    _is.UuidValue? flagTypeId,
    String? resourceType,
    _is.UuidValue? resourceId,
    String? flagStatus,
    _is.UuidValue? problemId,
    DateTime? flaggedAt,
    _is.UuidValue? flaggedBy,
    String? reason,
    DateTime? clearanceRequestedAt,
    _is.UuidValue? clearanceRequestedBy,
    _is.UuidValue? clearanceLogUsageId,
    DateTime? clearedAt,
    _is.UuidValue? clearedBy,
    String? clearanceNotes,
    int? versionNumber,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogResourceFlags',
      if (id != null) 'id': id?.toJson(),
      'flagTypeId': flagTypeId.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      'flagStatus': flagStatus,
      if (problemId != null) 'problemId': problemId?.toJson(),
      'flaggedAt': flaggedAt.toJson(),
      'flaggedBy': flaggedBy.toJson(),
      if (reason != null) 'reason': reason,
      if (clearanceRequestedAt != null)
        'clearanceRequestedAt': clearanceRequestedAt?.toJson(),
      if (clearanceRequestedBy != null)
        'clearanceRequestedBy': clearanceRequestedBy?.toJson(),
      if (clearanceLogUsageId != null)
        'clearanceLogUsageId': clearanceLogUsageId?.toJson(),
      if (clearedAt != null) 'clearedAt': clearedAt?.toJson(),
      if (clearedBy != null) 'clearedBy': clearedBy?.toJson(),
      if (clearanceNotes != null) 'clearanceNotes': clearanceNotes,
      'versionNumber': versionNumber,
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
      '__className__': 'ElogResourceFlags',
      if (id != null) 'id': id?.toJson(),
      'flagTypeId': flagTypeId.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      'flagStatus': flagStatus,
      if (problemId != null) 'problemId': problemId?.toJson(),
      'flaggedAt': flaggedAt.toJson(),
      'flaggedBy': flaggedBy.toJson(),
      if (reason != null) 'reason': reason,
      if (clearanceRequestedAt != null)
        'clearanceRequestedAt': clearanceRequestedAt?.toJson(),
      if (clearanceRequestedBy != null)
        'clearanceRequestedBy': clearanceRequestedBy?.toJson(),
      if (clearanceLogUsageId != null)
        'clearanceLogUsageId': clearanceLogUsageId?.toJson(),
      if (clearedAt != null) 'clearedAt': clearedAt?.toJson(),
      if (clearedBy != null) 'clearedBy': clearedBy?.toJson(),
      if (clearanceNotes != null) 'clearanceNotes': clearanceNotes,
      'versionNumber': versionNumber,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static ElogResourceFlagsInclude include() {
    return ElogResourceFlagsInclude._();
  }

  static ElogResourceFlagsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogResourceFlagsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceFlagsTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceFlagsTable>? orderByList,
    ElogResourceFlagsInclude? include,
  }) {
    return ElogResourceFlagsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogResourceFlags.t),
      orderByList: orderByList?.call(ElogResourceFlags.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogResourceFlagsImpl extends ElogResourceFlags {
  _ElogResourceFlagsImpl({
    _is.UuidValue? id,
    required _is.UuidValue flagTypeId,
    required String resourceType,
    required _is.UuidValue resourceId,
    required String flagStatus,
    _is.UuidValue? problemId,
    required DateTime flaggedAt,
    required _is.UuidValue flaggedBy,
    String? reason,
    DateTime? clearanceRequestedAt,
    _is.UuidValue? clearanceRequestedBy,
    _is.UuidValue? clearanceLogUsageId,
    DateTime? clearedAt,
    _is.UuidValue? clearedBy,
    String? clearanceNotes,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) : super._(
         id: id,
         flagTypeId: flagTypeId,
         resourceType: resourceType,
         resourceId: resourceId,
         flagStatus: flagStatus,
         problemId: problemId,
         flaggedAt: flaggedAt,
         flaggedBy: flaggedBy,
         reason: reason,
         clearanceRequestedAt: clearanceRequestedAt,
         clearanceRequestedBy: clearanceRequestedBy,
         clearanceLogUsageId: clearanceLogUsageId,
         clearedAt: clearedAt,
         clearedBy: clearedBy,
         clearanceNotes: clearanceNotes,
         versionNumber: versionNumber,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogResourceFlags]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogResourceFlags copyWith({
    Object? id = _Undefined,
    _is.UuidValue? flagTypeId,
    String? resourceType,
    _is.UuidValue? resourceId,
    String? flagStatus,
    Object? problemId = _Undefined,
    DateTime? flaggedAt,
    _is.UuidValue? flaggedBy,
    Object? reason = _Undefined,
    Object? clearanceRequestedAt = _Undefined,
    Object? clearanceRequestedBy = _Undefined,
    Object? clearanceLogUsageId = _Undefined,
    Object? clearedAt = _Undefined,
    Object? clearedBy = _Undefined,
    Object? clearanceNotes = _Undefined,
    int? versionNumber,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogResourceFlags(
      id: id is _is.UuidValue? ? id : this.id,
      flagTypeId: flagTypeId ?? this.flagTypeId,
      resourceType: resourceType ?? this.resourceType,
      resourceId: resourceId ?? this.resourceId,
      flagStatus: flagStatus ?? this.flagStatus,
      problemId: problemId is _is.UuidValue? ? problemId : this.problemId,
      flaggedAt: flaggedAt ?? this.flaggedAt,
      flaggedBy: flaggedBy ?? this.flaggedBy,
      reason: reason is String? ? reason : this.reason,
      clearanceRequestedAt: clearanceRequestedAt is DateTime?
          ? clearanceRequestedAt
          : this.clearanceRequestedAt,
      clearanceRequestedBy: clearanceRequestedBy is _is.UuidValue?
          ? clearanceRequestedBy
          : this.clearanceRequestedBy,
      clearanceLogUsageId: clearanceLogUsageId is _is.UuidValue?
          ? clearanceLogUsageId
          : this.clearanceLogUsageId,
      clearedAt: clearedAt is DateTime? ? clearedAt : this.clearedAt,
      clearedBy: clearedBy is _is.UuidValue? ? clearedBy : this.clearedBy,
      clearanceNotes: clearanceNotes is String?
          ? clearanceNotes
          : this.clearanceNotes,
      versionNumber: versionNumber ?? this.versionNumber,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class ElogResourceFlagsUpdateTable
    extends _is.UpdateTable<ElogResourceFlagsTable> {
  ElogResourceFlagsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> flagTypeId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.flagTypeId,
    value,
  );

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

  _is.ColumnValue<String, String> flagStatus(String value) => _is.ColumnValue(
    table.flagStatus,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> problemId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.problemId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> flaggedAt(DateTime value) =>
      _is.ColumnValue(
        table.flaggedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> flaggedBy(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.flaggedBy,
    value,
  );

  _is.ColumnValue<String, String> reason(String? value) => _is.ColumnValue(
    table.reason,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> clearanceRequestedAt(DateTime? value) =>
      _is.ColumnValue(
        table.clearanceRequestedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> clearanceRequestedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.clearanceRequestedBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> clearanceLogUsageId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.clearanceLogUsageId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> clearedAt(DateTime? value) =>
      _is.ColumnValue(
        table.clearedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> clearedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.clearedBy,
    value,
  );

  _is.ColumnValue<String, String> clearanceNotes(String? value) =>
      _is.ColumnValue(
        table.clearanceNotes,
        value,
      );

  _is.ColumnValue<int, int> versionNumber(int value) => _is.ColumnValue(
    table.versionNumber,
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

class ElogResourceFlagsTable extends _is.Table<_is.UuidValue?> {
  ElogResourceFlagsTable({super.tableRelation})
    : super(tableName: 'elog_resource_flags') {
    updateTable = ElogResourceFlagsUpdateTable(this);
    flagTypeId = _is.ColumnUuid(
      'flagTypeId',
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
    flagStatus = _is.ColumnString(
      'flagStatus',
      this,
    );
    problemId = _is.ColumnUuid(
      'problemId',
      this,
    );
    flaggedAt = _is.ColumnDateTime(
      'flaggedAt',
      this,
    );
    flaggedBy = _is.ColumnUuid(
      'flaggedBy',
      this,
    );
    reason = _is.ColumnString(
      'reason',
      this,
    );
    clearanceRequestedAt = _is.ColumnDateTime(
      'clearanceRequestedAt',
      this,
    );
    clearanceRequestedBy = _is.ColumnUuid(
      'clearanceRequestedBy',
      this,
    );
    clearanceLogUsageId = _is.ColumnUuid(
      'clearanceLogUsageId',
      this,
    );
    clearedAt = _is.ColumnDateTime(
      'clearedAt',
      this,
    );
    clearedBy = _is.ColumnUuid(
      'clearedBy',
      this,
    );
    clearanceNotes = _is.ColumnString(
      'clearanceNotes',
      this,
    );
    versionNumber = _is.ColumnInt(
      'versionNumber',
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

  late final ElogResourceFlagsUpdateTable updateTable;

  late final _is.ColumnUuid flagTypeId;

  late final _is.ColumnString resourceType;

  late final _is.ColumnUuid resourceId;

  late final _is.ColumnString flagStatus;

  late final _is.ColumnUuid problemId;

  late final _is.ColumnDateTime flaggedAt;

  late final _is.ColumnUuid flaggedBy;

  late final _is.ColumnString reason;

  late final _is.ColumnDateTime clearanceRequestedAt;

  late final _is.ColumnUuid clearanceRequestedBy;

  late final _is.ColumnUuid clearanceLogUsageId;

  late final _is.ColumnDateTime clearedAt;

  late final _is.ColumnUuid clearedBy;

  late final _is.ColumnString clearanceNotes;

  late final _is.ColumnInt versionNumber;

  late final _is.ColumnBool isActive;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    flagTypeId,
    resourceType,
    resourceId,
    flagStatus,
    problemId,
    flaggedAt,
    flaggedBy,
    reason,
    clearanceRequestedAt,
    clearanceRequestedBy,
    clearanceLogUsageId,
    clearedAt,
    clearedBy,
    clearanceNotes,
    versionNumber,
    isActive,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class ElogResourceFlagsInclude extends _is.IncludeObject {
  ElogResourceFlagsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogResourceFlags.t;
}

class ElogResourceFlagsIncludeList extends _is.IncludeList {
  ElogResourceFlagsIncludeList._({
    _is.WhereExpressionBuilder<ElogResourceFlagsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogResourceFlags.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogResourceFlags.t;
}

class ElogResourceFlagsRepository {
  const ElogResourceFlagsRepository._();

  /// Returns a list of [ElogResourceFlags]s matching the given query parameters.
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
  Future<List<ElogResourceFlags>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceFlagsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceFlagsTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceFlagsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogResourceFlags>(
      where: where?.call(ElogResourceFlags.t),
      orderBy: orderBy?.call(ElogResourceFlags.t),
      orderByList: orderByList?.call(ElogResourceFlags.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogResourceFlags] matching the given query parameters.
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
  Future<ElogResourceFlags?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceFlagsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogResourceFlagsTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceFlagsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogResourceFlags>(
      where: where?.call(ElogResourceFlags.t),
      orderBy: orderBy?.call(ElogResourceFlags.t),
      orderByList: orderByList?.call(ElogResourceFlags.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogResourceFlags] by its [id] or null if no such row exists.
  Future<ElogResourceFlags?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogResourceFlags>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogResourceFlags]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogResourceFlags]s will have their `id` fields set.
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
  Future<List<ElogResourceFlags>> insert(
    _is.DatabaseSession session,
    List<ElogResourceFlags> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogResourceFlags>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogResourceFlags] and returns the inserted row.
  ///
  /// The returned [ElogResourceFlags] will have its `id` field set.
  Future<ElogResourceFlags> insertRow(
    _is.DatabaseSession session,
    ElogResourceFlags row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogResourceFlags>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogResourceFlags]s in the list and returns the resulting rows.
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
  /// The returned [ElogResourceFlags]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceFlags>> upsert(
    _is.DatabaseSession session,
    List<ElogResourceFlags> rows, {
    required _is.ColumnSelections<ElogResourceFlagsTable> conflictColumns,
    _is.ColumnSelections<ElogResourceFlagsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogResourceFlagsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogResourceFlags>(
      rows,
      conflictColumns: conflictColumns(ElogResourceFlags.t),
      updateColumns: updateColumns?.call(ElogResourceFlags.t),
      updateWhere: updateWhere?.call(ElogResourceFlags.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogResourceFlags] and returns the resulting row.
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
  /// The returned [ElogResourceFlags] will have its `id` field set.
  Future<ElogResourceFlags?> upsertRow(
    _is.DatabaseSession session,
    ElogResourceFlags row, {
    required _is.ColumnSelections<ElogResourceFlagsTable> conflictColumns,
    _is.ColumnSelections<ElogResourceFlagsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogResourceFlagsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogResourceFlags>(
      row,
      conflictColumns: conflictColumns(ElogResourceFlags.t),
      updateColumns: updateColumns?.call(ElogResourceFlags.t),
      updateWhere: updateWhere?.call(ElogResourceFlags.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogResourceFlags]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceFlags>> update(
    _is.DatabaseSession session,
    List<ElogResourceFlags> rows, {
    _is.ColumnSelections<ElogResourceFlagsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogResourceFlags>(
      rows,
      columns: columns?.call(ElogResourceFlags.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogResourceFlags]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogResourceFlags> updateRow(
    _is.DatabaseSession session,
    ElogResourceFlags row, {
    _is.ColumnSelections<ElogResourceFlagsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogResourceFlags>(
      row,
      columns: columns?.call(ElogResourceFlags.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogResourceFlags] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogResourceFlags?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogResourceFlagsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogResourceFlags>(
      id,
      columnValues: columnValues(ElogResourceFlags.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogResourceFlags]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceFlags>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogResourceFlagsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogResourceFlagsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceFlagsTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceFlagsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogResourceFlags>(
      columnValues: columnValues(ElogResourceFlags.t.updateTable),
      where: where(ElogResourceFlags.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogResourceFlags.t),
      orderByList: orderByList?.call(ElogResourceFlags.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogResourceFlags]s in the list and returns the deleted rows.
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
  Future<List<ElogResourceFlags>> delete(
    _is.DatabaseSession session,
    List<ElogResourceFlags> rows, {
    _is.OrderByBuilder<ElogResourceFlagsTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceFlagsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogResourceFlags>(
      rows,
      orderBy: orderBy?.call(ElogResourceFlags.t),
      orderByList: orderByList?.call(ElogResourceFlags.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogResourceFlags].
  Future<ElogResourceFlags> deleteRow(
    _is.DatabaseSession session,
    ElogResourceFlags row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogResourceFlags>(
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
  Future<List<ElogResourceFlags>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogResourceFlagsTable> where,
    _is.OrderByBuilder<ElogResourceFlagsTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceFlagsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogResourceFlags>(
      where: where(ElogResourceFlags.t),
      orderBy: orderBy?.call(ElogResourceFlags.t),
      orderByList: orderByList?.call(ElogResourceFlags.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceFlagsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogResourceFlags>(
      where: where?.call(ElogResourceFlags.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogResourceFlags] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogResourceFlagsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogResourceFlags>(
      where: where(ElogResourceFlags.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
