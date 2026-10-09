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

abstract class ElogPdOperations
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPdOperations._({
    this.id,
    required this.punchSetId,
    required this.triggerType,
    required this.triggerData,
    required this.sourceState,
    required this.behaviorConfig,
    required this.designSnapshot,
    required this.policy,
    required this.status,
    this.signatureId,
    this.witnessSignatureId,
    required this.submittedBy,
    required this.submittedAt,
    this.decidedBy,
    this.decidedAt,
    this.workflowInstanceId,
    this.companyId,
    this.siteId,
  });

  factory ElogPdOperations({
    _isc.UuidValue? id,
    required _isc.UuidValue punchSetId,
    required String triggerType,
    required String triggerData,
    required String sourceState,
    required String behaviorConfig,
    required String designSnapshot,
    required String policy,
    required String status,
    _isc.UuidValue? signatureId,
    _isc.UuidValue? witnessSignatureId,
    required _isc.UuidValue submittedBy,
    required DateTime submittedAt,
    _isc.UuidValue? decidedBy,
    DateTime? decidedAt,
    _isc.UuidValue? workflowInstanceId,
    _isc.UuidValue? companyId,
    _isc.UuidValue? siteId,
  }) = _ElogPdOperationsImpl;

  factory ElogPdOperations.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPdOperations(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      punchSetId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['punchSetId'],
      ),
      triggerType: jsonSerialization['triggerType'] as String,
      triggerData: jsonSerialization['triggerData'] as String,
      sourceState: jsonSerialization['sourceState'] as String,
      behaviorConfig: jsonSerialization['behaviorConfig'] as String,
      designSnapshot: jsonSerialization['designSnapshot'] as String,
      policy: jsonSerialization['policy'] as String,
      status: jsonSerialization['status'] as String,
      signatureId: jsonSerialization['signatureId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['signatureId'],
            ),
      witnessSignatureId: jsonSerialization['witnessSignatureId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['witnessSignatureId'],
            ),
      submittedBy: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['submittedBy'],
      ),
      submittedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['submittedAt'],
      ),
      decidedBy: jsonSerialization['decidedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['decidedBy'],
            ),
      decidedAt: jsonSerialization['decidedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['decidedAt']),
      workflowInstanceId: jsonSerialization['workflowInstanceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowInstanceId'],
            ),
      companyId: jsonSerialization['companyId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['companyId'],
            ),
      siteId: jsonSerialization['siteId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['siteId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue punchSetId;

  String triggerType;

  String triggerData;

  String sourceState;

  String behaviorConfig;

  String designSnapshot;

  String policy;

  String status;

  _isc.UuidValue? signatureId;

  _isc.UuidValue? witnessSignatureId;

  _isc.UuidValue submittedBy;

  DateTime submittedAt;

  _isc.UuidValue? decidedBy;

  DateTime? decidedAt;

  _isc.UuidValue? workflowInstanceId;

  _isc.UuidValue? companyId;

  _isc.UuidValue? siteId;

  /// Returns a shallow copy of this [ElogPdOperations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPdOperations copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? punchSetId,
    String? triggerType,
    String? triggerData,
    String? sourceState,
    String? behaviorConfig,
    String? designSnapshot,
    String? policy,
    String? status,
    _isc.UuidValue? signatureId,
    _isc.UuidValue? witnessSignatureId,
    _isc.UuidValue? submittedBy,
    DateTime? submittedAt,
    _isc.UuidValue? decidedBy,
    DateTime? decidedAt,
    _isc.UuidValue? workflowInstanceId,
    _isc.UuidValue? companyId,
    _isc.UuidValue? siteId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdOperations',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'triggerType': triggerType,
      'triggerData': triggerData,
      'sourceState': sourceState,
      'behaviorConfig': behaviorConfig,
      'designSnapshot': designSnapshot,
      'policy': policy,
      'status': status,
      if (signatureId != null) 'signatureId': signatureId?.toJson(),
      if (witnessSignatureId != null)
        'witnessSignatureId': witnessSignatureId?.toJson(),
      'submittedBy': submittedBy.toJson(),
      'submittedAt': submittedAt.toJson(),
      if (decidedBy != null) 'decidedBy': decidedBy?.toJson(),
      if (decidedAt != null) 'decidedAt': decidedAt?.toJson(),
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (siteId != null) 'siteId': siteId?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdOperations',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'triggerType': triggerType,
      'triggerData': triggerData,
      'sourceState': sourceState,
      'behaviorConfig': behaviorConfig,
      'designSnapshot': designSnapshot,
      'policy': policy,
      'status': status,
      if (signatureId != null) 'signatureId': signatureId?.toJson(),
      if (witnessSignatureId != null)
        'witnessSignatureId': witnessSignatureId?.toJson(),
      'submittedBy': submittedBy.toJson(),
      'submittedAt': submittedAt.toJson(),
      if (decidedBy != null) 'decidedBy': decidedBy?.toJson(),
      if (decidedAt != null) 'decidedAt': decidedAt?.toJson(),
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (siteId != null) 'siteId': siteId?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdOperationsImpl extends ElogPdOperations {
  _ElogPdOperationsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue punchSetId,
    required String triggerType,
    required String triggerData,
    required String sourceState,
    required String behaviorConfig,
    required String designSnapshot,
    required String policy,
    required String status,
    _isc.UuidValue? signatureId,
    _isc.UuidValue? witnessSignatureId,
    required _isc.UuidValue submittedBy,
    required DateTime submittedAt,
    _isc.UuidValue? decidedBy,
    DateTime? decidedAt,
    _isc.UuidValue? workflowInstanceId,
    _isc.UuidValue? companyId,
    _isc.UuidValue? siteId,
  }) : super._(
         id: id,
         punchSetId: punchSetId,
         triggerType: triggerType,
         triggerData: triggerData,
         sourceState: sourceState,
         behaviorConfig: behaviorConfig,
         designSnapshot: designSnapshot,
         policy: policy,
         status: status,
         signatureId: signatureId,
         witnessSignatureId: witnessSignatureId,
         submittedBy: submittedBy,
         submittedAt: submittedAt,
         decidedBy: decidedBy,
         decidedAt: decidedAt,
         workflowInstanceId: workflowInstanceId,
         companyId: companyId,
         siteId: siteId,
       );

  /// Returns a shallow copy of this [ElogPdOperations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPdOperations copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? punchSetId,
    String? triggerType,
    String? triggerData,
    String? sourceState,
    String? behaviorConfig,
    String? designSnapshot,
    String? policy,
    String? status,
    Object? signatureId = _Undefined,
    Object? witnessSignatureId = _Undefined,
    _isc.UuidValue? submittedBy,
    DateTime? submittedAt,
    Object? decidedBy = _Undefined,
    Object? decidedAt = _Undefined,
    Object? workflowInstanceId = _Undefined,
    Object? companyId = _Undefined,
    Object? siteId = _Undefined,
  }) {
    return ElogPdOperations(
      id: id is _isc.UuidValue? ? id : this.id,
      punchSetId: punchSetId ?? this.punchSetId,
      triggerType: triggerType ?? this.triggerType,
      triggerData: triggerData ?? this.triggerData,
      sourceState: sourceState ?? this.sourceState,
      behaviorConfig: behaviorConfig ?? this.behaviorConfig,
      designSnapshot: designSnapshot ?? this.designSnapshot,
      policy: policy ?? this.policy,
      status: status ?? this.status,
      signatureId: signatureId is _isc.UuidValue?
          ? signatureId
          : this.signatureId,
      witnessSignatureId: witnessSignatureId is _isc.UuidValue?
          ? witnessSignatureId
          : this.witnessSignatureId,
      submittedBy: submittedBy ?? this.submittedBy,
      submittedAt: submittedAt ?? this.submittedAt,
      decidedBy: decidedBy is _isc.UuidValue? ? decidedBy : this.decidedBy,
      decidedAt: decidedAt is DateTime? ? decidedAt : this.decidedAt,
      workflowInstanceId: workflowInstanceId is _isc.UuidValue?
          ? workflowInstanceId
          : this.workflowInstanceId,
      companyId: companyId is _isc.UuidValue? ? companyId : this.companyId,
      siteId: siteId is _isc.UuidValue? ? siteId : this.siteId,
    );
  }
}
