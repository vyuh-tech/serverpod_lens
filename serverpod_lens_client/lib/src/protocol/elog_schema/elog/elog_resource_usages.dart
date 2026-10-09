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

abstract class ElogResourceUsages
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogResourceUsages._({
    this.id,
    required this.resourceType,
    required this.resourceId,
    this.operatingAreaId,
    required this.startedBy,
    this.stoppedBy,
    required this.status,
    required this.startedAt,
    this.stoppedAt,
    this.productId,
    this.batchId,
    this.batchDisposition,
    this.campaignBatchNumber,
    this.campaignBatchLimit,
  });

  factory ElogResourceUsages({
    _isc.UuidValue? id,
    required String resourceType,
    required _isc.UuidValue resourceId,
    _isc.UuidValue? operatingAreaId,
    required _isc.UuidValue startedBy,
    _isc.UuidValue? stoppedBy,
    required String status,
    required DateTime startedAt,
    DateTime? stoppedAt,
    _isc.UuidValue? productId,
    _isc.UuidValue? batchId,
    String? batchDisposition,
    int? campaignBatchNumber,
    int? campaignBatchLimit,
  }) = _ElogResourceUsagesImpl;

  factory ElogResourceUsages.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogResourceUsages(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      resourceType: jsonSerialization['resourceType'] as String,
      resourceId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['resourceId'],
      ),
      operatingAreaId: jsonSerialization['operatingAreaId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['operatingAreaId'],
            ),
      startedBy: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['startedBy'],
      ),
      stoppedBy: jsonSerialization['stoppedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['stoppedBy'],
            ),
      status: jsonSerialization['status'] as String,
      startedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['startedAt'],
      ),
      stoppedAt: jsonSerialization['stoppedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['stoppedAt']),
      productId: jsonSerialization['productId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['productId'],
            ),
      batchId: jsonSerialization['batchId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['batchId']),
      batchDisposition: jsonSerialization['batchDisposition'] as String?,
      campaignBatchNumber: jsonSerialization['campaignBatchNumber'] as int?,
      campaignBatchLimit: jsonSerialization['campaignBatchLimit'] as int?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String resourceType;

  _isc.UuidValue resourceId;

  _isc.UuidValue? operatingAreaId;

  _isc.UuidValue startedBy;

  _isc.UuidValue? stoppedBy;

  String status;

  DateTime startedAt;

  DateTime? stoppedAt;

  _isc.UuidValue? productId;

  _isc.UuidValue? batchId;

  String? batchDisposition;

  int? campaignBatchNumber;

  int? campaignBatchLimit;

  /// Returns a shallow copy of this [ElogResourceUsages]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogResourceUsages copyWith({
    _isc.UuidValue? id,
    String? resourceType,
    _isc.UuidValue? resourceId,
    _isc.UuidValue? operatingAreaId,
    _isc.UuidValue? startedBy,
    _isc.UuidValue? stoppedBy,
    String? status,
    DateTime? startedAt,
    DateTime? stoppedAt,
    _isc.UuidValue? productId,
    _isc.UuidValue? batchId,
    String? batchDisposition,
    int? campaignBatchNumber,
    int? campaignBatchLimit,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogResourceUsages',
      if (id != null) 'id': id?.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      if (operatingAreaId != null) 'operatingAreaId': operatingAreaId?.toJson(),
      'startedBy': startedBy.toJson(),
      if (stoppedBy != null) 'stoppedBy': stoppedBy?.toJson(),
      'status': status,
      'startedAt': startedAt.toJson(),
      if (stoppedAt != null) 'stoppedAt': stoppedAt?.toJson(),
      if (productId != null) 'productId': productId?.toJson(),
      if (batchId != null) 'batchId': batchId?.toJson(),
      if (batchDisposition != null) 'batchDisposition': batchDisposition,
      if (campaignBatchNumber != null)
        'campaignBatchNumber': campaignBatchNumber,
      if (campaignBatchLimit != null) 'campaignBatchLimit': campaignBatchLimit,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogResourceUsages',
      if (id != null) 'id': id?.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      if (operatingAreaId != null) 'operatingAreaId': operatingAreaId?.toJson(),
      'startedBy': startedBy.toJson(),
      if (stoppedBy != null) 'stoppedBy': stoppedBy?.toJson(),
      'status': status,
      'startedAt': startedAt.toJson(),
      if (stoppedAt != null) 'stoppedAt': stoppedAt?.toJson(),
      if (productId != null) 'productId': productId?.toJson(),
      if (batchId != null) 'batchId': batchId?.toJson(),
      if (batchDisposition != null) 'batchDisposition': batchDisposition,
      if (campaignBatchNumber != null)
        'campaignBatchNumber': campaignBatchNumber,
      if (campaignBatchLimit != null) 'campaignBatchLimit': campaignBatchLimit,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogResourceUsagesImpl extends ElogResourceUsages {
  _ElogResourceUsagesImpl({
    _isc.UuidValue? id,
    required String resourceType,
    required _isc.UuidValue resourceId,
    _isc.UuidValue? operatingAreaId,
    required _isc.UuidValue startedBy,
    _isc.UuidValue? stoppedBy,
    required String status,
    required DateTime startedAt,
    DateTime? stoppedAt,
    _isc.UuidValue? productId,
    _isc.UuidValue? batchId,
    String? batchDisposition,
    int? campaignBatchNumber,
    int? campaignBatchLimit,
  }) : super._(
         id: id,
         resourceType: resourceType,
         resourceId: resourceId,
         operatingAreaId: operatingAreaId,
         startedBy: startedBy,
         stoppedBy: stoppedBy,
         status: status,
         startedAt: startedAt,
         stoppedAt: stoppedAt,
         productId: productId,
         batchId: batchId,
         batchDisposition: batchDisposition,
         campaignBatchNumber: campaignBatchNumber,
         campaignBatchLimit: campaignBatchLimit,
       );

  /// Returns a shallow copy of this [ElogResourceUsages]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogResourceUsages copyWith({
    Object? id = _Undefined,
    String? resourceType,
    _isc.UuidValue? resourceId,
    Object? operatingAreaId = _Undefined,
    _isc.UuidValue? startedBy,
    Object? stoppedBy = _Undefined,
    String? status,
    DateTime? startedAt,
    Object? stoppedAt = _Undefined,
    Object? productId = _Undefined,
    Object? batchId = _Undefined,
    Object? batchDisposition = _Undefined,
    Object? campaignBatchNumber = _Undefined,
    Object? campaignBatchLimit = _Undefined,
  }) {
    return ElogResourceUsages(
      id: id is _isc.UuidValue? ? id : this.id,
      resourceType: resourceType ?? this.resourceType,
      resourceId: resourceId ?? this.resourceId,
      operatingAreaId: operatingAreaId is _isc.UuidValue?
          ? operatingAreaId
          : this.operatingAreaId,
      startedBy: startedBy ?? this.startedBy,
      stoppedBy: stoppedBy is _isc.UuidValue? ? stoppedBy : this.stoppedBy,
      status: status ?? this.status,
      startedAt: startedAt ?? this.startedAt,
      stoppedAt: stoppedAt is DateTime? ? stoppedAt : this.stoppedAt,
      productId: productId is _isc.UuidValue? ? productId : this.productId,
      batchId: batchId is _isc.UuidValue? ? batchId : this.batchId,
      batchDisposition: batchDisposition is String?
          ? batchDisposition
          : this.batchDisposition,
      campaignBatchNumber: campaignBatchNumber is int?
          ? campaignBatchNumber
          : this.campaignBatchNumber,
      campaignBatchLimit: campaignBatchLimit is int?
          ? campaignBatchLimit
          : this.campaignBatchLimit,
    );
  }
}
