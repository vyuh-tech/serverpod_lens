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

abstract class Order
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Order._({
    this.id,
    required this.customerId,
    required this.placedAt,
    required this.status,
    required this.total,
  });

  factory Order({
    int? id,
    required int customerId,
    required DateTime placedAt,
    required String status,
    required double total,
  }) = _OrderImpl;

  factory Order.fromJson(Map<String, dynamic> jsonSerialization) {
    return Order(
      id: jsonSerialization['id'] as int?,
      customerId: jsonSerialization['customerId'] as int,
      placedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['placedAt'],
      ),
      status: jsonSerialization['status'] as String,
      total: (jsonSerialization['total'] as num).toDouble(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int customerId;

  DateTime placedAt;

  String status;

  double total;

  /// Returns a shallow copy of this [Order]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Order copyWith({
    int? id,
    int? customerId,
    DateTime? placedAt,
    String? status,
    double? total,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Order',
      if (id != null) 'id': id,
      'customerId': customerId,
      'placedAt': placedAt.toJson(),
      'status': status,
      'total': total,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Order',
      if (id != null) 'id': id,
      'customerId': customerId,
      'placedAt': placedAt.toJson(),
      'status': status,
      'total': total,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OrderImpl extends Order {
  _OrderImpl({
    int? id,
    required int customerId,
    required DateTime placedAt,
    required String status,
    required double total,
  }) : super._(
         id: id,
         customerId: customerId,
         placedAt: placedAt,
         status: status,
         total: total,
       );

  /// Returns a shallow copy of this [Order]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Order copyWith({
    Object? id = _Undefined,
    int? customerId,
    DateTime? placedAt,
    String? status,
    double? total,
  }) {
    return Order(
      id: id is int? ? id : this.id,
      customerId: customerId ?? this.customerId,
      placedAt: placedAt ?? this.placedAt,
      status: status ?? this.status,
      total: total ?? this.total,
    );
  }
}
