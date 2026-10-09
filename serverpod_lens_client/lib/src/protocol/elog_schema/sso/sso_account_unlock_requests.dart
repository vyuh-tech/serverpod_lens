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

abstract class SsoAccountUnlockRequests
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoAccountUnlockRequests._({
    this.id,
    required this.userId,
    required this.requestedBy,
    this.lockoutReason,
    this.failedLoginAttempts,
    required this.status,
    this.remarks,
    this.decisionNote,
    this.approvedBy,
    this.approvedAt,
    this.rejectedBy,
    this.rejectedAt,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory SsoAccountUnlockRequests({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required String requestedBy,
    String? lockoutReason,
    int? failedLoginAttempts,
    required String status,
    String? remarks,
    String? decisionNote,
    _isc.UuidValue? approvedBy,
    DateTime? approvedAt,
    _isc.UuidValue? rejectedBy,
    DateTime? rejectedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) = _SsoAccountUnlockRequestsImpl;

  factory SsoAccountUnlockRequests.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return SsoAccountUnlockRequests(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      requestedBy: jsonSerialization['requestedBy'] as String,
      lockoutReason: jsonSerialization['lockoutReason'] as String?,
      failedLoginAttempts: jsonSerialization['failedLoginAttempts'] as int?,
      status: jsonSerialization['status'] as String,
      remarks: jsonSerialization['remarks'] as String?,
      decisionNote: jsonSerialization['decisionNote'] as String?,
      approvedBy: jsonSerialization['approvedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['approvedBy'],
            ),
      approvedAt: jsonSerialization['approvedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['approvedAt'],
            ),
      rejectedBy: jsonSerialization['rejectedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['rejectedBy'],
            ),
      rejectedAt: jsonSerialization['rejectedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['rejectedAt'],
            ),
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

  _isc.UuidValue userId;

  String requestedBy;

  String? lockoutReason;

  int? failedLoginAttempts;

  String status;

  String? remarks;

  String? decisionNote;

  _isc.UuidValue? approvedBy;

  DateTime? approvedAt;

  _isc.UuidValue? rejectedBy;

  DateTime? rejectedAt;

  DateTime createdAt;

  DateTime updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [SsoAccountUnlockRequests]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoAccountUnlockRequests copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    String? requestedBy,
    String? lockoutReason,
    int? failedLoginAttempts,
    String? status,
    String? remarks,
    String? decisionNote,
    _isc.UuidValue? approvedBy,
    DateTime? approvedAt,
    _isc.UuidValue? rejectedBy,
    DateTime? rejectedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoAccountUnlockRequests',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'requestedBy': requestedBy,
      if (lockoutReason != null) 'lockoutReason': lockoutReason,
      if (failedLoginAttempts != null)
        'failedLoginAttempts': failedLoginAttempts,
      'status': status,
      if (remarks != null) 'remarks': remarks,
      if (decisionNote != null) 'decisionNote': decisionNote,
      if (approvedBy != null) 'approvedBy': approvedBy?.toJson(),
      if (approvedAt != null) 'approvedAt': approvedAt?.toJson(),
      if (rejectedBy != null) 'rejectedBy': rejectedBy?.toJson(),
      if (rejectedAt != null) 'rejectedAt': rejectedAt?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoAccountUnlockRequests',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'requestedBy': requestedBy,
      if (lockoutReason != null) 'lockoutReason': lockoutReason,
      if (failedLoginAttempts != null)
        'failedLoginAttempts': failedLoginAttempts,
      'status': status,
      if (remarks != null) 'remarks': remarks,
      if (decisionNote != null) 'decisionNote': decisionNote,
      if (approvedBy != null) 'approvedBy': approvedBy?.toJson(),
      if (approvedAt != null) 'approvedAt': approvedAt?.toJson(),
      if (rejectedBy != null) 'rejectedBy': rejectedBy?.toJson(),
      if (rejectedAt != null) 'rejectedAt': rejectedAt?.toJson(),
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

class _SsoAccountUnlockRequestsImpl extends SsoAccountUnlockRequests {
  _SsoAccountUnlockRequestsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required String requestedBy,
    String? lockoutReason,
    int? failedLoginAttempts,
    required String status,
    String? remarks,
    String? decisionNote,
    _isc.UuidValue? approvedBy,
    DateTime? approvedAt,
    _isc.UuidValue? rejectedBy,
    DateTime? rejectedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         userId: userId,
         requestedBy: requestedBy,
         lockoutReason: lockoutReason,
         failedLoginAttempts: failedLoginAttempts,
         status: status,
         remarks: remarks,
         decisionNote: decisionNote,
         approvedBy: approvedBy,
         approvedAt: approvedAt,
         rejectedBy: rejectedBy,
         rejectedAt: rejectedAt,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [SsoAccountUnlockRequests]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoAccountUnlockRequests copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? userId,
    String? requestedBy,
    Object? lockoutReason = _Undefined,
    Object? failedLoginAttempts = _Undefined,
    String? status,
    Object? remarks = _Undefined,
    Object? decisionNote = _Undefined,
    Object? approvedBy = _Undefined,
    Object? approvedAt = _Undefined,
    Object? rejectedBy = _Undefined,
    Object? rejectedAt = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return SsoAccountUnlockRequests(
      id: id is _isc.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      requestedBy: requestedBy ?? this.requestedBy,
      lockoutReason: lockoutReason is String?
          ? lockoutReason
          : this.lockoutReason,
      failedLoginAttempts: failedLoginAttempts is int?
          ? failedLoginAttempts
          : this.failedLoginAttempts,
      status: status ?? this.status,
      remarks: remarks is String? ? remarks : this.remarks,
      decisionNote: decisionNote is String? ? decisionNote : this.decisionNote,
      approvedBy: approvedBy is _isc.UuidValue? ? approvedBy : this.approvedBy,
      approvedAt: approvedAt is DateTime? ? approvedAt : this.approvedAt,
      rejectedBy: rejectedBy is _isc.UuidValue? ? rejectedBy : this.rejectedBy,
      rejectedAt: rejectedAt is DateTime? ? rejectedAt : this.rejectedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
