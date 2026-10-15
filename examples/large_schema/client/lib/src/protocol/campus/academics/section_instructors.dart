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
abstract class CampusSectionInstructor
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusSectionInstructor._({
    this.id,
    required this.sectionId,
    required this.lecturerId,
    required this.lead,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSectionInstructor({
    _isc.UuidValue? id,
    required _isc.UuidValue sectionId,
    required _isc.UuidValue lecturerId,
    required bool lead,
    DateTime? createdAt,
  }) = _CampusSectionInstructorImpl;

  factory CampusSectionInstructor.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusSectionInstructor(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sectionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      lecturerId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      lead: _isc.BoolJsonExtension.fromJson(jsonSerialization['lead']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue sectionId;

  _isc.UuidValue lecturerId;

  bool lead;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusSectionInstructor]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusSectionInstructor copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? sectionId,
    _isc.UuidValue? lecturerId,
    bool? lead,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSectionInstructor',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'lead': lead,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSectionInstructor',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'lead': lead,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSectionInstructorImpl extends CampusSectionInstructor {
  _CampusSectionInstructorImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue sectionId,
    required _isc.UuidValue lecturerId,
    required bool lead,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sectionId: sectionId,
         lecturerId: lecturerId,
         lead: lead,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSectionInstructor]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusSectionInstructor copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? sectionId,
    _isc.UuidValue? lecturerId,
    bool? lead,
    DateTime? createdAt,
  }) {
    return CampusSectionInstructor(
      id: id is _isc.UuidValue? ? id : this.id,
      sectionId: sectionId ?? this.sectionId,
      lecturerId: lecturerId ?? this.lecturerId,
      lead: lead ?? this.lead,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
