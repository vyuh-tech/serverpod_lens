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
abstract class CampusHousingPreference
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusHousingPreference._({
    this.id,
    required this.housingApplicationId,
    required this.residenceId,
    required this.rank,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingPreference({
    _isc.UuidValue? id,
    required _isc.UuidValue housingApplicationId,
    required _isc.UuidValue residenceId,
    required int rank,
    DateTime? createdAt,
  }) = _CampusHousingPreferenceImpl;

  factory CampusHousingPreference.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusHousingPreference(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      housingApplicationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['housingApplicationId'],
      ),
      residenceId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['residenceId'],
      ),
      rank: jsonSerialization['rank'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue housingApplicationId;

  _isc.UuidValue residenceId;

  int rank;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusHousingPreference]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusHousingPreference copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? housingApplicationId,
    _isc.UuidValue? residenceId,
    int? rank,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingPreference',
      if (id != null) 'id': id?.toJson(),
      'housingApplicationId': housingApplicationId.toJson(),
      'residenceId': residenceId.toJson(),
      'rank': rank,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingPreference',
      if (id != null) 'id': id?.toJson(),
      'housingApplicationId': housingApplicationId.toJson(),
      'residenceId': residenceId.toJson(),
      'rank': rank,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingPreferenceImpl extends CampusHousingPreference {
  _CampusHousingPreferenceImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue housingApplicationId,
    required _isc.UuidValue residenceId,
    required int rank,
    DateTime? createdAt,
  }) : super._(
         id: id,
         housingApplicationId: housingApplicationId,
         residenceId: residenceId,
         rank: rank,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingPreference]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusHousingPreference copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? housingApplicationId,
    _isc.UuidValue? residenceId,
    int? rank,
    DateTime? createdAt,
  }) {
    return CampusHousingPreference(
      id: id is _isc.UuidValue? ? id : this.id,
      housingApplicationId: housingApplicationId ?? this.housingApplicationId,
      residenceId: residenceId ?? this.residenceId,
      rank: rank ?? this.rank,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
