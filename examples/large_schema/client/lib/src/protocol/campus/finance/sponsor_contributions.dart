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

/// Fictional university fixture: finance.
abstract class CampusSponsorContribution
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusSponsorContribution._({
    this.id,
    required this.sponsorshipId,
    required this.paymentId,
    required this.amountMinor,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSponsorContribution({
    _isc.UuidValue? id,
    required _isc.UuidValue sponsorshipId,
    required _isc.UuidValue paymentId,
    required int amountMinor,
    DateTime? createdAt,
  }) = _CampusSponsorContributionImpl;

  factory CampusSponsorContribution.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusSponsorContribution(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sponsorshipId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['sponsorshipId'],
      ),
      paymentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['paymentId'],
      ),
      amountMinor: jsonSerialization['amountMinor'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue sponsorshipId;

  _isc.UuidValue paymentId;

  int amountMinor;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusSponsorContribution]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusSponsorContribution copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? sponsorshipId,
    _isc.UuidValue? paymentId,
    int? amountMinor,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSponsorContribution',
      if (id != null) 'id': id?.toJson(),
      'sponsorshipId': sponsorshipId.toJson(),
      'paymentId': paymentId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSponsorContribution',
      if (id != null) 'id': id?.toJson(),
      'sponsorshipId': sponsorshipId.toJson(),
      'paymentId': paymentId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSponsorContributionImpl extends CampusSponsorContribution {
  _CampusSponsorContributionImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue sponsorshipId,
    required _isc.UuidValue paymentId,
    required int amountMinor,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sponsorshipId: sponsorshipId,
         paymentId: paymentId,
         amountMinor: amountMinor,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSponsorContribution]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusSponsorContribution copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? sponsorshipId,
    _isc.UuidValue? paymentId,
    int? amountMinor,
    DateTime? createdAt,
  }) {
    return CampusSponsorContribution(
      id: id is _isc.UuidValue? ? id : this.id,
      sponsorshipId: sponsorshipId ?? this.sponsorshipId,
      paymentId: paymentId ?? this.paymentId,
      amountMinor: amountMinor ?? this.amountMinor,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
