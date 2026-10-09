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

abstract class SsoUserProductSiteMappings
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoUserProductSiteMappings._({
    this.id,
    required this.userId,
    required this.productId,
    required this.siteId,
    this.productRole,
    this.metadata,
  });

  factory SsoUserProductSiteMappings({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required _isc.UuidValue productId,
    required _isc.UuidValue siteId,
    String? productRole,
    String? metadata,
  }) = _SsoUserProductSiteMappingsImpl;

  factory SsoUserProductSiteMappings.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return SsoUserProductSiteMappings(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      productId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['productId'],
      ),
      siteId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['siteId']),
      productRole: jsonSerialization['productRole'] as String?,
      metadata: jsonSerialization['metadata'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue userId;

  _isc.UuidValue productId;

  _isc.UuidValue siteId;

  String? productRole;

  String? metadata;

  /// Returns a shallow copy of this [SsoUserProductSiteMappings]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoUserProductSiteMappings copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    _isc.UuidValue? productId,
    _isc.UuidValue? siteId,
    String? productRole,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoUserProductSiteMappings',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'productId': productId.toJson(),
      'siteId': siteId.toJson(),
      if (productRole != null) 'productRole': productRole,
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoUserProductSiteMappings',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'productId': productId.toJson(),
      'siteId': siteId.toJson(),
      if (productRole != null) 'productRole': productRole,
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoUserProductSiteMappingsImpl extends SsoUserProductSiteMappings {
  _SsoUserProductSiteMappingsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required _isc.UuidValue productId,
    required _isc.UuidValue siteId,
    String? productRole,
    String? metadata,
  }) : super._(
         id: id,
         userId: userId,
         productId: productId,
         siteId: siteId,
         productRole: productRole,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [SsoUserProductSiteMappings]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoUserProductSiteMappings copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? userId,
    _isc.UuidValue? productId,
    _isc.UuidValue? siteId,
    Object? productRole = _Undefined,
    Object? metadata = _Undefined,
  }) {
    return SsoUserProductSiteMappings(
      id: id is _isc.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      productId: productId ?? this.productId,
      siteId: siteId ?? this.siteId,
      productRole: productRole is String? ? productRole : this.productRole,
      metadata: metadata is String? ? metadata : this.metadata,
    );
  }
}
