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
abstract class CampusCompletion
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusCompletion._({
    this.id,
    required this.studentId,
    required this.programmeVersionId,
    required this.completedAt,
    required this.awardedCredits,
    this.classification,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusCompletion({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue programmeVersionId,
    required DateTime completedAt,
    required int awardedCredits,
    String? classification,
    DateTime? createdAt,
  }) = _CampusCompletionImpl;

  factory CampusCompletion.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusCompletion(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      programmeVersionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeVersionId'],
      ),
      completedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['completedAt'],
      ),
      awardedCredits: jsonSerialization['awardedCredits'] as int,
      classification: jsonSerialization['classification'] as String?,
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

  _isc.UuidValue programmeVersionId;

  DateTime completedAt;

  int awardedCredits;

  String? classification;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusCompletion]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusCompletion copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    _isc.UuidValue? programmeVersionId,
    DateTime? completedAt,
    int? awardedCredits,
    String? classification,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusCompletion',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'programmeVersionId': programmeVersionId.toJson(),
      'completedAt': completedAt.toJson(),
      'awardedCredits': awardedCredits,
      if (classification != null) 'classification': classification,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusCompletion',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'programmeVersionId': programmeVersionId.toJson(),
      'completedAt': completedAt.toJson(),
      'awardedCredits': awardedCredits,
      if (classification != null) 'classification': classification,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusCompletionImpl extends CampusCompletion {
  _CampusCompletionImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue programmeVersionId,
    required DateTime completedAt,
    required int awardedCredits,
    String? classification,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         programmeVersionId: programmeVersionId,
         completedAt: completedAt,
         awardedCredits: awardedCredits,
         classification: classification,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusCompletion]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusCompletion copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    _isc.UuidValue? programmeVersionId,
    DateTime? completedAt,
    int? awardedCredits,
    Object? classification = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusCompletion(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      programmeVersionId: programmeVersionId ?? this.programmeVersionId,
      completedAt: completedAt ?? this.completedAt,
      awardedCredits: awardedCredits ?? this.awardedCredits,
      classification: classification is String?
          ? classification
          : this.classification,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
