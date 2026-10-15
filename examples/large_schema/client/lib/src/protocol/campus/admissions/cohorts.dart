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
abstract class CampusCohort
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusCohort._({
    this.id,
    required this.programmeId,
    required this.academicYearId,
    required this.name,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCohort({
    _isc.UuidValue? id,
    required _isc.UuidValue programmeId,
    required _isc.UuidValue academicYearId,
    required String name,
    DateTime? createdAt,
  }) = _CampusCohortImpl;

  factory CampusCohort.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusCohort(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      programmeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeId'],
      ),
      academicYearId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['academicYearId'],
      ),
      name: jsonSerialization['name'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue programmeId;

  _isc.UuidValue academicYearId;

  String name;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusCohort]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusCohort copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? programmeId,
    _isc.UuidValue? academicYearId,
    String? name,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCohort',
      if (id != null) 'id': id?.toJson(),
      'programmeId': programmeId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'name': name,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCohort',
      if (id != null) 'id': id?.toJson(),
      'programmeId': programmeId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'name': name,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCohortImpl extends CampusCohort {
  _CampusCohortImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue programmeId,
    required _isc.UuidValue academicYearId,
    required String name,
    DateTime? createdAt,
  }) : super._(
         id: id,
         programmeId: programmeId,
         academicYearId: academicYearId,
         name: name,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCohort]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusCohort copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? programmeId,
    _isc.UuidValue? academicYearId,
    String? name,
    DateTime? createdAt,
  }) {
    return CampusCohort(
      id: id is _isc.UuidValue? ? id : this.id,
      programmeId: programmeId ?? this.programmeId,
      academicYearId: academicYearId ?? this.academicYearId,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
