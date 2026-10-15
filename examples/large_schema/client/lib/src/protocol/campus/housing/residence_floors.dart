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
abstract class CampusResidenceFloor
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusResidenceFloor._({
    this.id,
    required this.residenceId,
    required this.level,
    this.description,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResidenceFloor({
    _isc.UuidValue? id,
    required _isc.UuidValue residenceId,
    required int level,
    String? description,
    DateTime? createdAt,
  }) = _CampusResidenceFloorImpl;

  factory CampusResidenceFloor.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusResidenceFloor(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      residenceId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['residenceId'],
      ),
      level: jsonSerialization['level'] as int,
      description: jsonSerialization['description'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue residenceId;

  int level;

  String? description;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusResidenceFloor]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusResidenceFloor copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? residenceId,
    int? level,
    String? description,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResidenceFloor',
      if (id != null) 'id': id?.toJson(),
      'residenceId': residenceId.toJson(),
      'level': level,
      if (description != null) 'description': description,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResidenceFloor',
      if (id != null) 'id': id?.toJson(),
      'residenceId': residenceId.toJson(),
      'level': level,
      if (description != null) 'description': description,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusResidenceFloorImpl extends CampusResidenceFloor {
  _CampusResidenceFloorImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue residenceId,
    required int level,
    String? description,
    DateTime? createdAt,
  }) : super._(
         id: id,
         residenceId: residenceId,
         level: level,
         description: description,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResidenceFloor]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusResidenceFloor copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? residenceId,
    int? level,
    Object? description = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusResidenceFloor(
      id: id is _isc.UuidValue? ? id : this.id,
      residenceId: residenceId ?? this.residenceId,
      level: level ?? this.level,
      description: description is String? ? description : this.description,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
