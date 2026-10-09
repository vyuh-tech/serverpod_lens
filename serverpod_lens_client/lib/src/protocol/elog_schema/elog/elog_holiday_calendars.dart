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
import 'package:serverpod_lens_client/src/protocol/protocol.dart' as _ixq89rj6;

abstract class ElogHolidayCalendars
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogHolidayCalendars._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.year,
    this.country,
    this.region,
    this.timezone,
    this.weekendDays,
    this.isActive,
  });

  factory ElogHolidayCalendars({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    int? year,
    String? country,
    String? region,
    String? timezone,
    List<int>? weekendDays,
    bool? isActive,
  }) = _ElogHolidayCalendarsImpl;

  factory ElogHolidayCalendars.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogHolidayCalendars(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      year: jsonSerialization['year'] as int?,
      country: jsonSerialization['country'] as String?,
      region: jsonSerialization['region'] as String?,
      timezone: jsonSerialization['timezone'] as String?,
      weekendDays: jsonSerialization['weekendDays'] == null
          ? null
          : _ixq89rj6.Protocol().deserialize<List<int>>(
              jsonSerialization['weekendDays'],
            ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String? description;

  int? year;

  String? country;

  String? region;

  String? timezone;

  List<int>? weekendDays;

  bool? isActive;

  /// Returns a shallow copy of this [ElogHolidayCalendars]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogHolidayCalendars copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    int? year,
    String? country,
    String? region,
    String? timezone,
    List<int>? weekendDays,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogHolidayCalendars',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (year != null) 'year': year,
      if (country != null) 'country': country,
      if (region != null) 'region': region,
      if (timezone != null) 'timezone': timezone,
      if (weekendDays != null) 'weekendDays': weekendDays?.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogHolidayCalendars',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (year != null) 'year': year,
      if (country != null) 'country': country,
      if (region != null) 'region': region,
      if (timezone != null) 'timezone': timezone,
      if (weekendDays != null) 'weekendDays': weekendDays?.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogHolidayCalendarsImpl extends ElogHolidayCalendars {
  _ElogHolidayCalendarsImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    int? year,
    String? country,
    String? region,
    String? timezone,
    List<int>? weekendDays,
    bool? isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         year: year,
         country: country,
         region: region,
         timezone: timezone,
         weekendDays: weekendDays,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogHolidayCalendars]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogHolidayCalendars copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? year = _Undefined,
    Object? country = _Undefined,
    Object? region = _Undefined,
    Object? timezone = _Undefined,
    Object? weekendDays = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return ElogHolidayCalendars(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      year: year is int? ? year : this.year,
      country: country is String? ? country : this.country,
      region: region is String? ? region : this.region,
      timezone: timezone is String? ? timezone : this.timezone,
      weekendDays: weekendDays is List<int>?
          ? weekendDays
          : this.weekendDays?.map((e0) => e0).toList(),
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}
