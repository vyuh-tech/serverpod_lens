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
abstract class CampusTimetableEntry
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusTimetableEntry._({
    this.id,
    required this.timetableId,
    required this.meetingId,
    required this.sequence,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusTimetableEntry({
    _isc.UuidValue? id,
    required _isc.UuidValue timetableId,
    required _isc.UuidValue meetingId,
    required int sequence,
    DateTime? createdAt,
  }) = _CampusTimetableEntryImpl;

  factory CampusTimetableEntry.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusTimetableEntry(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      timetableId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['timetableId'],
      ),
      meetingId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['meetingId'],
      ),
      sequence: jsonSerialization['sequence'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue timetableId;

  _isc.UuidValue meetingId;

  int sequence;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusTimetableEntry]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusTimetableEntry copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? timetableId,
    _isc.UuidValue? meetingId,
    int? sequence,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusTimetableEntry',
      if (id != null) 'id': id?.toJson(),
      'timetableId': timetableId.toJson(),
      'meetingId': meetingId.toJson(),
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusTimetableEntry',
      if (id != null) 'id': id?.toJson(),
      'timetableId': timetableId.toJson(),
      'meetingId': meetingId.toJson(),
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusTimetableEntryImpl extends CampusTimetableEntry {
  _CampusTimetableEntryImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue timetableId,
    required _isc.UuidValue meetingId,
    required int sequence,
    DateTime? createdAt,
  }) : super._(
         id: id,
         timetableId: timetableId,
         meetingId: meetingId,
         sequence: sequence,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusTimetableEntry]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusTimetableEntry copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? timetableId,
    _isc.UuidValue? meetingId,
    int? sequence,
    DateTime? createdAt,
  }) {
    return CampusTimetableEntry(
      id: id is _isc.UuidValue? ? id : this.id,
      timetableId: timetableId ?? this.timetableId,
      meetingId: meetingId ?? this.meetingId,
      sequence: sequence ?? this.sequence,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
