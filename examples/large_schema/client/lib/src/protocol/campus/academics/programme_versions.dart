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
abstract class CampusProgrammeVersion
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusProgrammeVersion._({
    this.id,
    required this.programmeId,
    required this.academicYearId,
    required this.version,
    required this.published,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusProgrammeVersion({
    _isc.UuidValue? id,
    required _isc.UuidValue programmeId,
    required _isc.UuidValue academicYearId,
    required int version,
    required bool published,
    DateTime? createdAt,
  }) = _CampusProgrammeVersionImpl;

  factory CampusProgrammeVersion.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusProgrammeVersion(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      programmeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeId'],
      ),
      academicYearId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['academicYearId'],
      ),
      version: jsonSerialization['version'] as int,
      published: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['published'],
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

  _isc.UuidValue programmeId;

  _isc.UuidValue academicYearId;

  int version;

  bool published;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusProgrammeVersion]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusProgrammeVersion copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? programmeId,
    _isc.UuidValue? academicYearId,
    int? version,
    bool? published,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusProgrammeVersion',
      if (id != null) 'id': id?.toJson(),
      'programmeId': programmeId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'version': version,
      'published': published,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusProgrammeVersion',
      if (id != null) 'id': id?.toJson(),
      'programmeId': programmeId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'version': version,
      'published': published,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusProgrammeVersionImpl extends CampusProgrammeVersion {
  _CampusProgrammeVersionImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue programmeId,
    required _isc.UuidValue academicYearId,
    required int version,
    required bool published,
    DateTime? createdAt,
  }) : super._(
         id: id,
         programmeId: programmeId,
         academicYearId: academicYearId,
         version: version,
         published: published,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusProgrammeVersion]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusProgrammeVersion copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? programmeId,
    _isc.UuidValue? academicYearId,
    int? version,
    bool? published,
    DateTime? createdAt,
  }) {
    return CampusProgrammeVersion(
      id: id is _isc.UuidValue? ? id : this.id,
      programmeId: programmeId ?? this.programmeId,
      academicYearId: academicYearId ?? this.academicYearId,
      version: version ?? this.version,
      published: published ?? this.published,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
