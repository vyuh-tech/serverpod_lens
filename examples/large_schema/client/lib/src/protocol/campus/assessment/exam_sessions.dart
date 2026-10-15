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

/// Fictional university fixture: assessment.
abstract class CampusExamSession
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusExamSession._({
    this.id,
    required this.examId,
    required this.termId,
    required this.roomId,
    required this.startsAt,
    required this.capacity,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusExamSession({
    _isc.UuidValue? id,
    required _isc.UuidValue examId,
    required _isc.UuidValue termId,
    required _isc.UuidValue roomId,
    required DateTime startsAt,
    required int capacity,
    DateTime? createdAt,
  }) = _CampusExamSessionImpl;

  factory CampusExamSession.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusExamSession(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      examId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['examId']),
      termId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['termId']),
      roomId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['roomId']),
      startsAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['startsAt'],
      ),
      capacity: jsonSerialization['capacity'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue examId;

  _isc.UuidValue termId;

  _isc.UuidValue roomId;

  DateTime startsAt;

  int capacity;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusExamSession]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusExamSession copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? examId,
    _isc.UuidValue? termId,
    _isc.UuidValue? roomId,
    DateTime? startsAt,
    int? capacity,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusExamSession',
      if (id != null) 'id': id?.toJson(),
      'examId': examId.toJson(),
      'termId': termId.toJson(),
      'roomId': roomId.toJson(),
      'startsAt': startsAt.toJson(),
      'capacity': capacity,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusExamSession',
      if (id != null) 'id': id?.toJson(),
      'examId': examId.toJson(),
      'termId': termId.toJson(),
      'roomId': roomId.toJson(),
      'startsAt': startsAt.toJson(),
      'capacity': capacity,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusExamSessionImpl extends CampusExamSession {
  _CampusExamSessionImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue examId,
    required _isc.UuidValue termId,
    required _isc.UuidValue roomId,
    required DateTime startsAt,
    required int capacity,
    DateTime? createdAt,
  }) : super._(
         id: id,
         examId: examId,
         termId: termId,
         roomId: roomId,
         startsAt: startsAt,
         capacity: capacity,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusExamSession]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusExamSession copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? examId,
    _isc.UuidValue? termId,
    _isc.UuidValue? roomId,
    DateTime? startsAt,
    int? capacity,
    DateTime? createdAt,
  }) {
    return CampusExamSession(
      id: id is _isc.UuidValue? ? id : this.id,
      examId: examId ?? this.examId,
      termId: termId ?? this.termId,
      roomId: roomId ?? this.roomId,
      startsAt: startsAt ?? this.startsAt,
      capacity: capacity ?? this.capacity,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
