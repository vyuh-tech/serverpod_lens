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
abstract class CampusStudentGuardian
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusStudentGuardian._({
    this.id,
    required this.studentId,
    required this.guardianId,
    required this.relationship,
    required this.emergencyContact,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentGuardian({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue guardianId,
    required String relationship,
    required bool emergencyContact,
    DateTime? createdAt,
  }) = _CampusStudentGuardianImpl;

  factory CampusStudentGuardian.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusStudentGuardian(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      guardianId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['guardianId'],
      ),
      relationship: jsonSerialization['relationship'] as String,
      emergencyContact: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['emergencyContact'],
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

  _isc.UuidValue studentId;

  _isc.UuidValue guardianId;

  String relationship;

  bool emergencyContact;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusStudentGuardian]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusStudentGuardian copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    _isc.UuidValue? guardianId,
    String? relationship,
    bool? emergencyContact,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentGuardian',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'guardianId': guardianId.toJson(),
      'relationship': relationship,
      'emergencyContact': emergencyContact,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentGuardian',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'guardianId': guardianId.toJson(),
      'relationship': relationship,
      'emergencyContact': emergencyContact,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentGuardianImpl extends CampusStudentGuardian {
  _CampusStudentGuardianImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue guardianId,
    required String relationship,
    required bool emergencyContact,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         guardianId: guardianId,
         relationship: relationship,
         emergencyContact: emergencyContact,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentGuardian]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusStudentGuardian copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    _isc.UuidValue? guardianId,
    String? relationship,
    bool? emergencyContact,
    DateTime? createdAt,
  }) {
    return CampusStudentGuardian(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      guardianId: guardianId ?? this.guardianId,
      relationship: relationship ?? this.relationship,
      emergencyContact: emergencyContact ?? this.emergencyContact,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
