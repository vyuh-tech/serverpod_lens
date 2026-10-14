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

abstract class ElogExternalIntegrations
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogExternalIntegrations._({
    this.id,
    required this.code,
    required this.name,
    required this.label,
    this.description,
    required this.isActive,
    required this.configuration,
    this.lastStatus,
    this.lastHttpStatus,
    this.lastError,
    this.lastRequestPayload,
    this.lastResponseBody,
    this.lastAttemptedAt,
    required this.updatedAt,
  });

  factory ElogExternalIntegrations({
    _isc.UuidValue? id,
    required String code,
    required String name,
    required String label,
    String? description,
    required bool isActive,
    required String configuration,
    String? lastStatus,
    int? lastHttpStatus,
    String? lastError,
    String? lastRequestPayload,
    String? lastResponseBody,
    DateTime? lastAttemptedAt,
    required DateTime updatedAt,
  }) = _ElogExternalIntegrationsImpl;

  factory ElogExternalIntegrations.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogExternalIntegrations(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      label: jsonSerialization['label'] as String,
      description: jsonSerialization['description'] as String?,
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      configuration: jsonSerialization['configuration'] as String,
      lastStatus: jsonSerialization['lastStatus'] as String?,
      lastHttpStatus: jsonSerialization['lastHttpStatus'] as int?,
      lastError: jsonSerialization['lastError'] as String?,
      lastRequestPayload: jsonSerialization['lastRequestPayload'] as String?,
      lastResponseBody: jsonSerialization['lastResponseBody'] as String?,
      lastAttemptedAt: jsonSerialization['lastAttemptedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastAttemptedAt'],
            ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String label;

  String? description;

  bool isActive;

  String configuration;

  String? lastStatus;

  int? lastHttpStatus;

  String? lastError;

  String? lastRequestPayload;

  String? lastResponseBody;

  DateTime? lastAttemptedAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [ElogExternalIntegrations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogExternalIntegrations copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? label,
    String? description,
    bool? isActive,
    String? configuration,
    String? lastStatus,
    int? lastHttpStatus,
    String? lastError,
    String? lastRequestPayload,
    String? lastResponseBody,
    DateTime? lastAttemptedAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogExternalIntegrations',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      'label': label,
      if (description != null) 'description': description,
      'isActive': isActive,
      'configuration': configuration,
      if (lastStatus != null) 'lastStatus': lastStatus,
      if (lastHttpStatus != null) 'lastHttpStatus': lastHttpStatus,
      if (lastError != null) 'lastError': lastError,
      if (lastRequestPayload != null) 'lastRequestPayload': lastRequestPayload,
      if (lastResponseBody != null) 'lastResponseBody': lastResponseBody,
      if (lastAttemptedAt != null) 'lastAttemptedAt': lastAttemptedAt?.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogExternalIntegrations',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      'label': label,
      if (description != null) 'description': description,
      'isActive': isActive,
      'configuration': configuration,
      if (lastStatus != null) 'lastStatus': lastStatus,
      if (lastHttpStatus != null) 'lastHttpStatus': lastHttpStatus,
      if (lastError != null) 'lastError': lastError,
      if (lastRequestPayload != null) 'lastRequestPayload': lastRequestPayload,
      if (lastResponseBody != null) 'lastResponseBody': lastResponseBody,
      if (lastAttemptedAt != null) 'lastAttemptedAt': lastAttemptedAt?.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogExternalIntegrationsImpl extends ElogExternalIntegrations {
  _ElogExternalIntegrationsImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    required String label,
    String? description,
    required bool isActive,
    required String configuration,
    String? lastStatus,
    int? lastHttpStatus,
    String? lastError,
    String? lastRequestPayload,
    String? lastResponseBody,
    DateTime? lastAttemptedAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         code: code,
         name: name,
         label: label,
         description: description,
         isActive: isActive,
         configuration: configuration,
         lastStatus: lastStatus,
         lastHttpStatus: lastHttpStatus,
         lastError: lastError,
         lastRequestPayload: lastRequestPayload,
         lastResponseBody: lastResponseBody,
         lastAttemptedAt: lastAttemptedAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [ElogExternalIntegrations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogExternalIntegrations copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    String? label,
    Object? description = _Undefined,
    bool? isActive,
    String? configuration,
    Object? lastStatus = _Undefined,
    Object? lastHttpStatus = _Undefined,
    Object? lastError = _Undefined,
    Object? lastRequestPayload = _Undefined,
    Object? lastResponseBody = _Undefined,
    Object? lastAttemptedAt = _Undefined,
    DateTime? updatedAt,
  }) {
    return ElogExternalIntegrations(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      label: label ?? this.label,
      description: description is String? ? description : this.description,
      isActive: isActive ?? this.isActive,
      configuration: configuration ?? this.configuration,
      lastStatus: lastStatus is String? ? lastStatus : this.lastStatus,
      lastHttpStatus: lastHttpStatus is int?
          ? lastHttpStatus
          : this.lastHttpStatus,
      lastError: lastError is String? ? lastError : this.lastError,
      lastRequestPayload: lastRequestPayload is String?
          ? lastRequestPayload
          : this.lastRequestPayload,
      lastResponseBody: lastResponseBody is String?
          ? lastResponseBody
          : this.lastResponseBody,
      lastAttemptedAt: lastAttemptedAt is DateTime?
          ? lastAttemptedAt
          : this.lastAttemptedAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
