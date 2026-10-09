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

abstract class ElogChecklistUsageSets
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogChecklistUsageSets._({
    this.id,
    required this.usageId,
    required this.setId,
    required this.setData,
    this.governanceSnapshot,
    required this.status,
    this.submittedAt,
    this.submittedBy,
    this.completedAt,
    this.completedBy,
    this.workflowInstanceId,
    this.operatorSignature,
    this.witnessSignature,
    this.witnessUserId,
    required this.approvalSignatures,
    this.rejectionReason,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogChecklistUsageSets({
    _isc.UuidValue? id,
    required _isc.UuidValue usageId,
    required String setId,
    required String setData,
    String? governanceSnapshot,
    required String status,
    DateTime? submittedAt,
    _isc.UuidValue? submittedBy,
    DateTime? completedAt,
    _isc.UuidValue? completedBy,
    _isc.UuidValue? workflowInstanceId,
    String? operatorSignature,
    String? witnessSignature,
    _isc.UuidValue? witnessUserId,
    required String approvalSignatures,
    String? rejectionReason,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) = _ElogChecklistUsageSetsImpl;

  factory ElogChecklistUsageSets.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogChecklistUsageSets(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      usageId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['usageId'],
      ),
      setId: jsonSerialization['setId'] as String,
      setData: jsonSerialization['setData'] as String,
      governanceSnapshot: jsonSerialization['governanceSnapshot'] as String?,
      status: jsonSerialization['status'] as String,
      submittedAt: jsonSerialization['submittedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['submittedAt'],
            ),
      submittedBy: jsonSerialization['submittedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['submittedBy'],
            ),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      completedBy: jsonSerialization['completedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['completedBy'],
            ),
      workflowInstanceId: jsonSerialization['workflowInstanceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowInstanceId'],
            ),
      operatorSignature: jsonSerialization['operatorSignature'] as String?,
      witnessSignature: jsonSerialization['witnessSignature'] as String?,
      witnessUserId: jsonSerialization['witnessUserId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['witnessUserId'],
            ),
      approvalSignatures: jsonSerialization['approvalSignatures'] as String,
      rejectionReason: jsonSerialization['rejectionReason'] as String?,
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

  _isc.UuidValue usageId;

  String setId;

  String setData;

  String? governanceSnapshot;

  String status;

  DateTime? submittedAt;

  _isc.UuidValue? submittedBy;

  DateTime? completedAt;

  _isc.UuidValue? completedBy;

  _isc.UuidValue? workflowInstanceId;

  String? operatorSignature;

  String? witnessSignature;

  _isc.UuidValue? witnessUserId;

  String approvalSignatures;

  String? rejectionReason;

  DateTime createdAt;

  DateTime updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [ElogChecklistUsageSets]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogChecklistUsageSets copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? usageId,
    String? setId,
    String? setData,
    String? governanceSnapshot,
    String? status,
    DateTime? submittedAt,
    _isc.UuidValue? submittedBy,
    DateTime? completedAt,
    _isc.UuidValue? completedBy,
    _isc.UuidValue? workflowInstanceId,
    String? operatorSignature,
    String? witnessSignature,
    _isc.UuidValue? witnessUserId,
    String? approvalSignatures,
    String? rejectionReason,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogChecklistUsageSets',
      if (id != null) 'id': id?.toJson(),
      'usageId': usageId.toJson(),
      'setId': setId,
      'setData': setData,
      if (governanceSnapshot != null) 'governanceSnapshot': governanceSnapshot,
      'status': status,
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
      if (submittedBy != null) 'submittedBy': submittedBy?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      if (operatorSignature != null) 'operatorSignature': operatorSignature,
      if (witnessSignature != null) 'witnessSignature': witnessSignature,
      if (witnessUserId != null) 'witnessUserId': witnessUserId?.toJson(),
      'approvalSignatures': approvalSignatures,
      if (rejectionReason != null) 'rejectionReason': rejectionReason,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogChecklistUsageSets',
      if (id != null) 'id': id?.toJson(),
      'usageId': usageId.toJson(),
      'setId': setId,
      'setData': setData,
      if (governanceSnapshot != null) 'governanceSnapshot': governanceSnapshot,
      'status': status,
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
      if (submittedBy != null) 'submittedBy': submittedBy?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      if (operatorSignature != null) 'operatorSignature': operatorSignature,
      if (witnessSignature != null) 'witnessSignature': witnessSignature,
      if (witnessUserId != null) 'witnessUserId': witnessUserId?.toJson(),
      'approvalSignatures': approvalSignatures,
      if (rejectionReason != null) 'rejectionReason': rejectionReason,
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

class _ElogChecklistUsageSetsImpl extends ElogChecklistUsageSets {
  _ElogChecklistUsageSetsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue usageId,
    required String setId,
    required String setData,
    String? governanceSnapshot,
    required String status,
    DateTime? submittedAt,
    _isc.UuidValue? submittedBy,
    DateTime? completedAt,
    _isc.UuidValue? completedBy,
    _isc.UuidValue? workflowInstanceId,
    String? operatorSignature,
    String? witnessSignature,
    _isc.UuidValue? witnessUserId,
    required String approvalSignatures,
    String? rejectionReason,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         usageId: usageId,
         setId: setId,
         setData: setData,
         governanceSnapshot: governanceSnapshot,
         status: status,
         submittedAt: submittedAt,
         submittedBy: submittedBy,
         completedAt: completedAt,
         completedBy: completedBy,
         workflowInstanceId: workflowInstanceId,
         operatorSignature: operatorSignature,
         witnessSignature: witnessSignature,
         witnessUserId: witnessUserId,
         approvalSignatures: approvalSignatures,
         rejectionReason: rejectionReason,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogChecklistUsageSets]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogChecklistUsageSets copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? usageId,
    String? setId,
    String? setData,
    Object? governanceSnapshot = _Undefined,
    String? status,
    Object? submittedAt = _Undefined,
    Object? submittedBy = _Undefined,
    Object? completedAt = _Undefined,
    Object? completedBy = _Undefined,
    Object? workflowInstanceId = _Undefined,
    Object? operatorSignature = _Undefined,
    Object? witnessSignature = _Undefined,
    Object? witnessUserId = _Undefined,
    String? approvalSignatures,
    Object? rejectionReason = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogChecklistUsageSets(
      id: id is _isc.UuidValue? ? id : this.id,
      usageId: usageId ?? this.usageId,
      setId: setId ?? this.setId,
      setData: setData ?? this.setData,
      governanceSnapshot: governanceSnapshot is String?
          ? governanceSnapshot
          : this.governanceSnapshot,
      status: status ?? this.status,
      submittedAt: submittedAt is DateTime? ? submittedAt : this.submittedAt,
      submittedBy: submittedBy is _isc.UuidValue?
          ? submittedBy
          : this.submittedBy,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      completedBy: completedBy is _isc.UuidValue?
          ? completedBy
          : this.completedBy,
      workflowInstanceId: workflowInstanceId is _isc.UuidValue?
          ? workflowInstanceId
          : this.workflowInstanceId,
      operatorSignature: operatorSignature is String?
          ? operatorSignature
          : this.operatorSignature,
      witnessSignature: witnessSignature is String?
          ? witnessSignature
          : this.witnessSignature,
      witnessUserId: witnessUserId is _isc.UuidValue?
          ? witnessUserId
          : this.witnessUserId,
      approvalSignatures: approvalSignatures ?? this.approvalSignatures,
      rejectionReason: rejectionReason is String?
          ? rejectionReason
          : this.rejectionReason,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
