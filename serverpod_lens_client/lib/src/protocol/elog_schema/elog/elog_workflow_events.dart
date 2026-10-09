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

abstract class ElogWorkflowEvents
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogWorkflowEvents._({
    this.id,
    required this.idField,
    required this.workflowInstanceId,
    required this.eventType,
    required this.timestamp,
    this.nodeId,
    this.userTaskId,
    this.tokenId,
    this.userId,
    required this.data,
    required this.metadata,
  });

  factory ElogWorkflowEvents({
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required _isc.UuidValue workflowInstanceId,
    required String eventType,
    required DateTime timestamp,
    String? nodeId,
    _isc.UuidValue? userTaskId,
    String? tokenId,
    _isc.UuidValue? userId,
    required String data,
    required String metadata,
  }) = _ElogWorkflowEventsImpl;

  factory ElogWorkflowEvents.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogWorkflowEvents(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      workflowInstanceId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['workflowInstanceId'],
      ),
      eventType: jsonSerialization['eventType'] as String,
      timestamp: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['timestamp'],
      ),
      nodeId: jsonSerialization['nodeId'] as String?,
      userTaskId: jsonSerialization['userTaskId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['userTaskId'],
            ),
      tokenId: jsonSerialization['tokenId'] as String?,
      userId: jsonSerialization['userId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      data: jsonSerialization['data'] as String,
      metadata: jsonSerialization['metadata'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue idField;

  _isc.UuidValue workflowInstanceId;

  String eventType;

  DateTime timestamp;

  String? nodeId;

  _isc.UuidValue? userTaskId;

  String? tokenId;

  _isc.UuidValue? userId;

  String data;

  String metadata;

  /// Returns a shallow copy of this [ElogWorkflowEvents]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogWorkflowEvents copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? idField,
    _isc.UuidValue? workflowInstanceId,
    String? eventType,
    DateTime? timestamp,
    String? nodeId,
    _isc.UuidValue? userTaskId,
    String? tokenId,
    _isc.UuidValue? userId,
    String? data,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogWorkflowEvents',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'workflowInstanceId': workflowInstanceId.toJson(),
      'eventType': eventType,
      'timestamp': timestamp.toJson(),
      if (nodeId != null) 'nodeId': nodeId,
      if (userTaskId != null) 'userTaskId': userTaskId?.toJson(),
      if (tokenId != null) 'tokenId': tokenId,
      if (userId != null) 'userId': userId?.toJson(),
      'data': data,
      'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogWorkflowEvents',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'workflowInstanceId': workflowInstanceId.toJson(),
      'eventType': eventType,
      'timestamp': timestamp.toJson(),
      if (nodeId != null) 'nodeId': nodeId,
      if (userTaskId != null) 'userTaskId': userTaskId?.toJson(),
      if (tokenId != null) 'tokenId': tokenId,
      if (userId != null) 'userId': userId?.toJson(),
      'data': data,
      'metadata': metadata,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogWorkflowEventsImpl extends ElogWorkflowEvents {
  _ElogWorkflowEventsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required _isc.UuidValue workflowInstanceId,
    required String eventType,
    required DateTime timestamp,
    String? nodeId,
    _isc.UuidValue? userTaskId,
    String? tokenId,
    _isc.UuidValue? userId,
    required String data,
    required String metadata,
  }) : super._(
         id: id,
         idField: idField,
         workflowInstanceId: workflowInstanceId,
         eventType: eventType,
         timestamp: timestamp,
         nodeId: nodeId,
         userTaskId: userTaskId,
         tokenId: tokenId,
         userId: userId,
         data: data,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [ElogWorkflowEvents]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogWorkflowEvents copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? idField,
    _isc.UuidValue? workflowInstanceId,
    String? eventType,
    DateTime? timestamp,
    Object? nodeId = _Undefined,
    Object? userTaskId = _Undefined,
    Object? tokenId = _Undefined,
    Object? userId = _Undefined,
    String? data,
    String? metadata,
  }) {
    return ElogWorkflowEvents(
      id: id is _isc.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      workflowInstanceId: workflowInstanceId ?? this.workflowInstanceId,
      eventType: eventType ?? this.eventType,
      timestamp: timestamp ?? this.timestamp,
      nodeId: nodeId is String? ? nodeId : this.nodeId,
      userTaskId: userTaskId is _isc.UuidValue? ? userTaskId : this.userTaskId,
      tokenId: tokenId is String? ? tokenId : this.tokenId,
      userId: userId is _isc.UuidValue? ? userId : this.userId,
      data: data ?? this.data,
      metadata: metadata ?? this.metadata,
    );
  }
}
