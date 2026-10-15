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

/// Fictional university fixture: finance.
abstract class CampusSponsorship
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusSponsorship._({
    this.id,
    required this.sponsorId,
    required this.studentId,
    required this.academicYearId,
    required this.commitmentMinor,
    required this.currency,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSponsorship({
    _isc.UuidValue? id,
    required _isc.UuidValue sponsorId,
    required _isc.UuidValue studentId,
    required _isc.UuidValue academicYearId,
    required int commitmentMinor,
    required String currency,
    DateTime? createdAt,
  }) = _CampusSponsorshipImpl;

  factory CampusSponsorship.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusSponsorship(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sponsorId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['sponsorId'],
      ),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      academicYearId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['academicYearId'],
      ),
      commitmentMinor: jsonSerialization['commitmentMinor'] as int,
      currency: jsonSerialization['currency'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue sponsorId;

  _isc.UuidValue studentId;

  _isc.UuidValue academicYearId;

  int commitmentMinor;

  String currency;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusSponsorship]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusSponsorship copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? sponsorId,
    _isc.UuidValue? studentId,
    _isc.UuidValue? academicYearId,
    int? commitmentMinor,
    String? currency,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSponsorship',
      if (id != null) 'id': id?.toJson(),
      'sponsorId': sponsorId.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'commitmentMinor': commitmentMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSponsorship',
      if (id != null) 'id': id?.toJson(),
      'sponsorId': sponsorId.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'commitmentMinor': commitmentMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSponsorshipImpl extends CampusSponsorship {
  _CampusSponsorshipImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue sponsorId,
    required _isc.UuidValue studentId,
    required _isc.UuidValue academicYearId,
    required int commitmentMinor,
    required String currency,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sponsorId: sponsorId,
         studentId: studentId,
         academicYearId: academicYearId,
         commitmentMinor: commitmentMinor,
         currency: currency,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSponsorship]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusSponsorship copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? sponsorId,
    _isc.UuidValue? studentId,
    _isc.UuidValue? academicYearId,
    int? commitmentMinor,
    String? currency,
    DateTime? createdAt,
  }) {
    return CampusSponsorship(
      id: id is _isc.UuidValue? ? id : this.id,
      sponsorId: sponsorId ?? this.sponsorId,
      studentId: studentId ?? this.studentId,
      academicYearId: academicYearId ?? this.academicYearId,
      commitmentMinor: commitmentMinor ?? this.commitmentMinor,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
