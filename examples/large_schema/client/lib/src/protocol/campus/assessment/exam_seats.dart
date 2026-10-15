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
abstract class CampusExamSeat
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusExamSeat._({
    this.id,
    required this.examSessionId,
    required this.label,
    required this.accessible,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusExamSeat({
    _isc.UuidValue? id,
    required _isc.UuidValue examSessionId,
    required String label,
    required bool accessible,
    DateTime? createdAt,
  }) = _CampusExamSeatImpl;

  factory CampusExamSeat.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusExamSeat(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      examSessionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['examSessionId'],
      ),
      label: jsonSerialization['label'] as String,
      accessible: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['accessible'],
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

  _isc.UuidValue examSessionId;

  String label;

  bool accessible;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusExamSeat]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusExamSeat copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? examSessionId,
    String? label,
    bool? accessible,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusExamSeat',
      if (id != null) 'id': id?.toJson(),
      'examSessionId': examSessionId.toJson(),
      'label': label,
      'accessible': accessible,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusExamSeat',
      if (id != null) 'id': id?.toJson(),
      'examSessionId': examSessionId.toJson(),
      'label': label,
      'accessible': accessible,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusExamSeatImpl extends CampusExamSeat {
  _CampusExamSeatImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue examSessionId,
    required String label,
    required bool accessible,
    DateTime? createdAt,
  }) : super._(
         id: id,
         examSessionId: examSessionId,
         label: label,
         accessible: accessible,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusExamSeat]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusExamSeat copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? examSessionId,
    String? label,
    bool? accessible,
    DateTime? createdAt,
  }) {
    return CampusExamSeat(
      id: id is _isc.UuidValue? ? id : this.id,
      examSessionId: examSessionId ?? this.examSessionId,
      label: label ?? this.label,
      accessible: accessible ?? this.accessible,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
