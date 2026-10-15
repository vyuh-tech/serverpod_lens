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
abstract class CampusFine
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusFine._({
    this.id,
    required this.loanId,
    required this.amountMinor,
    required this.currency,
    this.invoiceLineId,
    required this.waived,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusFine({
    _isc.UuidValue? id,
    required _isc.UuidValue loanId,
    required int amountMinor,
    required String currency,
    _isc.UuidValue? invoiceLineId,
    required bool waived,
    DateTime? createdAt,
  }) = _CampusFineImpl;

  factory CampusFine.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusFine(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      loanId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['loanId']),
      amountMinor: jsonSerialization['amountMinor'] as int,
      currency: jsonSerialization['currency'] as String,
      invoiceLineId: jsonSerialization['invoiceLineId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['invoiceLineId'],
            ),
      waived: _isc.BoolJsonExtension.fromJson(jsonSerialization['waived']),
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

  int amountMinor;

  String currency;

  _isc.UuidValue? invoiceLineId;

  bool waived;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusFine]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusFine copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? loanId,
    int? amountMinor,
    String? currency,
    _isc.UuidValue? invoiceLineId,
    bool? waived,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusFine',
      if (id != null) 'id': id?.toJson(),
      'loanId': loanId.toJson(),
      'amountMinor': amountMinor,
      'currency': currency,
      if (invoiceLineId != null) 'invoiceLineId': invoiceLineId?.toJson(),
      'waived': waived,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusFine',
      if (id != null) 'id': id?.toJson(),
      'loanId': loanId.toJson(),
      'amountMinor': amountMinor,
      'currency': currency,
      if (invoiceLineId != null) 'invoiceLineId': invoiceLineId?.toJson(),
      'waived': waived,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusFineImpl extends CampusFine {
  _CampusFineImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue loanId,
    required int amountMinor,
    required String currency,
    _isc.UuidValue? invoiceLineId,
    required bool waived,
    DateTime? createdAt,
  }) : super._(
         id: id,
         loanId: loanId,
         amountMinor: amountMinor,
         currency: currency,
         invoiceLineId: invoiceLineId,
         waived: waived,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusFine]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusFine copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? loanId,
    int? amountMinor,
    String? currency,
    Object? invoiceLineId = _Undefined,
    bool? waived,
    DateTime? createdAt,
  }) {
    return CampusFine(
      id: id is _isc.UuidValue? ? id : this.id,
      loanId: loanId ?? this.loanId,
      amountMinor: amountMinor ?? this.amountMinor,
      currency: currency ?? this.currency,
      invoiceLineId: invoiceLineId is _isc.UuidValue?
          ? invoiceLineId
          : this.invoiceLineId,
      waived: waived ?? this.waived,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
