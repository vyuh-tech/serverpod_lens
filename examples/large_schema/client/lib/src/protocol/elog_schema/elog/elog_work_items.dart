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
import 'package:serverpod_lens_client/src/protocol/protocol.dart' as _ixq89rj6;

abstract class ElogWorkItems
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogWorkItems._({
    this.id,
    required this.idField,
    required this.workflowInstanceId,
    required this.nodeId,
    required this.taskType,
    required this.title,
    this.description,
    required this.status,
    required this.assignedUserIds,
    required this.assignedGroupIds,
    required this.assignedRoleIds,
    this.signalName,
    required this.priority,
    this.dueAt,
    required this.input,
    required this.output,
    required this.metadata,
    this.completedBy,
    this.completedAt,
    required this.createdAt,
    required this.updatedAt,
    this.startedAt,
    this.createdBy,
    this.startedBy,
    this.updatedBy,
  });

  factory ElogWorkItems({
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required _isc.UuidValue workflowInstanceId,
    required String nodeId,
    required String taskType,
    required String title,
    String? description,
    required String status,
    required List<String> assignedUserIds,
    required List<String> assignedGroupIds,
    required List<String> assignedRoleIds,
    String? signalName,
    required String priority,
    DateTime? dueAt,
    required String input,
    required String output,
    required String metadata,
    _isc.UuidValue? completedBy,
    DateTime? completedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? startedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? startedBy,
    _isc.UuidValue? updatedBy,
  }) = _ElogWorkItemsImpl;

  factory ElogWorkItems.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogWorkItems(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      workflowInstanceId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['workflowInstanceId'],
      ),
      nodeId: jsonSerialization['nodeId'] as String,
      taskType: jsonSerialization['taskType'] as String,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String?,
      status: jsonSerialization['status'] as String,
      assignedUserIds: _ixq89rj6.Protocol().deserialize<List<String>>(
        jsonSerialization['assignedUserIds'],
      ),
      assignedGroupIds: _ixq89rj6.Protocol().deserialize<List<String>>(
        jsonSerialization['assignedGroupIds'],
      ),
      assignedRoleIds: _ixq89rj6.Protocol().deserialize<List<String>>(
        jsonSerialization['assignedRoleIds'],
      ),
      signalName: jsonSerialization['signalName'] as String?,
      priority: jsonSerialization['priority'] as String,
      dueAt: jsonSerialization['dueAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
      input: jsonSerialization['input'] as String,
      output: jsonSerialization['output'] as String,
      metadata: jsonSerialization['metadata'] as String,
      completedBy: jsonSerialization['completedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['completedBy'],
            ),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      startedAt: jsonSerialization['startedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['createdBy'],
            ),
      startedBy: jsonSerialization['startedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['startedBy'],
            ),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['updatedBy'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue idField;

  _isc.UuidValue workflowInstanceId;

  String nodeId;

  String taskType;

  String title;

  String? description;

  String status;

  List<String> assignedUserIds;

  List<String> assignedGroupIds;

  List<String> assignedRoleIds;

  String? signalName;

  String priority;

  DateTime? dueAt;

  String input;

  String output;

  String metadata;

  _isc.UuidValue? completedBy;

  DateTime? completedAt;

  DateTime createdAt;

  DateTime updatedAt;

  DateTime? startedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? startedBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [ElogWorkItems]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogWorkItems copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? idField,
    _isc.UuidValue? workflowInstanceId,
    String? nodeId,
    String? taskType,
    String? title,
    String? description,
    String? status,
    List<String>? assignedUserIds,
    List<String>? assignedGroupIds,
    List<String>? assignedRoleIds,
    String? signalName,
    String? priority,
    DateTime? dueAt,
    String? input,
    String? output,
    String? metadata,
    _isc.UuidValue? completedBy,
    DateTime? completedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? startedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? startedBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogWorkItems',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'workflowInstanceId': workflowInstanceId.toJson(),
      'nodeId': nodeId,
      'taskType': taskType,
      'title': title,
      if (description != null) 'description': description,
      'status': status,
      'assignedUserIds': assignedUserIds.toJson(),
      'assignedGroupIds': assignedGroupIds.toJson(),
      'assignedRoleIds': assignedRoleIds.toJson(),
      if (signalName != null) 'signalName': signalName,
      'priority': priority,
      if (dueAt != null) 'dueAt': dueAt?.toJson(),
      'input': input,
      'output': output,
      'metadata': metadata,
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (startedBy != null) 'startedBy': startedBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogWorkItems',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'workflowInstanceId': workflowInstanceId.toJson(),
      'nodeId': nodeId,
      'taskType': taskType,
      'title': title,
      if (description != null) 'description': description,
      'status': status,
      'assignedUserIds': assignedUserIds.toJson(),
      'assignedGroupIds': assignedGroupIds.toJson(),
      'assignedRoleIds': assignedRoleIds.toJson(),
      if (signalName != null) 'signalName': signalName,
      'priority': priority,
      if (dueAt != null) 'dueAt': dueAt?.toJson(),
      'input': input,
      'output': output,
      'metadata': metadata,
      if (completedBy != null) 'completedBy': completedBy?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (startedBy != null) 'startedBy': startedBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogWorkItemsImpl extends ElogWorkItems {
  _ElogWorkItemsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required _isc.UuidValue workflowInstanceId,
    required String nodeId,
    required String taskType,
    required String title,
    String? description,
    required String status,
    required List<String> assignedUserIds,
    required List<String> assignedGroupIds,
    required List<String> assignedRoleIds,
    String? signalName,
    required String priority,
    DateTime? dueAt,
    required String input,
    required String output,
    required String metadata,
    _isc.UuidValue? completedBy,
    DateTime? completedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? startedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? startedBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         idField: idField,
         workflowInstanceId: workflowInstanceId,
         nodeId: nodeId,
         taskType: taskType,
         title: title,
         description: description,
         status: status,
         assignedUserIds: assignedUserIds,
         assignedGroupIds: assignedGroupIds,
         assignedRoleIds: assignedRoleIds,
         signalName: signalName,
         priority: priority,
         dueAt: dueAt,
         input: input,
         output: output,
         metadata: metadata,
         completedBy: completedBy,
         completedAt: completedAt,
         createdAt: createdAt,
         updatedAt: updatedAt,
         startedAt: startedAt,
         createdBy: createdBy,
         startedBy: startedBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogWorkItems]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogWorkItems copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? idField,
    _isc.UuidValue? workflowInstanceId,
    String? nodeId,
    String? taskType,
    String? title,
    Object? description = _Undefined,
    String? status,
    List<String>? assignedUserIds,
    List<String>? assignedGroupIds,
    List<String>? assignedRoleIds,
    Object? signalName = _Undefined,
    String? priority,
    Object? dueAt = _Undefined,
    String? input,
    String? output,
    String? metadata,
    Object? completedBy = _Undefined,
    Object? completedAt = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? startedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? startedBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogWorkItems(
      id: id is _isc.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      workflowInstanceId: workflowInstanceId ?? this.workflowInstanceId,
      nodeId: nodeId ?? this.nodeId,
      taskType: taskType ?? this.taskType,
      title: title ?? this.title,
      description: description is String? ? description : this.description,
      status: status ?? this.status,
      assignedUserIds:
          assignedUserIds ?? this.assignedUserIds.map((e0) => e0).toList(),
      assignedGroupIds:
          assignedGroupIds ?? this.assignedGroupIds.map((e0) => e0).toList(),
      assignedRoleIds:
          assignedRoleIds ?? this.assignedRoleIds.map((e0) => e0).toList(),
      signalName: signalName is String? ? signalName : this.signalName,
      priority: priority ?? this.priority,
      dueAt: dueAt is DateTime? ? dueAt : this.dueAt,
      input: input ?? this.input,
      output: output ?? this.output,
      metadata: metadata ?? this.metadata,
      completedBy: completedBy is _isc.UuidValue?
          ? completedBy
          : this.completedBy,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      startedAt: startedAt is DateTime? ? startedAt : this.startedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      startedBy: startedBy is _isc.UuidValue? ? startedBy : this.startedBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
