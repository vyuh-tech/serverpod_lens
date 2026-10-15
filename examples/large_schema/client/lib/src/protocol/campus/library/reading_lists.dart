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

/// Fictional university fixture: library.
abstract class CampusReadingList
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusReadingList._({
    this.id,
    required this.courseId,
    required this.lecturerId,
    required this.title,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusReadingList({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required _isc.UuidValue lecturerId,
    required String title,
    DateTime? createdAt,
  }) = _CampusReadingListImpl;

  factory CampusReadingList.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusReadingList(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      courseId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['courseId'],
      ),
      lecturerId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      title: jsonSerialization['title'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue courseId;

  _isc.UuidValue lecturerId;

  String title;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusReadingList]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusReadingList copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? courseId,
    _isc.UuidValue? lecturerId,
    String? title,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusReadingList',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'title': title,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusReadingList',
      if (id != null) 'id': id?.toJson(),
      'courseId': courseId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'title': title,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusReadingListImpl extends CampusReadingList {
  _CampusReadingListImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue courseId,
    required _isc.UuidValue lecturerId,
    required String title,
    DateTime? createdAt,
  }) : super._(
         id: id,
         courseId: courseId,
         lecturerId: lecturerId,
         title: title,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusReadingList]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusReadingList copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? courseId,
    _isc.UuidValue? lecturerId,
    String? title,
    DateTime? createdAt,
  }) {
    return CampusReadingList(
      id: id is _isc.UuidValue? ? id : this.id,
      courseId: courseId ?? this.courseId,
      lecturerId: lecturerId ?? this.lecturerId,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
