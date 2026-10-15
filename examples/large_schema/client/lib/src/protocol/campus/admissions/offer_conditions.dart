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
abstract class CampusOfferCondition
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusOfferCondition._({
    this.id,
    required this.offerId,
    required this.description,
    required this.satisfied,
    this.satisfiedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusOfferCondition({
    _isc.UuidValue? id,
    required _isc.UuidValue offerId,
    required String description,
    required bool satisfied,
    DateTime? satisfiedAt,
    DateTime? createdAt,
  }) = _CampusOfferConditionImpl;

  factory CampusOfferCondition.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusOfferCondition(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      offerId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['offerId'],
      ),
      description: jsonSerialization['description'] as String,
      satisfied: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['satisfied'],
      ),
      satisfiedAt: jsonSerialization['satisfiedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['satisfiedAt'],
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

  _isc.UuidValue offerId;

  String description;

  bool satisfied;

  DateTime? satisfiedAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusOfferCondition]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusOfferCondition copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? offerId,
    String? description,
    bool? satisfied,
    DateTime? satisfiedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusOfferCondition',
      if (id != null) 'id': id?.toJson(),
      'offerId': offerId.toJson(),
      'description': description,
      'satisfied': satisfied,
      if (satisfiedAt != null) 'satisfiedAt': satisfiedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusOfferCondition',
      if (id != null) 'id': id?.toJson(),
      'offerId': offerId.toJson(),
      'description': description,
      'satisfied': satisfied,
      if (satisfiedAt != null) 'satisfiedAt': satisfiedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusOfferConditionImpl extends CampusOfferCondition {
  _CampusOfferConditionImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue offerId,
    required String description,
    required bool satisfied,
    DateTime? satisfiedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         offerId: offerId,
         description: description,
         satisfied: satisfied,
         satisfiedAt: satisfiedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusOfferCondition]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusOfferCondition copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? offerId,
    String? description,
    bool? satisfied,
    Object? satisfiedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusOfferCondition(
      id: id is _isc.UuidValue? ? id : this.id,
      offerId: offerId ?? this.offerId,
      description: description ?? this.description,
      satisfied: satisfied ?? this.satisfied,
      satisfiedAt: satisfiedAt is DateTime? ? satisfiedAt : this.satisfiedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
