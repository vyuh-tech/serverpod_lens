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
import '../compatibility/tag.dart' as _ijbcfp2v;
import '../product.dart' as _iowwd3dh;

abstract class ShopProductTag
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ShopProductTag._({
    this.id,
    required this.productId,
    this.product,
    required this.tagId,
    this.tag,
  });

  factory ShopProductTag({
    int? id,
    required int productId,
    _iowwd3dh.Product? product,
    required int tagId,
    _ijbcfp2v.ShopTag? tag,
  }) = _ShopProductTagImpl;

  factory ShopProductTag.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopProductTag(
      id: jsonSerialization['id'] as int?,
      productId: jsonSerialization['productId'] as int,
      product: jsonSerialization['product'] == null
          ? null
          : _id88xlko.Protocol().deserialize<_iowwd3dh.Product>(
              jsonSerialization['product'],
            ),
      tagId: jsonSerialization['tagId'] as int,
      tag: jsonSerialization['tag'] == null
          ? null
          : _id88xlko.Protocol().deserialize<_ijbcfp2v.ShopTag>(
              jsonSerialization['tag'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int productId;

  _iowwd3dh.Product? product;

  int tagId;

  _ijbcfp2v.ShopTag? tag;

  /// Returns a shallow copy of this [ShopProductTag]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ShopProductTag copyWith({
    int? id,
    int? productId,
    _iowwd3dh.Product? product,
    int? tagId,
    _ijbcfp2v.ShopTag? tag,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopProductTag',
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJson(),
      'tagId': tagId,
      if (tag != null) 'tag': tag?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopProductTag',
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJsonForProtocol(),
      'tagId': tagId,
      if (tag != null) 'tag': tag?.toJsonForProtocol(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopProductTagImpl extends ShopProductTag {
  _ShopProductTagImpl({
    int? id,
    required int productId,
    _iowwd3dh.Product? product,
    required int tagId,
    _ijbcfp2v.ShopTag? tag,
  }) : super._(
         id: id,
         productId: productId,
         product: product,
         tagId: tagId,
         tag: tag,
       );

  /// Returns a shallow copy of this [ShopProductTag]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ShopProductTag copyWith({
    Object? id = _Undefined,
    int? productId,
    Object? product = _Undefined,
    int? tagId,
    Object? tag = _Undefined,
  }) {
    return ShopProductTag(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      product: product is _iowwd3dh.Product?
          ? product
          : this.product?.copyWith(),
      tagId: tagId ?? this.tagId,
      tag: tag is _ijbcfp2v.ShopTag? ? tag : this.tag?.copyWith(),
    );
  }
}
