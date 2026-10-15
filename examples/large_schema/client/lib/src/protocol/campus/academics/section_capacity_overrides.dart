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

/// Fictional university fixture: academics.
abstract class CampusSectionCapacityOverride
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusSectionCapacityOverride._({
    this.id,
    required this.sectionId,
    required this.lecturerId,
    required this.extraPlaces,
    required this.reason,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSectionCapacityOverride({
    _isc.UuidValue? id,
    required _isc.UuidValue sectionId,
    required _isc.UuidValue lecturerId,
    required int extraPlaces,
    required String reason,
    DateTime? createdAt,
  }) = _CampusSectionCapacityOverrideImpl;

  factory CampusSectionCapacityOverride.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusSectionCapacityOverride(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sectionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      lecturerId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      extraPlaces: jsonSerialization['extraPlaces'] as int,
      reason: jsonSerialization['reason'] as String,
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

  _isc.UuidValue lecturerId;

  int extraPlaces;

  String reason;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusSectionCapacityOverride]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusSectionCapacityOverride copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? sectionId,
    _isc.UuidValue? lecturerId,
    int? extraPlaces,
    String? reason,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSectionCapacityOverride',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'extraPlaces': extraPlaces,
      'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSectionCapacityOverride',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'extraPlaces': extraPlaces,
      'reason': reason,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSectionCapacityOverrideImpl extends CampusSectionCapacityOverride {
  _CampusSectionCapacityOverrideImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue sectionId,
    required _isc.UuidValue lecturerId,
    required int extraPlaces,
    required String reason,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sectionId: sectionId,
         lecturerId: lecturerId,
         extraPlaces: extraPlaces,
         reason: reason,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSectionCapacityOverride]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusSectionCapacityOverride copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? sectionId,
    _isc.UuidValue? lecturerId,
    int? extraPlaces,
    String? reason,
    DateTime? createdAt,
  }) {
    return CampusSectionCapacityOverride(
      id: id is _isc.UuidValue? ? id : this.id,
      sectionId: sectionId ?? this.sectionId,
      lecturerId: lecturerId ?? this.lecturerId,
      extraPlaces: extraPlaces ?? this.extraPlaces,
      reason: reason ?? this.reason,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
