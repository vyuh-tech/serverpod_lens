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

/// Fictional university fixture: academics.
abstract class CampusLecturer
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusLecturer._({
    this.id,
    required this.departmentId,
    required this.staffNumber,
    required this.name,
    required this.email,
    this.supervisorId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusLecturer({
    _isc.UuidValue? id,
    required _isc.UuidValue departmentId,
    required String staffNumber,
    required String name,
    required String email,
    _isc.UuidValue? supervisorId,
    DateTime? createdAt,
  }) = _CampusLecturerImpl;

  factory CampusLecturer.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusLecturer(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      departmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentId'],
      ),
      staffNumber: jsonSerialization['staffNumber'] as String,
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String,
      supervisorId: jsonSerialization['supervisorId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['supervisorId'],
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

  _isc.UuidValue departmentId;

  String staffNumber;

  String name;

  String email;

  _isc.UuidValue? supervisorId;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusLecturer]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusLecturer copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? departmentId,
    String? staffNumber,
    String? name,
    String? email,
    _isc.UuidValue? supervisorId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusLecturer',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      'staffNumber': staffNumber,
      'name': name,
      'email': email,
      if (supervisorId != null) 'supervisorId': supervisorId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusLecturer',
      if (id != null) 'id': id?.toJson(),
      'departmentId': departmentId.toJson(),
      'staffNumber': staffNumber,
      'name': name,
      'email': email,
      if (supervisorId != null) 'supervisorId': supervisorId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusLecturerImpl extends CampusLecturer {
  _CampusLecturerImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue departmentId,
    required String staffNumber,
    required String name,
    required String email,
    _isc.UuidValue? supervisorId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         departmentId: departmentId,
         staffNumber: staffNumber,
         name: name,
         email: email,
         supervisorId: supervisorId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusLecturer]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusLecturer copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? departmentId,
    String? staffNumber,
    String? name,
    String? email,
    Object? supervisorId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusLecturer(
      id: id is _isc.UuidValue? ? id : this.id,
      departmentId: departmentId ?? this.departmentId,
      staffNumber: staffNumber ?? this.staffNumber,
      name: name ?? this.name,
      email: email ?? this.email,
      supervisorId: supervisorId is _isc.UuidValue?
          ? supervisorId
          : this.supervisorId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
