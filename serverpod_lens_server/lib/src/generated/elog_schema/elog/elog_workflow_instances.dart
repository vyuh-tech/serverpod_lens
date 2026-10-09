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

abstract class ElogWorkflowInstances
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogWorkflowInstances._({
    this.id,
    required this.idField,
    required this.workflowId,
    required this.workflowVersion,
    required this.status,
    required this.input,
    required this.output,
    required this.variables,
    required this.tokens,
    required this.runNumber,
    this.parentInstanceId,
    this.parentNodeId,
    this.error,
    this.correlationId,
    required this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.startedAt,
    this.completedAt,
    this.createdBy,
    this.startedBy,
    this.completedBy,
    this.updatedBy,
  });

  factory ElogWorkflowInstances({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required _is.UuidValue workflowId,
    required int workflowVersion,
    required String status,
    required String input,
    required String output,
    required String variables,
    required String tokens,
    required int runNumber,
    _is.UuidValue? parentInstanceId,
    String? parentNodeId,
    String? error,
    String? correlationId,
    required String metadata,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? startedAt,
    DateTime? completedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? startedBy,
    _is.UuidValue? completedBy,
    _is.UuidValue? updatedBy,
  }) = _ElogWorkflowInstancesImpl;

  factory ElogWorkflowInstances.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogWorkflowInstances(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      workflowId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['workflowId'],
      ),
      workflowVersion: jsonSerialization['workflowVersion'] as int,
      status: jsonSerialization['status'] as String,
      input: jsonSerialization['input'] as String,
      output: jsonSerialization['output'] as String,
      variables: jsonSerialization['variables'] as String,
      tokens: jsonSerialization['tokens'] as String,
      runNumber: jsonSerialization['runNumber'] as int,
      parentInstanceId: jsonSerialization['parentInstanceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['parentInstanceId'],
            ),
      parentNodeId: jsonSerialization['parentNodeId'] as String?,
      error: jsonSerialization['error'] as String?,
      correlationId: jsonSerialization['correlationId'] as String?,
      metadata: jsonSerialization['metadata'] as String,
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      startedAt: jsonSerialization['startedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['createdBy']),
      startedBy: jsonSerialization['startedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['startedBy']),
      completedBy: jsonSerialization['completedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['completedBy'],
            ),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['updatedBy']),
    );
  }

  static final t = ElogWorkflowInstancesTable();

  static const db = ElogWorkflowInstancesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue idField;

  _is.UuidValue workflowId;

  int workflowVersion;

  String status;

  String input;

  String output;

  String variables;

  String tokens;

  int runNumber;

  _is.UuidValue? parentInstanceId;

  String? parentNodeId;

  String? error;

  String? correlationId;

  String metadata;

  DateTime createdAt;

  DateTime updatedAt;

  DateTime? startedAt;

  DateTime? completedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? startedBy;

  _is.UuidValue? completedBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogWorkflowInstances]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogWorkflowInstances copyWith({
    _is.UuidValue? id,
    _is.UuidValue? idField,
    _is.UuidValue? workflowId,
    int? workflowVersion,
    String? status,
    String? input,
    String? output,
    String? variables,
    String? tokens,
    int? runNumber,
    _is.UuidValue? parentInstanceId,
    String? parentNodeId,
    String? error,
    String? correlationId,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? startedAt,
    DateTime? completedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? startedBy,
    _is.UuidValue? completedBy,
    _is.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogWorkflowInstances',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'workflowId': workflowId.toJson(),
      'workflowVersion': workflowVersion,
      'status': status,
      'input': input,
      'output': output,
      'variables': variables,
      'tokens': tokens,
      'runNumber': runNumber,
      if (parentInstanceId != null)
        'parentInstanceId': parentInstanceId?.toJson(),
      if (parentNodeId != null) 'parentNodeId': parentNodeId,
      if (error != null) 'error': error,
      if (correlationId != null) 'correlationId': correlationId,
      'metadata': metadata,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (startedBy != null) 'startedBy': startedBy?.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogWorkflowInstances',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'workflowId': workflowId.toJson(),
      'workflowVersion': workflowVersion,
      'status': status,
      'input': input,
      'output': output,
      'variables': variables,
      'tokens': tokens,
      'runNumber': runNumber,
      if (parentInstanceId != null)
        'parentInstanceId': parentInstanceId?.toJson(),
      if (parentNodeId != null) 'parentNodeId': parentNodeId,
      if (error != null) 'error': error,
      if (correlationId != null) 'correlationId': correlationId,
      'metadata': metadata,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (startedBy != null) 'startedBy': startedBy?.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static ElogWorkflowInstancesInclude include() {
    return ElogWorkflowInstancesInclude._();
  }

  static ElogWorkflowInstancesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogWorkflowInstancesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogWorkflowInstancesTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkflowInstancesTable>? orderByList,
    ElogWorkflowInstancesInclude? include,
  }) {
    return ElogWorkflowInstancesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogWorkflowInstances.t),
      orderByList: orderByList?.call(ElogWorkflowInstances.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogWorkflowInstancesImpl extends ElogWorkflowInstances {
  _ElogWorkflowInstancesImpl({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required _is.UuidValue workflowId,
    required int workflowVersion,
    required String status,
    required String input,
    required String output,
    required String variables,
    required String tokens,
    required int runNumber,
    _is.UuidValue? parentInstanceId,
    String? parentNodeId,
    String? error,
    String? correlationId,
    required String metadata,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? startedAt,
    DateTime? completedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? startedBy,
    _is.UuidValue? completedBy,
    _is.UuidValue? updatedBy,
  }) : super._(
         id: id,
         idField: idField,
         workflowId: workflowId,
         workflowVersion: workflowVersion,
         status: status,
         input: input,
         output: output,
         variables: variables,
         tokens: tokens,
         runNumber: runNumber,
         parentInstanceId: parentInstanceId,
         parentNodeId: parentNodeId,
         error: error,
         correlationId: correlationId,
         metadata: metadata,
         createdAt: createdAt,
         updatedAt: updatedAt,
         startedAt: startedAt,
         completedAt: completedAt,
         createdBy: createdBy,
         startedBy: startedBy,
         completedBy: completedBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogWorkflowInstances]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogWorkflowInstances copyWith({
    Object? id = _Undefined,
    _is.UuidValue? idField,
    _is.UuidValue? workflowId,
    int? workflowVersion,
    String? status,
    String? input,
    String? output,
    String? variables,
    String? tokens,
    int? runNumber,
    Object? parentInstanceId = _Undefined,
    Object? parentNodeId = _Undefined,
    Object? error = _Undefined,
    Object? correlationId = _Undefined,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? startedAt = _Undefined,
    Object? completedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? startedBy = _Undefined,
    Object? completedBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogWorkflowInstances(
      id: id is _is.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      workflowId: workflowId ?? this.workflowId,
      workflowVersion: workflowVersion ?? this.workflowVersion,
      status: status ?? this.status,
      input: input ?? this.input,
      output: output ?? this.output,
      variables: variables ?? this.variables,
      tokens: tokens ?? this.tokens,
      runNumber: runNumber ?? this.runNumber,
      parentInstanceId: parentInstanceId is _is.UuidValue?
          ? parentInstanceId
          : this.parentInstanceId,
      parentNodeId: parentNodeId is String? ? parentNodeId : this.parentNodeId,
      error: error is String? ? error : this.error,
      correlationId: correlationId is String?
          ? correlationId
          : this.correlationId,
      metadata: metadata ?? this.metadata,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      startedAt: startedAt is DateTime? ? startedAt : this.startedAt,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      startedBy: startedBy is _is.UuidValue? ? startedBy : this.startedBy,
      completedBy: completedBy is _is.UuidValue?
          ? completedBy
          : this.completedBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class ElogWorkflowInstancesUpdateTable
    extends _is.UpdateTable<ElogWorkflowInstancesTable> {
  ElogWorkflowInstancesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> idField(_is.UuidValue value) =>
      _is.ColumnValue(
        table.idField,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> workflowId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.workflowId,
    value,
  );

  _is.ColumnValue<int, int> workflowVersion(int value) => _is.ColumnValue(
    table.workflowVersion,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
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

  _is.ColumnValue<String, String> variables(String value) => _is.ColumnValue(
    table.variables,
    value,
  );

  _is.ColumnValue<String, String> tokens(String value) => _is.ColumnValue(
    table.tokens,
    value,
  );

  _is.ColumnValue<int, int> runNumber(int value) => _is.ColumnValue(
    table.runNumber,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> parentInstanceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.parentInstanceId,
    value,
  );

  _is.ColumnValue<String, String> parentNodeId(String? value) =>
      _is.ColumnValue(
        table.parentNodeId,
        value,
      );

  _is.ColumnValue<String, String> error(String? value) => _is.ColumnValue(
    table.error,
    value,
  );

  _is.ColumnValue<String, String> correlationId(String? value) =>
      _is.ColumnValue(
        table.correlationId,
        value,
      );

  _is.ColumnValue<String, String> metadata(String value) => _is.ColumnValue(
    table.metadata,
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

  _is.ColumnValue<DateTime, DateTime> completedAt(DateTime? value) =>
      _is.ColumnValue(
        table.completedAt,
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

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> completedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.completedBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> updatedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.updatedBy,
    value,
  );
}

class ElogWorkflowInstancesTable extends _is.Table<_is.UuidValue?> {
  ElogWorkflowInstancesTable({super.tableRelation})
    : super(tableName: 'elog_workflow_instances') {
    updateTable = ElogWorkflowInstancesUpdateTable(this);
    idField = _is.ColumnUuid(
      'idField',
      this,
    );
    workflowId = _is.ColumnUuid(
      'workflowId',
      this,
    );
    workflowVersion = _is.ColumnInt(
      'workflowVersion',
      this,
    );
    status = _is.ColumnString(
      'status',
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
    variables = _is.ColumnString(
      'variables',
      this,
    );
    tokens = _is.ColumnString(
      'tokens',
      this,
    );
    runNumber = _is.ColumnInt(
      'runNumber',
      this,
    );
    parentInstanceId = _is.ColumnUuid(
      'parentInstanceId',
      this,
    );
    parentNodeId = _is.ColumnString(
      'parentNodeId',
      this,
    );
    error = _is.ColumnString(
      'error',
      this,
    );
    correlationId = _is.ColumnString(
      'correlationId',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
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
    completedAt = _is.ColumnDateTime(
      'completedAt',
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
    completedBy = _is.ColumnUuid(
      'completedBy',
      this,
    );
    updatedBy = _is.ColumnUuid(
      'updatedBy',
      this,
    );
  }

  late final ElogWorkflowInstancesUpdateTable updateTable;

  late final _is.ColumnUuid idField;

  late final _is.ColumnUuid workflowId;

  late final _is.ColumnInt workflowVersion;

  late final _is.ColumnString status;

  late final _is.ColumnString input;

  late final _is.ColumnString output;

  late final _is.ColumnString variables;

  late final _is.ColumnString tokens;

  late final _is.ColumnInt runNumber;

  late final _is.ColumnUuid parentInstanceId;

  late final _is.ColumnString parentNodeId;

  late final _is.ColumnString error;

  late final _is.ColumnString correlationId;

  late final _is.ColumnString metadata;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnDateTime startedAt;

  late final _is.ColumnDateTime completedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid startedBy;

  late final _is.ColumnUuid completedBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    idField,
    workflowId,
    workflowVersion,
    status,
    input,
    output,
    variables,
    tokens,
    runNumber,
    parentInstanceId,
    parentNodeId,
    error,
    correlationId,
    metadata,
    createdAt,
    updatedAt,
    startedAt,
    completedAt,
    createdBy,
    startedBy,
    completedBy,
    updatedBy,
  ];
}

class ElogWorkflowInstancesInclude extends _is.IncludeObject {
  ElogWorkflowInstancesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogWorkflowInstances.t;
}

class ElogWorkflowInstancesIncludeList extends _is.IncludeList {
  ElogWorkflowInstancesIncludeList._({
    _is.WhereExpressionBuilder<ElogWorkflowInstancesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogWorkflowInstances.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogWorkflowInstances.t;
}

class ElogWorkflowInstancesRepository {
  const ElogWorkflowInstancesRepository._();

  /// Returns a list of [ElogWorkflowInstances]s matching the given query parameters.
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
  Future<List<ElogWorkflowInstances>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogWorkflowInstancesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogWorkflowInstancesTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkflowInstancesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogWorkflowInstances>(
      where: where?.call(ElogWorkflowInstances.t),
      orderBy: orderBy?.call(ElogWorkflowInstances.t),
      orderByList: orderByList?.call(ElogWorkflowInstances.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogWorkflowInstances] matching the given query parameters.
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
  Future<ElogWorkflowInstances?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogWorkflowInstancesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogWorkflowInstancesTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkflowInstancesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogWorkflowInstances>(
      where: where?.call(ElogWorkflowInstances.t),
      orderBy: orderBy?.call(ElogWorkflowInstances.t),
      orderByList: orderByList?.call(ElogWorkflowInstances.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogWorkflowInstances] by its [id] or null if no such row exists.
  Future<ElogWorkflowInstances?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogWorkflowInstances>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogWorkflowInstances]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogWorkflowInstances]s will have their `id` fields set.
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
  Future<List<ElogWorkflowInstances>> insert(
    _is.DatabaseSession session,
    List<ElogWorkflowInstances> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogWorkflowInstances>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogWorkflowInstances] and returns the inserted row.
  ///
  /// The returned [ElogWorkflowInstances] will have its `id` field set.
  Future<ElogWorkflowInstances> insertRow(
    _is.DatabaseSession session,
    ElogWorkflowInstances row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogWorkflowInstances>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogWorkflowInstances]s in the list and returns the resulting rows.
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
  /// The returned [ElogWorkflowInstances]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogWorkflowInstances>> upsert(
    _is.DatabaseSession session,
    List<ElogWorkflowInstances> rows, {
    required _is.ColumnSelections<ElogWorkflowInstancesTable> conflictColumns,
    _is.ColumnSelections<ElogWorkflowInstancesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogWorkflowInstancesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogWorkflowInstances>(
      rows,
      conflictColumns: conflictColumns(ElogWorkflowInstances.t),
      updateColumns: updateColumns?.call(ElogWorkflowInstances.t),
      updateWhere: updateWhere?.call(ElogWorkflowInstances.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogWorkflowInstances] and returns the resulting row.
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
  /// The returned [ElogWorkflowInstances] will have its `id` field set.
  Future<ElogWorkflowInstances?> upsertRow(
    _is.DatabaseSession session,
    ElogWorkflowInstances row, {
    required _is.ColumnSelections<ElogWorkflowInstancesTable> conflictColumns,
    _is.ColumnSelections<ElogWorkflowInstancesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogWorkflowInstancesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogWorkflowInstances>(
      row,
      conflictColumns: conflictColumns(ElogWorkflowInstances.t),
      updateColumns: updateColumns?.call(ElogWorkflowInstances.t),
      updateWhere: updateWhere?.call(ElogWorkflowInstances.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogWorkflowInstances]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogWorkflowInstances>> update(
    _is.DatabaseSession session,
    List<ElogWorkflowInstances> rows, {
    _is.ColumnSelections<ElogWorkflowInstancesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogWorkflowInstances>(
      rows,
      columns: columns?.call(ElogWorkflowInstances.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogWorkflowInstances]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogWorkflowInstances> updateRow(
    _is.DatabaseSession session,
    ElogWorkflowInstances row, {
    _is.ColumnSelections<ElogWorkflowInstancesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogWorkflowInstances>(
      row,
      columns: columns?.call(ElogWorkflowInstances.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogWorkflowInstances] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogWorkflowInstances?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogWorkflowInstancesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogWorkflowInstances>(
      id,
      columnValues: columnValues(ElogWorkflowInstances.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogWorkflowInstances]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogWorkflowInstances>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogWorkflowInstancesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogWorkflowInstancesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogWorkflowInstancesTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkflowInstancesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogWorkflowInstances>(
      columnValues: columnValues(ElogWorkflowInstances.t.updateTable),
      where: where(ElogWorkflowInstances.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogWorkflowInstances.t),
      orderByList: orderByList?.call(ElogWorkflowInstances.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogWorkflowInstances]s in the list and returns the deleted rows.
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
  Future<List<ElogWorkflowInstances>> delete(
    _is.DatabaseSession session,
    List<ElogWorkflowInstances> rows, {
    _is.OrderByBuilder<ElogWorkflowInstancesTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkflowInstancesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogWorkflowInstances>(
      rows,
      orderBy: orderBy?.call(ElogWorkflowInstances.t),
      orderByList: orderByList?.call(ElogWorkflowInstances.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogWorkflowInstances].
  Future<ElogWorkflowInstances> deleteRow(
    _is.DatabaseSession session,
    ElogWorkflowInstances row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogWorkflowInstances>(
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
  Future<List<ElogWorkflowInstances>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogWorkflowInstancesTable> where,
    _is.OrderByBuilder<ElogWorkflowInstancesTable>? orderBy,
    _is.OrderByListBuilder<ElogWorkflowInstancesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogWorkflowInstances>(
      where: where(ElogWorkflowInstances.t),
      orderBy: orderBy?.call(ElogWorkflowInstances.t),
      orderByList: orderByList?.call(ElogWorkflowInstances.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogWorkflowInstancesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogWorkflowInstances>(
      where: where?.call(ElogWorkflowInstances.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogWorkflowInstances] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogWorkflowInstancesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogWorkflowInstances>(
      where: where(ElogWorkflowInstances.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
