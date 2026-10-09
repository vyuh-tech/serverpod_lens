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

abstract class PublicPublic
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PublicPublic._({
    this.id,
    required this.relationshipTable,
    this.relationshipId,
    required this.subjectEntity,
    required this.subjectId,
    required this.objectEntity,
    required this.objectId,
    required this.action,
    this.performedBy,
    required this.performedAt,
    this.companyId,
    this.siteId,
    this.beforeState,
    this.afterState,
    this.fieldChanges,
    this.reason,
    this.signatureId,
  });

  factory PublicPublic({
    _isc.UuidValue? id,
    required String relationshipTable,
    _isc.UuidValue? relationshipId,
    required String subjectEntity,
    required _isc.UuidValue subjectId,
    required String objectEntity,
    required _isc.UuidValue objectId,
    required String action,
    _isc.UuidValue? performedBy,
    required DateTime performedAt,
    _isc.UuidValue? companyId,
    _isc.UuidValue? siteId,
    String? beforeState,
    String? afterState,
    String? fieldChanges,
    String? reason,
    _isc.UuidValue? signatureId,
  }) = _PublicPublicImpl;

  factory PublicPublic.fromJson(Map<String, dynamic> jsonSerialization) {
    return PublicPublic(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      relationshipTable: jsonSerialization['relationshipTable'] as String,
      relationshipId: jsonSerialization['relationshipId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['relationshipId'],
            ),
      subjectEntity: jsonSerialization['subjectEntity'] as String,
      subjectId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['subjectId'],
      ),
      objectEntity: jsonSerialization['objectEntity'] as String,
      objectId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['objectId'],
      ),
      action: jsonSerialization['action'] as String,
      performedBy: jsonSerialization['performedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['performedBy'],
            ),
      performedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['performedAt'],
      ),
      companyId: jsonSerialization['companyId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['companyId'],
            ),
      siteId: jsonSerialization['siteId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['siteId']),
      beforeState: jsonSerialization['beforeState'] as String?,
      afterState: jsonSerialization['afterState'] as String?,
      fieldChanges: jsonSerialization['fieldChanges'] as String?,
      reason: jsonSerialization['reason'] as String?,
      signatureId: jsonSerialization['signatureId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['signatureId'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String relationshipTable;

  _isc.UuidValue? relationshipId;

  String subjectEntity;

  _isc.UuidValue subjectId;

  String objectEntity;

  _isc.UuidValue objectId;

  String action;

  _isc.UuidValue? performedBy;

  DateTime performedAt;

  _isc.UuidValue? companyId;

  _isc.UuidValue? siteId;

  String? beforeState;

  String? afterState;

  String? fieldChanges;

  String? reason;

  _isc.UuidValue? signatureId;

  /// Returns a shallow copy of this [PublicPublic]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PublicPublic copyWith({
    _isc.UuidValue? id,
    String? relationshipTable,
    _isc.UuidValue? relationshipId,
    String? subjectEntity,
    _isc.UuidValue? subjectId,
    String? objectEntity,
    _isc.UuidValue? objectId,
    String? action,
    _isc.UuidValue? performedBy,
    DateTime? performedAt,
    _isc.UuidValue? companyId,
    _isc.UuidValue? siteId,
    String? beforeState,
    String? afterState,
    String? fieldChanges,
    String? reason,
    _isc.UuidValue? signatureId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicPublic',
      if (id != null) 'id': id?.toJson(),
      'relationshipTable': relationshipTable,
      if (relationshipId != null) 'relationshipId': relationshipId?.toJson(),
      'subjectEntity': subjectEntity,
      'subjectId': subjectId.toJson(),
      'objectEntity': objectEntity,
      'objectId': objectId.toJson(),
      'action': action,
      if (performedBy != null) 'performedBy': performedBy?.toJson(),
      'performedAt': performedAt.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (siteId != null) 'siteId': siteId?.toJson(),
      if (beforeState != null) 'beforeState': beforeState,
      if (afterState != null) 'afterState': afterState,
      if (fieldChanges != null) 'fieldChanges': fieldChanges,
      if (reason != null) 'reason': reason,
      if (signatureId != null) 'signatureId': signatureId?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicPublic',
      if (id != null) 'id': id?.toJson(),
      'relationshipTable': relationshipTable,
      if (relationshipId != null) 'relationshipId': relationshipId?.toJson(),
      'subjectEntity': subjectEntity,
      'subjectId': subjectId.toJson(),
      'objectEntity': objectEntity,
      'objectId': objectId.toJson(),
      'action': action,
      if (performedBy != null) 'performedBy': performedBy?.toJson(),
      'performedAt': performedAt.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (siteId != null) 'siteId': siteId?.toJson(),
      if (beforeState != null) 'beforeState': beforeState,
      if (afterState != null) 'afterState': afterState,
      if (fieldChanges != null) 'fieldChanges': fieldChanges,
      if (reason != null) 'reason': reason,
      if (signatureId != null) 'signatureId': signatureId?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicPublicImpl extends PublicPublic {
  _PublicPublicImpl({
    _isc.UuidValue? id,
    required String relationshipTable,
    _isc.UuidValue? relationshipId,
    required String subjectEntity,
    required _isc.UuidValue subjectId,
    required String objectEntity,
    required _isc.UuidValue objectId,
    required String action,
    _isc.UuidValue? performedBy,
    required DateTime performedAt,
    _isc.UuidValue? companyId,
    _isc.UuidValue? siteId,
    String? beforeState,
    String? afterState,
    String? fieldChanges,
    String? reason,
    _isc.UuidValue? signatureId,
  }) : super._(
         id: id,
         relationshipTable: relationshipTable,
         relationshipId: relationshipId,
         subjectEntity: subjectEntity,
         subjectId: subjectId,
         objectEntity: objectEntity,
         objectId: objectId,
         action: action,
         performedBy: performedBy,
         performedAt: performedAt,
         companyId: companyId,
         siteId: siteId,
         beforeState: beforeState,
         afterState: afterState,
         fieldChanges: fieldChanges,
         reason: reason,
         signatureId: signatureId,
       );

  /// Returns a shallow copy of this [PublicPublic]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PublicPublic copyWith({
    Object? id = _Undefined,
    String? relationshipTable,
    Object? relationshipId = _Undefined,
    String? subjectEntity,
    _isc.UuidValue? subjectId,
    String? objectEntity,
    _isc.UuidValue? objectId,
    String? action,
    Object? performedBy = _Undefined,
    DateTime? performedAt,
    Object? companyId = _Undefined,
    Object? siteId = _Undefined,
    Object? beforeState = _Undefined,
    Object? afterState = _Undefined,
    Object? fieldChanges = _Undefined,
    Object? reason = _Undefined,
    Object? signatureId = _Undefined,
  }) {
    return PublicPublic(
      id: id is _isc.UuidValue? ? id : this.id,
      relationshipTable: relationshipTable ?? this.relationshipTable,
      relationshipId: relationshipId is _isc.UuidValue?
          ? relationshipId
          : this.relationshipId,
      subjectEntity: subjectEntity ?? this.subjectEntity,
      subjectId: subjectId ?? this.subjectId,
      objectEntity: objectEntity ?? this.objectEntity,
      objectId: objectId ?? this.objectId,
      action: action ?? this.action,
      performedBy: performedBy is _isc.UuidValue?
          ? performedBy
          : this.performedBy,
      performedAt: performedAt ?? this.performedAt,
      companyId: companyId is _isc.UuidValue? ? companyId : this.companyId,
      siteId: siteId is _isc.UuidValue? ? siteId : this.siteId,
      beforeState: beforeState is String? ? beforeState : this.beforeState,
      afterState: afterState is String? ? afterState : this.afterState,
      fieldChanges: fieldChanges is String? ? fieldChanges : this.fieldChanges,
      reason: reason is String? ? reason : this.reason,
      signatureId: signatureId is _isc.UuidValue?
          ? signatureId
          : this.signatureId,
    );
  }
}
