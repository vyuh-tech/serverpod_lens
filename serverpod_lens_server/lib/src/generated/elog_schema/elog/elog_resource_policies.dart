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

abstract class ElogResourcePolicies
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogResourcePolicies._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.scopeLevel,
    this.resourceType,
    this.resourceCategoryId,
    this.resourceId,
    this.cleaningConfig,
    this.calibrationConfig,
    this.maintenanceConfig,
    this.usageConfig,
    this.problemConfig,
    this.otherConfig,
    this.inspectionConfig,
    this.containmentConfig,
    this.activityCompatibility,
    this.priority,
    this.isActive,
    this.versionNumber,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogResourcePolicies({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String scopeLevel,
    String? resourceType,
    _is.UuidValue? resourceCategoryId,
    _is.UuidValue? resourceId,
    String? cleaningConfig,
    String? calibrationConfig,
    String? maintenanceConfig,
    String? usageConfig,
    String? problemConfig,
    String? otherConfig,
    String? inspectionConfig,
    String? containmentConfig,
    String? activityCompatibility,
    int? priority,
    bool? isActive,
    int? versionNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _ElogResourcePoliciesImpl;

  factory ElogResourcePolicies.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogResourcePolicies(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      scopeLevel: jsonSerialization['scopeLevel'] as String,
      resourceType: jsonSerialization['resourceType'] as String?,
      resourceCategoryId: jsonSerialization['resourceCategoryId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceCategoryId'],
            ),
      resourceId: jsonSerialization['resourceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceId'],
            ),
      cleaningConfig: jsonSerialization['cleaningConfig'] as String?,
      calibrationConfig: jsonSerialization['calibrationConfig'] as String?,
      maintenanceConfig: jsonSerialization['maintenanceConfig'] as String?,
      usageConfig: jsonSerialization['usageConfig'] as String?,
      problemConfig: jsonSerialization['problemConfig'] as String?,
      otherConfig: jsonSerialization['otherConfig'] as String?,
      inspectionConfig: jsonSerialization['inspectionConfig'] as String?,
      containmentConfig: jsonSerialization['containmentConfig'] as String?,
      activityCompatibility:
          jsonSerialization['activityCompatibility'] as String?,
      priority: jsonSerialization['priority'] as int?,
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      versionNumber: jsonSerialization['versionNumber'] as int?,
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

  static final t = ElogResourcePoliciesTable();

  static const db = ElogResourcePoliciesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String scopeLevel;

  String? resourceType;

  _is.UuidValue? resourceCategoryId;

  _is.UuidValue? resourceId;

  String? cleaningConfig;

  String? calibrationConfig;

  String? maintenanceConfig;

  String? usageConfig;

  String? problemConfig;

  String? otherConfig;

  String? inspectionConfig;

  String? containmentConfig;

  String? activityCompatibility;

  int? priority;

  bool? isActive;

  int? versionNumber;

  DateTime? createdAt;

  DateTime? updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogResourcePolicies]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogResourcePolicies copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? scopeLevel,
    String? resourceType,
    _is.UuidValue? resourceCategoryId,
    _is.UuidValue? resourceId,
    String? cleaningConfig,
    String? calibrationConfig,
    String? maintenanceConfig,
    String? usageConfig,
    String? problemConfig,
    String? otherConfig,
    String? inspectionConfig,
    String? containmentConfig,
    String? activityCompatibility,
    int? priority,
    bool? isActive,
    int? versionNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogResourcePolicies',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'scopeLevel': scopeLevel,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceCategoryId != null)
        'resourceCategoryId': resourceCategoryId?.toJson(),
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (cleaningConfig != null) 'cleaningConfig': cleaningConfig,
      if (calibrationConfig != null) 'calibrationConfig': calibrationConfig,
      if (maintenanceConfig != null) 'maintenanceConfig': maintenanceConfig,
      if (usageConfig != null) 'usageConfig': usageConfig,
      if (problemConfig != null) 'problemConfig': problemConfig,
      if (otherConfig != null) 'otherConfig': otherConfig,
      if (inspectionConfig != null) 'inspectionConfig': inspectionConfig,
      if (containmentConfig != null) 'containmentConfig': containmentConfig,
      if (activityCompatibility != null)
        'activityCompatibility': activityCompatibility,
      if (priority != null) 'priority': priority,
      if (isActive != null) 'isActive': isActive,
      if (versionNumber != null) 'versionNumber': versionNumber,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogResourcePolicies',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'scopeLevel': scopeLevel,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceCategoryId != null)
        'resourceCategoryId': resourceCategoryId?.toJson(),
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (cleaningConfig != null) 'cleaningConfig': cleaningConfig,
      if (calibrationConfig != null) 'calibrationConfig': calibrationConfig,
      if (maintenanceConfig != null) 'maintenanceConfig': maintenanceConfig,
      if (usageConfig != null) 'usageConfig': usageConfig,
      if (problemConfig != null) 'problemConfig': problemConfig,
      if (otherConfig != null) 'otherConfig': otherConfig,
      if (inspectionConfig != null) 'inspectionConfig': inspectionConfig,
      if (containmentConfig != null) 'containmentConfig': containmentConfig,
      if (activityCompatibility != null)
        'activityCompatibility': activityCompatibility,
      if (priority != null) 'priority': priority,
      if (isActive != null) 'isActive': isActive,
      if (versionNumber != null) 'versionNumber': versionNumber,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static ElogResourcePoliciesInclude include() {
    return ElogResourcePoliciesInclude._();
  }

  static ElogResourcePoliciesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogResourcePoliciesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourcePoliciesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourcePoliciesTable>? orderByList,
    ElogResourcePoliciesInclude? include,
  }) {
    return ElogResourcePoliciesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogResourcePolicies.t),
      orderByList: orderByList?.call(ElogResourcePolicies.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogResourcePoliciesImpl extends ElogResourcePolicies {
  _ElogResourcePoliciesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String scopeLevel,
    String? resourceType,
    _is.UuidValue? resourceCategoryId,
    _is.UuidValue? resourceId,
    String? cleaningConfig,
    String? calibrationConfig,
    String? maintenanceConfig,
    String? usageConfig,
    String? problemConfig,
    String? otherConfig,
    String? inspectionConfig,
    String? containmentConfig,
    String? activityCompatibility,
    int? priority,
    bool? isActive,
    int? versionNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         scopeLevel: scopeLevel,
         resourceType: resourceType,
         resourceCategoryId: resourceCategoryId,
         resourceId: resourceId,
         cleaningConfig: cleaningConfig,
         calibrationConfig: calibrationConfig,
         maintenanceConfig: maintenanceConfig,
         usageConfig: usageConfig,
         problemConfig: problemConfig,
         otherConfig: otherConfig,
         inspectionConfig: inspectionConfig,
         containmentConfig: containmentConfig,
         activityCompatibility: activityCompatibility,
         priority: priority,
         isActive: isActive,
         versionNumber: versionNumber,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogResourcePolicies]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogResourcePolicies copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? scopeLevel,
    Object? resourceType = _Undefined,
    Object? resourceCategoryId = _Undefined,
    Object? resourceId = _Undefined,
    Object? cleaningConfig = _Undefined,
    Object? calibrationConfig = _Undefined,
    Object? maintenanceConfig = _Undefined,
    Object? usageConfig = _Undefined,
    Object? problemConfig = _Undefined,
    Object? otherConfig = _Undefined,
    Object? inspectionConfig = _Undefined,
    Object? containmentConfig = _Undefined,
    Object? activityCompatibility = _Undefined,
    Object? priority = _Undefined,
    Object? isActive = _Undefined,
    Object? versionNumber = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogResourcePolicies(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      scopeLevel: scopeLevel ?? this.scopeLevel,
      resourceType: resourceType is String? ? resourceType : this.resourceType,
      resourceCategoryId: resourceCategoryId is _is.UuidValue?
          ? resourceCategoryId
          : this.resourceCategoryId,
      resourceId: resourceId is _is.UuidValue? ? resourceId : this.resourceId,
      cleaningConfig: cleaningConfig is String?
          ? cleaningConfig
          : this.cleaningConfig,
      calibrationConfig: calibrationConfig is String?
          ? calibrationConfig
          : this.calibrationConfig,
      maintenanceConfig: maintenanceConfig is String?
          ? maintenanceConfig
          : this.maintenanceConfig,
      usageConfig: usageConfig is String? ? usageConfig : this.usageConfig,
      problemConfig: problemConfig is String?
          ? problemConfig
          : this.problemConfig,
      otherConfig: otherConfig is String? ? otherConfig : this.otherConfig,
      inspectionConfig: inspectionConfig is String?
          ? inspectionConfig
          : this.inspectionConfig,
      containmentConfig: containmentConfig is String?
          ? containmentConfig
          : this.containmentConfig,
      activityCompatibility: activityCompatibility is String?
          ? activityCompatibility
          : this.activityCompatibility,
      priority: priority is int? ? priority : this.priority,
      isActive: isActive is bool? ? isActive : this.isActive,
      versionNumber: versionNumber is int? ? versionNumber : this.versionNumber,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class ElogResourcePoliciesUpdateTable
    extends _is.UpdateTable<ElogResourcePoliciesTable> {
  ElogResourcePoliciesUpdateTable(super.table);

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

  _is.ColumnValue<String, String> scopeLevel(String value) => _is.ColumnValue(
    table.scopeLevel,
    value,
  );

  _is.ColumnValue<String, String> resourceType(String? value) =>
      _is.ColumnValue(
        table.resourceType,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> resourceCategoryId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.resourceCategoryId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> resourceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.resourceId,
    value,
  );

  _is.ColumnValue<String, String> cleaningConfig(String? value) =>
      _is.ColumnValue(
        table.cleaningConfig,
        value,
      );

  _is.ColumnValue<String, String> calibrationConfig(String? value) =>
      _is.ColumnValue(
        table.calibrationConfig,
        value,
      );

  _is.ColumnValue<String, String> maintenanceConfig(String? value) =>
      _is.ColumnValue(
        table.maintenanceConfig,
        value,
      );

  _is.ColumnValue<String, String> usageConfig(String? value) => _is.ColumnValue(
    table.usageConfig,
    value,
  );

  _is.ColumnValue<String, String> problemConfig(String? value) =>
      _is.ColumnValue(
        table.problemConfig,
        value,
      );

  _is.ColumnValue<String, String> otherConfig(String? value) => _is.ColumnValue(
    table.otherConfig,
    value,
  );

  _is.ColumnValue<String, String> inspectionConfig(String? value) =>
      _is.ColumnValue(
        table.inspectionConfig,
        value,
      );

  _is.ColumnValue<String, String> containmentConfig(String? value) =>
      _is.ColumnValue(
        table.containmentConfig,
        value,
      );

  _is.ColumnValue<String, String> activityCompatibility(String? value) =>
      _is.ColumnValue(
        table.activityCompatibility,
        value,
      );

  _is.ColumnValue<int, int> priority(int? value) => _is.ColumnValue(
    table.priority,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<int, int> versionNumber(int? value) => _is.ColumnValue(
    table.versionNumber,
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

class ElogResourcePoliciesTable extends _is.Table<_is.UuidValue?> {
  ElogResourcePoliciesTable({super.tableRelation})
    : super(tableName: 'elog_resource_policies') {
    updateTable = ElogResourcePoliciesUpdateTable(this);
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
    scopeLevel = _is.ColumnString(
      'scopeLevel',
      this,
    );
    resourceType = _is.ColumnString(
      'resourceType',
      this,
    );
    resourceCategoryId = _is.ColumnUuid(
      'resourceCategoryId',
      this,
    );
    resourceId = _is.ColumnUuid(
      'resourceId',
      this,
    );
    cleaningConfig = _is.ColumnString(
      'cleaningConfig',
      this,
    );
    calibrationConfig = _is.ColumnString(
      'calibrationConfig',
      this,
    );
    maintenanceConfig = _is.ColumnString(
      'maintenanceConfig',
      this,
    );
    usageConfig = _is.ColumnString(
      'usageConfig',
      this,
    );
    problemConfig = _is.ColumnString(
      'problemConfig',
      this,
    );
    otherConfig = _is.ColumnString(
      'otherConfig',
      this,
    );
    inspectionConfig = _is.ColumnString(
      'inspectionConfig',
      this,
    );
    containmentConfig = _is.ColumnString(
      'containmentConfig',
      this,
    );
    activityCompatibility = _is.ColumnString(
      'activityCompatibility',
      this,
    );
    priority = _is.ColumnInt(
      'priority',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
    versionNumber = _is.ColumnInt(
      'versionNumber',
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

  late final ElogResourcePoliciesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString scopeLevel;

  late final _is.ColumnString resourceType;

  late final _is.ColumnUuid resourceCategoryId;

  late final _is.ColumnUuid resourceId;

  late final _is.ColumnString cleaningConfig;

  late final _is.ColumnString calibrationConfig;

  late final _is.ColumnString maintenanceConfig;

  late final _is.ColumnString usageConfig;

  late final _is.ColumnString problemConfig;

  late final _is.ColumnString otherConfig;

  late final _is.ColumnString inspectionConfig;

  late final _is.ColumnString containmentConfig;

  late final _is.ColumnString activityCompatibility;

  late final _is.ColumnInt priority;

  late final _is.ColumnBool isActive;

  late final _is.ColumnInt versionNumber;

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
    scopeLevel,
    resourceType,
    resourceCategoryId,
    resourceId,
    cleaningConfig,
    calibrationConfig,
    maintenanceConfig,
    usageConfig,
    problemConfig,
    otherConfig,
    inspectionConfig,
    containmentConfig,
    activityCompatibility,
    priority,
    isActive,
    versionNumber,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class ElogResourcePoliciesInclude extends _is.IncludeObject {
  ElogResourcePoliciesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogResourcePolicies.t;
}

class ElogResourcePoliciesIncludeList extends _is.IncludeList {
  ElogResourcePoliciesIncludeList._({
    _is.WhereExpressionBuilder<ElogResourcePoliciesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogResourcePolicies.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogResourcePolicies.t;
}

class ElogResourcePoliciesRepository {
  const ElogResourcePoliciesRepository._();

  /// Returns a list of [ElogResourcePolicies]s matching the given query parameters.
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
  Future<List<ElogResourcePolicies>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourcePoliciesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourcePoliciesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourcePoliciesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogResourcePolicies>(
      where: where?.call(ElogResourcePolicies.t),
      orderBy: orderBy?.call(ElogResourcePolicies.t),
      orderByList: orderByList?.call(ElogResourcePolicies.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogResourcePolicies] matching the given query parameters.
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
  Future<ElogResourcePolicies?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourcePoliciesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogResourcePoliciesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourcePoliciesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogResourcePolicies>(
      where: where?.call(ElogResourcePolicies.t),
      orderBy: orderBy?.call(ElogResourcePolicies.t),
      orderByList: orderByList?.call(ElogResourcePolicies.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogResourcePolicies] by its [id] or null if no such row exists.
  Future<ElogResourcePolicies?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogResourcePolicies>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogResourcePolicies]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogResourcePolicies]s will have their `id` fields set.
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
  Future<List<ElogResourcePolicies>> insert(
    _is.DatabaseSession session,
    List<ElogResourcePolicies> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogResourcePolicies>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogResourcePolicies] and returns the inserted row.
  ///
  /// The returned [ElogResourcePolicies] will have its `id` field set.
  Future<ElogResourcePolicies> insertRow(
    _is.DatabaseSession session,
    ElogResourcePolicies row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogResourcePolicies>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogResourcePolicies]s in the list and returns the resulting rows.
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
  /// The returned [ElogResourcePolicies]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourcePolicies>> upsert(
    _is.DatabaseSession session,
    List<ElogResourcePolicies> rows, {
    required _is.ColumnSelections<ElogResourcePoliciesTable> conflictColumns,
    _is.ColumnSelections<ElogResourcePoliciesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogResourcePoliciesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogResourcePolicies>(
      rows,
      conflictColumns: conflictColumns(ElogResourcePolicies.t),
      updateColumns: updateColumns?.call(ElogResourcePolicies.t),
      updateWhere: updateWhere?.call(ElogResourcePolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogResourcePolicies] and returns the resulting row.
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
  /// The returned [ElogResourcePolicies] will have its `id` field set.
  Future<ElogResourcePolicies?> upsertRow(
    _is.DatabaseSession session,
    ElogResourcePolicies row, {
    required _is.ColumnSelections<ElogResourcePoliciesTable> conflictColumns,
    _is.ColumnSelections<ElogResourcePoliciesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogResourcePoliciesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogResourcePolicies>(
      row,
      conflictColumns: conflictColumns(ElogResourcePolicies.t),
      updateColumns: updateColumns?.call(ElogResourcePolicies.t),
      updateWhere: updateWhere?.call(ElogResourcePolicies.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogResourcePolicies]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourcePolicies>> update(
    _is.DatabaseSession session,
    List<ElogResourcePolicies> rows, {
    _is.ColumnSelections<ElogResourcePoliciesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogResourcePolicies>(
      rows,
      columns: columns?.call(ElogResourcePolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogResourcePolicies]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogResourcePolicies> updateRow(
    _is.DatabaseSession session,
    ElogResourcePolicies row, {
    _is.ColumnSelections<ElogResourcePoliciesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogResourcePolicies>(
      row,
      columns: columns?.call(ElogResourcePolicies.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogResourcePolicies] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogResourcePolicies?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogResourcePoliciesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogResourcePolicies>(
      id,
      columnValues: columnValues(ElogResourcePolicies.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogResourcePolicies]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourcePolicies>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogResourcePoliciesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogResourcePoliciesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourcePoliciesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourcePoliciesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogResourcePolicies>(
      columnValues: columnValues(ElogResourcePolicies.t.updateTable),
      where: where(ElogResourcePolicies.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogResourcePolicies.t),
      orderByList: orderByList?.call(ElogResourcePolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogResourcePolicies]s in the list and returns the deleted rows.
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
  Future<List<ElogResourcePolicies>> delete(
    _is.DatabaseSession session,
    List<ElogResourcePolicies> rows, {
    _is.OrderByBuilder<ElogResourcePoliciesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourcePoliciesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogResourcePolicies>(
      rows,
      orderBy: orderBy?.call(ElogResourcePolicies.t),
      orderByList: orderByList?.call(ElogResourcePolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogResourcePolicies].
  Future<ElogResourcePolicies> deleteRow(
    _is.DatabaseSession session,
    ElogResourcePolicies row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogResourcePolicies>(
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
  Future<List<ElogResourcePolicies>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogResourcePoliciesTable> where,
    _is.OrderByBuilder<ElogResourcePoliciesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourcePoliciesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogResourcePolicies>(
      where: where(ElogResourcePolicies.t),
      orderBy: orderBy?.call(ElogResourcePolicies.t),
      orderByList: orderByList?.call(ElogResourcePolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourcePoliciesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogResourcePolicies>(
      where: where?.call(ElogResourcePolicies.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogResourcePolicies] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogResourcePoliciesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogResourcePolicies>(
      where: where(ElogResourcePolicies.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
