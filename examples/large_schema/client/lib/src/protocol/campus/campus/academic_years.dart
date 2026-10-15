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

/// Fictional university fixture: campus.
abstract class CampusAcademicYear
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusAcademicYear._({
    this.id,
    required this.label,
    required this.startsAt,
    required this.endsAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAcademicYear({
    _isc.UuidValue? id,
    required String label,
    required DateTime startsAt,
    required DateTime endsAt,
    DateTime? createdAt,
  }) = _CampusAcademicYearImpl;

  factory CampusAcademicYear.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusAcademicYear(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      label: jsonSerialization['label'] as String,
      startsAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['startsAt'],
      ),
      endsAt: _isc.DateTimeJsonExtension.fromJson(jsonSerialization['endsAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String label;

  DateTime startsAt;

  DateTime endsAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusAcademicYear]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusAcademicYear copyWith({
    _isc.UuidValue? id,
    String? label,
    DateTime? startsAt,
    DateTime? endsAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAcademicYear',
      if (id != null) 'id': id?.toJson(),
      'label': label,
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAcademicYear',
      if (id != null) 'id': id?.toJson(),
      'label': label,
      'startsAt': startsAt.toJson(),
      'endsAt': endsAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAcademicYearImpl extends CampusAcademicYear {
  _CampusAcademicYearImpl({
    _isc.UuidValue? id,
    required String label,
    required DateTime startsAt,
    required DateTime endsAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         label: label,
         startsAt: startsAt,
         endsAt: endsAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAcademicYear]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusAcademicYear copyWith({
    Object? id = _Undefined,
    String? label,
    DateTime? startsAt,
    DateTime? endsAt,
    DateTime? createdAt,
  }) {
    return CampusAcademicYear(
      id: id is _isc.UuidValue? ? id : this.id,
      label: label ?? this.label,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt ?? this.endsAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
