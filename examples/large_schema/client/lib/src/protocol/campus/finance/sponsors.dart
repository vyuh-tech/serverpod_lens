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

/// Fictional university fixture: finance.
abstract class CampusSponsor
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusSponsor._({
    this.id,
    required this.name,
    required this.contactEmail,
    this.organisation,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSponsor({
    _isc.UuidValue? id,
    required String name,
    required String contactEmail,
    String? organisation,
    DateTime? createdAt,
  }) = _CampusSponsorImpl;

  factory CampusSponsor.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusSponsor(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      contactEmail: jsonSerialization['contactEmail'] as String,
      organisation: jsonSerialization['organisation'] as String?,
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

  String contactEmail;

  String? organisation;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusSponsor]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusSponsor copyWith({
    _isc.UuidValue? id,
    String? name,
    String? contactEmail,
    String? organisation,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSponsor',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'contactEmail': contactEmail,
      if (organisation != null) 'organisation': organisation,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSponsor',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'contactEmail': contactEmail,
      if (organisation != null) 'organisation': organisation,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSponsorImpl extends CampusSponsor {
  _CampusSponsorImpl({
    _isc.UuidValue? id,
    required String name,
    required String contactEmail,
    String? organisation,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         contactEmail: contactEmail,
         organisation: organisation,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSponsor]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusSponsor copyWith({
    Object? id = _Undefined,
    String? name,
    String? contactEmail,
    Object? organisation = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusSponsor(
      id: id is _isc.UuidValue? ? id : this.id,
      name: name ?? this.name,
      contactEmail: contactEmail ?? this.contactEmail,
      organisation: organisation is String? ? organisation : this.organisation,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
