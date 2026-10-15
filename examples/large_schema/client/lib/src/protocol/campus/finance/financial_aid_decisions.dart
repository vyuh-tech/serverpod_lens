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
abstract class CampusFinancialAidDecision
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusFinancialAidDecision._({
    this.id,
    required this.applicationId,
    required this.awardedMinor,
    required this.decidedAt,
    this.notes,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusFinancialAidDecision({
    _isc.UuidValue? id,
    required _isc.UuidValue applicationId,
    required int awardedMinor,
    required DateTime decidedAt,
    String? notes,
    DateTime? createdAt,
  }) = _CampusFinancialAidDecisionImpl;

  factory CampusFinancialAidDecision.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusFinancialAidDecision(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      applicationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['applicationId'],
      ),
      awardedMinor: jsonSerialization['awardedMinor'] as int,
      decidedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['decidedAt'],
      ),
      notes: jsonSerialization['notes'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue applicationId;

  int awardedMinor;

  DateTime decidedAt;

  String? notes;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusFinancialAidDecision]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusFinancialAidDecision copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? applicationId,
    int? awardedMinor,
    DateTime? decidedAt,
    String? notes,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusFinancialAidDecision',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'awardedMinor': awardedMinor,
      'decidedAt': decidedAt.toJson(),
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusFinancialAidDecision',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'awardedMinor': awardedMinor,
      'decidedAt': decidedAt.toJson(),
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusFinancialAidDecisionImpl extends CampusFinancialAidDecision {
  _CampusFinancialAidDecisionImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue applicationId,
    required int awardedMinor,
    required DateTime decidedAt,
    String? notes,
    DateTime? createdAt,
  }) : super._(
         id: id,
         applicationId: applicationId,
         awardedMinor: awardedMinor,
         decidedAt: decidedAt,
         notes: notes,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusFinancialAidDecision]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusFinancialAidDecision copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? applicationId,
    int? awardedMinor,
    DateTime? decidedAt,
    Object? notes = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusFinancialAidDecision(
      id: id is _isc.UuidValue? ? id : this.id,
      applicationId: applicationId ?? this.applicationId,
      awardedMinor: awardedMinor ?? this.awardedMinor,
      decidedAt: decidedAt ?? this.decidedAt,
      notes: notes is String? ? notes : this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
