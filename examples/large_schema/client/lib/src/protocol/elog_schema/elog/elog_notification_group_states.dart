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

abstract class ElogNotificationGroupStates
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogNotificationGroupStates._({
    this.id,
    required this.userId,
    required this.groupKey,
    required this.notificationId,
    required this.latestOccurrenceKey,
    required this.occurrenceCount,
    required this.firstOccurredAt,
    required this.lastOccurredAt,
  });

  factory ElogNotificationGroupStates({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required String groupKey,
    required _isc.UuidValue notificationId,
    required String latestOccurrenceKey,
    required int occurrenceCount,
    required DateTime firstOccurredAt,
    required DateTime lastOccurredAt,
  }) = _ElogNotificationGroupStatesImpl;

  factory ElogNotificationGroupStates.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogNotificationGroupStates(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      groupKey: jsonSerialization['groupKey'] as String,
      notificationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['notificationId'],
      ),
      latestOccurrenceKey: jsonSerialization['latestOccurrenceKey'] as String,
      occurrenceCount: jsonSerialization['occurrenceCount'] as int,
      firstOccurredAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['firstOccurredAt'],
      ),
      lastOccurredAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['lastOccurredAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue userId;

  String groupKey;

  _isc.UuidValue notificationId;

  String latestOccurrenceKey;

  int occurrenceCount;

  DateTime firstOccurredAt;

  DateTime lastOccurredAt;

  /// Returns a shallow copy of this [ElogNotificationGroupStates]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogNotificationGroupStates copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    String? groupKey,
    _isc.UuidValue? notificationId,
    String? latestOccurrenceKey,
    int? occurrenceCount,
    DateTime? firstOccurredAt,
    DateTime? lastOccurredAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogNotificationGroupStates',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'groupKey': groupKey,
      'notificationId': notificationId.toJson(),
      'latestOccurrenceKey': latestOccurrenceKey,
      'occurrenceCount': occurrenceCount,
      'firstOccurredAt': firstOccurredAt.toJson(),
      'lastOccurredAt': lastOccurredAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogNotificationGroupStates',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'groupKey': groupKey,
      'notificationId': notificationId.toJson(),
      'latestOccurrenceKey': latestOccurrenceKey,
      'occurrenceCount': occurrenceCount,
      'firstOccurredAt': firstOccurredAt.toJson(),
      'lastOccurredAt': lastOccurredAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogNotificationGroupStatesImpl extends ElogNotificationGroupStates {
  _ElogNotificationGroupStatesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required String groupKey,
    required _isc.UuidValue notificationId,
    required String latestOccurrenceKey,
    required int occurrenceCount,
    required DateTime firstOccurredAt,
    required DateTime lastOccurredAt,
  }) : super._(
         id: id,
         userId: userId,
         groupKey: groupKey,
         notificationId: notificationId,
         latestOccurrenceKey: latestOccurrenceKey,
         occurrenceCount: occurrenceCount,
         firstOccurredAt: firstOccurredAt,
         lastOccurredAt: lastOccurredAt,
       );

  /// Returns a shallow copy of this [ElogNotificationGroupStates]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogNotificationGroupStates copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? userId,
    String? groupKey,
    _isc.UuidValue? notificationId,
    String? latestOccurrenceKey,
    int? occurrenceCount,
    DateTime? firstOccurredAt,
    DateTime? lastOccurredAt,
  }) {
    return ElogNotificationGroupStates(
      id: id is _isc.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      groupKey: groupKey ?? this.groupKey,
      notificationId: notificationId ?? this.notificationId,
      latestOccurrenceKey: latestOccurrenceKey ?? this.latestOccurrenceKey,
      occurrenceCount: occurrenceCount ?? this.occurrenceCount,
      firstOccurredAt: firstOccurredAt ?? this.firstOccurredAt,
      lastOccurredAt: lastOccurredAt ?? this.lastOccurredAt,
    );
  }
}
