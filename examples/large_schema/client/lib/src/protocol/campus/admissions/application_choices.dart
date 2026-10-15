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
abstract class CampusApplicationChoice
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusApplicationChoice._({
    this.id,
    required this.applicationId,
    required this.programmeId,
    required this.preference,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusApplicationChoice({
    _isc.UuidValue? id,
    required _isc.UuidValue applicationId,
    required _isc.UuidValue programmeId,
    required int preference,
    DateTime? createdAt,
  }) = _CampusApplicationChoiceImpl;

  factory CampusApplicationChoice.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusApplicationChoice(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      applicationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['applicationId'],
      ),
      programmeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeId'],
      ),
      preference: jsonSerialization['preference'] as int,
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

  _isc.UuidValue programmeId;

  int preference;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusApplicationChoice]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusApplicationChoice copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? applicationId,
    _isc.UuidValue? programmeId,
    int? preference,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusApplicationChoice',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'programmeId': programmeId.toJson(),
      'preference': preference,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusApplicationChoice',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'programmeId': programmeId.toJson(),
      'preference': preference,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusApplicationChoiceImpl extends CampusApplicationChoice {
  _CampusApplicationChoiceImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue applicationId,
    required _isc.UuidValue programmeId,
    required int preference,
    DateTime? createdAt,
  }) : super._(
         id: id,
         applicationId: applicationId,
         programmeId: programmeId,
         preference: preference,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusApplicationChoice]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusApplicationChoice copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? applicationId,
    _isc.UuidValue? programmeId,
    int? preference,
    DateTime? createdAt,
  }) {
    return CampusApplicationChoice(
      id: id is _isc.UuidValue? ? id : this.id,
      applicationId: applicationId ?? this.applicationId,
      programmeId: programmeId ?? this.programmeId,
      preference: preference ?? this.preference,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
