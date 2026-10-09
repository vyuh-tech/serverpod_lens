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

abstract class SsoProductSiteMappings
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoProductSiteMappings._({
    this.id,
    required this.productId,
    required this.siteId,
    this.installedVersion,
    this.installationDate,
    this.expiryDate,
    this.metadata,
  });

  factory SsoProductSiteMappings({
    _isc.UuidValue? id,
    required _isc.UuidValue productId,
    required _isc.UuidValue siteId,
    String? installedVersion,
    DateTime? installationDate,
    DateTime? expiryDate,
    String? metadata,
  }) = _SsoProductSiteMappingsImpl;

  factory SsoProductSiteMappings.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return SsoProductSiteMappings(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      productId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['productId'],
      ),
      siteId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['siteId']),
      installedVersion: jsonSerialization['installedVersion'] as String?,
      installationDate: jsonSerialization['installationDate'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['installationDate'],
            ),
      expiryDate: jsonSerialization['expiryDate'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['expiryDate'],
            ),
      metadata: jsonSerialization['metadata'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue productId;

  _isc.UuidValue siteId;

  String? installedVersion;

  DateTime? installationDate;

  DateTime? expiryDate;

  String? metadata;

  /// Returns a shallow copy of this [SsoProductSiteMappings]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoProductSiteMappings copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? productId,
    _isc.UuidValue? siteId,
    String? installedVersion,
    DateTime? installationDate,
    DateTime? expiryDate,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoProductSiteMappings',
      if (id != null) 'id': id?.toJson(),
      'productId': productId.toJson(),
      'siteId': siteId.toJson(),
      if (installedVersion != null) 'installedVersion': installedVersion,
      if (installationDate != null)
        'installationDate': installationDate?.toJson(),
      if (expiryDate != null) 'expiryDate': expiryDate?.toJson(),
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoProductSiteMappings',
      if (id != null) 'id': id?.toJson(),
      'productId': productId.toJson(),
      'siteId': siteId.toJson(),
      if (installedVersion != null) 'installedVersion': installedVersion,
      if (installationDate != null)
        'installationDate': installationDate?.toJson(),
      if (expiryDate != null) 'expiryDate': expiryDate?.toJson(),
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoProductSiteMappingsImpl extends SsoProductSiteMappings {
  _SsoProductSiteMappingsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue productId,
    required _isc.UuidValue siteId,
    String? installedVersion,
    DateTime? installationDate,
    DateTime? expiryDate,
    String? metadata,
  }) : super._(
         id: id,
         productId: productId,
         siteId: siteId,
         installedVersion: installedVersion,
         installationDate: installationDate,
         expiryDate: expiryDate,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [SsoProductSiteMappings]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoProductSiteMappings copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? productId,
    _isc.UuidValue? siteId,
    Object? installedVersion = _Undefined,
    Object? installationDate = _Undefined,
    Object? expiryDate = _Undefined,
    Object? metadata = _Undefined,
  }) {
    return SsoProductSiteMappings(
      id: id is _isc.UuidValue? ? id : this.id,
      productId: productId ?? this.productId,
      siteId: siteId ?? this.siteId,
      installedVersion: installedVersion is String?
          ? installedVersion
          : this.installedVersion,
      installationDate: installationDate is DateTime?
          ? installationDate
          : this.installationDate,
      expiryDate: expiryDate is DateTime? ? expiryDate : this.expiryDate,
      metadata: metadata is String? ? metadata : this.metadata,
    );
  }
}
