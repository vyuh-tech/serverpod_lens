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

/// Fictional university fixture: campus.
abstract class CampusCampus
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusCampus._({
    this.id,
    required this.code,
    required this.name,
    required this.city,
    required this.countryCode,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCampus({
    _isc.UuidValue? id,
    required String code,
    required String name,
    required String city,
    required String countryCode,
    DateTime? createdAt,
  }) = _CampusCampusImpl;

  factory CampusCampus.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusCampus(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      city: jsonSerialization['city'] as String,
      countryCode: jsonSerialization['countryCode'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String city;

  String countryCode;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusCampus]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusCampus copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? city,
    String? countryCode,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCampus',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      'city': city,
      'countryCode': countryCode,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCampus',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      'city': city,
      'countryCode': countryCode,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCampusImpl extends CampusCampus {
  _CampusCampusImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    required String city,
    required String countryCode,
    DateTime? createdAt,
  }) : super._(
         id: id,
         code: code,
         name: name,
         city: city,
         countryCode: countryCode,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCampus]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusCampus copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    String? city,
    String? countryCode,
    DateTime? createdAt,
  }) {
    return CampusCampus(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      city: city ?? this.city,
      countryCode: countryCode ?? this.countryCode,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
