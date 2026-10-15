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
abstract class CampusScholarshipAward
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusScholarshipAward._({
    this.id,
    required this.scholarshipId,
    required this.studentId,
    required this.academicYearId,
    required this.amountMinor,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusScholarshipAward({
    _isc.UuidValue? id,
    required _isc.UuidValue scholarshipId,
    required _isc.UuidValue studentId,
    required _isc.UuidValue academicYearId,
    required int amountMinor,
    DateTime? createdAt,
  }) = _CampusScholarshipAwardImpl;

  factory CampusScholarshipAward.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusScholarshipAward(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      scholarshipId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['scholarshipId'],
      ),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      academicYearId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['academicYearId'],
      ),
      amountMinor: jsonSerialization['amountMinor'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue scholarshipId;

  _isc.UuidValue studentId;

  _isc.UuidValue academicYearId;

  int amountMinor;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusScholarshipAward]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusScholarshipAward copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? scholarshipId,
    _isc.UuidValue? studentId,
    _isc.UuidValue? academicYearId,
    int? amountMinor,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusScholarshipAward',
      if (id != null) 'id': id?.toJson(),
      'scholarshipId': scholarshipId.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusScholarshipAward',
      if (id != null) 'id': id?.toJson(),
      'scholarshipId': scholarshipId.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusScholarshipAwardImpl extends CampusScholarshipAward {
  _CampusScholarshipAwardImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue scholarshipId,
    required _isc.UuidValue studentId,
    required _isc.UuidValue academicYearId,
    required int amountMinor,
    DateTime? createdAt,
  }) : super._(
         id: id,
         scholarshipId: scholarshipId,
         studentId: studentId,
         academicYearId: academicYearId,
         amountMinor: amountMinor,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusScholarshipAward]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusScholarshipAward copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? scholarshipId,
    _isc.UuidValue? studentId,
    _isc.UuidValue? academicYearId,
    int? amountMinor,
    DateTime? createdAt,
  }) {
    return CampusScholarshipAward(
      id: id is _isc.UuidValue? ? id : this.id,
      scholarshipId: scholarshipId ?? this.scholarshipId,
      studentId: studentId ?? this.studentId,
      academicYearId: academicYearId ?? this.academicYearId,
      amountMinor: amountMinor ?? this.amountMinor,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
