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

/// Fictional university fixture: housing.
abstract class CampusResidence
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusResidence._({
    this.id,
    required this.campusId,
    required this.name,
    required this.address,
    required this.accessible,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResidence({
    _isc.UuidValue? id,
    required _isc.UuidValue campusId,
    required String name,
    required String address,
    required bool accessible,
    DateTime? createdAt,
  }) = _CampusResidenceImpl;

  factory CampusResidence.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusResidence(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      campusId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['campusId'],
      ),
      name: jsonSerialization['name'] as String,
      address: jsonSerialization['address'] as String,
      accessible: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['accessible'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue campusId;

  String name;

  String address;

  bool accessible;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusResidence]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusResidence copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? campusId,
    String? name,
    String? address,
    bool? accessible,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResidence',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'name': name,
      'address': address,
      'accessible': accessible,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResidence',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'name': name,
      'address': address,
      'accessible': accessible,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusResidenceImpl extends CampusResidence {
  _CampusResidenceImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue campusId,
    required String name,
    required String address,
    required bool accessible,
    DateTime? createdAt,
  }) : super._(
         id: id,
         campusId: campusId,
         name: name,
         address: address,
         accessible: accessible,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResidence]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusResidence copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? campusId,
    String? name,
    String? address,
    bool? accessible,
    DateTime? createdAt,
  }) {
    return CampusResidence(
      id: id is _isc.UuidValue? ? id : this.id,
      campusId: campusId ?? this.campusId,
      name: name ?? this.name,
      address: address ?? this.address,
      accessible: accessible ?? this.accessible,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
