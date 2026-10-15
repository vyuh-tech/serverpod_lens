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

/// Fictional university fixture: library.
abstract class CampusLoanRenewal
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusLoanRenewal._({
    this.id,
    required this.loanId,
    required this.previousDueAt,
    required this.nextDueAt,
    this.reason,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusLoanRenewal({
    _isc.UuidValue? id,
    required _isc.UuidValue loanId,
    required DateTime previousDueAt,
    required DateTime nextDueAt,
    String? reason,
    DateTime? createdAt,
  }) = _CampusLoanRenewalImpl;

  factory CampusLoanRenewal.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusLoanRenewal(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      loanId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['loanId']),
      previousDueAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['previousDueAt'],
      ),
      nextDueAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['nextDueAt'],
      ),
      reason: jsonSerialization['reason'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue loanId;

  DateTime previousDueAt;

  DateTime nextDueAt;

  String? reason;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusLoanRenewal]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusLoanRenewal copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? loanId,
    DateTime? previousDueAt,
    DateTime? nextDueAt,
    String? reason,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusLoanRenewal',
      if (id != null) 'id': id?.toJson(),
      'loanId': loanId.toJson(),
      'previousDueAt': previousDueAt.toJson(),
      'nextDueAt': nextDueAt.toJson(),
      if (reason != null) 'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusLoanRenewal',
      if (id != null) 'id': id?.toJson(),
      'loanId': loanId.toJson(),
      'previousDueAt': previousDueAt.toJson(),
      'nextDueAt': nextDueAt.toJson(),
      if (reason != null) 'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusLoanRenewalImpl extends CampusLoanRenewal {
  _CampusLoanRenewalImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue loanId,
    required DateTime previousDueAt,
    required DateTime nextDueAt,
    String? reason,
    DateTime? createdAt,
  }) : super._(
         id: id,
         loanId: loanId,
         previousDueAt: previousDueAt,
         nextDueAt: nextDueAt,
         reason: reason,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusLoanRenewal]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusLoanRenewal copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? loanId,
    DateTime? previousDueAt,
    DateTime? nextDueAt,
    Object? reason = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusLoanRenewal(
      id: id is _isc.UuidValue? ? id : this.id,
      loanId: loanId ?? this.loanId,
      previousDueAt: previousDueAt ?? this.previousDueAt,
      nextDueAt: nextDueAt ?? this.nextDueAt,
      reason: reason is String? ? reason : this.reason,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
