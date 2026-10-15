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
abstract class CampusPayment
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusPayment._({
    this.id,
    required this.studentId,
    required this.reference,
    required this.amountMinor,
    required this.currency,
    required this.receivedAt,
    required this.method,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusPayment({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required String reference,
    required int amountMinor,
    required String currency,
    required DateTime receivedAt,
    required String method,
    DateTime? createdAt,
  }) = _CampusPaymentImpl;

  factory CampusPayment.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusPayment(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      reference: jsonSerialization['reference'] as String,
      amountMinor: jsonSerialization['amountMinor'] as int,
      currency: jsonSerialization['currency'] as String,
      receivedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['receivedAt'],
      ),
      method: jsonSerialization['method'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue studentId;

  String reference;

  int amountMinor;

  String currency;

  DateTime receivedAt;

  String method;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusPayment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusPayment copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    String? reference,
    int? amountMinor,
    String? currency,
    DateTime? receivedAt,
    String? method,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusPayment',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'reference': reference,
      'amountMinor': amountMinor,
      'currency': currency,
      'receivedAt': receivedAt.toJson(),
      'method': method,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusPayment',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'reference': reference,
      'amountMinor': amountMinor,
      'currency': currency,
      'receivedAt': receivedAt.toJson(),
      'method': method,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusPaymentImpl extends CampusPayment {
  _CampusPaymentImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required String reference,
    required int amountMinor,
    required String currency,
    required DateTime receivedAt,
    required String method,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         reference: reference,
         amountMinor: amountMinor,
         currency: currency,
         receivedAt: receivedAt,
         method: method,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusPayment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusPayment copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    String? reference,
    int? amountMinor,
    String? currency,
    DateTime? receivedAt,
    String? method,
    DateTime? createdAt,
  }) {
    return CampusPayment(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      reference: reference ?? this.reference,
      amountMinor: amountMinor ?? this.amountMinor,
      currency: currency ?? this.currency,
      receivedAt: receivedAt ?? this.receivedAt,
      method: method ?? this.method,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
