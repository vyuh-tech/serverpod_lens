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
abstract class CampusGradeScaleBand
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusGradeScaleBand._({
    this.id,
    required this.gradeScaleId,
    required this.label,
    required this.minimumScore,
    required this.maximumScore,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGradeScaleBand({
    _isc.UuidValue? id,
    required _isc.UuidValue gradeScaleId,
    required String label,
    required double minimumScore,
    required double maximumScore,
    DateTime? createdAt,
  }) = _CampusGradeScaleBandImpl;

  factory CampusGradeScaleBand.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusGradeScaleBand(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      gradeScaleId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['gradeScaleId'],
      ),
      label: jsonSerialization['label'] as String,
      minimumScore: (jsonSerialization['minimumScore'] as num).toDouble(),
      maximumScore: (jsonSerialization['maximumScore'] as num).toDouble(),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue gradeScaleId;

  String label;

  double minimumScore;

  double maximumScore;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusGradeScaleBand]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusGradeScaleBand copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? gradeScaleId,
    String? label,
    double? minimumScore,
    double? maximumScore,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGradeScaleBand',
      if (id != null) 'id': id?.toJson(),
      'gradeScaleId': gradeScaleId.toJson(),
      'label': label,
      'minimumScore': minimumScore,
      'maximumScore': maximumScore,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGradeScaleBand',
      if (id != null) 'id': id?.toJson(),
      'gradeScaleId': gradeScaleId.toJson(),
      'label': label,
      'minimumScore': minimumScore,
      'maximumScore': maximumScore,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGradeScaleBandImpl extends CampusGradeScaleBand {
  _CampusGradeScaleBandImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue gradeScaleId,
    required String label,
    required double minimumScore,
    required double maximumScore,
    DateTime? createdAt,
  }) : super._(
         id: id,
         gradeScaleId: gradeScaleId,
         label: label,
         minimumScore: minimumScore,
         maximumScore: maximumScore,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGradeScaleBand]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusGradeScaleBand copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? gradeScaleId,
    String? label,
    double? minimumScore,
    double? maximumScore,
    DateTime? createdAt,
  }) {
    return CampusGradeScaleBand(
      id: id is _isc.UuidValue? ? id : this.id,
      gradeScaleId: gradeScaleId ?? this.gradeScaleId,
      label: label ?? this.label,
      minimumScore: minimumScore ?? this.minimumScore,
      maximumScore: maximumScore ?? this.maximumScore,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
