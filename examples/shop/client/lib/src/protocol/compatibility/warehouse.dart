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
import 'package:shop_client/src/protocol/protocol.dart' as _id88xlko;
import '../compatibility/bin.dart' as _ixjhfbvu;

abstract class ShopWarehouse
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ShopWarehouse._({this.id, required this.name, this.bins});

  factory ShopWarehouse({
    int? id,
    required String name,
    List<_ixjhfbvu.ShopBin>? bins,
  }) = _ShopWarehouseImpl;

  factory ShopWarehouse.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopWarehouse(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      bins: jsonSerialization['bins'] == null
          ? null
          : _id88xlko.Protocol().deserialize<List<_ixjhfbvu.ShopBin>>(
              jsonSerialization['bins'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  List<_ixjhfbvu.ShopBin>? bins;

  /// Returns a shallow copy of this [ShopWarehouse]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ShopWarehouse copyWith({
    int? id,
    String? name,
    List<_ixjhfbvu.ShopBin>? bins,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopWarehouse',
      if (id != null) 'id': id,
      'name': name,
      if (bins != null) 'bins': bins?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopWarehouse',
      if (id != null) 'id': id,
      'name': name,
      if (bins != null)
        'bins': bins?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopWarehouseImpl extends ShopWarehouse {
  _ShopWarehouseImpl({
    int? id,
    required String name,
    List<_ixjhfbvu.ShopBin>? bins,
  }) : super._(id: id, name: name, bins: bins);

  /// Returns a shallow copy of this [ShopWarehouse]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ShopWarehouse copyWith({
    Object? id = _Undefined,
    String? name,
    Object? bins = _Undefined,
  }) {
    return ShopWarehouse(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      bins: bins is List<_ixjhfbvu.ShopBin>?
          ? bins
          : this.bins?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
