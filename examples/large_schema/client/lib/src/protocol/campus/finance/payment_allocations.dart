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
abstract class CampusPaymentAllocation
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusPaymentAllocation._({
    this.id,
    required this.paymentId,
    required this.invoiceId,
    required this.amountMinor,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusPaymentAllocation({
    _isc.UuidValue? id,
    required _isc.UuidValue paymentId,
    required _isc.UuidValue invoiceId,
    required int amountMinor,
    DateTime? createdAt,
  }) = _CampusPaymentAllocationImpl;

  factory CampusPaymentAllocation.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusPaymentAllocation(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      paymentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['paymentId'],
      ),
      invoiceId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['invoiceId'],
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

  _isc.UuidValue paymentId;

  _isc.UuidValue invoiceId;

  int amountMinor;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusPaymentAllocation]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusPaymentAllocation copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? paymentId,
    _isc.UuidValue? invoiceId,
    int? amountMinor,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusPaymentAllocation',
      if (id != null) 'id': id?.toJson(),
      'paymentId': paymentId.toJson(),
      'invoiceId': invoiceId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusPaymentAllocation',
      if (id != null) 'id': id?.toJson(),
      'paymentId': paymentId.toJson(),
      'invoiceId': invoiceId.toJson(),
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

class _CampusPaymentAllocationImpl extends CampusPaymentAllocation {
  _CampusPaymentAllocationImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue paymentId,
    required _isc.UuidValue invoiceId,
    required int amountMinor,
    DateTime? createdAt,
  }) : super._(
         id: id,
         paymentId: paymentId,
         invoiceId: invoiceId,
         amountMinor: amountMinor,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusPaymentAllocation]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusPaymentAllocation copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? paymentId,
    _isc.UuidValue? invoiceId,
    int? amountMinor,
    DateTime? createdAt,
  }) {
    return CampusPaymentAllocation(
      id: id is _isc.UuidValue? ? id : this.id,
      paymentId: paymentId ?? this.paymentId,
      invoiceId: invoiceId ?? this.invoiceId,
      amountMinor: amountMinor ?? this.amountMinor,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
