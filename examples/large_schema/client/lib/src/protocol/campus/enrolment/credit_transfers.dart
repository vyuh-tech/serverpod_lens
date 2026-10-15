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

/// Fictional university fixture: enrolment.
abstract class CampusCreditTransfer
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusCreditTransfer._({
    this.id,
    required this.studentId,
    required this.courseId,
    required this.institution,
    required this.awardedCredits,
    this.approvedById,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCreditTransfer({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue courseId,
    required String institution,
    required int awardedCredits,
    _isc.UuidValue? approvedById,
    DateTime? createdAt,
  }) = _CampusCreditTransferImpl;

  factory CampusCreditTransfer.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusCreditTransfer(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      courseId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      institution: jsonSerialization['institution'] as String,
      awardedCredits: jsonSerialization['awardedCredits'] as int,
      approvedById: jsonSerialization['approvedById'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['approvedById'],
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

  _isc.UuidValue courseId;

  String institution;

  int awardedCredits;

  _isc.UuidValue? approvedById;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusCreditTransfer]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusCreditTransfer copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    _isc.UuidValue? courseId,
    String? institution,
    int? awardedCredits,
    _isc.UuidValue? approvedById,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCreditTransfer',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'courseId': courseId.toJson(),
      'institution': institution,
      'awardedCredits': awardedCredits,
      if (approvedById != null) 'approvedById': approvedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCreditTransfer',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'courseId': courseId.toJson(),
      'institution': institution,
      'awardedCredits': awardedCredits,
      if (approvedById != null) 'approvedById': approvedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCreditTransferImpl extends CampusCreditTransfer {
  _CampusCreditTransferImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue courseId,
    required String institution,
    required int awardedCredits,
    _isc.UuidValue? approvedById,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         courseId: courseId,
         institution: institution,
         awardedCredits: awardedCredits,
         approvedById: approvedById,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCreditTransfer]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusCreditTransfer copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    _isc.UuidValue? courseId,
    String? institution,
    int? awardedCredits,
    Object? approvedById = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusCreditTransfer(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      courseId: courseId ?? this.courseId,
      institution: institution ?? this.institution,
      awardedCredits: awardedCredits ?? this.awardedCredits,
      approvedById: approvedById is _isc.UuidValue?
          ? approvedById
          : this.approvedById,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
