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
abstract class CampusTimetable
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusTimetable._({
    this.id,
    required this.termId,
    required this.programmeId,
    required this.title,
    required this.published,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusTimetable({
    _isc.UuidValue? id,
    required _isc.UuidValue termId,
    required _isc.UuidValue programmeId,
    required String title,
    required bool published,
    DateTime? createdAt,
  }) = _CampusTimetableImpl;

  factory CampusTimetable.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusTimetable(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      termId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['termId']),
      programmeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeId'],
      ),
      title: jsonSerialization['title'] as String,
      published: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['published'],
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

  _isc.UuidValue termId;

  _isc.UuidValue programmeId;

  String title;

  bool published;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusTimetable]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusTimetable copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? termId,
    _isc.UuidValue? programmeId,
    String? title,
    bool? published,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusTimetable',
      if (id != null) 'id': id?.toJson(),
      'termId': termId.toJson(),
      'programmeId': programmeId.toJson(),
      'title': title,
      'published': published,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusTimetable',
      if (id != null) 'id': id?.toJson(),
      'termId': termId.toJson(),
      'programmeId': programmeId.toJson(),
      'title': title,
      'published': published,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusTimetableImpl extends CampusTimetable {
  _CampusTimetableImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue termId,
    required _isc.UuidValue programmeId,
    required String title,
    required bool published,
    DateTime? createdAt,
  }) : super._(
         id: id,
         termId: termId,
         programmeId: programmeId,
         title: title,
         published: published,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusTimetable]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusTimetable copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? termId,
    _isc.UuidValue? programmeId,
    String? title,
    bool? published,
    DateTime? createdAt,
  }) {
    return CampusTimetable(
      id: id is _isc.UuidValue? ? id : this.id,
      termId: termId ?? this.termId,
      programmeId: programmeId ?? this.programmeId,
      title: title ?? this.title,
      published: published ?? this.published,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
