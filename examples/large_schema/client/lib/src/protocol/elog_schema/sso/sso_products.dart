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

abstract class SsoProducts
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoProducts._({
    this.id,
    required this.name,
    required this.code,
    this.description,
    this.version,
    this.logoUrl,
    this.isActive,
    this.webhookUrl,
    this.productUrl,
    this.metadata,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory SsoProducts({
    _isc.UuidValue? id,
    required String name,
    required String code,
    String? description,
    String? version,
    String? logoUrl,
    bool? isActive,
    String? webhookUrl,
    String? productUrl,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) = _SsoProductsImpl;

  factory SsoProducts.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoProducts(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      code: jsonSerialization['code'] as String,
      description: jsonSerialization['description'] as String?,
      version: jsonSerialization['version'] as String?,
      logoUrl: jsonSerialization['logoUrl'] as String?,
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      webhookUrl: jsonSerialization['webhookUrl'] as String?,
      productUrl: jsonSerialization['productUrl'] as String?,
      metadata: jsonSerialization['metadata'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['createdBy'],
            ),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['updatedBy'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String name;

  String code;

  String? description;

  String? version;

  String? logoUrl;

  bool? isActive;

  String? webhookUrl;

  String? productUrl;

  String? metadata;

  DateTime? createdAt;

  DateTime? updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [SsoProducts]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoProducts copyWith({
    _isc.UuidValue? id,
    String? name,
    String? code,
    String? description,
    String? version,
    String? logoUrl,
    bool? isActive,
    String? webhookUrl,
    String? productUrl,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoProducts',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'code': code,
      if (description != null) 'description': description,
      if (version != null) 'version': version,
      if (logoUrl != null) 'logoUrl': logoUrl,
      if (isActive != null) 'isActive': isActive,
      if (webhookUrl != null) 'webhookUrl': webhookUrl,
      if (productUrl != null) 'productUrl': productUrl,
      if (metadata != null) 'metadata': metadata,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoProducts',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'code': code,
      if (description != null) 'description': description,
      if (version != null) 'version': version,
      if (logoUrl != null) 'logoUrl': logoUrl,
      if (isActive != null) 'isActive': isActive,
      if (webhookUrl != null) 'webhookUrl': webhookUrl,
      if (productUrl != null) 'productUrl': productUrl,
      if (metadata != null) 'metadata': metadata,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoProductsImpl extends SsoProducts {
  _SsoProductsImpl({
    _isc.UuidValue? id,
    required String name,
    required String code,
    String? description,
    String? version,
    String? logoUrl,
    bool? isActive,
    String? webhookUrl,
    String? productUrl,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         name: name,
         code: code,
         description: description,
         version: version,
         logoUrl: logoUrl,
         isActive: isActive,
         webhookUrl: webhookUrl,
         productUrl: productUrl,
         metadata: metadata,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [SsoProducts]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoProducts copyWith({
    Object? id = _Undefined,
    String? name,
    String? code,
    Object? description = _Undefined,
    Object? version = _Undefined,
    Object? logoUrl = _Undefined,
    Object? isActive = _Undefined,
    Object? webhookUrl = _Undefined,
    Object? productUrl = _Undefined,
    Object? metadata = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return SsoProducts(
      id: id is _isc.UuidValue? ? id : this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      description: description is String? ? description : this.description,
      version: version is String? ? version : this.version,
      logoUrl: logoUrl is String? ? logoUrl : this.logoUrl,
      isActive: isActive is bool? ? isActive : this.isActive,
      webhookUrl: webhookUrl is String? ? webhookUrl : this.webhookUrl,
      productUrl: productUrl is String? ? productUrl : this.productUrl,
      metadata: metadata is String? ? metadata : this.metadata,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
