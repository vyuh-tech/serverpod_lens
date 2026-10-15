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

/// Fictional university fixture: enrolment.
abstract class CampusWaitlistEntry
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusWaitlistEntry._({
    this.id,
    required this.studentId,
    required this.sectionId,
    required this.position,
    this.offeredAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusWaitlistEntry({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue sectionId,
    required int position,
    DateTime? offeredAt,
    DateTime? createdAt,
  }) = _CampusWaitlistEntryImpl;

  factory CampusWaitlistEntry.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusWaitlistEntry(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      sectionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      position: jsonSerialization['position'] as int,
      offeredAt: jsonSerialization['offeredAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['offeredAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue studentId;

  _isc.UuidValue sectionId;

  int position;

  DateTime? offeredAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusWaitlistEntry]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusWaitlistEntry copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    _isc.UuidValue? sectionId,
    int? position,
    DateTime? offeredAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusWaitlistEntry',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'sectionId': sectionId.toJson(),
      'position': position,
      if (offeredAt != null) 'offeredAt': offeredAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusWaitlistEntry',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'sectionId': sectionId.toJson(),
      'position': position,
      if (offeredAt != null) 'offeredAt': offeredAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusWaitlistEntryImpl extends CampusWaitlistEntry {
  _CampusWaitlistEntryImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue sectionId,
    required int position,
    DateTime? offeredAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         sectionId: sectionId,
         position: position,
         offeredAt: offeredAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusWaitlistEntry]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusWaitlistEntry copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    _isc.UuidValue? sectionId,
    int? position,
    Object? offeredAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusWaitlistEntry(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      sectionId: sectionId ?? this.sectionId,
      position: position ?? this.position,
      offeredAt: offeredAt is DateTime? ? offeredAt : this.offeredAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
