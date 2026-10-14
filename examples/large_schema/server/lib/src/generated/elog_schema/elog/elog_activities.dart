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

abstract class ElogActivities
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogActivities._({
    this.id,
    required this.name,
    this.description,
    required this.activityType,
    this.cleaningTypeId,
    required this.policyDomain,
    required this.resourceType,
    this.resourceId,
    this.operatingAreaId,
    this.assignedToUserId,
    this.assignedToGroupId,
    this.assignedBy,
    this.assignedAt,
    this.startedBy,
    this.submittedBy,
    this.completedBy,
    this.resourceUsageId,
    this.witnessId,
    this.operatorSignature,
    this.witnessSignature,
    this.cancellationReason,
    required this.origin,
    this.problemId,
    this.scheduleRef,
    this.pausedByProblemId,
    this.scheduledAt,
    this.dueAt,
    this.startedAt,
    this.submittedAt,
    this.completedAt,
    required this.activityConfigSnapshot,
    required this.metadata,
    required this.status,
    required this.priority,
    this.workflowInstanceId,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
    required this.versionNumber,
  });

  factory ElogActivities({
    _is.UuidValue? id,
    required String name,
    String? description,
    required String activityType,
    _is.UuidValue? cleaningTypeId,
    required String policyDomain,
    required String resourceType,
    _is.UuidValue? resourceId,
    _is.UuidValue? operatingAreaId,
    _is.UuidValue? assignedToUserId,
    _is.UuidValue? assignedToGroupId,
    _is.UuidValue? assignedBy,
    DateTime? assignedAt,
    _is.UuidValue? startedBy,
    _is.UuidValue? submittedBy,
    _is.UuidValue? completedBy,
    _is.UuidValue? resourceUsageId,
    _is.UuidValue? witnessId,
    String? operatorSignature,
    String? witnessSignature,
    String? cancellationReason,
    required String origin,
    _is.UuidValue? problemId,
    String? scheduleRef,
    _is.UuidValue? pausedByProblemId,
    DateTime? scheduledAt,
    DateTime? dueAt,
    DateTime? startedAt,
    DateTime? submittedAt,
    DateTime? completedAt,
    required String activityConfigSnapshot,
    required String metadata,
    required String status,
    required String priority,
    _is.UuidValue? workflowInstanceId,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    required int versionNumber,
  }) = _ElogActivitiesImpl;

  factory ElogActivities.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogActivities(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      activityType: jsonSerialization['activityType'] as String,
      cleaningTypeId: jsonSerialization['cleaningTypeId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['cleaningTypeId'],
            ),
      policyDomain: jsonSerialization['policyDomain'] as String,
      resourceType: jsonSerialization['resourceType'] as String,
      resourceId: jsonSerialization['resourceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceId'],
            ),
      operatingAreaId: jsonSerialization['operatingAreaId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['operatingAreaId'],
            ),
      assignedToUserId: jsonSerialization['assignedToUserId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['assignedToUserId'],
            ),
      assignedToGroupId: jsonSerialization['assignedToGroupId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['assignedToGroupId'],
            ),
      assignedBy: jsonSerialization['assignedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['assignedBy'],
            ),
      assignedAt: jsonSerialization['assignedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['assignedAt']),
      startedBy: jsonSerialization['startedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['startedBy']),
      submittedBy: jsonSerialization['submittedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['submittedBy'],
            ),
      completedBy: jsonSerialization['completedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['completedBy'],
            ),
      resourceUsageId: jsonSerialization['resourceUsageId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceUsageId'],
            ),
      witnessId: jsonSerialization['witnessId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['witnessId']),
      operatorSignature: jsonSerialization['operatorSignature'] as String?,
      witnessSignature: jsonSerialization['witnessSignature'] as String?,
      cancellationReason: jsonSerialization['cancellationReason'] as String?,
      origin: jsonSerialization['origin'] as String,
      problemId: jsonSerialization['problemId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['problemId']),
      scheduleRef: jsonSerialization['scheduleRef'] as String?,
      pausedByProblemId: jsonSerialization['pausedByProblemId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['pausedByProblemId'],
            ),
      scheduledAt: jsonSerialization['scheduledAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['scheduledAt'],
            ),
      dueAt: jsonSerialization['dueAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
      startedAt: jsonSerialization['startedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      submittedAt: jsonSerialization['submittedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['submittedAt'],
            ),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      activityConfigSnapshot:
          jsonSerialization['activityConfigSnapshot'] as String,
      metadata: jsonSerialization['metadata'] as String,
      status: jsonSerialization['status'] as String,
      priority: jsonSerialization['priority'] as String,
      workflowInstanceId: jsonSerialization['workflowInstanceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowInstanceId'],
            ),
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
      versionNumber: jsonSerialization['versionNumber'] as int,
    );
  }

  static final t = ElogActivitiesTable();

  static const db = ElogActivitiesRepository._();

  @override
  _is.UuidValue? id;

  String name;

  String? description;

  String activityType;

  _is.UuidValue? cleaningTypeId;

  String policyDomain;

  String resourceType;

  _is.UuidValue? resourceId;

  _is.UuidValue? operatingAreaId;

  _is.UuidValue? assignedToUserId;

  _is.UuidValue? assignedToGroupId;

  _is.UuidValue? assignedBy;

  DateTime? assignedAt;

  _is.UuidValue? startedBy;

  _is.UuidValue? submittedBy;

  _is.UuidValue? completedBy;

  _is.UuidValue? resourceUsageId;

  _is.UuidValue? witnessId;

  String? operatorSignature;

  String? witnessSignature;

  String? cancellationReason;

  String origin;

  _is.UuidValue? problemId;

  String? scheduleRef;

  _is.UuidValue? pausedByProblemId;

  DateTime? scheduledAt;

  DateTime? dueAt;

  DateTime? startedAt;

  DateTime? submittedAt;

  DateTime? completedAt;

  String activityConfigSnapshot;

  String metadata;

  String status;

  String priority;

  _is.UuidValue? workflowInstanceId;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  int versionNumber;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogActivities]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogActivities copyWith({
    _is.UuidValue? id,
    String? name,
    String? description,
    String? activityType,
    _is.UuidValue? cleaningTypeId,
    String? policyDomain,
    String? resourceType,
    _is.UuidValue? resourceId,
    _is.UuidValue? operatingAreaId,
    _is.UuidValue? assignedToUserId,
    _is.UuidValue? assignedToGroupId,
    _is.UuidValue? assignedBy,
    DateTime? assignedAt,
    _is.UuidValue? startedBy,
    _is.UuidValue? submittedBy,
    _is.UuidValue? completedBy,
    _is.UuidValue? resourceUsageId,
    _is.UuidValue? witnessId,
    String? operatorSignature,
    String? witnessSignature,
    String? cancellationReason,
    String? origin,
    _is.UuidValue? problemId,
    String? scheduleRef,
    _is.UuidValue? pausedByProblemId,
    DateTime? scheduledAt,
    DateTime? dueAt,
    DateTime? startedAt,
    DateTime? submittedAt,
    DateTime? completedAt,
    String? activityConfigSnapshot,
    String? metadata,
    String? status,
    String? priority,
    _is.UuidValue? workflowInstanceId,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    int? versionNumber,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogActivities',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'activityType': activityType,
      if (cleaningTypeId != null) 'cleaningTypeId': cleaningTypeId?.toJson(),
      'policyDomain': policyDomain,
      'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (operatingAreaId != null) 'operatingAreaId': operatingAreaId?.toJson(),
      if (assignedToUserId != null)
        'assignedToUserId': assignedToUserId?.toJson(),
      if (assignedToGroupId != null)
        'assignedToGroupId': assignedToGroupId?.toJson(),
      if (assignedBy != null) 'assignedBy': assignedBy?.toJson(),
      if (assignedAt != null) 'assignedAt': assignedAt?.toJson(),
      if (startedBy != null) 'startedBy': startedBy?.toJson(),
      if (submittedBy != null) 'submittedBy': submittedBy?.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (resourceUsageId != null) 'resourceUsageId': resourceUsageId?.toJson(),
      if (witnessId != null) 'witnessId': witnessId?.toJson(),
      if (operatorSignature != null) 'operatorSignature': operatorSignature,
      if (witnessSignature != null) 'witnessSignature': witnessSignature,
      if (cancellationReason != null) 'cancellationReason': cancellationReason,
      'origin': origin,
      if (problemId != null) 'problemId': problemId?.toJson(),
      if (scheduleRef != null) 'scheduleRef': scheduleRef,
      if (pausedByProblemId != null)
        'pausedByProblemId': pausedByProblemId?.toJson(),
      if (scheduledAt != null) 'scheduledAt': scheduledAt?.toJson(),
      if (dueAt != null) 'dueAt': dueAt?.toJson(),
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      'activityConfigSnapshot': activityConfigSnapshot,
      'metadata': metadata,
      'status': status,
      'priority': priority,
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      'versionNumber': versionNumber,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogActivities',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'activityType': activityType,
      if (cleaningTypeId != null) 'cleaningTypeId': cleaningTypeId?.toJson(),
      'policyDomain': policyDomain,
      'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (operatingAreaId != null) 'operatingAreaId': operatingAreaId?.toJson(),
      if (assignedToUserId != null)
        'assignedToUserId': assignedToUserId?.toJson(),
      if (assignedToGroupId != null)
        'assignedToGroupId': assignedToGroupId?.toJson(),
      if (assignedBy != null) 'assignedBy': assignedBy?.toJson(),
      if (assignedAt != null) 'assignedAt': assignedAt?.toJson(),
      if (startedBy != null) 'startedBy': startedBy?.toJson(),
      if (submittedBy != null) 'submittedBy': submittedBy?.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (resourceUsageId != null) 'resourceUsageId': resourceUsageId?.toJson(),
      if (witnessId != null) 'witnessId': witnessId?.toJson(),
      if (operatorSignature != null) 'operatorSignature': operatorSignature,
      if (witnessSignature != null) 'witnessSignature': witnessSignature,
      if (cancellationReason != null) 'cancellationReason': cancellationReason,
      'origin': origin,
      if (problemId != null) 'problemId': problemId?.toJson(),
      if (scheduleRef != null) 'scheduleRef': scheduleRef,
      if (pausedByProblemId != null)
        'pausedByProblemId': pausedByProblemId?.toJson(),
      if (scheduledAt != null) 'scheduledAt': scheduledAt?.toJson(),
      if (dueAt != null) 'dueAt': dueAt?.toJson(),
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      'activityConfigSnapshot': activityConfigSnapshot,
      'metadata': metadata,
      'status': status,
      'priority': priority,
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      'versionNumber': versionNumber,
    };
  }

  static ElogActivitiesInclude include() {
    return ElogActivitiesInclude._();
  }

  static ElogActivitiesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogActivitiesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogActivitiesTable>? orderBy,
    _is.OrderByListBuilder<ElogActivitiesTable>? orderByList,
    ElogActivitiesInclude? include,
  }) {
    return ElogActivitiesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogActivities.t),
      orderByList: orderByList?.call(ElogActivities.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogActivitiesImpl extends ElogActivities {
  _ElogActivitiesImpl({
    _is.UuidValue? id,
    required String name,
    String? description,
    required String activityType,
    _is.UuidValue? cleaningTypeId,
    required String policyDomain,
    required String resourceType,
    _is.UuidValue? resourceId,
    _is.UuidValue? operatingAreaId,
    _is.UuidValue? assignedToUserId,
    _is.UuidValue? assignedToGroupId,
    _is.UuidValue? assignedBy,
    DateTime? assignedAt,
    _is.UuidValue? startedBy,
    _is.UuidValue? submittedBy,
    _is.UuidValue? completedBy,
    _is.UuidValue? resourceUsageId,
    _is.UuidValue? witnessId,
    String? operatorSignature,
    String? witnessSignature,
    String? cancellationReason,
    required String origin,
    _is.UuidValue? problemId,
    String? scheduleRef,
    _is.UuidValue? pausedByProblemId,
    DateTime? scheduledAt,
    DateTime? dueAt,
    DateTime? startedAt,
    DateTime? submittedAt,
    DateTime? completedAt,
    required String activityConfigSnapshot,
    required String metadata,
    required String status,
    required String priority,
    _is.UuidValue? workflowInstanceId,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    required int versionNumber,
  }) : super._(
         id: id,
         name: name,
         description: description,
         activityType: activityType,
         cleaningTypeId: cleaningTypeId,
         policyDomain: policyDomain,
         resourceType: resourceType,
         resourceId: resourceId,
         operatingAreaId: operatingAreaId,
         assignedToUserId: assignedToUserId,
         assignedToGroupId: assignedToGroupId,
         assignedBy: assignedBy,
         assignedAt: assignedAt,
         startedBy: startedBy,
         submittedBy: submittedBy,
         completedBy: completedBy,
         resourceUsageId: resourceUsageId,
         witnessId: witnessId,
         operatorSignature: operatorSignature,
         witnessSignature: witnessSignature,
         cancellationReason: cancellationReason,
         origin: origin,
         problemId: problemId,
         scheduleRef: scheduleRef,
         pausedByProblemId: pausedByProblemId,
         scheduledAt: scheduledAt,
         dueAt: dueAt,
         startedAt: startedAt,
         submittedAt: submittedAt,
         completedAt: completedAt,
         activityConfigSnapshot: activityConfigSnapshot,
         metadata: metadata,
         status: status,
         priority: priority,
         workflowInstanceId: workflowInstanceId,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
         versionNumber: versionNumber,
       );

  /// Returns a shallow copy of this [ElogActivities]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogActivities copyWith({
    Object? id = _Undefined,
    String? name,
    Object? description = _Undefined,
    String? activityType,
    Object? cleaningTypeId = _Undefined,
    String? policyDomain,
    String? resourceType,
    Object? resourceId = _Undefined,
    Object? operatingAreaId = _Undefined,
    Object? assignedToUserId = _Undefined,
    Object? assignedToGroupId = _Undefined,
    Object? assignedBy = _Undefined,
    Object? assignedAt = _Undefined,
    Object? startedBy = _Undefined,
    Object? submittedBy = _Undefined,
    Object? completedBy = _Undefined,
    Object? resourceUsageId = _Undefined,
    Object? witnessId = _Undefined,
    Object? operatorSignature = _Undefined,
    Object? witnessSignature = _Undefined,
    Object? cancellationReason = _Undefined,
    String? origin,
    Object? problemId = _Undefined,
    Object? scheduleRef = _Undefined,
    Object? pausedByProblemId = _Undefined,
    Object? scheduledAt = _Undefined,
    Object? dueAt = _Undefined,
    Object? startedAt = _Undefined,
    Object? submittedAt = _Undefined,
    Object? completedAt = _Undefined,
    String? activityConfigSnapshot,
    String? metadata,
    String? status,
    String? priority,
    Object? workflowInstanceId = _Undefined,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    int? versionNumber,
  }) {
    return ElogActivities(
      id: id is _is.UuidValue? ? id : this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      activityType: activityType ?? this.activityType,
      cleaningTypeId: cleaningTypeId is _is.UuidValue?
          ? cleaningTypeId
          : this.cleaningTypeId,
      policyDomain: policyDomain ?? this.policyDomain,
      resourceType: resourceType ?? this.resourceType,
      resourceId: resourceId is _is.UuidValue? ? resourceId : this.resourceId,
      operatingAreaId: operatingAreaId is _is.UuidValue?
          ? operatingAreaId
          : this.operatingAreaId,
      assignedToUserId: assignedToUserId is _is.UuidValue?
          ? assignedToUserId
          : this.assignedToUserId,
      assignedToGroupId: assignedToGroupId is _is.UuidValue?
          ? assignedToGroupId
          : this.assignedToGroupId,
      assignedBy: assignedBy is _is.UuidValue? ? assignedBy : this.assignedBy,
      assignedAt: assignedAt is DateTime? ? assignedAt : this.assignedAt,
      startedBy: startedBy is _is.UuidValue? ? startedBy : this.startedBy,
      submittedBy: submittedBy is _is.UuidValue?
          ? submittedBy
          : this.submittedBy,
      completedBy: completedBy is _is.UuidValue?
          ? completedBy
          : this.completedBy,
      resourceUsageId: resourceUsageId is _is.UuidValue?
          ? resourceUsageId
          : this.resourceUsageId,
      witnessId: witnessId is _is.UuidValue? ? witnessId : this.witnessId,
      operatorSignature: operatorSignature is String?
          ? operatorSignature
          : this.operatorSignature,
      witnessSignature: witnessSignature is String?
          ? witnessSignature
          : this.witnessSignature,
      cancellationReason: cancellationReason is String?
          ? cancellationReason
          : this.cancellationReason,
      origin: origin ?? this.origin,
      problemId: problemId is _is.UuidValue? ? problemId : this.problemId,
      scheduleRef: scheduleRef is String? ? scheduleRef : this.scheduleRef,
      pausedByProblemId: pausedByProblemId is _is.UuidValue?
          ? pausedByProblemId
          : this.pausedByProblemId,
      scheduledAt: scheduledAt is DateTime? ? scheduledAt : this.scheduledAt,
      dueAt: dueAt is DateTime? ? dueAt : this.dueAt,
      startedAt: startedAt is DateTime? ? startedAt : this.startedAt,
      submittedAt: submittedAt is DateTime? ? submittedAt : this.submittedAt,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      activityConfigSnapshot:
          activityConfigSnapshot ?? this.activityConfigSnapshot,
      metadata: metadata ?? this.metadata,
      status: status ?? this.status,
      priority: priority ?? this.priority,
      workflowInstanceId: workflowInstanceId is _is.UuidValue?
          ? workflowInstanceId
          : this.workflowInstanceId,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
      versionNumber: versionNumber ?? this.versionNumber,
    );
  }
}

