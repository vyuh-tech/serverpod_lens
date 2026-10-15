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

/// Fictional university fixture: enrolment.
abstract class CampusWithdrawal
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusWithdrawal._({
    this.id,
    required this.enrolmentId,
    required this.requestedAt,
    required this.reason,
    this.approvedById,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusWithdrawal({
    _isc.UuidValue? id,
    required _isc.UuidValue enrolmentId,
    required DateTime requestedAt,
    required String reason,
    _isc.UuidValue? approvedById,
    DateTime? createdAt,
  }) = _CampusWithdrawalImpl;

  factory CampusWithdrawal.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusWithdrawal(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      enrolmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['enrolmentId'],
      ),
      requestedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['requestedAt'],
      ),
      reason: jsonSerialization['reason'] as String,
      approvedById: jsonSerialization['approvedById'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['approvedById'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue enrolmentId;

  DateTime requestedAt;

  String reason;

  _isc.UuidValue? approvedById;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusWithdrawal]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusWithdrawal copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? enrolmentId,
    DateTime? requestedAt,
    String? reason,
    _isc.UuidValue? approvedById,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusWithdrawal',
      if (id != null) 'id': id?.toJson(),
      'enrolmentId': enrolmentId.toJson(),
      'requestedAt': requestedAt.toJson(),
      'reason': reason,
      if (approvedById != null) 'approvedById': approvedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusWithdrawal',
      if (id != null) 'id': id?.toJson(),
      'enrolmentId': enrolmentId.toJson(),
      'requestedAt': requestedAt.toJson(),
      'reason': reason,
      if (approvedById != null) 'approvedById': approvedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusWithdrawalImpl extends CampusWithdrawal {
  _CampusWithdrawalImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue enrolmentId,
    required DateTime requestedAt,
    required String reason,
    _isc.UuidValue? approvedById,
    DateTime? createdAt,
  }) : super._(
         id: id,
         enrolmentId: enrolmentId,
         requestedAt: requestedAt,
         reason: reason,
         approvedById: approvedById,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusWithdrawal]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusWithdrawal copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? enrolmentId,
    DateTime? requestedAt,
    String? reason,
    Object? approvedById = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusWithdrawal(
      id: id is _isc.UuidValue? ? id : this.id,
      enrolmentId: enrolmentId ?? this.enrolmentId,
      requestedAt: requestedAt ?? this.requestedAt,
      reason: reason ?? this.reason,
      approvedById: approvedById is _isc.UuidValue?
          ? approvedById
          : this.approvedById,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
