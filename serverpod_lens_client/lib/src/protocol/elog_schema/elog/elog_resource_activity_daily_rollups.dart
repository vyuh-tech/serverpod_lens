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

abstract class ElogResourceActivityDailyRollups
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogResourceActivityDailyRollups._({
    this.id,
    required this.resourceType,
    required this.resourceId,
    required this.activityType,
    required this.bucketDate,
    required this.activityCount,
    this.firstActivityAt,
    this.lastActivityAt,
    required this.updatedAt,
  });

  factory ElogResourceActivityDailyRollups({
    _isc.UuidValue? id,
    required String resourceType,
    required _isc.UuidValue resourceId,
    required String activityType,
    required DateTime bucketDate,
    required BigInt activityCount,
    DateTime? firstActivityAt,
    DateTime? lastActivityAt,
    required DateTime updatedAt,
  }) = _ElogResourceActivityDailyRollupsImpl;

  factory ElogResourceActivityDailyRollups.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogResourceActivityDailyRollups(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      resourceType: jsonSerialization['resourceType'] as String,
      resourceId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['resourceId'],
      ),
      activityType: jsonSerialization['activityType'] as String,
      bucketDate: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['bucketDate'],
      ),
      activityCount: _isc.BigIntJsonExtension.fromJson(
        jsonSerialization['activityCount'],
      ),
      firstActivityAt: jsonSerialization['firstActivityAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['firstActivityAt'],
            ),
      lastActivityAt: jsonSerialization['lastActivityAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastActivityAt'],
            ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String resourceType;

  _isc.UuidValue resourceId;

  String activityType;

  DateTime bucketDate;

  BigInt activityCount;

  DateTime? firstActivityAt;

  DateTime? lastActivityAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [ElogResourceActivityDailyRollups]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogResourceActivityDailyRollups copyWith({
    _isc.UuidValue? id,
    String? resourceType,
    _isc.UuidValue? resourceId,
    String? activityType,
    DateTime? bucketDate,
    BigInt? activityCount,
    DateTime? firstActivityAt,
    DateTime? lastActivityAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogResourceActivityDailyRollups',
      if (id != null) 'id': id?.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      'activityType': activityType,
      'bucketDate': bucketDate.toJson(),
      'activityCount': activityCount.toJson(),
      if (firstActivityAt != null) 'firstActivityAt': firstActivityAt?.toJson(),
      if (lastActivityAt != null) 'lastActivityAt': lastActivityAt?.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogResourceActivityDailyRollups',
      if (id != null) 'id': id?.toJson(),
      'resourceType': resourceType,
      'resourceId': resourceId.toJson(),
      'activityType': activityType,
      'bucketDate': bucketDate.toJson(),
      'activityCount': activityCount.toJson(),
      if (firstActivityAt != null) 'firstActivityAt': firstActivityAt?.toJson(),
      if (lastActivityAt != null) 'lastActivityAt': lastActivityAt?.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogResourceActivityDailyRollupsImpl
    extends ElogResourceActivityDailyRollups {
  _ElogResourceActivityDailyRollupsImpl({
    _isc.UuidValue? id,
    required String resourceType,
    required _isc.UuidValue resourceId,
    required String activityType,
    required DateTime bucketDate,
    required BigInt activityCount,
    DateTime? firstActivityAt,
    DateTime? lastActivityAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         resourceType: resourceType,
         resourceId: resourceId,
         activityType: activityType,
         bucketDate: bucketDate,
         activityCount: activityCount,
         firstActivityAt: firstActivityAt,
         lastActivityAt: lastActivityAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [ElogResourceActivityDailyRollups]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogResourceActivityDailyRollups copyWith({
    Object? id = _Undefined,
    String? resourceType,
    _isc.UuidValue? resourceId,
    String? activityType,
    DateTime? bucketDate,
    BigInt? activityCount,
    Object? firstActivityAt = _Undefined,
    Object? lastActivityAt = _Undefined,
    DateTime? updatedAt,
  }) {
    return ElogResourceActivityDailyRollups(
      id: id is _isc.UuidValue? ? id : this.id,
      resourceType: resourceType ?? this.resourceType,
      resourceId: resourceId ?? this.resourceId,
      activityType: activityType ?? this.activityType,
      bucketDate: bucketDate ?? this.bucketDate,
      activityCount: activityCount ?? this.activityCount,
      firstActivityAt: firstActivityAt is DateTime?
          ? firstActivityAt
          : this.firstActivityAt,
      lastActivityAt: lastActivityAt is DateTime?
          ? lastActivityAt
          : this.lastActivityAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
