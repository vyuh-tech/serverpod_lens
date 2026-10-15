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

/// Fictional university fixture: research.
abstract class CampusResearchMembership
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusResearchMembership._({
    this.id,
    required this.projectId,
    this.studentId,
    this.lecturerId,
    required this.role,
    required this.joinedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResearchMembership({
    _isc.UuidValue? id,
    required _isc.UuidValue projectId,
    _isc.UuidValue? studentId,
    _isc.UuidValue? lecturerId,
    required String role,
    required DateTime joinedAt,
    DateTime? createdAt,
  }) = _CampusResearchMembershipImpl;

  factory CampusResearchMembership.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusResearchMembership(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      projectId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['projectId'],
      ),
      studentId: jsonSerialization['studentId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['studentId'],
            ),
      lecturerId: jsonSerialization['lecturerId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['lecturerId'],
            ),
      role: jsonSerialization['role'] as String,
      joinedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['joinedAt'],
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

  _isc.UuidValue projectId;

  _isc.UuidValue? studentId;

  _isc.UuidValue? lecturerId;

  String role;

  DateTime joinedAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusResearchMembership]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusResearchMembership copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? projectId,
    _isc.UuidValue? studentId,
    _isc.UuidValue? lecturerId,
    String? role,
    DateTime? joinedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResearchMembership',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      if (studentId != null) 'studentId': studentId?.toJson(),
      if (lecturerId != null) 'lecturerId': lecturerId?.toJson(),
      'role': role,
      'joinedAt': joinedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResearchMembership',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      if (studentId != null) 'studentId': studentId?.toJson(),
      if (lecturerId != null) 'lecturerId': lecturerId?.toJson(),
      'role': role,
      'joinedAt': joinedAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusResearchMembershipImpl extends CampusResearchMembership {
  _CampusResearchMembershipImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue projectId,
    _isc.UuidValue? studentId,
    _isc.UuidValue? lecturerId,
    required String role,
    required DateTime joinedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         projectId: projectId,
         studentId: studentId,
         lecturerId: lecturerId,
         role: role,
         joinedAt: joinedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResearchMembership]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusResearchMembership copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? projectId,
    Object? studentId = _Undefined,
    Object? lecturerId = _Undefined,
    String? role,
    DateTime? joinedAt,
    DateTime? createdAt,
  }) {
    return CampusResearchMembership(
      id: id is _isc.UuidValue? ? id : this.id,
      projectId: projectId ?? this.projectId,
      studentId: studentId is _isc.UuidValue? ? studentId : this.studentId,
      lecturerId: lecturerId is _isc.UuidValue? ? lecturerId : this.lecturerId,
      role: role ?? this.role,
      joinedAt: joinedAt ?? this.joinedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
