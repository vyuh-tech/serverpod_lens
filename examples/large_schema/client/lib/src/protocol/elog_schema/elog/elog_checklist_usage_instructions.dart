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

abstract class ElogChecklistUsageInstructions
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogChecklistUsageInstructions._({
    this.id,
    required this.usageId,
    required this.instructionId,
    this.sourceInstructionId,
    this.occurrenceIndex,
    this.occurrenceTotal,
    this.availableAt,
    this.warningAt,
    this.dueAt,
    this.deviationReason,
    required this.setId,
    required this.instructionData,
    this.setData,
    this.response,
    this.workflowInstanceId,
    required this.sequenceNumber,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.claimedBy,
    this.timerStartedAt,
    this.operatorSignature,
    this.witnessSignature,
    this.witnessUserId,
    this.approvalSignatures,
  });

  factory ElogChecklistUsageInstructions({
    _isc.UuidValue? id,
    required _isc.UuidValue usageId,
    required String instructionId,
    String? sourceInstructionId,
    int? occurrenceIndex,
    int? occurrenceTotal,
    DateTime? availableAt,
    DateTime? warningAt,
    DateTime? dueAt,
    String? deviationReason,
    required String setId,
    required String instructionData,
    String? setData,
    String? response,
    _isc.UuidValue? workflowInstanceId,
    required int sequenceNumber,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    _isc.UuidValue? claimedBy,
    DateTime? timerStartedAt,
    String? operatorSignature,
    String? witnessSignature,
    _isc.UuidValue? witnessUserId,
    String? approvalSignatures,
  }) = _ElogChecklistUsageInstructionsImpl;

  factory ElogChecklistUsageInstructions.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogChecklistUsageInstructions(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      usageId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['usageId'],
      ),
      instructionId: jsonSerialization['instructionId'] as String,
      sourceInstructionId: jsonSerialization['sourceInstructionId'] as String?,
      occurrenceIndex: jsonSerialization['occurrenceIndex'] as int?,
      occurrenceTotal: jsonSerialization['occurrenceTotal'] as int?,
      availableAt: jsonSerialization['availableAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['availableAt'],
            ),
      warningAt: jsonSerialization['warningAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['warningAt']),
      dueAt: jsonSerialization['dueAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
      deviationReason: jsonSerialization['deviationReason'] as String?,
      setId: jsonSerialization['setId'] as String,
      instructionData: jsonSerialization['instructionData'] as String,
      setData: jsonSerialization['setData'] as String?,
      response: jsonSerialization['response'] as String?,
      workflowInstanceId: jsonSerialization['workflowInstanceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowInstanceId'],
            ),
      sequenceNumber: jsonSerialization['sequenceNumber'] as int,
      status: jsonSerialization['status'] as String,
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
      claimedBy: jsonSerialization['claimedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['claimedBy'],
            ),
      timerStartedAt: jsonSerialization['timerStartedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['timerStartedAt'],
            ),
      operatorSignature: jsonSerialization['operatorSignature'] as String?,
      witnessSignature: jsonSerialization['witnessSignature'] as String?,
      witnessUserId: jsonSerialization['witnessUserId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['witnessUserId'],
            ),
      approvalSignatures: jsonSerialization['approvalSignatures'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue usageId;

  String instructionId;

  String? sourceInstructionId;

  int? occurrenceIndex;

  int? occurrenceTotal;

  DateTime? availableAt;

  DateTime? warningAt;

  DateTime? dueAt;

  String? deviationReason;

  String setId;

  String instructionData;

  String? setData;

  String? response;

  _isc.UuidValue? workflowInstanceId;

  int sequenceNumber;

  String status;

  DateTime createdAt;

  DateTime updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  _isc.UuidValue? claimedBy;

  DateTime? timerStartedAt;

  String? operatorSignature;

  String? witnessSignature;

  _isc.UuidValue? witnessUserId;

  String? approvalSignatures;

  /// Returns a shallow copy of this [ElogChecklistUsageInstructions]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogChecklistUsageInstructions copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? usageId,
    String? instructionId,
    String? sourceInstructionId,
    int? occurrenceIndex,
    int? occurrenceTotal,
    DateTime? availableAt,
    DateTime? warningAt,
    DateTime? dueAt,
    String? deviationReason,
    String? setId,
    String? instructionData,
    String? setData,
    String? response,
    _isc.UuidValue? workflowInstanceId,
    int? sequenceNumber,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    _isc.UuidValue? claimedBy,
    DateTime? timerStartedAt,
    String? operatorSignature,
    String? witnessSignature,
    _isc.UuidValue? witnessUserId,
    String? approvalSignatures,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogChecklistUsageInstructions',
      if (id != null) 'id': id?.toJson(),
      'usageId': usageId.toJson(),
      'instructionId': instructionId,
      if (sourceInstructionId != null)
        'sourceInstructionId': sourceInstructionId,
      if (occurrenceIndex != null) 'occurrenceIndex': occurrenceIndex,
      if (occurrenceTotal != null) 'occurrenceTotal': occurrenceTotal,
      if (availableAt != null) 'availableAt': availableAt?.toJson(),
      if (warningAt != null) 'warningAt': warningAt?.toJson(),
      if (dueAt != null) 'dueAt': dueAt?.toJson(),
      if (deviationReason != null) 'deviationReason': deviationReason,
      'setId': setId,
      'instructionData': instructionData,
      if (setData != null) 'setData': setData,
      if (response != null) 'response': response,
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      'sequenceNumber': sequenceNumber,
      'status': status,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      if (claimedBy != null) 'claimedBy': claimedBy?.toJson(),
      if (timerStartedAt != null) 'timerStartedAt': timerStartedAt?.toJson(),
      if (operatorSignature != null) 'operatorSignature': operatorSignature,
      if (witnessSignature != null) 'witnessSignature': witnessSignature,
      if (witnessUserId != null) 'witnessUserId': witnessUserId?.toJson(),
      if (approvalSignatures != null) 'approvalSignatures': approvalSignatures,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogChecklistUsageInstructions',
      if (id != null) 'id': id?.toJson(),
      'usageId': usageId.toJson(),
      'instructionId': instructionId,
      if (sourceInstructionId != null)
        'sourceInstructionId': sourceInstructionId,
      if (occurrenceIndex != null) 'occurrenceIndex': occurrenceIndex,
      if (occurrenceTotal != null) 'occurrenceTotal': occurrenceTotal,
      if (availableAt != null) 'availableAt': availableAt?.toJson(),
      if (warningAt != null) 'warningAt': warningAt?.toJson(),
      if (dueAt != null) 'dueAt': dueAt?.toJson(),
      if (deviationReason != null) 'deviationReason': deviationReason,
      'setId': setId,
      'instructionData': instructionData,
      if (setData != null) 'setData': setData,
      if (response != null) 'response': response,
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      'sequenceNumber': sequenceNumber,
      'status': status,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      if (claimedBy != null) 'claimedBy': claimedBy?.toJson(),
      if (timerStartedAt != null) 'timerStartedAt': timerStartedAt?.toJson(),
      if (operatorSignature != null) 'operatorSignature': operatorSignature,
      if (witnessSignature != null) 'witnessSignature': witnessSignature,
      if (witnessUserId != null) 'witnessUserId': witnessUserId?.toJson(),
      if (approvalSignatures != null) 'approvalSignatures': approvalSignatures,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogChecklistUsageInstructionsImpl
    extends ElogChecklistUsageInstructions {
  _ElogChecklistUsageInstructionsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue usageId,
    required String instructionId,
    String? sourceInstructionId,
    int? occurrenceIndex,
    int? occurrenceTotal,
    DateTime? availableAt,
    DateTime? warningAt,
    DateTime? dueAt,
    String? deviationReason,
    required String setId,
    required String instructionData,
    String? setData,
    String? response,
    _isc.UuidValue? workflowInstanceId,
    required int sequenceNumber,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    _isc.UuidValue? claimedBy,
    DateTime? timerStartedAt,
    String? operatorSignature,
    String? witnessSignature,
    _isc.UuidValue? witnessUserId,
    String? approvalSignatures,
  }) : super._(
         id: id,
         usageId: usageId,
         instructionId: instructionId,
         sourceInstructionId: sourceInstructionId,
         occurrenceIndex: occurrenceIndex,
         occurrenceTotal: occurrenceTotal,
         availableAt: availableAt,
         warningAt: warningAt,
         dueAt: dueAt,
         deviationReason: deviationReason,
         setId: setId,
         instructionData: instructionData,
         setData: setData,
         response: response,
         workflowInstanceId: workflowInstanceId,
         sequenceNumber: sequenceNumber,
         status: status,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
         claimedBy: claimedBy,
         timerStartedAt: timerStartedAt,
         operatorSignature: operatorSignature,
         witnessSignature: witnessSignature,
         witnessUserId: witnessUserId,
         approvalSignatures: approvalSignatures,
       );

  /// Returns a shallow copy of this [ElogChecklistUsageInstructions]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogChecklistUsageInstructions copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? usageId,
    String? instructionId,
    Object? sourceInstructionId = _Undefined,
    Object? occurrenceIndex = _Undefined,
    Object? occurrenceTotal = _Undefined,
    Object? availableAt = _Undefined,
    Object? warningAt = _Undefined,
    Object? dueAt = _Undefined,
    Object? deviationReason = _Undefined,
    String? setId,
    String? instructionData,
    Object? setData = _Undefined,
    Object? response = _Undefined,
    Object? workflowInstanceId = _Undefined,
    int? sequenceNumber,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    Object? claimedBy = _Undefined,
    Object? timerStartedAt = _Undefined,
    Object? operatorSignature = _Undefined,
    Object? witnessSignature = _Undefined,
    Object? witnessUserId = _Undefined,
    Object? approvalSignatures = _Undefined,
  }) {
    return ElogChecklistUsageInstructions(
      id: id is _isc.UuidValue? ? id : this.id,
      usageId: usageId ?? this.usageId,
      instructionId: instructionId ?? this.instructionId,
      sourceInstructionId: sourceInstructionId is String?
          ? sourceInstructionId
          : this.sourceInstructionId,
      occurrenceIndex: occurrenceIndex is int?
          ? occurrenceIndex
          : this.occurrenceIndex,
      occurrenceTotal: occurrenceTotal is int?
          ? occurrenceTotal
          : this.occurrenceTotal,
      availableAt: availableAt is DateTime? ? availableAt : this.availableAt,
      warningAt: warningAt is DateTime? ? warningAt : this.warningAt,
      dueAt: dueAt is DateTime? ? dueAt : this.dueAt,
      deviationReason: deviationReason is String?
          ? deviationReason
          : this.deviationReason,
      setId: setId ?? this.setId,
      instructionData: instructionData ?? this.instructionData,
      setData: setData is String? ? setData : this.setData,
      response: response is String? ? response : this.response,
      workflowInstanceId: workflowInstanceId is _isc.UuidValue?
          ? workflowInstanceId
          : this.workflowInstanceId,
      sequenceNumber: sequenceNumber ?? this.sequenceNumber,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
      claimedBy: claimedBy is _isc.UuidValue? ? claimedBy : this.claimedBy,
      timerStartedAt: timerStartedAt is DateTime?
          ? timerStartedAt
          : this.timerStartedAt,
      operatorSignature: operatorSignature is String?
          ? operatorSignature
          : this.operatorSignature,
      witnessSignature: witnessSignature is String?
          ? witnessSignature
          : this.witnessSignature,
      witnessUserId: witnessUserId is _isc.UuidValue?
          ? witnessUserId
          : this.witnessUserId,
      approvalSignatures: approvalSignatures is String?
          ? approvalSignatures
          : this.approvalSignatures,
    );
  }
}
