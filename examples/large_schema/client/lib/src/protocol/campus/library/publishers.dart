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

/// Fictional university fixture: library.
abstract class CampusPublisher
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusPublisher._({
    this.id,
    required this.name,
    this.countryCode,
    this.website,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusPublisher({
    _isc.UuidValue? id,
    required String name,
    String? countryCode,
    String? website,
    DateTime? createdAt,
  }) = _CampusPublisherImpl;

  factory CampusPublisher.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusPublisher(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      countryCode: jsonSerialization['countryCode'] as String?,
      website: jsonSerialization['website'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String name;

  String? countryCode;

  String? website;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusPublisher]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusPublisher copyWith({
    _isc.UuidValue? id,
    String? name,
    String? countryCode,
    String? website,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusPublisher',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (countryCode != null) 'countryCode': countryCode,
      if (website != null) 'website': website,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusPublisher',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (countryCode != null) 'countryCode': countryCode,
      if (website != null) 'website': website,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusPublisherImpl extends CampusPublisher {
  _CampusPublisherImpl({
    _isc.UuidValue? id,
    required String name,
    String? countryCode,
    String? website,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         countryCode: countryCode,
         website: website,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusPublisher]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusPublisher copyWith({
    Object? id = _Undefined,
    String? name,
    Object? countryCode = _Undefined,
    Object? website = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusPublisher(
      id: id is _isc.UuidValue? ? id : this.id,
      name: name ?? this.name,
      countryCode: countryCode is String? ? countryCode : this.countryCode,
      website: website is String? ? website : this.website,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
