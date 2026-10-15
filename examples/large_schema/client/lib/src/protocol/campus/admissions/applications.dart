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
abstract class CampusApplication
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusApplication._({
    this.id,
    required this.studentId,
    required this.academicYearId,
    required this.reference,
    this.submittedAt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusApplication({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue academicYearId,
    required String reference,
    DateTime? submittedAt,
    required String status,
    DateTime? createdAt,
  }) = _CampusApplicationImpl;

  factory CampusApplication.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusApplication(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      academicYearId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['academicYearId'],
      ),
      reference: jsonSerialization['reference'] as String,
      submittedAt: jsonSerialization['submittedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['submittedAt'],
            ),
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

  _isc.UuidValue studentId;

  _isc.UuidValue academicYearId;

  String reference;

  DateTime? submittedAt;

  String status;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusApplication]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusApplication copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    _isc.UuidValue? academicYearId,
    String? reference,
    DateTime? submittedAt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusApplication',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'reference': reference,
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusApplication',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'reference': reference,
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
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

class _CampusApplicationImpl extends CampusApplication {
  _CampusApplicationImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue academicYearId,
    required String reference,
    DateTime? submittedAt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         academicYearId: academicYearId,
         reference: reference,
         submittedAt: submittedAt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusApplication]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusApplication copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    _isc.UuidValue? academicYearId,
    String? reference,
    Object? submittedAt = _Undefined,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusApplication(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      academicYearId: academicYearId ?? this.academicYearId,
      reference: reference ?? this.reference,
      submittedAt: submittedAt is DateTime? ? submittedAt : this.submittedAt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