class ElogActivitiesUpdateTable extends _is.UpdateTable<ElogActivitiesTable> {
  ElogActivitiesUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<String, String> activityType(String value) => _is.ColumnValue(
    table.activityType,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> cleaningTypeId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.cleaningTypeId,
    value,
  );

  _is.ColumnValue<String, String> policyDomain(String value) => _is.ColumnValue(
    table.policyDomain,
    value,
  );

  _is.ColumnValue<String, String> resourceType(String value) => _is.ColumnValue(
    table.resourceType,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> resourceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.resourceId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> operatingAreaId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.operatingAreaId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> assignedToUserId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.assignedToUserId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> assignedToGroupId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.assignedToGroupId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> assignedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.assignedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> assignedAt(DateTime? value) =>
      _is.ColumnValue(
        table.assignedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> startedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.startedBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> submittedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.submittedBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> completedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.completedBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> resourceUsageId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.resourceUsageId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> witnessId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.witnessId,
    value,
  );

  _is.ColumnValue<String, String> operatorSignature(String? value) =>
      _is.ColumnValue(
        table.operatorSignature,
        value,
      );

  _is.ColumnValue<String, String> witnessSignature(String? value) =>
      _is.ColumnValue(
        table.witnessSignature,
        value,
      );

  _is.ColumnValue<String, String> cancellationReason(String? value) =>
      _is.ColumnValue(
        table.cancellationReason,
        value,
      );

  _is.ColumnValue<String, String> origin(String value) => _is.ColumnValue(
    table.origin,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> problemId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.problemId,
    value,
  );

  _is.ColumnValue<String, String> scheduleRef(String? value) => _is.ColumnValue(
    table.scheduleRef,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> pausedByProblemId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.pausedByProblemId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> scheduledAt(DateTime? value) =>
      _is.ColumnValue(
        table.scheduledAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> dueAt(DateTime? value) => _is.ColumnValue(
    table.dueAt,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> startedAt(DateTime? value) =>
      _is.ColumnValue(
        table.startedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> submittedAt(DateTime? value) =>
      _is.ColumnValue(
        table.submittedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> completedAt(DateTime? value) =>
      _is.ColumnValue(
        table.completedAt,
        value,
      );

  _is.ColumnValue<String, String> activityConfigSnapshot(String value) =>
      _is.ColumnValue(
        table.activityConfigSnapshot,
        value,
      );

  _is.ColumnValue<String, String> metadata(String value) => _is.ColumnValue(
    table.metadata,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<String, String> priority(String value) => _is.ColumnValue(
    table.priority,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> workflowInstanceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.workflowInstanceId,
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

  _is.ColumnValue<int, int> versionNumber(int value) => _is.ColumnValue(
    table.versionNumber,
    value,
  );
}

class ElogActivitiesTable extends _is.Table<_is.UuidValue?> {
  ElogActivitiesTable({super.tableRelation})
    : super(tableName: 'elog_activities') {
    updateTable = ElogActivitiesUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    activityType = _is.ColumnString(
      'activityType',
      this,
    );
    cleaningTypeId = _is.ColumnUuid(
      'cleaningTypeId',
      this,
    );
    policyDomain = _is.ColumnString(
      'policyDomain',
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
    operatingAreaId = _is.ColumnUuid(
      'operatingAreaId',
      this,
    );
    assignedToUserId = _is.ColumnUuid(
      'assignedToUserId',
      this,
    );
    assignedToGroupId = _is.ColumnUuid(
      'assignedToGroupId',
      this,
    );
    assignedBy = _is.ColumnUuid(
      'assignedBy',
      this,
    );
    assignedAt = _is.ColumnDateTime(
      'assignedAt',
      this,
    );
    startedBy = _is.ColumnUuid(
      'startedBy',
      this,
    );
    submittedBy = _is.ColumnUuid(
      'submittedBy',
      this,
    );
    completedBy = _is.ColumnUuid(
      'completedBy',
      this,
    );
    resourceUsageId = _is.ColumnUuid(
      'resourceUsageId',
      this,
    );
    witnessId = _is.ColumnUuid(
      'witnessId',
      this,
    );
    operatorSignature = _is.ColumnString(
      'operatorSignature',
      this,
    );
    witnessSignature = _is.ColumnString(
      'witnessSignature',
      this,
    );
    cancellationReason = _is.ColumnString(
      'cancellationReason',
      this,
    );
    origin = _is.ColumnString(
      'origin',
      this,
    );
    problemId = _is.ColumnUuid(
      'problemId',
      this,
    );
    scheduleRef = _is.ColumnString(
      'scheduleRef',
      this,
    );
    pausedByProblemId = _is.ColumnUuid(
      'pausedByProblemId',
      this,
    );
    scheduledAt = _is.ColumnDateTime(
      'scheduledAt',
      this,
    );
    dueAt = _is.ColumnDateTime(
      'dueAt',
      this,
    );
    startedAt = _is.ColumnDateTime(
      'startedAt',
      this,
    );
    submittedAt = _is.ColumnDateTime(
      'submittedAt',
      this,
    );
    completedAt = _is.ColumnDateTime(
      'completedAt',
      this,
    );
    activityConfigSnapshot = _is.ColumnString(
      'activityConfigSnapshot',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    priority = _is.ColumnString(
      'priority',
      this,
    );
    workflowInstanceId = _is.ColumnUuid(
      'workflowInstanceId',
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
    versionNumber = _is.ColumnInt(
      'versionNumber',
      this,
    );
  }

  late final ElogActivitiesUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString activityType;

  late final _is.ColumnUuid cleaningTypeId;

  late final _is.ColumnString policyDomain;

  late final _is.ColumnString resourceType;

  late final _is.ColumnUuid resourceId;

  late final _is.ColumnUuid operatingAreaId;

  late final _is.ColumnUuid assignedToUserId;

  late final _is.ColumnUuid assignedToGroupId;

  late final _is.ColumnUuid assignedBy;

  late final _is.ColumnDateTime assignedAt;

  late final _is.ColumnUuid startedBy;

  late final _is.ColumnUuid submittedBy;

  late final _is.ColumnUuid completedBy;

  late final _is.ColumnUuid resourceUsageId;

  late final _is.ColumnUuid witnessId;

  late final _is.ColumnString operatorSignature;

  late final _is.ColumnString witnessSignature;

  late final _is.ColumnString cancellationReason;

  late final _is.ColumnString origin;

  late final _is.ColumnUuid problemId;

  late final _is.ColumnString scheduleRef;

  late final _is.ColumnUuid pausedByProblemId;

  late final _is.ColumnDateTime scheduledAt;

  late final _is.ColumnDateTime dueAt;

  late final _is.ColumnDateTime startedAt;

  late final _is.ColumnDateTime submittedAt;

  late final _is.ColumnDateTime completedAt;

  late final _is.ColumnString activityConfigSnapshot;

  late final _is.ColumnString metadata;

  late final _is.ColumnString status;

  late final _is.ColumnString priority;

  late final _is.ColumnUuid workflowInstanceId;

  late final _is.ColumnBool isActive;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  late final _is.ColumnInt versionNumber;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    description,
    activityType,
    cleaningTypeId,
    policyDomain,
    resourceType,
    resourceId,
    operatingAreaId,
    assignedToUserId,
    assignedToGroupId,
    assignedBy,
    assignedAt,
    startedBy,
    submittedBy,
    completedBy,
    resourceUsageId,
    witnessId,
    operatorSignature,
    witnessSignature,
    cancellationReason,
    origin,
    problemId,
    scheduleRef,
    pausedByProblemId,
    scheduledAt,
    dueAt,
    startedAt,
    submittedAt,
    completedAt,
    activityConfigSnapshot,
    metadata,
    status,
    priority,
    workflowInstanceId,
    isActive,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
    versionNumber,
  ];
}

class ElogActivitiesInclude extends _is.IncludeObject {
  ElogActivitiesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogActivities.t;
}

class ElogActivitiesIncludeList extends _is.IncludeList {
  ElogActivitiesIncludeList._({
    _is.WhereExpressionBuilder<ElogActivitiesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogActivities.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogActivities.t;
}

class ElogActivitiesRepository {
  const ElogActivitiesRepository._();

  /// Returns a list of [ElogActivities]s matching the given query parameters.
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
  Future<List<ElogActivities>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogActivitiesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogActivitiesTable>? orderBy,
    _is.OrderByListBuilder<ElogActivitiesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogActivities>(
      where: where?.call(ElogActivities.t),
      orderBy: orderBy?.call(ElogActivities.t),
      orderByList: orderByList?.call(ElogActivities.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogActivities] matching the given query parameters.
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
  Future<ElogActivities?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogActivitiesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogActivitiesTable>? orderBy,
    _is.OrderByListBuilder<ElogActivitiesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogActivities>(
      where: where?.call(ElogActivities.t),
      orderBy: orderBy?.call(ElogActivities.t),
      orderByList: orderByList?.call(ElogActivities.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogActivities] by its [id] or null if no such row exists.
  Future<ElogActivities?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogActivities>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogActivities]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogActivities]s will have their `id` fields set.
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
  Future<List<ElogActivities>> insert(
    _is.DatabaseSession session,
    List<ElogActivities> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogActivities>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogActivities] and returns the inserted row.
  ///
  /// The returned [ElogActivities] will have its `id` field set.
  Future<ElogActivities> insertRow(
    _is.DatabaseSession session,
    ElogActivities row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogActivities>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogActivities]s in the list and returns the resulting rows.
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
  /// The returned [ElogActivities]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogActivities>> upsert(
    _is.DatabaseSession session,
    List<ElogActivities> rows, {
    required _is.ColumnSelections<ElogActivitiesTable> conflictColumns,
    _is.ColumnSelections<ElogActivitiesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogActivitiesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogActivities>(
      rows,
      conflictColumns: conflictColumns(ElogActivities.t),
      updateColumns: updateColumns?.call(ElogActivities.t),
      updateWhere: updateWhere?.call(ElogActivities.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogActivities] and returns the resulting row.
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
  /// The returned [ElogActivities] will have its `id` field set.
  Future<ElogActivities?> upsertRow(
    _is.DatabaseSession session,
    ElogActivities row, {
    required _is.ColumnSelections<ElogActivitiesTable> conflictColumns,
    _is.ColumnSelections<ElogActivitiesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogActivitiesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogActivities>(
      row,
      conflictColumns: conflictColumns(ElogActivities.t),
      updateColumns: updateColumns?.call(ElogActivities.t),
      updateWhere: updateWhere?.call(ElogActivities.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogActivities]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogActivities>> update(
    _is.DatabaseSession session,
    List<ElogActivities> rows, {
    _is.ColumnSelections<ElogActivitiesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogActivities>(
      rows,
      columns: columns?.call(ElogActivities.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogActivities]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogActivities> updateRow(
    _is.DatabaseSession session,
    ElogActivities row, {
    _is.ColumnSelections<ElogActivitiesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogActivities>(
      row,
      columns: columns?.call(ElogActivities.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogActivities] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogActivities?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogActivitiesUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogActivities>(
      id,
      columnValues: columnValues(ElogActivities.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogActivities]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogActivities>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogActivitiesUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogActivitiesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogActivitiesTable>? orderBy,
    _is.OrderByListBuilder<ElogActivitiesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogActivities>(
      columnValues: columnValues(ElogActivities.t.updateTable),
      where: where(ElogActivities.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogActivities.t),
      orderByList: orderByList?.call(ElogActivities.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogActivities]s in the list and returns the deleted rows.
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
  Future<List<ElogActivities>> delete(
    _is.DatabaseSession session,
    List<ElogActivities> rows, {
    _is.OrderByBuilder<ElogActivitiesTable>? orderBy,
    _is.OrderByListBuilder<ElogActivitiesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogActivities>(
      rows,
      orderBy: orderBy?.call(ElogActivities.t),
      orderByList: orderByList?.call(ElogActivities.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogActivities].
  Future<ElogActivities> deleteRow(
    _is.DatabaseSession session,
    ElogActivities row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogActivities>(
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
  Future<List<ElogActivities>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogActivitiesTable> where,
    _is.OrderByBuilder<ElogActivitiesTable>? orderBy,
    _is.OrderByListBuilder<ElogActivitiesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogActivities>(
      where: where(ElogActivities.t),
      orderBy: orderBy?.call(ElogActivities.t),
      orderByList: orderByList?.call(ElogActivities.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogActivitiesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogActivities>(
      where: where?.call(ElogActivities.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogActivities] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogActivitiesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogActivities>(
      where: where(ElogActivities.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
