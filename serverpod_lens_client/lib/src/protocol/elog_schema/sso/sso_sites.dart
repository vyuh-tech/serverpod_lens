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

abstract class SsoSites
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoSites._({
    this.id,
    required this.parentSiteId,
    required this.name,
    required this.code,
    this.description,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.state,
    this.country,
    this.postalCode,
    this.language,
    this.timeZone,
    this.dateFormat,
    this.timeFormat,
    this.numberFormat,
    this.firstDayOfWeek,
    this.metadata,
  });

  factory SsoSites({
    _isc.UuidValue? id,
    required _isc.UuidValue parentSiteId,
    required String name,
    required String code,
    String? description,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
    String? metadata,
  }) = _SsoSitesImpl;

  factory SsoSites.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoSites(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      parentSiteId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['parentSiteId'],
      ),
      name: jsonSerialization['name'] as String,
      code: jsonSerialization['code'] as String,
      description: jsonSerialization['description'] as String?,
      addressLine1: jsonSerialization['addressLine1'] as String?,
      addressLine2: jsonSerialization['addressLine2'] as String?,
      city: jsonSerialization['city'] as String?,
      state: jsonSerialization['state'] as String?,
      country: jsonSerialization['country'] as String?,
      postalCode: jsonSerialization['postalCode'] as String?,
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

  _isc.UuidValue parentSiteId;

  String name;

  String code;

  String? description;

  String? addressLine1;

  String? addressLine2;

  String? city;

  String? state;

  String? country;

  String? postalCode;

  String? language;

  String? timeZone;

  String? dateFormat;

  String? timeFormat;

  String? numberFormat;

  int? firstDayOfWeek;

  String? metadata;

  /// Returns a shallow copy of this [SsoSites]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoSites copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? parentSiteId,
    String? name,
    String? code,
    String? description,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? country,
    String? postalCode,
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
      '__className__': 'SsoSites',
      if (id != null) 'id': id?.toJson(),
      'parentSiteId': parentSiteId.toJson(),
      'name': name,
      'code': code,
      if (description != null) 'description': description,
      if (addressLine1 != null) 'addressLine1': addressLine1,
      if (addressLine2 != null) 'addressLine2': addressLine2,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (postalCode != null) 'postalCode': postalCode,
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
      '__className__': 'SsoSites',
      if (id != null) 'id': id?.toJson(),
      'parentSiteId': parentSiteId.toJson(),
      'name': name,
      'code': code,
      if (description != null) 'description': description,
      if (addressLine1 != null) 'addressLine1': addressLine1,
      if (addressLine2 != null) 'addressLine2': addressLine2,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (postalCode != null) 'postalCode': postalCode,
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

class _SsoSitesImpl extends SsoSites {
  _SsoSitesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue parentSiteId,
    required String name,
    required String code,
    String? description,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
    String? metadata,
  }) : super._(
         id: id,
         parentSiteId: parentSiteId,
         name: name,
         code: code,
         description: description,
         addressLine1: addressLine1,
         addressLine2: addressLine2,
         city: city,
         state: state,
         country: country,
         postalCode: postalCode,
         language: language,
         timeZone: timeZone,
         dateFormat: dateFormat,
         timeFormat: timeFormat,
         numberFormat: numberFormat,
         firstDayOfWeek: firstDayOfWeek,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [SsoSites]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoSites copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? parentSiteId,
    String? name,
    String? code,
    Object? description = _Undefined,
    Object? addressLine1 = _Undefined,
    Object? addressLine2 = _Undefined,
    Object? city = _Undefined,
    Object? state = _Undefined,
    Object? country = _Undefined,
    Object? postalCode = _Undefined,
    Object? language = _Undefined,
    Object? timeZone = _Undefined,
    Object? dateFormat = _Undefined,
    Object? timeFormat = _Undefined,
    Object? numberFormat = _Undefined,
    Object? firstDayOfWeek = _Undefined,
    Object? metadata = _Undefined,
  }) {
    return SsoSites(
      id: id is _isc.UuidValue? ? id : this.id,
      parentSiteId: parentSiteId ?? this.parentSiteId,
      name: name ?? this.name,
      code: code ?? this.code,
      description: description is String? ? description : this.description,
      addressLine1: addressLine1 is String? ? addressLine1 : this.addressLine1,
      addressLine2: addressLine2 is String? ? addressLine2 : this.addressLine2,
      city: city is String? ? city : this.city,
      state: state is String? ? state : this.state,
      country: country is String? ? country : this.country,
      postalCode: postalCode is String? ? postalCode : this.postalCode,
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
