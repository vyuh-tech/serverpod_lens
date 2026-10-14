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

abstract class ElogLogUsages
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogLogUsages._({
    this.id,
    required this.logTemplateId,
    this.title,
    required this.data,
    required this.status,
    this.resourceType,
    this.resourceId,
    this.logTemplateVersionNumber,
    this.lockedBy,
    this.lockedAt,
  });

  factory ElogLogUsages({
    _isc.UuidValue? id,
    required _isc.UuidValue logTemplateId,
    String? title,
    required String data,
    required String status,
    String? resourceType,
    _isc.UuidValue? resourceId,
    int? logTemplateVersionNumber,
    _isc.UuidValue? lockedBy,
    DateTime? lockedAt,
  }) = _ElogLogUsagesImpl;

  factory ElogLogUsages.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogLogUsages(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      logTemplateId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['logTemplateId'],
      ),
      title: jsonSerialization['title'] as String?,
      data: jsonSerialization['data'] as String,
      status: jsonSerialization['status'] as String,
      resourceType: jsonSerialization['resourceType'] as String?,
      resourceId: jsonSerialization['resourceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['resourceId'],
            ),
      logTemplateVersionNumber:
          jsonSerialization['logTemplateVersionNumber'] as int?,
      lockedBy: jsonSerialization['lockedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['lockedBy']),
      lockedAt: jsonSerialization['lockedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['lockedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue logTemplateId;

  String? title;

  String data;

  String status;

  String? resourceType;

  _isc.UuidValue? resourceId;

  int? logTemplateVersionNumber;

  _isc.UuidValue? lockedBy;

  DateTime? lockedAt;

  /// Returns a shallow copy of this [ElogLogUsages]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogLogUsages copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? logTemplateId,
    String? title,
    String? data,
    String? status,
    String? resourceType,
    _isc.UuidValue? resourceId,
    int? logTemplateVersionNumber,
    _isc.UuidValue? lockedBy,
    DateTime? lockedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogLogUsages',
      if (id != null) 'id': id?.toJson(),
      'logTemplateId': logTemplateId.toJson(),
      if (title != null) 'title': title,
      'data': data,
      'status': status,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (logTemplateVersionNumber != null)
        'logTemplateVersionNumber': logTemplateVersionNumber,
      if (lockedBy != null) 'lockedBy': lockedBy?.toJson(),
      if (lockedAt != null) 'lockedAt': lockedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogLogUsages',
      if (id != null) 'id': id?.toJson(),
      'logTemplateId': logTemplateId.toJson(),
      if (title != null) 'title': title,
      'data': data,
      'status': status,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId?.toJson(),
      if (logTemplateVersionNumber != null)
        'logTemplateVersionNumber': logTemplateVersionNumber,
      if (lockedBy != null) 'lockedBy': lockedBy?.toJson(),
      if (lockedAt != null) 'lockedAt': lockedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogLogUsagesImpl extends ElogLogUsages {
  _ElogLogUsagesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue logTemplateId,
    String? title,
    required String data,
    required String status,
    String? resourceType,
    _isc.UuidValue? resourceId,
    int? logTemplateVersionNumber,
    _isc.UuidValue? lockedBy,
    DateTime? lockedAt,
  }) : super._(
         id: id,
         logTemplateId: logTemplateId,
         title: title,
         data: data,
         status: status,
         resourceType: resourceType,
         resourceId: resourceId,
         logTemplateVersionNumber: logTemplateVersionNumber,
         lockedBy: lockedBy,
         lockedAt: lockedAt,
       );

  /// Returns a shallow copy of this [ElogLogUsages]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogLogUsages copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? logTemplateId,
    Object? title = _Undefined,
    String? data,
    String? status,
    Object? resourceType = _Undefined,
    Object? resourceId = _Undefined,
    Object? logTemplateVersionNumber = _Undefined,
    Object? lockedBy = _Undefined,
    Object? lockedAt = _Undefined,
  }) {
    return ElogLogUsages(
      id: id is _isc.UuidValue? ? id : this.id,
      logTemplateId: logTemplateId ?? this.logTemplateId,
      title: title is String? ? title : this.title,
      data: data ?? this.data,
      status: status ?? this.status,
      resourceType: resourceType is String? ? resourceType : this.resourceType,
      resourceId: resourceId is _isc.UuidValue? ? resourceId : this.resourceId,
      logTemplateVersionNumber: logTemplateVersionNumber is int?
          ? logTemplateVersionNumber
          : this.logTemplateVersionNumber,
      lockedBy: lockedBy is _isc.UuidValue? ? lockedBy : this.lockedBy,
      lockedAt: lockedAt is DateTime? ? lockedAt : this.lockedAt,
    );
  }
}
