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
abstract class CampusInvoiceLine
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusInvoiceLine._({
    this.id,
    required this.invoiceId,
    required this.feeTypeId,
    required this.description,
    required this.quantity,
    required this.unitAmountMinor,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusInvoiceLine({
    _isc.UuidValue? id,
    required _isc.UuidValue invoiceId,
    required _isc.UuidValue feeTypeId,
    required String description,
    required int quantity,
    required int unitAmountMinor,
    DateTime? createdAt,
  }) = _CampusInvoiceLineImpl;

  factory CampusInvoiceLine.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusInvoiceLine(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      invoiceId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['invoiceId'],
      ),
      feeTypeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['feeTypeId'],
      ),
      description: jsonSerialization['description'] as String,
      quantity: jsonSerialization['quantity'] as int,
      unitAmountMinor: jsonSerialization['unitAmountMinor'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue invoiceId;

  _isc.UuidValue feeTypeId;

  String description;

  int quantity;

  int unitAmountMinor;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusInvoiceLine]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusInvoiceLine copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? invoiceId,
    _isc.UuidValue? feeTypeId,
    String? description,
    int? quantity,
    int? unitAmountMinor,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusInvoiceLine',
      if (id != null) 'id': id?.toJson(),
      'invoiceId': invoiceId.toJson(),
      'feeTypeId': feeTypeId.toJson(),
      'description': description,
      'quantity': quantity,
      'unitAmountMinor': unitAmountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusInvoiceLine',
      if (id != null) 'id': id?.toJson(),
      'invoiceId': invoiceId.toJson(),
      'feeTypeId': feeTypeId.toJson(),
      'description': description,
      'quantity': quantity,
      'unitAmountMinor': unitAmountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusInvoiceLineImpl extends CampusInvoiceLine {
  _CampusInvoiceLineImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue invoiceId,
    required _isc.UuidValue feeTypeId,
    required String description,
    required int quantity,
    required int unitAmountMinor,
    DateTime? createdAt,
  }) : super._(
         id: id,
         invoiceId: invoiceId,
         feeTypeId: feeTypeId,
         description: description,
         quantity: quantity,
         unitAmountMinor: unitAmountMinor,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusInvoiceLine]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusInvoiceLine copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? invoiceId,
    _isc.UuidValue? feeTypeId,
    String? description,
    int? quantity,
    int? unitAmountMinor,
    DateTime? createdAt,
  }) {
    return CampusInvoiceLine(
      id: id is _isc.UuidValue? ? id : this.id,
      invoiceId: invoiceId ?? this.invoiceId,
      feeTypeId: feeTypeId ?? this.feeTypeId,
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
      unitAmountMinor: unitAmountMinor ?? this.unitAmountMinor,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
