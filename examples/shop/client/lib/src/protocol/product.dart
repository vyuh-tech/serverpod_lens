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

abstract class Product
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Product._({
    this.id,
    required this.name,
    required this.sku,
    required this.price,
  });

  factory Product({
    int? id,
    required String name,
    required String sku,
    required double price,
  }) = _ProductImpl;

  factory Product.fromJson(Map<String, dynamic> jsonSerialization) {
    return Product(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      sku: jsonSerialization['sku'] as String,
      price: (jsonSerialization['price'] as num).toDouble(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String sku;

  double price;

  /// Returns a shallow copy of this [Product]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Product copyWith({int? id, String? name, String? sku, double? price});
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Product',
      if (id != null) 'id': id,
      'name': name,
      'sku': sku,
      'price': price,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Product',
      if (id != null) 'id': id,
      'name': name,
      'sku': sku,
      'price': price,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductImpl extends Product {
  _ProductImpl({
    int? id,
    required String name,
    required String sku,
    required double price,
  }) : super._(id: id, name: name, sku: sku, price: price);

  /// Returns a shallow copy of this [Product]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Product copyWith({
    Object? id = _Undefined,
    String? name,
    String? sku,
    double? price,
  }) {
    return Product(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      sku: sku ?? this.sku,
      price: price ?? this.price,
    );
  }
}
