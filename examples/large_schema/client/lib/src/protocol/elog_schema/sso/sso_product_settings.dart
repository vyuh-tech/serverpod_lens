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

abstract class SsoProductSettings
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoProductSettings._({
    this.id,
    required this.productId,
    this.displayName,
    this.logoUrl,
    this.supportEmail,
    this.language,
    this.timeZone,
    this.dateFormat,
    this.timeFormat,
    this.numberFormat,
    this.firstDayOfWeek,
    this.metadata,
  });

  factory SsoProductSettings({
    _isc.UuidValue? id,
    required _isc.UuidValue productId,
    String? displayName,
    String? logoUrl,
    String? supportEmail,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
    String? metadata,
  }) = _SsoProductSettingsImpl;

  factory SsoProductSettings.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoProductSettings(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      productId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['productId'],
      ),
      displayName: jsonSerialization['displayName'] as String?,
      logoUrl: jsonSerialization['logoUrl'] as String?,
      supportEmail: jsonSerialization['supportEmail'] as String?,
      language: jsonSerialization['language'] as String?,
      timeZone: jsonSerialization['timeZone'] as String?,
      dateFormat: jsonSerialization['dateFormat'] as String?,
      timeFormat: jsonSerialization['timeFormat'] as String?,
      numberFormat: jsonSerialization['numberFormat'] as String?,
      firstDayOfWeek: jsonSerialization['firstDayOfWeek'] as int?,
      metadata: jsonSerialization['metadata'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue productId;

  String? displayName;

  String? logoUrl;

  String? supportEmail;

  String? language;

  String? timeZone;

  String? dateFormat;

  String? timeFormat;

  String? numberFormat;

  int? firstDayOfWeek;

  String? metadata;

  /// Returns a shallow copy of this [SsoProductSettings]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoProductSettings copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? productId,
    String? displayName,
    String? logoUrl,
    String? supportEmail,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoProductSettings',
      if (id != null) 'id': id?.toJson(),
      'productId': productId.toJson(),
      if (displayName != null) 'displayName': displayName,
      if (logoUrl != null) 'logoUrl': logoUrl,
      if (supportEmail != null) 'supportEmail': supportEmail,
      if (language != null) 'language': language,
      if (timeZone != null) 'timeZone': timeZone,
      if (dateFormat != null) 'dateFormat': dateFormat,
      if (timeFormat != null) 'timeFormat': timeFormat,
      if (numberFormat != null) 'numberFormat': numberFormat,
      if (firstDayOfWeek != null) 'firstDayOfWeek': firstDayOfWeek,
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoProductSettings',
      if (id != null) 'id': id?.toJson(),
      'productId': productId.toJson(),
      if (displayName != null) 'displayName': displayName,
      if (logoUrl != null) 'logoUrl': logoUrl,
      if (supportEmail != null) 'supportEmail': supportEmail,
      if (language != null) 'language': language,
      if (timeZone != null) 'timeZone': timeZone,
      if (dateFormat != null) 'dateFormat': dateFormat,
      if (timeFormat != null) 'timeFormat': timeFormat,
      if (numberFormat != null) 'numberFormat': numberFormat,
      if (firstDayOfWeek != null) 'firstDayOfWeek': firstDayOfWeek,
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoProductSettingsImpl extends SsoProductSettings {
  _SsoProductSettingsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue productId,
    String? displayName,
    String? logoUrl,
    String? supportEmail,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
    String? metadata,
  }) : super._(
         id: id,
         productId: productId,
         displayName: displayName,
         logoUrl: logoUrl,
         supportEmail: supportEmail,
         language: language,
         timeZone: timeZone,
         dateFormat: dateFormat,
         timeFormat: timeFormat,
         numberFormat: numberFormat,
         firstDayOfWeek: firstDayOfWeek,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [SsoProductSettings]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoProductSettings copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? productId,
    Object? displayName = _Undefined,
    Object? logoUrl = _Undefined,
    Object? supportEmail = _Undefined,
    Object? language = _Undefined,
    Object? timeZone = _Undefined,
    Object? dateFormat = _Undefined,
    Object? timeFormat = _Undefined,
    Object? numberFormat = _Undefined,
    Object? firstDayOfWeek = _Undefined,
    Object? metadata = _Undefined,
  }) {
    return SsoProductSettings(
      id: id is _isc.UuidValue? ? id : this.id,
      productId: productId ?? this.productId,
      displayName: displayName is String? ? displayName : this.displayName,
      logoUrl: logoUrl is String? ? logoUrl : this.logoUrl,
      supportEmail: supportEmail is String? ? supportEmail : this.supportEmail,
      language: language is String? ? language : this.language,
      timeZone: timeZone is String? ? timeZone : this.timeZone,
      dateFormat: dateFormat is String? ? dateFormat : this.dateFormat,
      timeFormat: timeFormat is String? ? timeFormat : this.timeFormat,
      numberFormat: numberFormat is String? ? numberFormat : this.numberFormat,
      firstDayOfWeek: firstDayOfWeek is int?
          ? firstDayOfWeek
          : this.firstDayOfWeek,
      metadata: metadata is String? ? metadata : this.metadata,
    );
  }
}
