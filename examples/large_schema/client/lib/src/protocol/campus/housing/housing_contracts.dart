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

/// Fictional university fixture: housing.
abstract class CampusHousingContract
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusHousingContract._({
    this.id,
    required this.allocationId,
    required this.reference,
    this.signedAt,
    required this.rentMinor,
    required this.currency,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingContract({
    _isc.UuidValue? id,
    required _isc.UuidValue allocationId,
    required String reference,
    DateTime? signedAt,
    required int rentMinor,
    required String currency,
    DateTime? createdAt,
  }) = _CampusHousingContractImpl;

  factory CampusHousingContract.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusHousingContract(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      allocationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['allocationId'],
      ),
      reference: jsonSerialization['reference'] as String,
      signedAt: jsonSerialization['signedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['signedAt']),
      rentMinor: jsonSerialization['rentMinor'] as int,
      currency: jsonSerialization['currency'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue allocationId;

  String reference;

  DateTime? signedAt;

  int rentMinor;

  String currency;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusHousingContract]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusHousingContract copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? allocationId,
    String? reference,
    DateTime? signedAt,
    int? rentMinor,
    String? currency,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingContract',
      if (id != null) 'id': id?.toJson(),
      'allocationId': allocationId.toJson(),
      'reference': reference,
      if (signedAt != null) 'signedAt': signedAt?.toJson(),
      'rentMinor': rentMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingContract',
      if (id != null) 'id': id?.toJson(),
      'allocationId': allocationId.toJson(),
      'reference': reference,
      if (signedAt != null) 'signedAt': signedAt?.toJson(),
      'rentMinor': rentMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingContractImpl extends CampusHousingContract {
  _CampusHousingContractImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue allocationId,
    required String reference,
    DateTime? signedAt,
    required int rentMinor,
    required String currency,
    DateTime? createdAt,
  }) : super._(
         id: id,
         allocationId: allocationId,
         reference: reference,
         signedAt: signedAt,
         rentMinor: rentMinor,
         currency: currency,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingContract]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusHousingContract copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? allocationId,
    String? reference,
    Object? signedAt = _Undefined,
    int? rentMinor,
    String? currency,
    DateTime? createdAt,
  }) {
    return CampusHousingContract(
      id: id is _isc.UuidValue? ? id : this.id,
      allocationId: allocationId ?? this.allocationId,
      reference: reference ?? this.reference,
      signedAt: signedAt is DateTime? ? signedAt : this.signedAt,
      rentMinor: rentMinor ?? this.rentMinor,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
