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
import '../compatibility/category.dart' as _i8aqwuhn;

abstract class ShopCategory
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ShopCategory._({this.id, required this.name, this.parentId, this.parent});

  factory ShopCategory({
    int? id,
    required String name,
    int? parentId,
    _i8aqwuhn.ShopCategory? parent,
  }) = _ShopCategoryImpl;

  factory ShopCategory.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopCategory(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      parentId: jsonSerialization['parentId'] as int?,
      parent: jsonSerialization['parent'] == null
          ? null
          : _id88xlko.Protocol().deserialize<_i8aqwuhn.ShopCategory>(
              jsonSerialization['parent'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  int? parentId;

  _i8aqwuhn.ShopCategory? parent;

  /// Returns a shallow copy of this [ShopCategory]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ShopCategory copyWith({
    int? id,
    String? name,
    int? parentId,
    _i8aqwuhn.ShopCategory? parent,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopCategory',
      if (id != null) 'id': id,
      'name': name,
      if (parentId != null) 'parentId': parentId,
      if (parent != null) 'parent': parent?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopCategory',
      if (id != null) 'id': id,
      'name': name,
      if (parentId != null) 'parentId': parentId,
      if (parent != null) 'parent': parent?.toJsonForProtocol(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopCategoryImpl extends ShopCategory {
  _ShopCategoryImpl({
    int? id,
    required String name,
    int? parentId,
    _i8aqwuhn.ShopCategory? parent,
  }) : super._(id: id, name: name, parentId: parentId, parent: parent);

  /// Returns a shallow copy of this [ShopCategory]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ShopCategory copyWith({
    Object? id = _Undefined,
    String? name,
    Object? parentId = _Undefined,
    Object? parent = _Undefined,
  }) {
    return ShopCategory(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      parentId: parentId is int? ? parentId : this.parentId,
      parent: parent is _i8aqwuhn.ShopCategory?
          ? parent
          : this.parent?.copyWith(),
    );
  }
}
