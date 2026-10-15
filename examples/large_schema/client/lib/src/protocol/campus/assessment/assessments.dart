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
abstract class CampusAssessment
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusAssessment._({
    this.id,
    required this.sectionId,
    required this.title,
    required this.dueAt,
    required this.maximumScore,
    required this.weightPercent,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAssessment({
    _isc.UuidValue? id,
    required _isc.UuidValue sectionId,
    required String title,
    required DateTime dueAt,
    required double maximumScore,
    required double weightPercent,
    DateTime? createdAt,
  }) = _CampusAssessmentImpl;

  factory CampusAssessment.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusAssessment(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sectionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      title: jsonSerialization['title'] as String,
      dueAt: _isc.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
      maximumScore: (jsonSerialization['maximumScore'] as num).toDouble(),
      weightPercent: (jsonSerialization['weightPercent'] as num).toDouble(),
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

  String title;

  DateTime dueAt;

  double maximumScore;

  double weightPercent;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusAssessment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusAssessment copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? sectionId,
    String? title,
    DateTime? dueAt,
    double? maximumScore,
    double? weightPercent,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAssessment',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'title': title,
      'dueAt': dueAt.toJson(),
      'maximumScore': maximumScore,
      'weightPercent': weightPercent,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAssessment',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'title': title,
      'dueAt': dueAt.toJson(),
      'maximumScore': maximumScore,
      'weightPercent': weightPercent,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAssessmentImpl extends CampusAssessment {
  _CampusAssessmentImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue sectionId,
    required String title,
    required DateTime dueAt,
    required double maximumScore,
    required double weightPercent,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sectionId: sectionId,
         title: title,
         dueAt: dueAt,
         maximumScore: maximumScore,
         weightPercent: weightPercent,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAssessment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusAssessment copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? sectionId,
    String? title,
    DateTime? dueAt,
    double? maximumScore,
    double? weightPercent,
    DateTime? createdAt,
  }) {
    return CampusAssessment(
      id: id is _isc.UuidValue? ? id : this.id,
      sectionId: sectionId ?? this.sectionId,
      title: title ?? this.title,
      dueAt: dueAt ?? this.dueAt,
      maximumScore: maximumScore ?? this.maximumScore,
      weightPercent: weightPercent ?? this.weightPercent,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
