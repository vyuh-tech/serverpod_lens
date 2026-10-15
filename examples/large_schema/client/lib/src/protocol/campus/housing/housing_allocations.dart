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
abstract class CampusHousingAllocation
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusHousingAllocation._({
    this.id,
    required this.housingApplicationId,
    required this.bedId,
    required this.startsAt,
    required this.endsAt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingAllocation({
    _isc.UuidValue? id,
    required _isc.UuidValue housingApplicationId,
    required _isc.UuidValue bedId,
    required DateTime startsAt,
    required DateTime endsAt,
    required String status,
    DateTime? createdAt,
  }) = _CampusHousingAllocationImpl;

  factory CampusHousingAllocation.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusHousingAllocation(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      housingApplicationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['housingApplicationId'],
      ),
      bedId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['bedId']),
      startsAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['startsAt'],
      ),
      endsAt: _isc.DateTimeJsonExtension.fromJson(jsonSerialization['endsAt']),
      status: jsonSerialization['status'] as String,
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

  _isc.UuidValue bedId;

  DateTime startsAt;

  DateTime endsAt;

  String status;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusHousingAllocation]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusHousingAllocation copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? housingApplicationId,
    _isc.UuidValue? bedId,
    DateTime? startsAt,
    DateTime? endsAt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingAllocation',
      if (id != null) 'id': id?.toJson(),
      'housingApplicationId': housingApplicationId.toJson(),
      'bedId': bedId.toJson(),
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingAllocation',
      if (id != null) 'id': id?.toJson(),
      'housingApplicationId': housingApplicationId.toJson(),
      'bedId': bedId.toJson(),
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingAllocationImpl extends CampusHousingAllocation {
  _CampusHousingAllocationImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue housingApplicationId,
    required _isc.UuidValue bedId,
    required DateTime startsAt,
    required DateTime endsAt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         housingApplicationId: housingApplicationId,
         bedId: bedId,
         startsAt: startsAt,
         endsAt: endsAt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingAllocation]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusHousingAllocation copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? housingApplicationId,
    _isc.UuidValue? bedId,
    DateTime? startsAt,
    DateTime? endsAt,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusHousingAllocation(
      id: id is _isc.UuidValue? ? id : this.id,
      housingApplicationId: housingApplicationId ?? this.housingApplicationId,
      bedId: bedId ?? this.bedId,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt ?? this.endsAt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
