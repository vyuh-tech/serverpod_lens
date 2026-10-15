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
abstract class CampusProjectMilestone
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusProjectMilestone._({
    this.id,
    required this.projectId,
    required this.title,
    required this.dueAt,
    this.completedAt,
    this.parentId,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusProjectMilestone({
    _isc.UuidValue? id,
    required _isc.UuidValue projectId,
    required String title,
    required DateTime dueAt,
    DateTime? completedAt,
    _isc.UuidValue? parentId,
    DateTime? createdAt,
  }) = _CampusProjectMilestoneImpl;

  factory CampusProjectMilestone.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusProjectMilestone(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      projectId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['projectId'],
      ),
      title: jsonSerialization['title'] as String,
      dueAt: _isc.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      parentId: jsonSerialization['parentId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['parentId']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue projectId;

  String title;

  DateTime dueAt;

  DateTime? completedAt;

  _isc.UuidValue? parentId;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusProjectMilestone]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusProjectMilestone copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? projectId,
    String? title,
    DateTime? dueAt,
    DateTime? completedAt,
    _isc.UuidValue? parentId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusProjectMilestone',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'title': title,
      'dueAt': dueAt.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (parentId != null) 'parentId': parentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusProjectMilestone',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'title': title,
      'dueAt': dueAt.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (parentId != null) 'parentId': parentId?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusProjectMilestoneImpl extends CampusProjectMilestone {
  _CampusProjectMilestoneImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue projectId,
    required String title,
    required DateTime dueAt,
    DateTime? completedAt,
    _isc.UuidValue? parentId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         projectId: projectId,
         title: title,
         dueAt: dueAt,
         completedAt: completedAt,
         parentId: parentId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusProjectMilestone]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusProjectMilestone copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? projectId,
    String? title,
    DateTime? dueAt,
    Object? completedAt = _Undefined,
    Object? parentId = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusProjectMilestone(
      id: id is _isc.UuidValue? ? id : this.id,
      projectId: projectId ?? this.projectId,
      title: title ?? this.title,
      dueAt: dueAt ?? this.dueAt,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      parentId: parentId is _isc.UuidValue? ? parentId : this.parentId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
