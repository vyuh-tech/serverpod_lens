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

abstract class ElogEventReactorState
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogEventReactorState._({
    this.id,
    required this.pk,
    required this.lastProcessedEventNumber,
    this.lastProcessedAt,
    required this.totalEventsProcessed,
    required this.totalErrors,
    required this.updatedAt,
  });

  factory ElogEventReactorState({
    _isc.UuidValue? id,
    required bool pk,
    required BigInt lastProcessedEventNumber,
    DateTime? lastProcessedAt,
    required BigInt totalEventsProcessed,
    required BigInt totalErrors,
    required DateTime updatedAt,
  }) = _ElogEventReactorStateImpl;

  factory ElogEventReactorState.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogEventReactorState(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      pk: _isc.BoolJsonExtension.fromJson(jsonSerialization['pk']),
      lastProcessedEventNumber: _isc.BigIntJsonExtension.fromJson(
        jsonSerialization['lastProcessedEventNumber'],
      ),
      lastProcessedAt: jsonSerialization['lastProcessedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastProcessedAt'],
            ),
      totalEventsProcessed: _isc.BigIntJsonExtension.fromJson(
        jsonSerialization['totalEventsProcessed'],
      ),
      totalErrors: _isc.BigIntJsonExtension.fromJson(
        jsonSerialization['totalErrors'],
      ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  bool pk;

  BigInt lastProcessedEventNumber;

  DateTime? lastProcessedAt;

  BigInt totalEventsProcessed;

  BigInt totalErrors;

  DateTime updatedAt;

  /// Returns a shallow copy of this [ElogEventReactorState]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogEventReactorState copyWith({
    _isc.UuidValue? id,
    bool? pk,
    BigInt? lastProcessedEventNumber,
    DateTime? lastProcessedAt,
    BigInt? totalEventsProcessed,
    BigInt? totalErrors,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogEventReactorState',
      if (id != null) 'id': id?.toJson(),
      'pk': pk,
      'lastProcessedEventNumber': lastProcessedEventNumber.toJson(),
      if (lastProcessedAt != null) 'lastProcessedAt': lastProcessedAt?.toJson(),
      'totalEventsProcessed': totalEventsProcessed.toJson(),
      'totalErrors': totalErrors.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogEventReactorState',
      if (id != null) 'id': id?.toJson(),
      'pk': pk,
      'lastProcessedEventNumber': lastProcessedEventNumber.toJson(),
      if (lastProcessedAt != null) 'lastProcessedAt': lastProcessedAt?.toJson(),
      'totalEventsProcessed': totalEventsProcessed.toJson(),
      'totalErrors': totalErrors.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogEventReactorStateImpl extends ElogEventReactorState {
  _ElogEventReactorStateImpl({
    _isc.UuidValue? id,
    required bool pk,
    required BigInt lastProcessedEventNumber,
    DateTime? lastProcessedAt,
    required BigInt totalEventsProcessed,
    required BigInt totalErrors,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         pk: pk,
         lastProcessedEventNumber: lastProcessedEventNumber,
         lastProcessedAt: lastProcessedAt,
         totalEventsProcessed: totalEventsProcessed,
         totalErrors: totalErrors,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [ElogEventReactorState]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogEventReactorState copyWith({
    Object? id = _Undefined,
    bool? pk,
    BigInt? lastProcessedEventNumber,
    Object? lastProcessedAt = _Undefined,
    BigInt? totalEventsProcessed,
    BigInt? totalErrors,
    DateTime? updatedAt,
  }) {
    return ElogEventReactorState(
      id: id is _isc.UuidValue? ? id : this.id,
      pk: pk ?? this.pk,
      lastProcessedEventNumber:
          lastProcessedEventNumber ?? this.lastProcessedEventNumber,
      lastProcessedAt: lastProcessedAt is DateTime?
          ? lastProcessedAt
          : this.lastProcessedAt,
      totalEventsProcessed: totalEventsProcessed ?? this.totalEventsProcessed,
      totalErrors: totalErrors ?? this.totalErrors,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
