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

/// Fictional university fixture: admissions.
abstract class CampusAcceptance
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusAcceptance._({
    this.id,
    required this.offerId,
    required this.acceptedAt,
    this.depositPaymentId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAcceptance({
    _isc.UuidValue? id,
    required _isc.UuidValue offerId,
    required DateTime acceptedAt,
    _isc.UuidValue? depositPaymentId,
    DateTime? createdAt,
  }) = _CampusAcceptanceImpl;

  factory CampusAcceptance.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusAcceptance(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      offerId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['offerId'],
      ),
      acceptedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['acceptedAt'],
      ),
      depositPaymentId: jsonSerialization['depositPaymentId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['depositPaymentId'],
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

  _isc.UuidValue offerId;

  DateTime acceptedAt;

  _isc.UuidValue? depositPaymentId;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusAcceptance]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusAcceptance copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? offerId,
    DateTime? acceptedAt,
    _isc.UuidValue? depositPaymentId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAcceptance',
      if (id != null) 'id': id?.toJson(),
      'offerId': offerId.toJson(),
      'acceptedAt': acceptedAt.toJson(),
      if (depositPaymentId != null)
        'depositPaymentId': depositPaymentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAcceptance',
      if (id != null) 'id': id?.toJson(),
      'offerId': offerId.toJson(),
      'acceptedAt': acceptedAt.toJson(),
      if (depositPaymentId != null)
        'depositPaymentId': depositPaymentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAcceptanceImpl extends CampusAcceptance {
  _CampusAcceptanceImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue offerId,
    required DateTime acceptedAt,
    _isc.UuidValue? depositPaymentId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         offerId: offerId,
         acceptedAt: acceptedAt,
         depositPaymentId: depositPaymentId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAcceptance]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusAcceptance copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? offerId,
    DateTime? acceptedAt,
    Object? depositPaymentId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusAcceptance(
      id: id is _isc.UuidValue? ? id : this.id,
      offerId: offerId ?? this.offerId,
      acceptedAt: acceptedAt ?? this.acceptedAt,
      depositPaymentId: depositPaymentId is _isc.UuidValue?
          ? depositPaymentId
          : this.depositPaymentId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
