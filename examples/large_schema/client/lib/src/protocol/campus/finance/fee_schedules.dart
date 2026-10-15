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
abstract class CampusFeeSchedule
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusFeeSchedule._({
    this.id,
    required this.programmeId,
    required this.academicYearId,
    required this.currency,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusFeeSchedule({
    _isc.UuidValue? id,
    required _isc.UuidValue programmeId,
    required _isc.UuidValue academicYearId,
    required String currency,
    DateTime? createdAt,
  }) = _CampusFeeScheduleImpl;

  factory CampusFeeSchedule.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusFeeSchedule(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      programmeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeId'],
      ),
      academicYearId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['academicYearId'],
      ),
      currency: jsonSerialization['currency'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue programmeId;

  _isc.UuidValue academicYearId;

  String currency;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusFeeSchedule]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusFeeSchedule copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? programmeId,
    _isc.UuidValue? academicYearId,
    String? currency,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusFeeSchedule',
      if (id != null) 'id': id?.toJson(),
      'programmeId': programmeId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusFeeSchedule',
      if (id != null) 'id': id?.toJson(),
      'programmeId': programmeId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusFeeScheduleImpl extends CampusFeeSchedule {
  _CampusFeeScheduleImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue programmeId,
    required _isc.UuidValue academicYearId,
    required String currency,
    DateTime? createdAt,
  }) : super._(
         id: id,
         programmeId: programmeId,
         academicYearId: academicYearId,
         currency: currency,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusFeeSchedule]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusFeeSchedule copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? programmeId,
    _isc.UuidValue? academicYearId,
    String? currency,
    DateTime? createdAt,
  }) {
    return CampusFeeSchedule(
      id: id is _isc.UuidValue? ? id : this.id,
      programmeId: programmeId ?? this.programmeId,
      academicYearId: academicYearId ?? this.academicYearId,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
