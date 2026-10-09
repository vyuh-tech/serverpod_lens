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

abstract class ElogWorkItems
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogWorkItems._({
    this.id,
    required this.idField,
    required this.workflowInstanceId,
    required this.nodeId,
    required this.taskType,
    required this.title,
    this.description,
    required this.status,
    required this.assignedUserIds,
    required this.assignedGroupIds,
    required this.assignedRoleIds,
    this.signalName,
    required this.priority,
    this.dueAt,
    required this.input,
    required this.output,
    required this.metadata,
    this.completedBy,
    this.completedAt,
    required this.createdAt,
    required this.updatedAt,
    this.startedAt,
    this.createdBy,
    this.startedBy,
    this.updatedBy,
  });

  factory ElogWorkItems({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required _is.UuidValue workflowInstanceId,
    required String nodeId,
    required String taskType,
    required String title,
    String? description,
    required String status,
    required List<String> assignedUserIds,
    required List<String> assignedGroupIds,
    required List<String> assignedRoleIds,
    String? signalName,
    required String priority,
    DateTime? dueAt,
    required String input,
    required String output,
    required String metadata,
    _is.UuidValue? completedBy,
    DateTime? completedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? startedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? startedBy,
    _is.UuidValue? updatedBy,
  }) = _ElogWorkItemsImpl;

  factory ElogWorkItems.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogWorkItems(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      workflowInstanceId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['workflowInstanceId'],
      ),
      nodeId: jsonSerialization['nodeId'] as String,
      taskType: jsonSerialization['taskType'] as String,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String?,
      status: jsonSerialization['status'] as String,
      assignedUserIds: _ioh8es0p.Protocol().deserialize<List<String>>(
        jsonSerialization['assignedUserIds'],
      ),
      assignedGroupIds: _ioh8es0p.Protocol().deserialize<List<String>>(
        jsonSerialization['assignedGroupIds'],
      ),
      assignedRoleIds: _ioh8es0p.Protocol().deserialize<List<String>>(
        jsonSerialization['assignedRoleIds'],
      ),
      signalName: jsonSerialization['signalName'] as String?,
      priority: jsonSerialization['priority'] as String,
      dueAt: jsonSerialization['dueAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
      input: jsonSerialization['input'] as String,
      output: jsonSerialization['output'] as String,
      metadata: jsonSerialization['metadata'] as String,
      completedBy: jsonSerialization['completedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['completedBy'],
            ),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      startedAt: jsonSerialization['startedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['createdBy']),
      startedBy: jsonSerialization['startedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['startedBy']),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['updatedBy']),
    );
  }

  static final t = ElogWorkItemsTable();

  static const db = ElogWorkItemsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue idField;

  _is.UuidValue workflowInstanceId;

  String nodeId;

  String taskType;

  String title;

  String? description;

  String status;

  List<String> assignedUserIds;

  List<String> assignedGroupIds;

  List<String> assignedRoleIds;

  String? signalName;

  String priority;

  DateTime? dueAt;

  String input;

  String output;

  String metadata;

  _is.UuidValue? completedBy;

  DateTime? completedAt;

  DateTime createdAt;

  DateTime updatedAt;

  DateTime? startedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? startedBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogWorkItems]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogWorkItems copyWith({
    _is.UuidValue? id,
    _is.UuidValue? idField,
    _is.UuidValue? workflowInstanceId,
    String? nodeId,
    String? taskType,
    String? title,
    String? description,
    String? status,
    List<String>? assignedUserIds,
    List<String>? assignedGroupIds,
    List<String>? assignedRoleIds,
    String? signalName,
    String? priority,
    DateTime? dueAt,
    String? input,
    String? output,
    String? metadata,
    _is.UuidValue? completedBy,
    DateTime? completedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? startedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? startedBy,
    _is.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogWorkItems',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'workflowInstanceId': workflowInstanceId.toJson(),
      'nodeId': nodeId,
      'taskType': taskType,
      'title': title,
      if (description != null) 'description': description,
      'status': status,
      'assignedUserIds': assignedUserIds.toJson(),
      'assignedGroupIds': assignedGroupIds.toJson(),
      'assignedRoleIds': assignedRoleIds.toJson(),
      if (signalName != null) 'signalName': signalName,
      'priority': priority,
      if (dueAt != null) 'dueAt': dueAt?.toJson(),
      'input': input,
      'output': output,
      'metadata': metadata,
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (startedBy != null) 'startedBy': startedBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogWorkItems',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'workflowInstanceId': workflowInstanceId.toJson(),
      'nodeId': nodeId,
      'taskType': taskType,
      'title': title,
      if (description != null) 'description': description,
      'status': status,
      'assignedUserIds': assignedUserIds.toJson(),
      'assignedGroupIds': assignedGroupIds.toJson(),
      'assignedRoleIds': assignedRoleIds.toJson(),
      if (signalName != null) 'signalName': signalName,
      'priority': priority,
      if (dueAt != null) 'dueAt': dueAt?.toJson(),
      'input': input,
      'output': output,
      'metadata': metadata,
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (startedBy != null) 'startedBy': startedBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static ElogWorkItemsInclude include() {
    return ElogWorkItemsInclude._();
  }

  static ElogWorkItemsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogWorkItemsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogWorkItemsTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkItemsTable>? orderByList,
    ElogWorkItemsInclude? include,
  }) {
    return ElogWorkItemsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogWorkItems.t),
      orderByList: orderByList?.call(ElogWorkItems.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogWorkItemsImpl extends ElogWorkItems {
  _ElogWorkItemsImpl({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required _is.UuidValue workflowInstanceId,
    required String nodeId,
    required String taskType,
    required String title,
    String? description,
    required String status,
    required List<String> assignedUserIds,
    required List<String> assignedGroupIds,
    required List<String> assignedRoleIds,
    String? signalName,
    required String priority,
    DateTime? dueAt,
    required String input,
    required String output,
    required String metadata,
    _is.UuidValue? completedBy,
    DateTime? completedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? startedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? startedBy,
    _is.UuidValue? updatedBy,
  }) : super._(
         id: id,
         idField: idField,
         workflowInstanceId: workflowInstanceId,
         nodeId: nodeId,
         taskType: taskType,
         title: title,
         description: description,
         status: status,
         assignedUserIds: assignedUserIds,
         assignedGroupIds: assignedGroupIds,
         assignedRoleIds: assignedRoleIds,
         signalName: signalName,
         priority: priority,
         dueAt: dueAt,
         input: input,
         output: output,
         metadata: metadata,
         completedBy: completedBy,
         completedAt: completedAt,
         createdAt: createdAt,
         updatedAt: updatedAt,
         startedAt: startedAt,
         createdBy: createdBy,
         startedBy: startedBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogWorkItems]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogWorkItems copyWith({
    Object? id = _Undefined,
    _is.UuidValue? idField,
    _is.UuidValue? workflowInstanceId,
    String? nodeId,
    String? taskType,
    String? title,
    Object? description = _Undefined,
    String? status,
    List<String>? assignedUserIds,
    List<String>? assignedGroupIds,
    List<String>? assignedRoleIds,
    Object? signalName = _Undefined,
    String? priority,
    Object? dueAt = _Undefined,
    String? input,
    String? output,
    String? metadata,
    Object? completedBy = _Undefined,
    Object? completedAt = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? startedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? startedBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogWorkItems(
      id: id is _is.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      workflowInstanceId: workflowInstanceId ?? this.workflowInstanceId,
      nodeId: nodeId ?? this.nodeId,
      taskType: taskType ?? this.taskType,
      title: title ?? this.title,
      description: description is String? ? description : this.description,
      status: status ?? this.status,
      assignedUserIds:
          assignedUserIds ?? this.assignedUserIds.map((e0) => e0).toList(),
      assignedGroupIds:
          assignedGroupIds ?? this.assignedGroupIds.map((e0) => e0).toList(),
      assignedRoleIds:
          assignedRoleIds ?? this.assignedRoleIds.map((e0) => e0).toList(),
      signalName: signalName is String? ? signalName : this.signalName,
      priority: priority ?? this.priority,
      dueAt: dueAt is DateTime? ? dueAt : this.dueAt,
      input: input ?? this.input,
      output: output ?? this.output,
      metadata: metadata ?? this.metadata,
      completedBy: completedBy is _is.UuidValue?
          ? completedBy
          : this.completedBy,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      startedAt: startedAt is DateTime? ? startedAt : this.startedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      startedBy: startedBy is _is.UuidValue? ? startedBy : this.startedBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class ElogWorkItemsUpdateTable extends _is.UpdateTable<ElogWorkItemsTable> {
  ElogWorkItemsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> idField(_is.UuidValue value) =>
      _is.ColumnValue(
        table.idField,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> workflowInstanceId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.workflowInstanceId,
    value,
  );

  _is.ColumnValue<String, String> nodeId(String value) => _is.ColumnValue(
    table.nodeId,
    value,
  );

  _is.ColumnValue<String, String> taskType(String value) => _is.ColumnValue(
    table.taskType,
    value,
  );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<List<String>, List<String>> assignedUserIds(
    List<String> value,
  ) => _is.ColumnValue(
    table.assignedUserIds,
    value,
  );

  _is.ColumnValue<List<String>, List<String>> assignedGroupIds(
    List<String> value,
  ) => _is.ColumnValue(
    table.assignedGroupIds,
    value,
  );

  _is.ColumnValue<List<String>, List<String>> assignedRoleIds(
    List<String> value,
  ) => _is.ColumnValue(
    table.assignedRoleIds,
    value,
  );

  _is.ColumnValue<String, String> signalName(String? value) => _is.ColumnValue(
    table.signalName,
    value,
  );

  _is.ColumnValue<String, String> priority(String value) => _is.ColumnValue(
    table.priority,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> dueAt(DateTime? value) => _is.ColumnValue(
    table.dueAt,
    value,
  );

  _is.ColumnValue<String, String> input(String value) => _is.ColumnValue(
    table.input,
    value,
  );

  _is.ColumnValue<String, String> output(String value) => _is.ColumnValue(
    table.output,
    value,
  );

  _is.ColumnValue<String, String> metadata(String value) => _is.ColumnValue(
    table.metadata,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> completedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.completedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> completedAt(DateTime? value) =>
      _is.ColumnValue(
        table.completedAt,
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

  _is.ColumnValue<DateTime, DateTime> startedAt(DateTime? value) =>
      _is.ColumnValue(
        table.startedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> createdBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.createdBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> startedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.startedBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> updatedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.updatedBy,
    value,
  );
}

class ElogWorkItemsTable extends _is.Table<_is.UuidValue?> {
  ElogWorkItemsTable({super.tableRelation})
    : super(tableName: 'elog_work_items') {
    updateTable = ElogWorkItemsUpdateTable(this);
    idField = _is.ColumnUuid(
      'idField',
      this,
    );
    workflowInstanceId = _is.ColumnUuid(
      'workflowInstanceId',
      this,
    );
    nodeId = _is.ColumnString(
      'nodeId',
      this,
    );
    taskType = _is.ColumnString(
      'taskType',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    assignedUserIds = _is.ColumnSerializable<List<String>>(
      'assignedUserIds',
      this,
    );
    assignedGroupIds = _is.ColumnSerializable<List<String>>(
      'assignedGroupIds',
      this,
    );
    assignedRoleIds = _is.ColumnSerializable<List<String>>(
      'assignedRoleIds',
      this,
    );
    signalName = _is.ColumnString(
      'signalName',
      this,
    );
    priority = _is.ColumnString(
      'priority',
      this,
    );
    dueAt = _is.ColumnDateTime(
      'dueAt',
      this,
    );
    input = _is.ColumnString(
      'input',
      this,
    );
    output = _is.ColumnString(
      'output',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
      this,
    );
    completedBy = _is.ColumnUuid(
      'completedBy',
      this,
    );
    completedAt = _is.ColumnDateTime(
      'completedAt',
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
    startedAt = _is.ColumnDateTime(
      'startedAt',
      this,
    );
    createdBy = _is.ColumnUuid(
      'createdBy',
      this,
    );
    startedBy = _is.ColumnUuid(
      'startedBy',
      this,
    );
    updatedBy = _is.ColumnUuid(
      'updatedBy',
      this,
    );
  }

  late final ElogWorkItemsUpdateTable updateTable;

  late final _is.ColumnUuid idField;

  late final _is.ColumnUuid workflowInstanceId;

  late final _is.ColumnString nodeId;

  late final _is.ColumnString taskType;

  late final _is.ColumnString title;

  late final _is.ColumnString description;

  late final _is.ColumnString status;

  late final _is.ColumnSerializable<List<String>> assignedUserIds;

  late final _is.ColumnSerializable<List<String>> assignedGroupIds;

  late final _is.ColumnSerializable<List<String>> assignedRoleIds;

  late final _is.ColumnString signalName;

  late final _is.ColumnString priority;

  late final _is.ColumnDateTime dueAt;

  late final _is.ColumnString input;

  late final _is.ColumnString output;

  late final _is.ColumnString metadata;

  late final _is.ColumnUuid completedBy;

  late final _is.ColumnDateTime completedAt;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnDateTime startedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid startedBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    idField,
    workflowInstanceId,
    nodeId,
    taskType,
    title,
    description,
    status,
    assignedUserIds,
    assignedGroupIds,
    assignedRoleIds,
    signalName,
    priority,
    dueAt,
    input,
    output,
    metadata,
    completedBy,
    completedAt,
    createdAt,
    updatedAt,
    startedAt,
    createdBy,
    startedBy,
    updatedBy,
  ];
}

class ElogWorkItemsInclude extends _is.IncludeObject {
  ElogWorkItemsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogWorkItems.t;
}

class ElogWorkItemsIncludeList extends _is.IncludeList {
  ElogWorkItemsIncludeList._({
    _is.WhereExpressionBuilder<ElogWorkItemsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogWorkItems.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogWorkItems.t;
}

class ElogWorkItemsRepository {
  const ElogWorkItemsRepository._();

  /// Returns a list of [ElogWorkItems]s matching the given query parameters.
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
  Future<List<ElogWorkItems>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogWorkItemsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogWorkItemsTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkItemsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogWorkItems>(
      where: where?.call(ElogWorkItems.t),
      orderBy: orderBy?.call(ElogWorkItems.t),
      orderByList: orderByList?.call(ElogWorkItems.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogWorkItems] matching the given query parameters.
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
  Future<ElogWorkItems?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogWorkItemsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogWorkItemsTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkItemsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogWorkItems>(
      where: where?.call(ElogWorkItems.t),
      orderBy: orderBy?.call(ElogWorkItems.t),
      orderByList: orderByList?.call(ElogWorkItems.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogWorkItems] by its [id] or null if no such row exists.
  Future<ElogWorkItems?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogWorkItems>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogWorkItems]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogWorkItems]s will have their `id` fields set.
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
  Future<List<ElogWorkItems>> insert(
    _is.DatabaseSession session,
    List<ElogWorkItems> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogWorkItems>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogWorkItems] and returns the inserted row.
  ///
  /// The returned [ElogWorkItems] will have its `id` field set.
  Future<ElogWorkItems> insertRow(
    _is.DatabaseSession session,
    ElogWorkItems row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogWorkItems>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogWorkItems]s in the list and returns the resulting rows.
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
  /// The returned [ElogWorkItems]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogWorkItems>> upsert(
    _is.DatabaseSession session,
    List<ElogWorkItems> rows, {
    required _is.ColumnSelections<ElogWorkItemsTable> conflictColumns,
    _is.ColumnSelections<ElogWorkItemsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogWorkItemsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogWorkItems>(
      rows,
      conflictColumns: conflictColumns(ElogWorkItems.t),
      updateColumns: updateColumns?.call(ElogWorkItems.t),
      updateWhere: updateWhere?.call(ElogWorkItems.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogWorkItems] and returns the resulting row.
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
  /// The returned [ElogWorkItems] will have its `id` field set.
  Future<ElogWorkItems?> upsertRow(
    _is.DatabaseSession session,
    ElogWorkItems row, {
    required _is.ColumnSelections<ElogWorkItemsTable> conflictColumns,
    _is.ColumnSelections<ElogWorkItemsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogWorkItemsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogWorkItems>(
      row,
      conflictColumns: conflictColumns(ElogWorkItems.t),
      updateColumns: updateColumns?.call(ElogWorkItems.t),
      updateWhere: updateWhere?.call(ElogWorkItems.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogWorkItems]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogWorkItems>> update(
    _is.DatabaseSession session,
    List<ElogWorkItems> rows, {
    _is.ColumnSelections<ElogWorkItemsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogWorkItems>(
      rows,
      columns: columns?.call(ElogWorkItems.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogWorkItems]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogWorkItems> updateRow(
    _is.DatabaseSession session,
    ElogWorkItems row, {
    _is.ColumnSelections<ElogWorkItemsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogWorkItems>(
      row,
      columns: columns?.call(ElogWorkItems.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogWorkItems] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogWorkItems?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogWorkItemsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogWorkItems>(
      id,
      columnValues: columnValues(ElogWorkItems.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogWorkItems]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogWorkItems>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogWorkItemsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogWorkItemsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogWorkItemsTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkItemsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogWorkItems>(
      columnValues: columnValues(ElogWorkItems.t.updateTable),
      where: where(ElogWorkItems.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogWorkItems.t),
      orderByList: orderByList?.call(ElogWorkItems.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogWorkItems]s in the list and returns the deleted rows.
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
  Future<List<ElogWorkItems>> delete(
    _is.DatabaseSession session,
    List<ElogWorkItems> rows, {
    _is.OrderByBuilder<ElogWorkItemsTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkItemsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogWorkItems>(
      rows,
      orderBy: orderBy?.call(ElogWorkItems.t),
      orderByList: orderByList?.call(ElogWorkItems.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogWorkItems].
  Future<ElogWorkItems> deleteRow(
    _is.DatabaseSession session,
    ElogWorkItems row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogWorkItems>(
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
  Future<List<ElogWorkItems>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogWorkItemsTable> where,
    _is.OrderByBuilder<ElogWorkItemsTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkItemsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogWorkItems>(
      where: where(ElogWorkItems.t),
      orderBy: orderBy?.call(ElogWorkItems.t),
      orderByList: orderByList?.call(ElogWorkItems.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogWorkItemsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogWorkItems>(
      where: where?.call(ElogWorkItems.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogWorkItems] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogWorkItemsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogWorkItems>(
      where: where(ElogWorkItems.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
