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

abstract class ElogNotifications
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogNotifications._({
    this.id,
    required this.userId,
    required this.type,
    required this.title,
    this.message,
    this.resourceType,
    this.resourceId,
    this.workflowInstanceId,
    this.workflowTaskId,
    this.isRead,
    this.readAt,
    this.groupKey,
    this.latestOccurrenceKey,
    required this.occurrenceCount,
    this.firstOccurredAt,
    this.lastOccurredAt,
    this.createdAt,
    this.metadata,
  });

  factory ElogNotifications({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required String type,
    required String title,
    String? message,
    String? resourceType,
    _isc.UuidValue? resourceId,
    _isc.UuidValue? workflowInstanceId,
    _isc.UuidValue? workflowTaskId,
    bool? isRead,
    DateTime? readAt,
    String? groupKey,
    String? latestOccurrenceKey,
    required int occurrenceCount,
    DateTime? firstOccurredAt,
    DateTime? lastOccurredAt,
    DateTime? createdAt,
    String? metadata,
  }) = _ElogNotificationsImpl;

  factory ElogNotifications.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogNotifications(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      type: jsonSerialization['type'] as String,
      title: jsonSerialization['title'] as String,
      message: jsonSerialization['message'] as String?,
      resourceType: jsonSerialization['resourceType'] as String?,
      resourceId: jsonSerialization['resourceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceId'],
            ),
      workflowInstanceId: jsonSerialization['workflowInstanceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowInstanceId'],
            ),
      workflowTaskId: jsonSerialization['workflowTaskId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['workflowTaskId'],
            ),
      isRead: jsonSerialization['isRead'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isRead']),
      readAt: jsonSerialization['readAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['readAt']),
      groupKey: jsonSerialization['groupKey'] as String?,
      latestOccurrenceKey: jsonSerialization['latestOccurrenceKey'] as String?,
      occurrenceCount: jsonSerialization['occurrenceCount'] as int,
      firstOccurredAt: jsonSerialization['firstOccurredAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['firstOccurredAt'],
            ),
      lastOccurredAt: jsonSerialization['lastOccurredAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastOccurredAt'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      metadata: jsonSerialization['metadata'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue userId;

  String type;

  String title;

  String? message;

  String? resourceType;

  _isc.UuidValue? resourceId;

  _isc.UuidValue? workflowInstanceId;

  _isc.UuidValue? workflowTaskId;

  bool? isRead;

  DateTime? readAt;

  String? groupKey;

  String? latestOccurrenceKey;

  int occurrenceCount;

  DateTime? firstOccurredAt;

  DateTime? lastOccurredAt;

  DateTime? createdAt;

  String? metadata;

  /// Returns a shallow copy of this [ElogNotifications]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogNotifications copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    String? type,
    String? title,
    String? message,
    String? resourceType,
    _isc.UuidValue? resourceId,
    _isc.UuidValue? workflowInstanceId,
    _isc.UuidValue? workflowTaskId,
    bool? isRead,
    DateTime? readAt,
    String? groupKey,
    String? latestOccurrenceKey,
    int? occurrenceCount,
    DateTime? firstOccurredAt,
    DateTime? lastOccurredAt,
    DateTime? createdAt,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogNotifications',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'type': type,
      'title': title,
      if (message != null) 'message': message,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      if (workflowTaskId != null) 'workflowTaskId': workflowTaskId?.toJson(),
      if (isRead != null) 'isRead': isRead,
      if (readAt != null) 'readAt': readAt?.toJson(),
      if (groupKey != null) 'groupKey': groupKey,
      if (latestOccurrenceKey != null)
        'latestOccurrenceKey': latestOccurrenceKey,
      'occurrenceCount': occurrenceCount,
      if (firstOccurredAt != null) 'firstOccurredAt': firstOccurredAt?.toJson(),
      if (lastOccurredAt != null) 'lastOccurredAt': lastOccurredAt?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogNotifications',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'type': type,
      'title': title,
      if (message != null) 'message': message,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (workflowInstanceId != null)
        'workflowInstanceId': workflowInstanceId?.toJson(),
      if (workflowTaskId != null) 'workflowTaskId': workflowTaskId?.toJson(),
      if (isRead != null) 'isRead': isRead,
      if (readAt != null) 'readAt': readAt?.toJson(),
      if (groupKey != null) 'groupKey': groupKey,
      if (latestOccurrenceKey != null)
        'latestOccurrenceKey': latestOccurrenceKey,
      'occurrenceCount': occurrenceCount,
      if (firstOccurredAt != null) 'firstOccurredAt': firstOccurredAt?.toJson(),
      if (lastOccurredAt != null) 'lastOccurredAt': lastOccurredAt?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogNotificationsImpl extends ElogNotifications {
  _ElogNotificationsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required String type,
    required String title,
    String? message,
    String? resourceType,
    _isc.UuidValue? resourceId,
    _isc.UuidValue? workflowInstanceId,
    _isc.UuidValue? workflowTaskId,
    bool? isRead,
    DateTime? readAt,
    String? groupKey,
    String? latestOccurrenceKey,
    required int occurrenceCount,
    DateTime? firstOccurredAt,
    DateTime? lastOccurredAt,
    DateTime? createdAt,
    String? metadata,
  }) : super._(
         id: id,
         userId: userId,
         type: type,
         title: title,
         message: message,
         resourceType: resourceType,
         resourceId: resourceId,
         workflowInstanceId: workflowInstanceId,
         workflowTaskId: workflowTaskId,
         isRead: isRead,
         readAt: readAt,
         groupKey: groupKey,
         latestOccurrenceKey: latestOccurrenceKey,
         occurrenceCount: occurrenceCount,
         firstOccurredAt: firstOccurredAt,
         lastOccurredAt: lastOccurredAt,
         createdAt: createdAt,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [ElogNotifications]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogNotifications copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? userId,
    String? type,
    String? title,
    Object? message = _Undefined,
    Object? resourceType = _Undefined,
    Object? resourceId = _Undefined,
    Object? workflowInstanceId = _Undefined,
    Object? workflowTaskId = _Undefined,
    Object? isRead = _Undefined,
    Object? readAt = _Undefined,
    Object? groupKey = _Undefined,
    Object? latestOccurrenceKey = _Undefined,
    int? occurrenceCount,
    Object? firstOccurredAt = _Undefined,
    Object? lastOccurredAt = _Undefined,
    Object? createdAt = _Undefined,
    Object? metadata = _Undefined,
  }) {
    return ElogNotifications(
      id: id is _isc.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      title: title ?? this.title,
      message: message is String? ? message : this.message,
      resourceType: resourceType is String? ? resourceType : this.resourceType,
      resourceId: resourceId is _isc.UuidValue? ? resourceId : this.resourceId,
      workflowInstanceId: workflowInstanceId is _isc.UuidValue?
          ? workflowInstanceId
          : this.workflowInstanceId,
      workflowTaskId: workflowTaskId is _isc.UuidValue?
          ? workflowTaskId
          : this.workflowTaskId,
      isRead: isRead is bool? ? isRead : this.isRead,
      readAt: readAt is DateTime? ? readAt : this.readAt,
      groupKey: groupKey is String? ? groupKey : this.groupKey,
      latestOccurrenceKey: latestOccurrenceKey is String?
          ? latestOccurrenceKey
          : this.latestOccurrenceKey,
      occurrenceCount: occurrenceCount ?? this.occurrenceCount,
      firstOccurredAt: firstOccurredAt is DateTime?
          ? firstOccurredAt
          : this.firstOccurredAt,
      lastOccurredAt: lastOccurredAt is DateTime?
          ? lastOccurredAt
          : this.lastOccurredAt,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      metadata: metadata is String? ? metadata : this.metadata,
    );
  }
}
