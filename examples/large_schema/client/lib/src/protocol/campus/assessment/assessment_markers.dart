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

/// Fictional university fixture: assessment.
abstract class CampusAssessmentMarker
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusAssessmentMarker._({
    this.id,
    required this.assessmentId,
    required this.lecturerId,
    required this.moderation,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAssessmentMarker({
    _isc.UuidValue? id,
    required _isc.UuidValue assessmentId,
    required _isc.UuidValue lecturerId,
    required bool moderation,
    DateTime? createdAt,
  }) = _CampusAssessmentMarkerImpl;

  factory CampusAssessmentMarker.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusAssessmentMarker(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      assessmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['assessmentId'],
      ),
      lecturerId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      moderation: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['moderation'],
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

  _isc.UuidValue assessmentId;

  _isc.UuidValue lecturerId;

  bool moderation;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusAssessmentMarker]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusAssessmentMarker copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? assessmentId,
    _isc.UuidValue? lecturerId,
    bool? moderation,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAssessmentMarker',
      if (id != null) 'id': id?.toJson(),
      'assessmentId': assessmentId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'moderation': moderation,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAssessmentMarker',
      if (id != null) 'id': id?.toJson(),
      'assessmentId': assessmentId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'moderation': moderation,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAssessmentMarkerImpl extends CampusAssessmentMarker {
  _CampusAssessmentMarkerImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue assessmentId,
    required _isc.UuidValue lecturerId,
    required bool moderation,
    DateTime? createdAt,
  }) : super._(
         id: id,
         assessmentId: assessmentId,
         lecturerId: lecturerId,
         moderation: moderation,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAssessmentMarker]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusAssessmentMarker copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? assessmentId,
    _isc.UuidValue? lecturerId,
    bool? moderation,
    DateTime? createdAt,
  }) {
    return CampusAssessmentMarker(
      id: id is _isc.UuidValue? ? id : this.id,
      assessmentId: assessmentId ?? this.assessmentId,
      lecturerId: lecturerId ?? this.lecturerId,
      moderation: moderation ?? this.moderation,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
