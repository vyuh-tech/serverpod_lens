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
abstract class CampusResearchDataset
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusResearchDataset._({
    this.id,
    required this.projectId,
    required this.title,
    required this.resourceUrl,
    required this.licence,
    required this.publicAccess,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResearchDataset({
    _isc.UuidValue? id,
    required _isc.UuidValue projectId,
    required String title,
    required String resourceUrl,
    required String licence,
    required bool publicAccess,
    DateTime? createdAt,
  }) = _CampusResearchDatasetImpl;

  factory CampusResearchDataset.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusResearchDataset(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      projectId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['projectId'],
      ),
      title: jsonSerialization['title'] as String,
      resourceUrl: jsonSerialization['resourceUrl'] as String,
      licence: jsonSerialization['licence'] as String,
      publicAccess: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['publicAccess'],
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

  _isc.UuidValue projectId;

  String title;

  String resourceUrl;

  String licence;

  bool publicAccess;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusResearchDataset]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusResearchDataset copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? projectId,
    String? title,
    String? resourceUrl,
    String? licence,
    bool? publicAccess,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResearchDataset',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'title': title,
      'resourceUrl': resourceUrl,
      'licence': licence,
      'publicAccess': publicAccess,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResearchDataset',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'title': title,
      'resourceUrl': resourceUrl,
      'licence': licence,
      'publicAccess': publicAccess,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusResearchDatasetImpl extends CampusResearchDataset {
  _CampusResearchDatasetImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue projectId,
    required String title,
    required String resourceUrl,
    required String licence,
    required bool publicAccess,
    DateTime? createdAt,
  }) : super._(
         id: id,
         projectId: projectId,
         title: title,
         resourceUrl: resourceUrl,
         licence: licence,
         publicAccess: publicAccess,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResearchDataset]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusResearchDataset copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? projectId,
    String? title,
    String? resourceUrl,
    String? licence,
    bool? publicAccess,
    DateTime? createdAt,
  }) {
    return CampusResearchDataset(
      id: id is _isc.UuidValue? ? id : this.id,
      projectId: projectId ?? this.projectId,
      title: title ?? this.title,
      resourceUrl: resourceUrl ?? this.resourceUrl,
      licence: licence ?? this.licence,
      publicAccess: publicAccess ?? this.publicAccess,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
