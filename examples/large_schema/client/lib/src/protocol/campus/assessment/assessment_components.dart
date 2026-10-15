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
abstract class CampusAssessmentComponent
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusAssessmentComponent._({
    this.id,
    required this.assessmentId,
    required this.title,
    required this.maximumScore,
    required this.sequence,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAssessmentComponent({
    _isc.UuidValue? id,
    required _isc.UuidValue assessmentId,
    required String title,
    required double maximumScore,
    required int sequence,
    DateTime? createdAt,
  }) = _CampusAssessmentComponentImpl;

  factory CampusAssessmentComponent.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusAssessmentComponent(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      assessmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['assessmentId'],
      ),
      title: jsonSerialization['title'] as String,
      maximumScore: (jsonSerialization['maximumScore'] as num).toDouble(),
      sequence: jsonSerialization['sequence'] as int,
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

  String title;

  double maximumScore;

  int sequence;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusAssessmentComponent]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusAssessmentComponent copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? assessmentId,
    String? title,
    double? maximumScore,
    int? sequence,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAssessmentComponent',
      if (id != null) 'id': id?.toJson(),
      'assessmentId': assessmentId.toJson(),
      'title': title,
      'maximumScore': maximumScore,
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAssessmentComponent',
      if (id != null) 'id': id?.toJson(),
      'assessmentId': assessmentId.toJson(),
      'title': title,
      'maximumScore': maximumScore,
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAssessmentComponentImpl extends CampusAssessmentComponent {
  _CampusAssessmentComponentImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue assessmentId,
    required String title,
    required double maximumScore,
    required int sequence,
    DateTime? createdAt,
  }) : super._(
         id: id,
         assessmentId: assessmentId,
         title: title,
         maximumScore: maximumScore,
         sequence: sequence,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAssessmentComponent]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusAssessmentComponent copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? assessmentId,
    String? title,
    double? maximumScore,
    int? sequence,
    DateTime? createdAt,
  }) {
    return CampusAssessmentComponent(
      id: id is _isc.UuidValue? ? id : this.id,
      assessmentId: assessmentId ?? this.assessmentId,
      title: title ?? this.title,
      maximumScore: maximumScore ?? this.maximumScore,
      sequence: sequence ?? this.sequence,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
