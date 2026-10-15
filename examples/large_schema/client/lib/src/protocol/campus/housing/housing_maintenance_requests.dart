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
abstract class CampusHousingMaintenanceRequest
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusHousingMaintenanceRequest._({
    this.id,
    required this.residenceRoomId,
    required this.studentId,
    required this.description,
    required this.priority,
    this.resolvedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingMaintenanceRequest({
    _isc.UuidValue? id,
    required _isc.UuidValue residenceRoomId,
    required _isc.UuidValue studentId,
    required String description,
    required String priority,
    DateTime? resolvedAt,
    DateTime? createdAt,
  }) = _CampusHousingMaintenanceRequestImpl;

  factory CampusHousingMaintenanceRequest.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusHousingMaintenanceRequest(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      residenceRoomId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['residenceRoomId'],
      ),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      description: jsonSerialization['description'] as String,
      priority: jsonSerialization['priority'] as String,
      resolvedAt: jsonSerialization['resolvedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['resolvedAt'],
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

  _isc.UuidValue residenceRoomId;

  _isc.UuidValue studentId;

  String description;

  String priority;

  DateTime? resolvedAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusHousingMaintenanceRequest]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusHousingMaintenanceRequest copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? residenceRoomId,
    _isc.UuidValue? studentId,
    String? description,
    String? priority,
    DateTime? resolvedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingMaintenanceRequest',
      if (id != null) 'id': id?.toJson(),
      'residenceRoomId': residenceRoomId.toJson(),
      'studentId': studentId.toJson(),
      'description': description,
      'priority': priority,
      if (resolvedAt != null) 'resolvedAt': resolvedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingMaintenanceRequest',
      if (id != null) 'id': id?.toJson(),
      'residenceRoomId': residenceRoomId.toJson(),
      'studentId': studentId.toJson(),
      'description': description,
      'priority': priority,
      if (resolvedAt != null) 'resolvedAt': resolvedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingMaintenanceRequestImpl
    extends CampusHousingMaintenanceRequest {
  _CampusHousingMaintenanceRequestImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue residenceRoomId,
    required _isc.UuidValue studentId,
    required String description,
    required String priority,
    DateTime? resolvedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         residenceRoomId: residenceRoomId,
         studentId: studentId,
         description: description,
         priority: priority,
         resolvedAt: resolvedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingMaintenanceRequest]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusHousingMaintenanceRequest copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? residenceRoomId,
    _isc.UuidValue? studentId,
    String? description,
    String? priority,
    Object? resolvedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusHousingMaintenanceRequest(
      id: id is _isc.UuidValue? ? id : this.id,
      residenceRoomId: residenceRoomId ?? this.residenceRoomId,
      studentId: studentId ?? this.studentId,
      description: description ?? this.description,
      priority: priority ?? this.priority,
      resolvedAt: resolvedAt is DateTime? ? resolvedAt : this.resolvedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
