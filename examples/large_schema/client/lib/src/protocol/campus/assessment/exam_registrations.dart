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
abstract class CampusExamRegistration
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusExamRegistration._({
    this.id,
    required this.examSessionId,
    required this.studentId,
    this.seatId,
    required this.attended,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusExamRegistration({
    _isc.UuidValue? id,
    required _isc.UuidValue examSessionId,
    required _isc.UuidValue studentId,
    _isc.UuidValue? seatId,
    required bool attended,
    DateTime? createdAt,
  }) = _CampusExamRegistrationImpl;

  factory CampusExamRegistration.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusExamRegistration(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      examSessionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['examSessionId'],
      ),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      seatId: jsonSerialization['seatId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['seatId']),
      attended: _isc.BoolJsonExtension.fromJson(jsonSerialization['attended']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue examSessionId;

  _isc.UuidValue studentId;

  _isc.UuidValue? seatId;

  bool attended;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusExamRegistration]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusExamRegistration copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? examSessionId,
    _isc.UuidValue? studentId,
    _isc.UuidValue? seatId,
    bool? attended,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusExamRegistration',
      if (id != null) 'id': id?.toJson(),
      'examSessionId': examSessionId.toJson(),
      'studentId': studentId.toJson(),
      if (seatId != null) 'seatId': seatId?.toJson(),
      'attended': attended,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusExamRegistration',
      if (id != null) 'id': id?.toJson(),
      'examSessionId': examSessionId.toJson(),
      'studentId': studentId.toJson(),
      if (seatId != null) 'seatId': seatId?.toJson(),
      'attended': attended,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusExamRegistrationImpl extends CampusExamRegistration {
  _CampusExamRegistrationImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue examSessionId,
    required _isc.UuidValue studentId,
    _isc.UuidValue? seatId,
    required bool attended,
    DateTime? createdAt,
  }) : super._(
         id: id,
         examSessionId: examSessionId,
         studentId: studentId,
         seatId: seatId,
         attended: attended,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusExamRegistration]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusExamRegistration copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? examSessionId,
    _isc.UuidValue? studentId,
    Object? seatId = _Undefined,
    bool? attended,
    DateTime? createdAt,
  }) {
    return CampusExamRegistration(
      id: id is _isc.UuidValue? ? id : this.id,
      examSessionId: examSessionId ?? this.examSessionId,
      studentId: studentId ?? this.studentId,
      seatId: seatId is _isc.UuidValue? ? seatId : this.seatId,
      attended: attended ?? this.attended,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
