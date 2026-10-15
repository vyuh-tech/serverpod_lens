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

/// Fictional university fixture: research.
abstract class CampusPublicationAuthor
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusPublicationAuthor._({
    this.id,
    required this.publicationId,
    this.lecturerId,
    this.studentId,
    required this.sequence,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusPublicationAuthor({
    _isc.UuidValue? id,
    required _isc.UuidValue publicationId,
    _isc.UuidValue? lecturerId,
    _isc.UuidValue? studentId,
    required int sequence,
    DateTime? createdAt,
  }) = _CampusPublicationAuthorImpl;

  factory CampusPublicationAuthor.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusPublicationAuthor(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      publicationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['publicationId'],
      ),
      lecturerId: jsonSerialization['lecturerId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['lecturerId'],
            ),
      studentId: jsonSerialization['studentId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['studentId'],
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

  _isc.UuidValue publicationId;

  _isc.UuidValue? lecturerId;

  _isc.UuidValue? studentId;

  int sequence;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusPublicationAuthor]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusPublicationAuthor copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? publicationId,
    _isc.UuidValue? lecturerId,
    _isc.UuidValue? studentId,
    int? sequence,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusPublicationAuthor',
      if (id != null) 'id': id?.toJson(),
      'publicationId': publicationId.toJson(),
      if (lecturerId != null) 'lecturerId': lecturerId?.toJson(),
      if (studentId != null) 'studentId': studentId?.toJson(),
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusPublicationAuthor',
      if (id != null) 'id': id?.toJson(),
      'publicationId': publicationId.toJson(),
      if (lecturerId != null) 'lecturerId': lecturerId?.toJson(),
      if (studentId != null) 'studentId': studentId?.toJson(),
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

class _CampusPublicationAuthorImpl extends CampusPublicationAuthor {
  _CampusPublicationAuthorImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue publicationId,
    _isc.UuidValue? lecturerId,
    _isc.UuidValue? studentId,
    required int sequence,
    DateTime? createdAt,
  }) : super._(
         id: id,
         publicationId: publicationId,
         lecturerId: lecturerId,
         studentId: studentId,
         sequence: sequence,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusPublicationAuthor]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusPublicationAuthor copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? publicationId,
    Object? lecturerId = _Undefined,
    Object? studentId = _Undefined,
    int? sequence,
    DateTime? createdAt,
  }) {
    return CampusPublicationAuthor(
      id: id is _isc.UuidValue? ? id : this.id,
      publicationId: publicationId ?? this.publicationId,
      lecturerId: lecturerId is _isc.UuidValue? ? lecturerId : this.lecturerId,
      studentId: studentId is _isc.UuidValue? ? studentId : this.studentId,
      sequence: sequence ?? this.sequence,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
