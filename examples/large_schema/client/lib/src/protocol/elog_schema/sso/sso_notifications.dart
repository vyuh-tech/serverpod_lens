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

abstract class SsoNotifications
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoNotifications._({
    this.id,
    required this.userId,
    required this.type,
    required this.title,
    this.message,
    this.resourceType,
    this.resourceId,
    required this.isRead,
    this.readAt,
    required this.createdAt,
    this.metadata,
  });

  factory SsoNotifications({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required String type,
    required String title,
    String? message,
    String? resourceType,
    _isc.UuidValue? resourceId,
    required bool isRead,
    DateTime? readAt,
    required DateTime createdAt,
    String? metadata,
  }) = _SsoNotificationsImpl;

  factory SsoNotifications.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoNotifications(
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
      isRead: _isc.BoolJsonExtension.fromJson(jsonSerialization['isRead']),
      readAt: jsonSerialization['readAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['readAt']),
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
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

  bool isRead;

  DateTime? readAt;

  DateTime createdAt;

  String? metadata;

  /// Returns a shallow copy of this [SsoNotifications]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoNotifications copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    String? type,
    String? title,
    String? message,
    String? resourceType,
    _isc.UuidValue? resourceId,
    bool? isRead,
    DateTime? readAt,
    DateTime? createdAt,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoNotifications',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'type': type,
      'title': title,
      if (message != null) 'message': message,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      'isRead': isRead,
      if (readAt != null) 'readAt': readAt?.toJson(),
      'createdAt': createdAt.toJson(),
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoNotifications',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'type': type,
      'title': title,
      if (message != null) 'message': message,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      'isRead': isRead,
      if (readAt != null) 'readAt': readAt?.toJson(),
      'createdAt': createdAt.toJson(),
      if (metadata != null) 'metadata': metadata,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoNotificationsImpl extends SsoNotifications {
  _SsoNotificationsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required String type,
    required String title,
    String? message,
    String? resourceType,
    _isc.UuidValue? resourceId,
    required bool isRead,
    DateTime? readAt,
    required DateTime createdAt,
    String? metadata,
  }) : super._(
         id: id,
         userId: userId,
         type: type,
         title: title,
         message: message,
         resourceType: resourceType,
         resourceId: resourceId,
         isRead: isRead,
         readAt: readAt,
         createdAt: createdAt,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [SsoNotifications]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoNotifications copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? userId,
    String? type,
    String? title,
    Object? message = _Undefined,
    Object? resourceType = _Undefined,
    Object? resourceId = _Undefined,
    bool? isRead,
    Object? readAt = _Undefined,
    DateTime? createdAt,
    Object? metadata = _Undefined,
  }) {
    return SsoNotifications(
      id: id is _isc.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      title: title ?? this.title,
      message: message is String? ? message : this.message,
      resourceType: resourceType is String? ? resourceType : this.resourceType,
      resourceId: resourceId is _isc.UuidValue? ? resourceId : this.resourceId,
      isRead: isRead ?? this.isRead,
      readAt: readAt is DateTime? ? readAt : this.readAt,
      createdAt: createdAt ?? this.createdAt,
      metadata: metadata is String? ? metadata : this.metadata,
    );
  }
}
