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

abstract class ElogProblems
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
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
    _is.UuidValue? id,
    required String code,
    required _is.UuidValue problemTypeId,
    required String title,
    String? description,
    required String resourceType,
    _is.UuidValue? resourceId,
    required String workflowStatus,
    required String severity,
    required String priority,
    _is.UuidValue? assignedToGroupId,
    _is.UuidValue? assignedTo,
    _is.UuidValue? resourceUsageId,
    _is.UuidValue? detailsLogUsageId,
    _is.UuidValue? activityId,
    String? attachments,
    List<_is.UuidValue>? linkedProblems,
    List<_is.UuidValue>? createdResourceFlags,
    required String handlingPolicySnapshot,
    required bool investigationRequired,
    DateTime? investigationCompletedAt,
    _is.UuidValue? investigationCompletedBy,
    required String reviewStatus,
    List<_is.UuidValue>? reviewerGroupIds,
    _is.UuidValue? reviewWorkflowInstanceId,
    required String remediationStatus,
    List<_is.UuidValue>? remediationActivityIds,
    required String remediationPlanSnapshot,
    String? reportSignature,
    String? resolutionSignature,
    String? resolutionWitnessSignature,
    _is.UuidValue? resolutionWitnessUserId,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _ElogProblemsImpl;

  factory ElogProblems.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogProblems(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      problemTypeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['problemTypeId'],
      ),
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String?,
      resourceType: jsonSerialization['resourceType'] as String,
      resourceId: jsonSerialization['resourceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceId'],
            ),
      workflowStatus: jsonSerialization['workflowStatus'] as String,
      severity: jsonSerialization['severity'] as String,
      priority: jsonSerialization['priority'] as String,
      assignedToGroupId: jsonSerialization['assignedToGroupId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['assignedToGroupId'],
            ),
      assignedTo: jsonSerialization['assignedTo'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['assignedTo'],
            ),
      resourceUsageId: jsonSerialization['resourceUsageId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceUsageId'],
            ),
      detailsLogUsageId: jsonSerialization['detailsLogUsageId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['detailsLogUsageId'],
            ),
      activityId: jsonSerialization['activityId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['activityId'],
            ),
      attachments: jsonSerialization['attachments'] as String?,
      linkedProblems: jsonSerialization['linkedProblems'] == null
          ? null
          : _ioh8es0p.Protocol().deserialize<List<_is.UuidValue>>(
              jsonSerialization['linkedProblems'],
            ),
      createdResourceFlags: jsonSerialization['createdResourceFlags'] == null
          ? null
          : _ioh8es0p.Protocol().deserialize<List<_is.UuidValue>>(
              jsonSerialization['createdResourceFlags'],
            ),
      handlingPolicySnapshot:
          jsonSerialization['handlingPolicySnapshot'] as String,
      investigationRequired: _is.BoolJsonExtension.fromJson(
        jsonSerialization['investigationRequired'],
      ),
      investigationCompletedAt:
          jsonSerialization['investigationCompletedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['investigationCompletedAt'],
            ),
      investigationCompletedBy:
          jsonSerialization['investigationCompletedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['investigationCompletedBy'],
            ),
      reviewStatus: jsonSerialization['reviewStatus'] as String,
      reviewerGroupIds: jsonSerialization['reviewerGroupIds'] == null
          ? null
          : _ioh8es0p.Protocol().deserialize<List<_is.UuidValue>>(
              jsonSerialization['reviewerGroupIds'],
            ),
      reviewWorkflowInstanceId:
          jsonSerialization['reviewWorkflowInstanceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['reviewWorkflowInstanceId'],
            ),
      remediationStatus: jsonSerialization['remediationStatus'] as String,
      remediationActivityIds:
          jsonSerialization['remediationActivityIds'] == null
          ? null
          : _ioh8es0p.Protocol().deserialize<List<_is.UuidValue>>(
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
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['resolutionWitnessUserId'],
            ),
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

  static final t = ElogProblemsTable();

  static const db = ElogProblemsRepository._();

  @override
  _is.UuidValue? id;

  String code;

  _is.UuidValue problemTypeId;

  String title;

  String? description;

  String resourceType;

  _is.UuidValue? resourceId;

  String workflowStatus;

  String severity;

  String priority;

  _is.UuidValue? assignedToGroupId;

  _is.UuidValue? assignedTo;

  _is.UuidValue? resourceUsageId;

  _is.UuidValue? detailsLogUsageId;

  _is.UuidValue? activityId;

  String? attachments;

  List<_is.UuidValue>? linkedProblems;

  List<_is.UuidValue>? createdResourceFlags;

  String handlingPolicySnapshot;

  bool investigationRequired;

  DateTime? investigationCompletedAt;

  _is.UuidValue? investigationCompletedBy;

  String reviewStatus;

  List<_is.UuidValue>? reviewerGroupIds;

  _is.UuidValue? reviewWorkflowInstanceId;

  String remediationStatus;

  List<_is.UuidValue>? remediationActivityIds;

  String remediationPlanSnapshot;

  String? reportSignature;

  String? resolutionSignature;

  String? resolutionWitnessSignature;

  _is.UuidValue? resolutionWitnessUserId;

  int versionNumber;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogProblems]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogProblems copyWith({
    _is.UuidValue? id,
    String? code,
    _is.UuidValue? problemTypeId,
    String? title,
    String? description,
    String? resourceType,
    _is.UuidValue? resourceId,
    String? workflowStatus,
    String? severity,
    String? priority,
    _is.UuidValue? assignedToGroupId,
    _is.UuidValue? assignedTo,
    _is.UuidValue? resourceUsageId,
    _is.UuidValue? detailsLogUsageId,
    _is.UuidValue? activityId,
    String? attachments,
    List<_is.UuidValue>? linkedProblems,
    List<_is.UuidValue>? createdResourceFlags,
    String? handlingPolicySnapshot,
    bool? investigationRequired,
    DateTime? investigationCompletedAt,
    _is.UuidValue? investigationCompletedBy,
    String? reviewStatus,
    List<_is.UuidValue>? reviewerGroupIds,
    _is.UuidValue? reviewWorkflowInstanceId,
    String? remediationStatus,
    List<_is.UuidValue>? remediationActivityIds,
    String? remediationPlanSnapshot,
    String? reportSignature,
    String? resolutionSignature,
    String? resolutionWitnessSignature,
    _is.UuidValue? resolutionWitnessUserId,
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

  static ElogProblemsInclude include() {
    return ElogProblemsInclude._();
  }

  static ElogProblemsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogProblemsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogProblemsTable>? orderBy,
    _is.OrderByListBuilder<ElogProblemsTable>? orderByList,
    ElogProblemsInclude? include,
  }) {
    return ElogProblemsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogProblems.t),
      orderByList: orderByList?.call(ElogProblems.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogProblemsImpl extends ElogProblems {
  _ElogProblemsImpl({
    _is.UuidValue? id,
    required String code,
    required _is.UuidValue problemTypeId,
    required String title,
    String? description,
    required String resourceType,
    _is.UuidValue? resourceId,
    required String workflowStatus,
    required String severity,
    required String priority,
    _is.UuidValue? assignedToGroupId,
    _is.UuidValue? assignedTo,
    _is.UuidValue? resourceUsageId,
    _is.UuidValue? detailsLogUsageId,
    _is.UuidValue? activityId,
    String? attachments,
    List<_is.UuidValue>? linkedProblems,
    List<_is.UuidValue>? createdResourceFlags,
    required String handlingPolicySnapshot,
    required bool investigationRequired,
    DateTime? investigationCompletedAt,
    _is.UuidValue? investigationCompletedBy,
    required String reviewStatus,
    List<_is.UuidValue>? reviewerGroupIds,
    _is.UuidValue? reviewWorkflowInstanceId,
    required String remediationStatus,
    List<_is.UuidValue>? remediationActivityIds,
    required String remediationPlanSnapshot,
    String? reportSignature,
    String? resolutionSignature,
    String? resolutionWitnessSignature,
    _is.UuidValue? resolutionWitnessUserId,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
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
  @_is.useResult
  @override
  ElogProblems copyWith({
    Object? id = _Undefined,
    String? code,
    _is.UuidValue? problemTypeId,
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
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      problemTypeId: problemTypeId ?? this.problemTypeId,
      title: title ?? this.title,
      description: description is String? ? description : this.description,
      resourceType: resourceType ?? this.resourceType,
      resourceId: resourceId is _is.UuidValue? ? resourceId : this.resourceId,
      workflowStatus: workflowStatus ?? this.workflowStatus,
      severity: severity ?? this.severity,
      priority: priority ?? this.priority,
      assignedToGroupId: assignedToGroupId is _is.UuidValue?
          ? assignedToGroupId
          : this.assignedToGroupId,
      assignedTo: assignedTo is _is.UuidValue? ? assignedTo : this.assignedTo,
      resourceUsageId: resourceUsageId is _is.UuidValue?
          ? resourceUsageId
          : this.resourceUsageId,
      detailsLogUsageId: detailsLogUsageId is _is.UuidValue?
          ? detailsLogUsageId
          : this.detailsLogUsageId,
      activityId: activityId is _is.UuidValue? ? activityId : this.activityId,
      attachments: attachments is String? ? attachments : this.attachments,
      linkedProblems: linkedProblems is List<_is.UuidValue>?
          ? linkedProblems
          : this.linkedProblems?.map((e0) => e0).toList(),
      createdResourceFlags: createdResourceFlags is List<_is.UuidValue>?
          ? createdResourceFlags
          : this.createdResourceFlags?.map((e0) => e0).toList(),
      handlingPolicySnapshot:
          handlingPolicySnapshot ?? this.handlingPolicySnapshot,
      investigationRequired:
          investigationRequired ?? this.investigationRequired,
      investigationCompletedAt: investigationCompletedAt is DateTime?
          ? investigationCompletedAt
          : this.investigationCompletedAt,
      investigationCompletedBy: investigationCompletedBy is _is.UuidValue?
          ? investigationCompletedBy
          : this.investigationCompletedBy,
      reviewStatus: reviewStatus ?? this.reviewStatus,
      reviewerGroupIds: reviewerGroupIds is List<_is.UuidValue>?
          ? reviewerGroupIds
          : this.reviewerGroupIds?.map((e0) => e0).toList(),
      reviewWorkflowInstanceId: reviewWorkflowInstanceId is _is.UuidValue?
          ? reviewWorkflowInstanceId
          : this.reviewWorkflowInstanceId,
      remediationStatus: remediationStatus ?? this.remediationStatus,
      remediationActivityIds: remediationActivityIds is List<_is.UuidValue>?
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
      resolutionWitnessUserId: resolutionWitnessUserId is _is.UuidValue?
          ? resolutionWitnessUserId
          : this.resolutionWitnessUserId,
      versionNumber: versionNumber ?? this.versionNumber,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class ElogProblemsUpdateTable extends _is.UpdateTable<ElogProblemsTable> {
  ElogProblemsUpdateTable(super.table);

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> problemTypeId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.problemTypeId,
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

  _is.ColumnValue<String, String> workflowStatus(String value) =>
      _is.ColumnValue(
        table.workflowStatus,
        value,
      );

  _is.ColumnValue<String, String> severity(String value) => _is.ColumnValue(
    table.severity,
    value,
  );

  _is.ColumnValue<String, String> priority(String value) => _is.ColumnValue(
    table.priority,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> assignedToGroupId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.assignedToGroupId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> assignedTo(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.assignedTo,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> resourceUsageId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.resourceUsageId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> detailsLogUsageId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.detailsLogUsageId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> activityId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.activityId,
    value,
  );

  _is.ColumnValue<String, String> attachments(String? value) => _is.ColumnValue(
    table.attachments,
    value,
  );

  _is.ColumnValue<List<_is.UuidValue>, List<_is.UuidValue>> linkedProblems(
    List<_is.UuidValue>? value,
  ) => _is.ColumnValue(
    table.linkedProblems,
    value,
  );

  _is.ColumnValue<List<_is.UuidValue>, List<_is.UuidValue>>
  createdResourceFlags(List<_is.UuidValue>? value) => _is.ColumnValue(
    table.createdResourceFlags,
    value,
  );

  _is.ColumnValue<String, String> handlingPolicySnapshot(String value) =>
      _is.ColumnValue(
        table.handlingPolicySnapshot,
        value,
      );

  _is.ColumnValue<bool, bool> investigationRequired(bool value) =>
      _is.ColumnValue(
        table.investigationRequired,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> investigationCompletedAt(
    DateTime? value,
  ) => _is.ColumnValue(
    table.investigationCompletedAt,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> investigationCompletedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.investigationCompletedBy,
    value,
  );

  _is.ColumnValue<String, String> reviewStatus(String value) => _is.ColumnValue(
    table.reviewStatus,
    value,
  );

  _is.ColumnValue<List<_is.UuidValue>, List<_is.UuidValue>> reviewerGroupIds(
    List<_is.UuidValue>? value,
  ) => _is.ColumnValue(
    table.reviewerGroupIds,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> reviewWorkflowInstanceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.reviewWorkflowInstanceId,
    value,
  );

  _is.ColumnValue<String, String> remediationStatus(String value) =>
      _is.ColumnValue(
        table.remediationStatus,
        value,
      );

  _is.ColumnValue<List<_is.UuidValue>, List<_is.UuidValue>>
  remediationActivityIds(List<_is.UuidValue>? value) => _is.ColumnValue(
    table.remediationActivityIds,
    value,
  );

  _is.ColumnValue<String, String> remediationPlanSnapshot(String value) =>
      _is.ColumnValue(
        table.remediationPlanSnapshot,
        value,
      );

  _is.ColumnValue<String, String> reportSignature(String? value) =>
      _is.ColumnValue(
        table.reportSignature,
        value,
      );

  _is.ColumnValue<String, String> resolutionSignature(String? value) =>
      _is.ColumnValue(
        table.resolutionSignature,
        value,
      );

  _is.ColumnValue<String, String> resolutionWitnessSignature(String? value) =>
      _is.ColumnValue(
        table.resolutionWitnessSignature,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> resolutionWitnessUserId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.resolutionWitnessUserId,
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

class ElogProblemsTable extends _is.Table<_is.UuidValue?> {
  ElogProblemsTable({super.tableRelation}) : super(tableName: 'elog_problems') {
    updateTable = ElogProblemsUpdateTable(this);
    code = _is.ColumnString(
      'code',
      this,
    );
    problemTypeId = _is.ColumnUuid(
      'problemTypeId',
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
    resourceType = _is.ColumnString(
      'resourceType',
      this,
    );
    resourceId = _is.ColumnUuid(
      'resourceId',
      this,
    );
    workflowStatus = _is.ColumnString(
      'workflowStatus',
      this,
    );
    severity = _is.ColumnString(
      'severity',
      this,
    );
    priority = _is.ColumnString(
      'priority',
      this,
    );
    assignedToGroupId = _is.ColumnUuid(
      'assignedToGroupId',
      this,
    );
    assignedTo = _is.ColumnUuid(
      'assignedTo',
      this,
    );
    resourceUsageId = _is.ColumnUuid(
      'resourceUsageId',
      this,
    );
    detailsLogUsageId = _is.ColumnUuid(
      'detailsLogUsageId',
      this,
    );
    activityId = _is.ColumnUuid(
      'activityId',
      this,
    );
    attachments = _is.ColumnString(
      'attachments',
      this,
    );
    linkedProblems = _is.ColumnSerializable<List<_is.UuidValue>>(
      'linkedProblems',
      this,
    );
    createdResourceFlags = _is.ColumnSerializable<List<_is.UuidValue>>(
      'createdResourceFlags',
      this,
    );
    handlingPolicySnapshot = _is.ColumnString(
      'handlingPolicySnapshot',
      this,
    );
    investigationRequired = _is.ColumnBool(
      'investigationRequired',
      this,
    );
    investigationCompletedAt = _is.ColumnDateTime(
      'investigationCompletedAt',
      this,
    );
    investigationCompletedBy = _is.ColumnUuid(
      'investigationCompletedBy',
      this,
    );
    reviewStatus = _is.ColumnString(
      'reviewStatus',
      this,
    );
    reviewerGroupIds = _is.ColumnSerializable<List<_is.UuidValue>>(
      'reviewerGroupIds',
      this,
    );
    reviewWorkflowInstanceId = _is.ColumnUuid(
      'reviewWorkflowInstanceId',
      this,
    );
    remediationStatus = _is.ColumnString(
      'remediationStatus',
      this,
    );
    remediationActivityIds = _is.ColumnSerializable<List<_is.UuidValue>>(
      'remediationActivityIds',
      this,
    );
    remediationPlanSnapshot = _is.ColumnString(
      'remediationPlanSnapshot',
      this,
    );
    reportSignature = _is.ColumnString(
      'reportSignature',
      this,
    );
    resolutionSignature = _is.ColumnString(
      'resolutionSignature',
      this,
    );
    resolutionWitnessSignature = _is.ColumnString(
      'resolutionWitnessSignature',
      this,
    );
    resolutionWitnessUserId = _is.ColumnUuid(
      'resolutionWitnessUserId',
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

  late final ElogProblemsUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnUuid problemTypeId;

  late final _is.ColumnString title;

  late final _is.ColumnString description;

  late final _is.ColumnString resourceType;

  late final _is.ColumnUuid resourceId;

  late final _is.ColumnString workflowStatus;

  late final _is.ColumnString severity;

  late final _is.ColumnString priority;

  late final _is.ColumnUuid assignedToGroupId;

  late final _is.ColumnUuid assignedTo;

  late final _is.ColumnUuid resourceUsageId;

  late final _is.ColumnUuid detailsLogUsageId;

  late final _is.ColumnUuid activityId;

  late final _is.ColumnString attachments;

  late final _is.ColumnSerializable<List<_is.UuidValue>> linkedProblems;

  late final _is.ColumnSerializable<List<_is.UuidValue>> createdResourceFlags;

  late final _is.ColumnString handlingPolicySnapshot;

  late final _is.ColumnBool investigationRequired;

  late final _is.ColumnDateTime investigationCompletedAt;

  late final _is.ColumnUuid investigationCompletedBy;

  late final _is.ColumnString reviewStatus;

  late final _is.ColumnSerializable<List<_is.UuidValue>> reviewerGroupIds;

  late final _is.ColumnUuid reviewWorkflowInstanceId;

  late final _is.ColumnString remediationStatus;

  late final _is.ColumnSerializable<List<_is.UuidValue>> remediationActivityIds;

  late final _is.ColumnString remediationPlanSnapshot;

  late final _is.ColumnString reportSignature;

  late final _is.ColumnString resolutionSignature;

  late final _is.ColumnString resolutionWitnessSignature;

  late final _is.ColumnUuid resolutionWitnessUserId;

  late final _is.ColumnInt versionNumber;

  late final _is.ColumnBool isActive;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    problemTypeId,
    title,
    description,
    resourceType,
    resourceId,
    workflowStatus,
    severity,
    priority,
    assignedToGroupId,
    assignedTo,
    resourceUsageId,
    detailsLogUsageId,
    activityId,
    attachments,
    linkedProblems,
    createdResourceFlags,
    handlingPolicySnapshot,
    investigationRequired,
    investigationCompletedAt,
    investigationCompletedBy,
    reviewStatus,
    reviewerGroupIds,
    reviewWorkflowInstanceId,
    remediationStatus,
    remediationActivityIds,
    remediationPlanSnapshot,
    reportSignature,
    resolutionSignature,
    resolutionWitnessSignature,
    resolutionWitnessUserId,
    versionNumber,
    isActive,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class ElogProblemsInclude extends _is.IncludeObject {
  ElogProblemsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogProblems.t;
}

class ElogProblemsIncludeList extends _is.IncludeList {
  ElogProblemsIncludeList._({
    _is.WhereExpressionBuilder<ElogProblemsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogProblems.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogProblems.t;
}

class ElogProblemsRepository {
  const ElogProblemsRepository._();

  /// Returns a list of [ElogProblems]s matching the given query parameters.
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
  Future<List<ElogProblems>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogProblemsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogProblemsTable>? orderBy,
    _is.OrderByListBuilder<ElogProblemsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogProblems>(
      where: where?.call(ElogProblems.t),
      orderBy: orderBy?.call(ElogProblems.t),
      orderByList: orderByList?.call(ElogProblems.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogProblems] matching the given query parameters.
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
  Future<ElogProblems?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogProblemsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogProblemsTable>? orderBy,
    _is.OrderByListBuilder<ElogProblemsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogProblems>(
      where: where?.call(ElogProblems.t),
      orderBy: orderBy?.call(ElogProblems.t),
      orderByList: orderByList?.call(ElogProblems.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogProblems] by its [id] or null if no such row exists.
  Future<ElogProblems?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogProblems>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogProblems]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogProblems]s will have their `id` fields set.
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
  Future<List<ElogProblems>> insert(
    _is.DatabaseSession session,
    List<ElogProblems> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogProblems>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogProblems] and returns the inserted row.
  ///
  /// The returned [ElogProblems] will have its `id` field set.
  Future<ElogProblems> insertRow(
    _is.DatabaseSession session,
    ElogProblems row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogProblems>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogProblems]s in the list and returns the resulting rows.
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
  /// The returned [ElogProblems]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogProblems>> upsert(
    _is.DatabaseSession session,
    List<ElogProblems> rows, {
    required _is.ColumnSelections<ElogProblemsTable> conflictColumns,
    _is.ColumnSelections<ElogProblemsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogProblemsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogProblems>(
      rows,
      conflictColumns: conflictColumns(ElogProblems.t),
      updateColumns: updateColumns?.call(ElogProblems.t),
      updateWhere: updateWhere?.call(ElogProblems.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogProblems] and returns the resulting row.
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
  /// The returned [ElogProblems] will have its `id` field set.
  Future<ElogProblems?> upsertRow(
    _is.DatabaseSession session,
    ElogProblems row, {
    required _is.ColumnSelections<ElogProblemsTable> conflictColumns,
    _is.ColumnSelections<ElogProblemsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogProblemsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogProblems>(
      row,
      conflictColumns: conflictColumns(ElogProblems.t),
      updateColumns: updateColumns?.call(ElogProblems.t),
      updateWhere: updateWhere?.call(ElogProblems.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogProblems]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogProblems>> update(
    _is.DatabaseSession session,
    List<ElogProblems> rows, {
    _is.ColumnSelections<ElogProblemsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogProblems>(
      rows,
      columns: columns?.call(ElogProblems.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogProblems]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogProblems> updateRow(
    _is.DatabaseSession session,
    ElogProblems row, {
    _is.ColumnSelections<ElogProblemsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogProblems>(
      row,
      columns: columns?.call(ElogProblems.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogProblems] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogProblems?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogProblemsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogProblems>(
      id,
      columnValues: columnValues(ElogProblems.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogProblems]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogProblems>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogProblemsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogProblemsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogProblemsTable>? orderBy,
    _is.OrderByListBuilder<ElogProblemsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogProblems>(
      columnValues: columnValues(ElogProblems.t.updateTable),
      where: where(ElogProblems.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogProblems.t),
      orderByList: orderByList?.call(ElogProblems.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogProblems]s in the list and returns the deleted rows.
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
  Future<List<ElogProblems>> delete(
    _is.DatabaseSession session,
    List<ElogProblems> rows, {
    _is.OrderByBuilder<ElogProblemsTable>? orderBy,
    _is.OrderByListBuilder<ElogProblemsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogProblems>(
      rows,
      orderBy: orderBy?.call(ElogProblems.t),
      orderByList: orderByList?.call(ElogProblems.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogProblems].
  Future<ElogProblems> deleteRow(
    _is.DatabaseSession session,
    ElogProblems row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogProblems>(
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
  Future<List<ElogProblems>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogProblemsTable> where,
    _is.OrderByBuilder<ElogProblemsTable>? orderBy,
    _is.OrderByListBuilder<ElogProblemsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogProblems>(
      where: where(ElogProblems.t),
      orderBy: orderBy?.call(ElogProblems.t),
      orderByList: orderByList?.call(ElogProblems.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogProblemsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogProblems>(
      where: where?.call(ElogProblems.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogProblems] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogProblemsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogProblems>(
      where: where(ElogProblems.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
