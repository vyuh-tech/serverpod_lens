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
abstract class CampusHousingCharge
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusHousingCharge._({
    this.id,
    required this.contractId,
    required this.feeTypeId,
    this.invoiceLineId,
    required this.amountMinor,
    required this.currency,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingCharge({
    _isc.UuidValue? id,
    required _isc.UuidValue contractId,
    required _isc.UuidValue feeTypeId,
    _isc.UuidValue? invoiceLineId,
    required int amountMinor,
    required String currency,
    DateTime? createdAt,
  }) = _CampusHousingChargeImpl;

  factory CampusHousingCharge.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusHousingCharge(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      contractId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['contractId'],
      ),
      feeTypeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['feeTypeId'],
      ),
      invoiceLineId: jsonSerialization['invoiceLineId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['invoiceLineId'],
            ),
      amountMinor: jsonSerialization['amountMinor'] as int,
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

  _isc.UuidValue contractId;

  _isc.UuidValue feeTypeId;

  _isc.UuidValue? invoiceLineId;

  int amountMinor;

  String currency;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusHousingCharge]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusHousingCharge copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? contractId,
    _isc.UuidValue? feeTypeId,
    _isc.UuidValue? invoiceLineId,
    int? amountMinor,
    String? currency,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingCharge',
      if (id != null) 'id': id?.toJson(),
      'contractId': contractId.toJson(),
      'feeTypeId': feeTypeId.toJson(),
      if (invoiceLineId != null) 'invoiceLineId': invoiceLineId?.toJson(),
      'amountMinor': amountMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingCharge',
      if (id != null) 'id': id?.toJson(),
      'contractId': contractId.toJson(),
      'feeTypeId': feeTypeId.toJson(),
      if (invoiceLineId != null) 'invoiceLineId': invoiceLineId?.toJson(),
      'amountMinor': amountMinor,
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

class _CampusHousingChargeImpl extends CampusHousingCharge {
  _CampusHousingChargeImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue contractId,
    required _isc.UuidValue feeTypeId,
    _isc.UuidValue? invoiceLineId,
    required int amountMinor,
    required String currency,
    DateTime? createdAt,
  }) : super._(
         id: id,
         contractId: contractId,
         feeTypeId: feeTypeId,
         invoiceLineId: invoiceLineId,
         amountMinor: amountMinor,
         currency: currency,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingCharge]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusHousingCharge copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? contractId,
    _isc.UuidValue? feeTypeId,
    Object? invoiceLineId = _Undefined,
    int? amountMinor,
    String? currency,
    DateTime? createdAt,
  }) {
    return CampusHousingCharge(
      id: id is _isc.UuidValue? ? id : this.id,
      contractId: contractId ?? this.contractId,
      feeTypeId: feeTypeId ?? this.feeTypeId,
      invoiceLineId: invoiceLineId is _isc.UuidValue?
          ? invoiceLineId
          : this.invoiceLineId,
      amountMinor: amountMinor ?? this.amountMinor,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
