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
import 'package:serverpod_lens_client/src/protocol/protocol.dart' as _ixq89rj6;

/// Fictional university fixture: assessment.
abstract class CampusExamAccommodation
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusExamAccommodation._({
    this.id,
    required this.registrationId,
    required this.extraMinutes,
    required this.requirements,
    this.approvedById,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusExamAccommodation({
    _isc.UuidValue? id,
    required _isc.UuidValue registrationId,
    required int extraMinutes,
    required List<String> requirements,
    _isc.UuidValue? approvedById,
    DateTime? createdAt,
  }) = _CampusExamAccommodationImpl;

  factory CampusExamAccommodation.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusExamAccommodation(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      registrationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['registrationId'],
      ),
      extraMinutes: jsonSerialization['extraMinutes'] as int,
      requirements: _ixq89rj6.Protocol().deserialize<List<String>>(
        jsonSerialization['requirements'],
      ),
      approvedById: jsonSerialization['approvedById'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['approvedById'],
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

  _isc.UuidValue registrationId;

  int extraMinutes;

  List<String> requirements;

  _isc.UuidValue? approvedById;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusExamAccommodation]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusExamAccommodation copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? registrationId,
    int? extraMinutes,
    List<String>? requirements,
    _isc.UuidValue? approvedById,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusExamAccommodation',
      if (id != null) 'id': id?.toJson(),
      'registrationId': registrationId.toJson(),
      'extraMinutes': extraMinutes,
      'requirements': requirements.toJson(),
      if (approvedById != null) 'approvedById': approvedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusExamAccommodation',
      if (id != null) 'id': id?.toJson(),
      'registrationId': registrationId.toJson(),
      'extraMinutes': extraMinutes,
      'requirements': requirements.toJson(),
      if (approvedById != null) 'approvedById': approvedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusExamAccommodationImpl extends CampusExamAccommodation {
  _CampusExamAccommodationImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue registrationId,
    required int extraMinutes,
    required List<String> requirements,
    _isc.UuidValue? approvedById,
    DateTime? createdAt,
  }) : super._(
         id: id,
         registrationId: registrationId,
         extraMinutes: extraMinutes,
         requirements: requirements,
         approvedById: approvedById,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusExamAccommodation]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusExamAccommodation copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? registrationId,
    int? extraMinutes,
    List<String>? requirements,
    Object? approvedById = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusExamAccommodation(
      id: id is _isc.UuidValue? ? id : this.id,
      registrationId: registrationId ?? this.registrationId,
      extraMinutes: extraMinutes ?? this.extraMinutes,
      requirements: requirements ?? this.requirements.map((e0) => e0).toList(),
      approvedById: approvedById is _isc.UuidValue?
          ? approvedById
          : this.approvedById,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
