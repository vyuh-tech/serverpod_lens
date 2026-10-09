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
import 'package:serverpod_client/serverpod_client.dart' as _isc;

abstract class ElogActivities
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
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
    _isc.UuidValue? id,
    required String name,
    String? description,
    required String activityType,
    _isc.UuidValue? cleaningTypeId,
    required String policyDomain,
    required String resourceType,
    _isc.UuidValue? resourceId,
    _isc.UuidValue? operatingAreaId,
    _isc.UuidValue? assignedToUserId,
    _isc.UuidValue? assignedToGroupId,
    _isc.UuidValue? assignedBy,
    DateTime? assignedAt,
    _isc.UuidValue? startedBy,
    _isc.UuidValue? submittedBy,
    _isc.UuidValue? completedBy,
    _isc.UuidValue? resourceUsageId,
    _isc.UuidValue? witnessId,
    String? operatorSignature,
    String? witnessSignature,
    String? cancellationReason,
    required String origin,
    _isc.UuidValue? problemId,
    String? scheduleRef,
    _isc.UuidValue? pausedByProblemId,
    DateTime? scheduledAt,
    DateTime? dueAt,
    DateTime? startedAt,
    DateTime? submittedAt,
    DateTime? completedAt,
    required String activityConfigSnapshot,
    required String metadata,
    required String status,
    required String priority,
    _isc.UuidValue? workflowInstanceId,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    required int versionNumber,
  }) = _ElogActivitiesImpl;

  factory ElogActivities.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogActivities(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      activityType: jsonSerialization['activityType'] as String,
      cleaningTypeId: jsonSerialization['cleaningTypeId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['cleaningTypeId'],
            ),
      policyDomain: jsonSerialization['policyDomain'] as String,
      resourceType: jsonSerialization['resourceType'] as String,
      resourceId: jsonSerialization['resourceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceId'],
            ),
      operatingAreaId: jsonSerialization['operatingAreaId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['operatingAreaId'],
            ),
      assignedToUserId: jsonSerialization['assignedToUserId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['assignedToUserId'],
            ),
      assignedToGroupId: jsonSerialization['assignedToGroupId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['assignedToGroupId'],
            ),
      assignedBy: jsonSerialization['assignedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['assignedBy'],
            ),
      assignedAt: jsonSerialization['assignedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['assignedAt'],
            ),
      startedBy: jsonSerialization['startedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['startedBy'],
            ),
      submittedBy: jsonSerialization['submittedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['submittedBy'],
            ),
      completedBy: jsonSerialization['completedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['completedBy'],
            ),
      resourceUsageId: jsonSerialization['resourceUsageId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceUsageId'],
            ),
      witnessId: jsonSerialization['witnessId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['witnessId'],
            ),
      operatorSignature: jsonSerialization['operatorSignature'] as String?,
      witnessSignature: jsonSerialization['witnessSignature'] as String?,
      cancellationReason: jsonSerialization['cancellationReason'] as String?,
      origin: jsonSerialization['origin'] as String,
      problemId: jsonSerialization['problemId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['problemId'],
            ),
      scheduleRef: jsonSerialization['scheduleRef'] as String?,
      pausedByProblemId: jsonSerialization['pausedByProblemId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['pausedByProblemId'],
            ),
      scheduledAt: jsonSerialization['scheduledAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['scheduledAt'],
            ),
      dueAt: jsonSerialization['dueAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
      startedAt: jsonSerialization['startedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      submittedAt: jsonSerialization['submittedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['submittedAt'],
            ),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      activityConfigSnapshot:
          jsonSerialization['activityConfigSnapshot'] as String,
      metadata: jsonSerialization['metadata'] as String,
      status: jsonSerialization['status'] as String,
      priority: jsonSerialization['priority'] as String,
      workflowInstanceId: jsonSerialization['workflowInstanceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowInstanceId'],
            ),
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['createdBy'],
            ),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['updatedBy'],
            ),
      versionNumber: jsonSerialization['versionNumber'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String name;

  String? description;

  String activityType;

  _isc.UuidValue? cleaningTypeId;

  String policyDomain;

  String resourceType;

  _isc.UuidValue? resourceId;

  _isc.UuidValue? operatingAreaId;

  _isc.UuidValue? assignedToUserId;

  _isc.UuidValue? assignedToGroupId;

  _isc.UuidValue? assignedBy;

  DateTime? assignedAt;

  _isc.UuidValue? startedBy;

  _isc.UuidValue? submittedBy;

  _isc.UuidValue? completedBy;

  _isc.UuidValue? resourceUsageId;

  _isc.UuidValue? witnessId;

  String? operatorSignature;

  String? witnessSignature;

  String? cancellationReason;

  String origin;

  _isc.UuidValue? problemId;

  String? scheduleRef;

  _isc.UuidValue? pausedByProblemId;

  DateTime? scheduledAt;

  DateTime? dueAt;

  DateTime? startedAt;

  DateTime? submittedAt;

  DateTime? completedAt;

  String activityConfigSnapshot;

  String metadata;

  String status;

  String priority;

  _isc.UuidValue? workflowInstanceId;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  int versionNumber;

  /// Returns a shallow copy of this [ElogActivities]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogActivities copyWith({
    _isc.UuidValue? id,
    String? name,
    String? description,
    String? activityType,
    _isc.UuidValue? cleaningTypeId,
    String? policyDomain,
    String? resourceType,
    _isc.UuidValue? resourceId,
    _isc.UuidValue? operatingAreaId,
    _isc.UuidValue? assignedToUserId,
    _isc.UuidValue? assignedToGroupId,
    _isc.UuidValue? assignedBy,
    DateTime? assignedAt,
    _isc.UuidValue? startedBy,
    _isc.UuidValue? submittedBy,
    _isc.UuidValue? completedBy,
    _isc.UuidValue? resourceUsageId,
    _isc.UuidValue? witnessId,
    String? operatorSignature,
    String? witnessSignature,
    String? cancellationReason,
    String? origin,
    _isc.UuidValue? problemId,
    String? scheduleRef,
    _isc.UuidValue? pausedByProblemId,
    DateTime? scheduledAt,
    DateTime? dueAt,
    DateTime? startedAt,
    DateTime? submittedAt,
    DateTime? completedAt,
    String? activityConfigSnapshot,
    String? metadata,
    String? status,
    String? priority,
    _isc.UuidValue? workflowInstanceId,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
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

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogActivitiesImpl extends ElogActivities {
  _ElogActivitiesImpl({
    _isc.UuidValue? id,
    required String name,
    String? description,
    required String activityType,
    _isc.UuidValue? cleaningTypeId,
    required String policyDomain,
    required String resourceType,
    _isc.UuidValue? resourceId,
    _isc.UuidValue? operatingAreaId,
    _isc.UuidValue? assignedToUserId,
    _isc.UuidValue? assignedToGroupId,
    _isc.UuidValue? assignedBy,
    DateTime? assignedAt,
    _isc.UuidValue? startedBy,
    _isc.UuidValue? submittedBy,
    _isc.UuidValue? completedBy,
    _isc.UuidValue? resourceUsageId,
    _isc.UuidValue? witnessId,
    String? operatorSignature,
    String? witnessSignature,
    String? cancellationReason,
    required String origin,
    _isc.UuidValue? problemId,
    String? scheduleRef,
    _isc.UuidValue? pausedByProblemId,
    DateTime? scheduledAt,
    DateTime? dueAt,
    DateTime? startedAt,
    DateTime? submittedAt,
    DateTime? completedAt,
    required String activityConfigSnapshot,
    required String metadata,
    required String status,
    required String priority,
    _isc.UuidValue? workflowInstanceId,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
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
  @_isc.useResult
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
      id: id is _isc.UuidValue? ? id : this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      activityType: activityType ?? this.activityType,
      cleaningTypeId: cleaningTypeId is _isc.UuidValue?
          ? cleaningTypeId
          : this.cleaningTypeId,
      policyDomain: policyDomain ?? this.policyDomain,
      resourceType: resourceType ?? this.resourceType,
      resourceId: resourceId is _isc.UuidValue? ? resourceId : this.resourceId,
      operatingAreaId: operatingAreaId is _isc.UuidValue?
          ? operatingAreaId
          : this.operatingAreaId,
      assignedToUserId: assignedToUserId is _isc.UuidValue?
          ? assignedToUserId
          : this.assignedToUserId,
      assignedToGroupId: assignedToGroupId is _isc.UuidValue?
          ? assignedToGroupId
          : this.assignedToGroupId,
      assignedBy: assignedBy is _isc.UuidValue? ? assignedBy : this.assignedBy,
      assignedAt: assignedAt is DateTime? ? assignedAt : this.assignedAt,
      startedBy: startedBy is _isc.UuidValue? ? startedBy : this.startedBy,
      submittedBy: submittedBy is _isc.UuidValue?
          ? submittedBy
          : this.submittedBy,
      completedBy: completedBy is _isc.UuidValue?
          ? completedBy
          : this.completedBy,
      resourceUsageId: resourceUsageId is _isc.UuidValue?
          ? resourceUsageId
          : this.resourceUsageId,
      witnessId: witnessId is _isc.UuidValue? ? witnessId : this.witnessId,
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
      problemId: problemId is _isc.UuidValue? ? problemId : this.problemId,
      scheduleRef: scheduleRef is String? ? scheduleRef : this.scheduleRef,
      pausedByProblemId: pausedByProblemId is _isc.UuidValue?
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
      workflowInstanceId: workflowInstanceId is _isc.UuidValue?
          ? workflowInstanceId
          : this.workflowInstanceId,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
      versionNumber: versionNumber ?? this.versionNumber,
    );
  }
}
