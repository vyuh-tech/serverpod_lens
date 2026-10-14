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

abstract class SsoCompanies
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoCompanies._({
    this.id,
    required this.parentCompanyId,
    required this.name,
    this.subtitle,
    required this.code,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.state,
    this.country,
    this.postalCode,
    this.phone,
    this.email,
    this.website,
    this.logoUrl,
    this.metadata,
    this.legalName,
    this.supportEmail,
    required this.plan,
    required this.language,
    required this.timeZone,
    required this.dateFormat,
    required this.timeFormat,
    required this.numberFormat,
    required this.firstDayOfWeek,
  });

  factory SsoCompanies({
    _isc.UuidValue? id,
    required _isc.UuidValue parentCompanyId,
    required String name,
    String? subtitle,
    required String code,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    String? phone,
    String? email,
    String? website,
    String? logoUrl,
    String? metadata,
    String? legalName,
    String? supportEmail,
    required String plan,
    required String language,
    required String timeZone,
    required String dateFormat,
    required String timeFormat,
    required String numberFormat,
    required int firstDayOfWeek,
  }) = _SsoCompaniesImpl;

  factory SsoCompanies.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoCompanies(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      parentCompanyId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['parentCompanyId'],
      ),
      name: jsonSerialization['name'] as String,
      subtitle: jsonSerialization['subtitle'] as String?,
      code: jsonSerialization['code'] as String,
      addressLine1: jsonSerialization['addressLine1'] as String?,
      addressLine2: jsonSerialization['addressLine2'] as String?,
      city: jsonSerialization['city'] as String?,
      state: jsonSerialization['state'] as String?,
      country: jsonSerialization['country'] as String?,
      postalCode: jsonSerialization['postalCode'] as String?,
      phone: jsonSerialization['phone'] as String?,
      email: jsonSerialization['email'] as String?,
      website: jsonSerialization['website'] as String?,
      logoUrl: jsonSerialization['logoUrl'] as String?,
      metadata: jsonSerialization['metadata'] as String?,
      legalName: jsonSerialization['legalName'] as String?,
      supportEmail: jsonSerialization['supportEmail'] as String?,
      plan: jsonSerialization['plan'] as String,
      language: jsonSerialization['language'] as String,
      timeZone: jsonSerialization['timeZone'] as String,
      dateFormat: jsonSerialization['dateFormat'] as String,
      timeFormat: jsonSerialization['timeFormat'] as String,
      numberFormat: jsonSerialization['numberFormat'] as String,
      firstDayOfWeek: jsonSerialization['firstDayOfWeek'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue parentCompanyId;

  String name;

  String? subtitle;

  String code;

  String? addressLine1;

  String? addressLine2;

  String? city;

  String? state;

  String? country;

  String? postalCode;

  String? phone;

  String? email;

  String? website;

  String? logoUrl;

  String? metadata;

  String? legalName;

  String? supportEmail;

  String plan;

  String language;

  String timeZone;

  String dateFormat;

  String timeFormat;

  String numberFormat;

  int firstDayOfWeek;

  /// Returns a shallow copy of this [SsoCompanies]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoCompanies copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? parentCompanyId,
    String? name,
    String? subtitle,
    String? code,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    String? phone,
    String? email,
    String? website,
    String? logoUrl,
    String? metadata,
    String? legalName,
    String? supportEmail,
    String? plan,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoCompanies',
      if (id != null) 'id': id?.toJson(),
      'parentCompanyId': parentCompanyId.toJson(),
      'name': name,
      if (subtitle != null) 'subtitle': subtitle,
      'code': code,
      if (addressLine1 != null) 'addressLine1': addressLine1,
      if (addressLine2 != null) 'addressLine2': addressLine2,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (postalCode != null) 'postalCode': postalCode,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (website != null) 'website': website,
      if (logoUrl != null) 'logoUrl': logoUrl,
      if (metadata != null) 'metadata': metadata,
      if (legalName != null) 'legalName': legalName,
      if (supportEmail != null) 'supportEmail': supportEmail,
      'plan': plan,
      'language': language,
      'timeZone': timeZone,
      'dateFormat': dateFormat,
      'timeFormat': timeFormat,
      'numberFormat': numberFormat,
      'firstDayOfWeek': firstDayOfWeek,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoCompanies',
      if (id != null) 'id': id?.toJson(),
      'parentCompanyId': parentCompanyId.toJson(),
      'name': name,
      if (subtitle != null) 'subtitle': subtitle,
      'code': code,
      if (addressLine1 != null) 'addressLine1': addressLine1,
      if (addressLine2 != null) 'addressLine2': addressLine2,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (postalCode != null) 'postalCode': postalCode,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (website != null) 'website': website,
      if (logoUrl != null) 'logoUrl': logoUrl,
      if (metadata != null) 'metadata': metadata,
      if (legalName != null) 'legalName': legalName,
      if (supportEmail != null) 'supportEmail': supportEmail,
      'plan': plan,
      'language': language,
      'timeZone': timeZone,
      'dateFormat': dateFormat,
      'timeFormat': timeFormat,
      'numberFormat': numberFormat,
      'firstDayOfWeek': firstDayOfWeek,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoCompaniesImpl extends SsoCompanies {
  _SsoCompaniesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue parentCompanyId,
    required String name,
    String? subtitle,
    required String code,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    String? phone,
    String? email,
    String? website,
    String? logoUrl,
    String? metadata,
    String? legalName,
    String? supportEmail,
    required String plan,
    required String language,
    required String timeZone,
    required String dateFormat,
    required String timeFormat,
    required String numberFormat,
    required int firstDayOfWeek,
  }) : super._(
         id: id,
         parentCompanyId: parentCompanyId,
         name: name,
         subtitle: subtitle,
         code: code,
         addressLine1: addressLine1,
         addressLine2: addressLine2,
         city: city,
         state: state,
         country: country,
         postalCode: postalCode,
         phone: phone,
         email: email,
         website: website,
         logoUrl: logoUrl,
         metadata: metadata,
         legalName: legalName,
         supportEmail: supportEmail,
         plan: plan,
         language: language,
         timeZone: timeZone,
         dateFormat: dateFormat,
         timeFormat: timeFormat,
         numberFormat: numberFormat,
         firstDayOfWeek: firstDayOfWeek,
       );

  /// Returns a shallow copy of this [SsoCompanies]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoCompanies copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? parentCompanyId,
    String? name,
    Object? subtitle = _Undefined,
    String? code,
    Object? addressLine1 = _Undefined,
    Object? addressLine2 = _Undefined,
    Object? city = _Undefined,
    Object? state = _Undefined,
    Object? country = _Undefined,
    Object? postalCode = _Undefined,
    Object? phone = _Undefined,
    Object? email = _Undefined,
    Object? website = _Undefined,
    Object? logoUrl = _Undefined,
    Object? metadata = _Undefined,
    Object? legalName = _Undefined,
    Object? supportEmail = _Undefined,
    String? plan,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
  }) {
    return SsoCompanies(
      id: id is _isc.UuidValue? ? id : this.id,
      parentCompanyId: parentCompanyId ?? this.parentCompanyId,
      name: name ?? this.name,
      subtitle: subtitle is String? ? subtitle : this.subtitle,
      code: code ?? this.code,
      addressLine1: addressLine1 is String? ? addressLine1 : this.addressLine1,
      addressLine2: addressLine2 is String? ? addressLine2 : this.addressLine2,
      city: city is String? ? city : this.city,
      state: state is String? ? state : this.state,
      country: country is String? ? country : this.country,
      postalCode: postalCode is String? ? postalCode : this.postalCode,
      phone: phone is String? ? phone : this.phone,
      email: email is String? ? email : this.email,
      website: website is String? ? website : this.website,
      logoUrl: logoUrl is String? ? logoUrl : this.logoUrl,
      metadata: metadata is String? ? metadata : this.metadata,
      legalName: legalName is String? ? legalName : this.legalName,
      supportEmail: supportEmail is String? ? supportEmail : this.supportEmail,
      plan: plan ?? this.plan,
      language: language ?? this.language,
      timeZone: timeZone ?? this.timeZone,
      dateFormat: dateFormat ?? this.dateFormat,
      timeFormat: timeFormat ?? this.timeFormat,
      numberFormat: numberFormat ?? this.numberFormat,
      firstDayOfWeek: firstDayOfWeek ?? this.firstDayOfWeek,
    );
  }
}
