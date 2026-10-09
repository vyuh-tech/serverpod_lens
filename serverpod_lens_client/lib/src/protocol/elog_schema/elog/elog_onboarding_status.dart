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

abstract class ElogOnboardingStatus
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogOnboardingStatus._({
    this.id,
    required this.industry,
    required this.completedAt,
    this.completedBy,
    required this.provisioningSummary,
  });

  factory ElogOnboardingStatus({
    _isc.UuidValue? id,
    required String industry,
    required DateTime completedAt,
    _isc.UuidValue? completedBy,
    required String provisioningSummary,
  }) = _ElogOnboardingStatusImpl;

  factory ElogOnboardingStatus.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogOnboardingStatus(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industry: jsonSerialization['industry'] as String,
      completedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['completedAt'],
      ),
      completedBy: jsonSerialization['completedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['completedBy'],
            ),
      provisioningSummary: jsonSerialization['provisioningSummary'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String industry;

  DateTime completedAt;

  _isc.UuidValue? completedBy;

  String provisioningSummary;

  /// Returns a shallow copy of this [ElogOnboardingStatus]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogOnboardingStatus copyWith({
    _isc.UuidValue? id,
    String? industry,
    DateTime? completedAt,
    _isc.UuidValue? completedBy,
    String? provisioningSummary,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogOnboardingStatus',
      if (id != null) 'id': id?.toJson(),
      'industry': industry,
      'completedAt': completedAt.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      'provisioningSummary': provisioningSummary,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogOnboardingStatus',
      if (id != null) 'id': id?.toJson(),
      'industry': industry,
      'completedAt': completedAt.toJson(),
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      'provisioningSummary': provisioningSummary,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogOnboardingStatusImpl extends ElogOnboardingStatus {
  _ElogOnboardingStatusImpl({
    _isc.UuidValue? id,
    required String industry,
    required DateTime completedAt,
    _isc.UuidValue? completedBy,
    required String provisioningSummary,
  }) : super._(
         id: id,
         industry: industry,
         completedAt: completedAt,
         completedBy: completedBy,
         provisioningSummary: provisioningSummary,
       );

  /// Returns a shallow copy of this [ElogOnboardingStatus]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogOnboardingStatus copyWith({
    Object? id = _Undefined,
    String? industry,
    DateTime? completedAt,
    Object? completedBy = _Undefined,
    String? provisioningSummary,
  }) {
    return ElogOnboardingStatus(
      id: id is _isc.UuidValue? ? id : this.id,
      industry: industry ?? this.industry,
      completedAt: completedAt ?? this.completedAt,
      completedBy: completedBy is _isc.UuidValue?
          ? completedBy
          : this.completedBy,
      provisioningSummary: provisioningSummary ?? this.provisioningSummary,
    );
  }
}
