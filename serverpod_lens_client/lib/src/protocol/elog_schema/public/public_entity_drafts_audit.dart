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

abstract class PublicEntityDraftsAudit
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PublicEntityDraftsAudit._({
    this.id,
    required this.draftId,
    required this.action,
    this.draftVersion,
    this.previousData,
    this.newData,
    this.reason,
    this.performedAt,
    this.performedBy,
  });

  factory PublicEntityDraftsAudit({
    _isc.UuidValue? id,
    required _isc.UuidValue draftId,
    required String action,
    int? draftVersion,
    String? previousData,
    String? newData,
    String? reason,
    DateTime? performedAt,
    _isc.UuidValue? performedBy,
  }) = _PublicEntityDraftsAuditImpl;

  factory PublicEntityDraftsAudit.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return PublicEntityDraftsAudit(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      draftId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['draftId'],
      ),
      action: jsonSerialization['action'] as String,
      draftVersion: jsonSerialization['draftVersion'] as int?,
      previousData: jsonSerialization['previousData'] as String?,
      newData: jsonSerialization['newData'] as String?,
      reason: jsonSerialization['reason'] as String?,
      performedAt: jsonSerialization['performedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['performedAt'],
            ),
      performedBy: jsonSerialization['performedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['performedBy'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue draftId;

  String action;

  int? draftVersion;

  String? previousData;

  String? newData;

  String? reason;

  DateTime? performedAt;

  _isc.UuidValue? performedBy;

  /// Returns a shallow copy of this [PublicEntityDraftsAudit]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PublicEntityDraftsAudit copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? draftId,
    String? action,
    int? draftVersion,
    String? previousData,
    String? newData,
    String? reason,
    DateTime? performedAt,
    _isc.UuidValue? performedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicEntityDraftsAudit',
      if (id != null) 'id': id?.toJson(),
      'draftId': draftId.toJson(),
      'action': action,
      if (draftVersion != null) 'draftVersion': draftVersion,
      if (previousData != null) 'previousData': previousData,
      if (newData != null) 'newData': newData,
      if (reason != null) 'reason': reason,
      if (performedAt != null) 'performedAt': performedAt?.toJson(),
      if (performedBy != null) 'performedBy': performedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicEntityDraftsAudit',
      if (id != null) 'id': id?.toJson(),
      'draftId': draftId.toJson(),
      'action': action,
      if (draftVersion != null) 'draftVersion': draftVersion,
      if (previousData != null) 'previousData': previousData,
      if (newData != null) 'newData': newData,
      if (reason != null) 'reason': reason,
      if (performedAt != null) 'performedAt': performedAt?.toJson(),
      if (performedBy != null) 'performedBy': performedBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicEntityDraftsAuditImpl extends PublicEntityDraftsAudit {
  _PublicEntityDraftsAuditImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue draftId,
    required String action,
    int? draftVersion,
    String? previousData,
    String? newData,
    String? reason,
    DateTime? performedAt,
    _isc.UuidValue? performedBy,
  }) : super._(
         id: id,
         draftId: draftId,
         action: action,
         draftVersion: draftVersion,
         previousData: previousData,
         newData: newData,
         reason: reason,
         performedAt: performedAt,
         performedBy: performedBy,
       );

  /// Returns a shallow copy of this [PublicEntityDraftsAudit]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PublicEntityDraftsAudit copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? draftId,
    String? action,
    Object? draftVersion = _Undefined,
    Object? previousData = _Undefined,
    Object? newData = _Undefined,
    Object? reason = _Undefined,
    Object? performedAt = _Undefined,
    Object? performedBy = _Undefined,
  }) {
    return PublicEntityDraftsAudit(
      id: id is _isc.UuidValue? ? id : this.id,
      draftId: draftId ?? this.draftId,
      action: action ?? this.action,
      draftVersion: draftVersion is int? ? draftVersion : this.draftVersion,
      previousData: previousData is String? ? previousData : this.previousData,
      newData: newData is String? ? newData : this.newData,
      reason: reason is String? ? reason : this.reason,
      performedAt: performedAt is DateTime? ? performedAt : this.performedAt,
      performedBy: performedBy is _isc.UuidValue?
          ? performedBy
          : this.performedBy,
    );
  }
}
