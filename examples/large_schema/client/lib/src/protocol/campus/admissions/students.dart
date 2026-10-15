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

/// Fictional university fixture: admissions.
abstract class CampusStudent
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusStudent._({
    this.id,
    this.programmeId,
    required this.studentNumber,
    required this.name,
    required this.email,
    required this.dateOfBirth,
    required this.active,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudent({
    _isc.UuidValue? id,
    _isc.UuidValue? programmeId,
    required String studentNumber,
    required String name,
    required String email,
    required DateTime dateOfBirth,
    required bool active,
    DateTime? createdAt,
  }) = _CampusStudentImpl;

  factory CampusStudent.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusStudent(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      programmeId: jsonSerialization['programmeId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['programmeId'],
            ),
      studentNumber: jsonSerialization['studentNumber'] as String,
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String,
      dateOfBirth: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['dateOfBirth'],
      ),
      active: _isc.BoolJsonExtension.fromJson(jsonSerialization['active']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue? programmeId;

  String studentNumber;

  String name;

  String email;

  DateTime dateOfBirth;

  bool active;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusStudent]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusStudent copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? programmeId,
    String? studentNumber,
    String? name,
    String? email,
    DateTime? dateOfBirth,
    bool? active,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudent',
      if (id != null) 'id': id?.toJson(),
      if (programmeId != null) 'programmeId': programmeId?.toJson(),
      'studentNumber': studentNumber,
      'name': name,
      'email': email,
      'dateOfBirth': dateOfBirth.toJson(),
      'active': active,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudent',
      if (id != null) 'id': id?.toJson(),
      if (programmeId != null) 'programmeId': programmeId?.toJson(),
      'studentNumber': studentNumber,
      'name': name,
      'email': email,
      'dateOfBirth': dateOfBirth.toJson(),
      'active': active,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentImpl extends CampusStudent {
  _CampusStudentImpl({
    _isc.UuidValue? id,
    _isc.UuidValue? programmeId,
    required String studentNumber,
    required String name,
    required String email,
    required DateTime dateOfBirth,
    required bool active,
    DateTime? createdAt,
  }) : super._(
         id: id,
         programmeId: programmeId,
         studentNumber: studentNumber,
         name: name,
         email: email,
         dateOfBirth: dateOfBirth,
         active: active,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudent]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusStudent copyWith({
    Object? id = _Undefined,
    Object? programmeId = _Undefined,
    String? studentNumber,
    String? name,
    String? email,
    DateTime? dateOfBirth,
    bool? active,
    DateTime? createdAt,
  }) {
    return CampusStudent(
      id: id is _isc.UuidValue? ? id : this.id,
      programmeId: programmeId is _isc.UuidValue?
          ? programmeId
          : this.programmeId,
      studentNumber: studentNumber ?? this.studentNumber,
      name: name ?? this.name,
      email: email ?? this.email,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      active: active ?? this.active,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
