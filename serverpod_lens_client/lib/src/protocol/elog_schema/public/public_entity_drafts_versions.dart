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

abstract class PublicEntityDraftsVersions
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PublicEntityDraftsVersions._({
    this.id,
    required this.draftId,
    required this.draftVersion,
    required this.entityData,
    this.createdAt,
    this.createdBy,
  });

  factory PublicEntityDraftsVersions({
    _isc.UuidValue? id,
    required _isc.UuidValue draftId,
    required int draftVersion,
    required String entityData,
    DateTime? createdAt,
    _isc.UuidValue? createdBy,
  }) = _PublicEntityDraftsVersionsImpl;

  factory PublicEntityDraftsVersions.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return PublicEntityDraftsVersions(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      draftId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['draftId'],
      ),
      draftVersion: jsonSerialization['draftVersion'] as int,
      entityData: jsonSerialization['entityData'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['createdBy'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue draftId;

  int draftVersion;

  String entityData;

  DateTime? createdAt;

  _isc.UuidValue? createdBy;

  /// Returns a shallow copy of this [PublicEntityDraftsVersions]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PublicEntityDraftsVersions copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? draftId,
    int? draftVersion,
    String? entityData,
    DateTime? createdAt,
    _isc.UuidValue? createdBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicEntityDraftsVersions',
      if (id != null) 'id': id?.toJson(),
      'draftId': draftId.toJson(),
      'draftVersion': draftVersion,
      'entityData': entityData,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicEntityDraftsVersions',
      if (id != null) 'id': id?.toJson(),
      'draftId': draftId.toJson(),
      'draftVersion': draftVersion,
      'entityData': entityData,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicEntityDraftsVersionsImpl extends PublicEntityDraftsVersions {
  _PublicEntityDraftsVersionsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue draftId,
    required int draftVersion,
    required String entityData,
    DateTime? createdAt,
    _isc.UuidValue? createdBy,
  }) : super._(
         id: id,
         draftId: draftId,
         draftVersion: draftVersion,
         entityData: entityData,
         createdAt: createdAt,
         createdBy: createdBy,
       );

  /// Returns a shallow copy of this [PublicEntityDraftsVersions]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PublicEntityDraftsVersions copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? draftId,
    int? draftVersion,
    String? entityData,
    Object? createdAt = _Undefined,
    Object? createdBy = _Undefined,
  }) {
    return PublicEntityDraftsVersions(
      id: id is _isc.UuidValue? ? id : this.id,
      draftId: draftId ?? this.draftId,
      draftVersion: draftVersion ?? this.draftVersion,
      entityData: entityData ?? this.entityData,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
    );
  }
}
