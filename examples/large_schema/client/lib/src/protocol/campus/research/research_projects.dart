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
abstract class CampusResearchProject
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusResearchProject._({
    this.id,
    required this.departmentId,
    required this.principalInvestigatorId,
    required this.title,
    required this.startsAt,
    this.endsAt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResearchProject({
    _isc.UuidValue? id,
    required _isc.UuidValue departmentId,
    required _isc.UuidValue principalInvestigatorId,
    required String title,
    required DateTime startsAt,
    DateTime? endsAt,
    required String status,
    DateTime? createdAt,
  }) = _CampusResearchProjectImpl;

  factory CampusResearchProject.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusResearchProject(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      departmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentId'],
      ),
      principalInvestigatorId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['principalInvestigatorId'],
      ),
      title: jsonSerialization['title'] as String,
      startsAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['startsAt'],
      ),
      endsAt: jsonSerialization['endsAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['endsAt']),
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

  _isc.UuidValue departmentId;

  _isc.UuidValue principalInvestigatorId;

  String title;

  DateTime startsAt;

  DateTime? endsAt;

  String status;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusResearchProject]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusResearchProject copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? departmentId,
    _isc.UuidValue? principalInvestigatorId,
    String? title,
    DateTime? startsAt,
    DateTime? endsAt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResearchProject',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      'principalInvestigatorId': principalInvestigatorId.toJson(),
      'title': title,
      'startsAt': startsAt.toJson(),
      if (endsAt != null) 'endsAt': endsAt?.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResearchProject',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      'principalInvestigatorId': principalInvestigatorId.toJson(),
      'title': title,
      'startsAt': startsAt.toJson(),
      if (endsAt != null) 'endsAt': endsAt?.toJson(),
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

class _CampusResearchProjectImpl extends CampusResearchProject {
  _CampusResearchProjectImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue departmentId,
    required _isc.UuidValue principalInvestigatorId,
    required String title,
    required DateTime startsAt,
    DateTime? endsAt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         departmentId: departmentId,
         principalInvestigatorId: principalInvestigatorId,
         title: title,
         startsAt: startsAt,
         endsAt: endsAt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResearchProject]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusResearchProject copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? departmentId,
    _isc.UuidValue? principalInvestigatorId,
    String? title,
    DateTime? startsAt,
    Object? endsAt = _Undefined,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusResearchProject(
      id: id is _isc.UuidValue? ? id : this.id,
      departmentId: departmentId ?? this.departmentId,
      principalInvestigatorId:
          principalInvestigatorId ?? this.principalInvestigatorId,
      title: title ?? this.title,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt is DateTime? ? endsAt : this.endsAt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
