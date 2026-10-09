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
import 'package:serverpod_lens_client/src/protocol/protocol.dart' as _ixq89rj6;

abstract class ElogProblems
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogProblems._({
    this.id,
    required this.code,
    required this.problemTypeId,
    required this.title,
    this.description,
    required this.resourceType,
    this.resourceId,
    required this.workflowStatus,
    required this.severity,
    required this.priority,
    this.assignedToGroupId,
    this.assignedTo,
    this.resourceUsageId,
    this.detailsLogUsageId,
    this.activityId,
    this.attachments,
    this.linkedProblems,
    this.createdResourceFlags,
    required this.handlingPolicySnapshot,
    required this.investigationRequired,
    this.investigationCompletedAt,
    this.investigationCompletedBy,
    required this.reviewStatus,
    this.reviewerGroupIds,
    this.reviewWorkflowInstanceId,
    required this.remediationStatus,
    this.remediationActivityIds,
    required this.remediationPlanSnapshot,
    this.reportSignature,
    this.resolutionSignature,
    this.resolutionWitnessSignature,
    this.resolutionWitnessUserId,
    required this.versionNumber,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogProblems({
    _isc.UuidValue? id,
    required String code,
    required _isc.UuidValue problemTypeId,
    required String title,
    String? description,
    required String resourceType,
    _isc.UuidValue? resourceId,
    required String workflowStatus,
    required String severity,
    required String priority,
    _isc.UuidValue? assignedToGroupId,
    _isc.UuidValue? assignedTo,
    _isc.UuidValue? resourceUsageId,
    _isc.UuidValue? detailsLogUsageId,
    _isc.UuidValue? activityId,
    String? attachments,
    List<_isc.UuidValue>? linkedProblems,
    List<_isc.UuidValue>? createdResourceFlags,
    required String handlingPolicySnapshot,
    required bool investigationRequired,
    DateTime? investigationCompletedAt,
    _isc.UuidValue? investigationCompletedBy,
    required String reviewStatus,
    List<_isc.UuidValue>? reviewerGroupIds,
    _isc.UuidValue? reviewWorkflowInstanceId,
    required String remediationStatus,
    List<_isc.UuidValue>? remediationActivityIds,
    required String remediationPlanSnapshot,
    String? reportSignature,
    String? resolutionSignature,
    String? resolutionWitnessSignature,
    _isc.UuidValue? resolutionWitnessUserId,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) = _ElogProblemsImpl;

  factory ElogProblems.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogProblems(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      problemTypeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['problemTypeId'],
      ),
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String?,
      resourceType: jsonSerialization['resourceType'] as String,
      resourceId: jsonSerialization['resourceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceId'],
            ),
      workflowStatus: jsonSerialization['workflowStatus'] as String,
      severity: jsonSerialization['severity'] as String,
      priority: jsonSerialization['priority'] as String,
      assignedToGroupId: jsonSerialization['assignedToGroupId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['assignedToGroupId'],
            ),
      assignedTo: jsonSerialization['assignedTo'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['assignedTo'],
            ),
      resourceUsageId: jsonSerialization['resourceUsageId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceUsageId'],
            ),
      detailsLogUsageId: jsonSerialization['detailsLogUsageId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['detailsLogUsageId'],
            ),
      activityId: jsonSerialization['activityId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['activityId'],
            ),
      attachments: jsonSerialization['attachments'] as String?,
      linkedProblems: jsonSerialization['linkedProblems'] == null
          ? null
          : _ixq89rj6.Protocol().deserialize<List<_isc.UuidValue>>(
              jsonSerialization['linkedProblems'],
            ),
      createdResourceFlags: jsonSerialization['createdResourceFlags'] == null
          ? null
          : _ixq89rj6.Protocol().deserialize<List<_isc.UuidValue>>(
              jsonSerialization['createdResourceFlags'],
            ),
      handlingPolicySnapshot:
          jsonSerialization['handlingPolicySnapshot'] as String,
      investigationRequired: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['investigationRequired'],
      ),
      investigationCompletedAt:
          jsonSerialization['investigationCompletedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['investigationCompletedAt'],
            ),
      investigationCompletedBy:
          jsonSerialization['investigationCompletedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['investigationCompletedBy'],
            ),
      reviewStatus: jsonSerialization['reviewStatus'] as String,
      reviewerGroupIds: jsonSerialization['reviewerGroupIds'] == null
          ? null
          : _ixq89rj6.Protocol().deserialize<List<_isc.UuidValue>>(
              jsonSerialization['reviewerGroupIds'],
            ),
      reviewWorkflowInstanceId:
          jsonSerialization['reviewWorkflowInstanceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['reviewWorkflowInstanceId'],
            ),
      remediationStatus: jsonSerialization['remediationStatus'] as String,
      remediationActivityIds:
          jsonSerialization['remediationActivityIds'] == null
          ? null
          : _ixq89rj6.Protocol().deserialize<List<_isc.UuidValue>>(
              jsonSerialization['remediationActivityIds'],
            ),
      remediationPlanSnapshot:
          jsonSerialization['remediationPlanSnapshot'] as String,
      reportSignature: jsonSerialization['reportSignature'] as String?,
      resolutionSignature: jsonSerialization['resolutionSignature'] as String?,
      resolutionWitnessSignature:
          jsonSerialization['resolutionWitnessSignature'] as String?,
      resolutionWitnessUserId:
          jsonSerialization['resolutionWitnessUserId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['resolutionWitnessUserId'],
            ),
      versionNumber: jsonSerialization['versionNumber'] as int,
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
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  _isc.UuidValue problemTypeId;

  String title;

  String? description;

  String resourceType;

  _isc.UuidValue? resourceId;

  String workflowStatus;

  String severity;

  String priority;

  _isc.UuidValue? assignedToGroupId;

  _isc.UuidValue? assignedTo;

  _isc.UuidValue? resourceUsageId;

  _isc.UuidValue? detailsLogUsageId;

  _isc.UuidValue? activityId;

  String? attachments;

  List<_isc.UuidValue>? linkedProblems;

  List<_isc.UuidValue>? createdResourceFlags;

  String handlingPolicySnapshot;

  bool investigationRequired;

  DateTime? investigationCompletedAt;

  _isc.UuidValue? investigationCompletedBy;

  String reviewStatus;

  List<_isc.UuidValue>? reviewerGroupIds;

  _isc.UuidValue? reviewWorkflowInstanceId;

  String remediationStatus;

  List<_isc.UuidValue>? remediationActivityIds;

  String remediationPlanSnapshot;

  String? reportSignature;

  String? resolutionSignature;

  String? resolutionWitnessSignature;

  _isc.UuidValue? resolutionWitnessUserId;

  int versionNumber;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [ElogProblems]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogProblems copyWith({
    _isc.UuidValue? id,
    String? code,
    _isc.UuidValue? problemTypeId,
    String? title,
    String? description,
    String? resourceType,
    _isc.UuidValue? resourceId,
    String? workflowStatus,
    String? severity,
    String? priority,
    _isc.UuidValue? assignedToGroupId,
    _isc.UuidValue? assignedTo,
    _isc.UuidValue? resourceUsageId,
    _isc.UuidValue? detailsLogUsageId,
    _isc.UuidValue? activityId,
    String? attachments,
    List<_isc.UuidValue>? linkedProblems,
    List<_isc.UuidValue>? createdResourceFlags,
    String? handlingPolicySnapshot,
    bool? investigationRequired,
    DateTime? investigationCompletedAt,
    _isc.UuidValue? investigationCompletedBy,
    String? reviewStatus,
    List<_isc.UuidValue>? reviewerGroupIds,
    _isc.UuidValue? reviewWorkflowInstanceId,
    String? remediationStatus,
    List<_isc.UuidValue>? remediationActivityIds,
    String? remediationPlanSnapshot,
    String? reportSignature,
    String? resolutionSignature,
    String? resolutionWitnessSignature,
    _isc.UuidValue? resolutionWitnessUserId,
    int? versionNumber,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogProblems',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'problemTypeId': problemTypeId.toJson(),
      'title': title,
      if (description != null) 'description': description,
      'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      'workflowStatus': workflowStatus,
      'severity': severity,
      'priority': priority,
      if (assignedToGroupId != null)
        'assignedToGroupId': assignedToGroupId?.toJson(),
      if (assignedTo != null) 'assignedTo': assignedTo?.toJson(),
      if (resourceUsageId != null) 'resourceUsageId': resourceUsageId?.toJson(),
      if (detailsLogUsageId != null)
        'detailsLogUsageId': detailsLogUsageId?.toJson(),
      if (activityId != null) 'activityId': activityId?.toJson(),
      if (attachments != null) 'attachments': attachments,
      if (linkedProblems != null)
        'linkedProblems': linkedProblems?.toJson(
          valueToJson: (v) => v.toJson(),
        ),
      if (createdResourceFlags != null)
        'createdResourceFlags': createdResourceFlags?.toJson(
          valueToJson: (v) => v.toJson(),
        ),
      'handlingPolicySnapshot': handlingPolicySnapshot,
      'investigationRequired': investigationRequired,
      if (investigationCompletedAt != null)
        'investigationCompletedAt': investigationCompletedAt?.toJson(),
      if (investigationCompletedBy != null)
        'investigationCompletedBy': investigationCompletedBy?.toJson(),
      'reviewStatus': reviewStatus,
      if (reviewerGroupIds != null)
        'reviewerGroupIds': reviewerGroupIds?.toJson(
          valueToJson: (v) => v.toJson(),
        ),
      if (reviewWorkflowInstanceId != null)
        'reviewWorkflowInstanceId': reviewWorkflowInstanceId?.toJson(),
      'remediationStatus': remediationStatus,
      if (remediationActivityIds != null)
        'remediationActivityIds': remediationActivityIds?.toJson(
          valueToJson: (v) => v.toJson(),
        ),
      'remediationPlanSnapshot': remediationPlanSnapshot,
      if (reportSignature != null) 'reportSignature': reportSignature,
      if (resolutionSignature != null)
        'resolutionSignature': resolutionSignature,
      if (resolutionWitnessSignature != null)
        'resolutionWitnessSignature': resolutionWitnessSignature,
      if (resolutionWitnessUserId != null)
        'resolutionWitnessUserId': resolutionWitnessUserId?.toJson(),
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
      '__className__': 'ElogProblems',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'problemTypeId': problemTypeId.toJson(),
      'title': title,
      if (description != null) 'description': description,
      'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      'workflowStatus': workflowStatus,
      'severity': severity,
      'priority': priority,
      if (assignedToGroupId != null)
        'assignedToGroupId': assignedToGroupId?.toJson(),
      if (assignedTo != null) 'assignedTo': assignedTo?.toJson(),
      if (resourceUsageId != null) 'resourceUsageId': resourceUsageId?.toJson(),
      if (detailsLogUsageId != null)
        'detailsLogUsageId': detailsLogUsageId?.toJson(),
      if (activityId != null) 'activityId': activityId?.toJson(),
      if (attachments != null) 'attachments': attachments,
      if (linkedProblems != null)
        'linkedProblems': linkedProblems?.toJson(
          valueToJson: (v) => v.toJson(),
        ),
      if (createdResourceFlags != null)
        'createdResourceFlags': createdResourceFlags?.toJson(
          valueToJson: (v) => v.toJson(),
        ),
      'handlingPolicySnapshot': handlingPolicySnapshot,
      'investigationRequired': investigationRequired,
      if (investigationCompletedAt != null)
        'investigationCompletedAt': investigationCompletedAt?.toJson(),
      if (investigationCompletedBy != null)
        'investigationCompletedBy': investigationCompletedBy?.toJson(),
      'reviewStatus': reviewStatus,
      if (reviewerGroupIds != null)
        'reviewerGroupIds': reviewerGroupIds?.toJson(
          valueToJson: (v) => v.toJson(),
        ),
      if (reviewWorkflowInstanceId != null)
        'reviewWorkflowInstanceId': reviewWorkflowInstanceId?.toJson(),
      'remediationStatus': remediationStatus,
      if (remediationActivityIds != null)
        'remediationActivityIds': remediationActivityIds?.toJson(
          valueToJson: (v) => v.toJson(),
        ),
      'remediationPlanSnapshot': remediationPlanSnapshot,
      if (reportSignature != null) 'reportSignature': reportSignature,
      if (resolutionSignature != null)
        'resolutionSignature': resolutionSignature,
      if (resolutionWitnessSignature != null)
        'resolutionWitnessSignature': resolutionWitnessSignature,
      if (resolutionWitnessUserId != null)
        'resolutionWitnessUserId': resolutionWitnessUserId?.toJson(),
      'versionNumber': versionNumber,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogProblemsImpl extends ElogProblems {
  _ElogProblemsImpl({
    _isc.UuidValue? id,
    required String code,
    required _isc.UuidValue problemTypeId,
    required String title,
    String? description,
    required String resourceType,
    _isc.UuidValue? resourceId,
    required String workflowStatus,
    required String severity,
    required String priority,
    _isc.UuidValue? assignedToGroupId,
    _isc.UuidValue? assignedTo,
    _isc.UuidValue? resourceUsageId,
    _isc.UuidValue? detailsLogUsageId,
    _isc.UuidValue? activityId,
    String? attachments,
    List<_isc.UuidValue>? linkedProblems,
    List<_isc.UuidValue>? createdResourceFlags,
    required String handlingPolicySnapshot,
    required bool investigationRequired,
    DateTime? investigationCompletedAt,
    _isc.UuidValue? investigationCompletedBy,
    required String reviewStatus,
    List<_isc.UuidValue>? reviewerGroupIds,
    _isc.UuidValue? reviewWorkflowInstanceId,
    required String remediationStatus,
    List<_isc.UuidValue>? remediationActivityIds,
    required String remediationPlanSnapshot,
    String? reportSignature,
    String? resolutionSignature,
    String? resolutionWitnessSignature,
    _isc.UuidValue? resolutionWitnessUserId,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         code: code,
         problemTypeId: problemTypeId,
         title: title,
         description: description,
         resourceType: resourceType,
         resourceId: resourceId,
         workflowStatus: workflowStatus,
         severity: severity,
         priority: priority,
         assignedToGroupId: assignedToGroupId,
         assignedTo: assignedTo,
         resourceUsageId: resourceUsageId,
         detailsLogUsageId: detailsLogUsageId,
         activityId: activityId,
         attachments: attachments,
         linkedProblems: linkedProblems,
         createdResourceFlags: createdResourceFlags,
         handlingPolicySnapshot: handlingPolicySnapshot,
         investigationRequired: investigationRequired,
         investigationCompletedAt: investigationCompletedAt,
         investigationCompletedBy: investigationCompletedBy,
         reviewStatus: reviewStatus,
         reviewerGroupIds: reviewerGroupIds,
         reviewWorkflowInstanceId: reviewWorkflowInstanceId,
         remediationStatus: remediationStatus,
         remediationActivityIds: remediationActivityIds,
         remediationPlanSnapshot: remediationPlanSnapshot,
         reportSignature: reportSignature,
         resolutionSignature: resolutionSignature,
         resolutionWitnessSignature: resolutionWitnessSignature,
         resolutionWitnessUserId: resolutionWitnessUserId,
         versionNumber: versionNumber,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogProblems]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogProblems copyWith({
    Object? id = _Undefined,
    String? code,
    _isc.UuidValue? problemTypeId,
    String? title,
    Object? description = _Undefined,
    String? resourceType,
    Object? resourceId = _Undefined,
    String? workflowStatus,
    String? severity,
    String? priority,
    Object? assignedToGroupId = _Undefined,
    Object? assignedTo = _Undefined,
    Object? resourceUsageId = _Undefined,
    Object? detailsLogUsageId = _Undefined,
    Object? activityId = _Undefined,
    Object? attachments = _Undefined,
    Object? linkedProblems = _Undefined,
    Object? createdResourceFlags = _Undefined,
    String? handlingPolicySnapshot,
    bool? investigationRequired,
    Object? investigationCompletedAt = _Undefined,
    Object? investigationCompletedBy = _Undefined,
    String? reviewStatus,
    Object? reviewerGroupIds = _Undefined,
    Object? reviewWorkflowInstanceId = _Undefined,
    String? remediationStatus,
    Object? remediationActivityIds = _Undefined,
    String? remediationPlanSnapshot,
    Object? reportSignature = _Undefined,
    Object? resolutionSignature = _Undefined,
    Object? resolutionWitnessSignature = _Undefined,
    Object? resolutionWitnessUserId = _Undefined,
    int? versionNumber,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogProblems(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      problemTypeId: problemTypeId ?? this.problemTypeId,
      title: title ?? this.title,
      description: description is String? ? description : this.description,
      resourceType: resourceType ?? this.resourceType,
      resourceId: resourceId is _isc.UuidValue? ? resourceId : this.resourceId,
      workflowStatus: workflowStatus ?? this.workflowStatus,
      severity: severity ?? this.severity,
      priority: priority ?? this.priority,
      assignedToGroupId: assignedToGroupId is _isc.UuidValue?
          ? assignedToGroupId
          : this.assignedToGroupId,
      assignedTo: assignedTo is _isc.UuidValue? ? assignedTo : this.assignedTo,
      resourceUsageId: resourceUsageId is _isc.UuidValue?
          ? resourceUsageId
          : this.resourceUsageId,
      detailsLogUsageId: detailsLogUsageId is _isc.UuidValue?
          ? detailsLogUsageId
          : this.detailsLogUsageId,
      activityId: activityId is _isc.UuidValue? ? activityId : this.activityId,
      attachments: attachments is String? ? attachments : this.attachments,
      linkedProblems: linkedProblems is List<_isc.UuidValue>?
          ? linkedProblems
          : this.linkedProblems?.map((e0) => e0).toList(),
      createdResourceFlags: createdResourceFlags is List<_isc.UuidValue>?
          ? createdResourceFlags
          : this.createdResourceFlags?.map((e0) => e0).toList(),
      handlingPolicySnapshot:
          handlingPolicySnapshot ?? this.handlingPolicySnapshot,
      investigationRequired:
          investigationRequired ?? this.investigationRequired,
      investigationCompletedAt: investigationCompletedAt is DateTime?
          ? investigationCompletedAt
          : this.investigationCompletedAt,
      investigationCompletedBy: investigationCompletedBy is _isc.UuidValue?
          ? investigationCompletedBy
          : this.investigationCompletedBy,
      reviewStatus: reviewStatus ?? this.reviewStatus,
      reviewerGroupIds: reviewerGroupIds is List<_isc.UuidValue>?
          ? reviewerGroupIds
          : this.reviewerGroupIds?.map((e0) => e0).toList(),
      reviewWorkflowInstanceId: reviewWorkflowInstanceId is _isc.UuidValue?
          ? reviewWorkflowInstanceId
          : this.reviewWorkflowInstanceId,
      remediationStatus: remediationStatus ?? this.remediationStatus,
      remediationActivityIds: remediationActivityIds is List<_isc.UuidValue>?
          ? remediationActivityIds
          : this.remediationActivityIds?.map((e0) => e0).toList(),
      remediationPlanSnapshot:
          remediationPlanSnapshot ?? this.remediationPlanSnapshot,
      reportSignature: reportSignature is String?
          ? reportSignature
          : this.reportSignature,
      resolutionSignature: resolutionSignature is String?
          ? resolutionSignature
          : this.resolutionSignature,
      resolutionWitnessSignature: resolutionWitnessSignature is String?
          ? resolutionWitnessSignature
          : this.resolutionWitnessSignature,
      resolutionWitnessUserId: resolutionWitnessUserId is _isc.UuidValue?
          ? resolutionWitnessUserId
          : this.resolutionWitnessUserId,
      versionNumber: versionNumber ?? this.versionNumber,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
