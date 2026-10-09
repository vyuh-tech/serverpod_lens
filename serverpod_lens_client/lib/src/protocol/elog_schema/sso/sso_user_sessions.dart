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

abstract class SsoUserSessions
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoUserSessions._({
    this.id,
    required this.userId,
    required this.sessionToken,
    this.authSessionId,
    this.deviceLabel,
    this.userAgent,
    this.ipAddress,
    required this.createdAt,
    required this.lastActiveAt,
    required this.inactivityTimeoutMinutes,
    this.policySiteId,
    this.inactivityEnabledAt,
    this.productCode,
    this.browserId,
    required this.browserSessionPolicy,
    this.deviceType,
    this.revokedAt,
    this.revokeReason,
  });

  factory SsoUserSessions({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required _isc.UuidValue sessionToken,
    _isc.UuidValue? authSessionId,
    String? deviceLabel,
    String? userAgent,
    String? ipAddress,
    required DateTime createdAt,
    required DateTime lastActiveAt,
    required int inactivityTimeoutMinutes,
    _isc.UuidValue? policySiteId,
    DateTime? inactivityEnabledAt,
    String? productCode,
    String? browserId,
    required String browserSessionPolicy,
    String? deviceType,
    DateTime? revokedAt,
    String? revokeReason,
  }) = _SsoUserSessionsImpl;

  factory SsoUserSessions.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoUserSessions(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      sessionToken: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['sessionToken'],
      ),
      authSessionId: jsonSerialization['authSessionId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['authSessionId'],
            ),
      deviceLabel: jsonSerialization['deviceLabel'] as String?,
      userAgent: jsonSerialization['userAgent'] as String?,
      ipAddress: jsonSerialization['ipAddress'] as String?,
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      lastActiveAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['lastActiveAt'],
      ),
      inactivityTimeoutMinutes:
          jsonSerialization['inactivityTimeoutMinutes'] as int,
      policySiteId: jsonSerialization['policySiteId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['policySiteId'],
            ),
      inactivityEnabledAt: jsonSerialization['inactivityEnabledAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['inactivityEnabledAt'],
            ),
      productCode: jsonSerialization['productCode'] as String?,
      browserId: jsonSerialization['browserId'] as String?,
      browserSessionPolicy: jsonSerialization['browserSessionPolicy'] as String,
      deviceType: jsonSerialization['deviceType'] as String?,
      revokedAt: jsonSerialization['revokedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['revokedAt']),
      revokeReason: jsonSerialization['revokeReason'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue userId;

  _isc.UuidValue sessionToken;

  _isc.UuidValue? authSessionId;

  String? deviceLabel;

  String? userAgent;

  String? ipAddress;

  DateTime createdAt;

  DateTime lastActiveAt;

  int inactivityTimeoutMinutes;

  _isc.UuidValue? policySiteId;

  DateTime? inactivityEnabledAt;

  String? productCode;

  String? browserId;

  String browserSessionPolicy;

  String? deviceType;

  DateTime? revokedAt;

  String? revokeReason;

  /// Returns a shallow copy of this [SsoUserSessions]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoUserSessions copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    _isc.UuidValue? sessionToken,
    _isc.UuidValue? authSessionId,
    String? deviceLabel,
    String? userAgent,
    String? ipAddress,
    DateTime? createdAt,
    DateTime? lastActiveAt,
    int? inactivityTimeoutMinutes,
    _isc.UuidValue? policySiteId,
    DateTime? inactivityEnabledAt,
    String? productCode,
    String? browserId,
    String? browserSessionPolicy,
    String? deviceType,
    DateTime? revokedAt,
    String? revokeReason,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoUserSessions',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'sessionToken': sessionToken.toJson(),
      if (authSessionId != null) 'authSessionId': authSessionId?.toJson(),
      if (deviceLabel != null) 'deviceLabel': deviceLabel,
      if (userAgent != null) 'userAgent': userAgent,
      if (ipAddress != null) 'ipAddress': ipAddress,
      'createdAt': createdAt.toJson(),
      'lastActiveAt': lastActiveAt.toJson(),
      'inactivityTimeoutMinutes': inactivityTimeoutMinutes,
      if (policySiteId != null) 'policySiteId': policySiteId?.toJson(),
      if (inactivityEnabledAt != null)
        'inactivityEnabledAt': inactivityEnabledAt?.toJson(),
      if (productCode != null) 'productCode': productCode,
      if (browserId != null) 'browserId': browserId,
      'browserSessionPolicy': browserSessionPolicy,
      if (deviceType != null) 'deviceType': deviceType,
      if (revokedAt != null) 'revokedAt': revokedAt?.toJson(),
      if (revokeReason != null) 'revokeReason': revokeReason,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoUserSessions',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'sessionToken': sessionToken.toJson(),
      if (authSessionId != null) 'authSessionId': authSessionId?.toJson(),
      if (deviceLabel != null) 'deviceLabel': deviceLabel,
      if (userAgent != null) 'userAgent': userAgent,
      if (ipAddress != null) 'ipAddress': ipAddress,
      'createdAt': createdAt.toJson(),
      'lastActiveAt': lastActiveAt.toJson(),
      'inactivityTimeoutMinutes': inactivityTimeoutMinutes,
      if (policySiteId != null) 'policySiteId': policySiteId?.toJson(),
      if (inactivityEnabledAt != null)
        'inactivityEnabledAt': inactivityEnabledAt?.toJson(),
      if (productCode != null) 'productCode': productCode,
      if (browserId != null) 'browserId': browserId,
      'browserSessionPolicy': browserSessionPolicy,
      if (deviceType != null) 'deviceType': deviceType,
      if (revokedAt != null) 'revokedAt': revokedAt?.toJson(),
      if (revokeReason != null) 'revokeReason': revokeReason,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoUserSessionsImpl extends SsoUserSessions {
  _SsoUserSessionsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required _isc.UuidValue sessionToken,
    _isc.UuidValue? authSessionId,
    String? deviceLabel,
    String? userAgent,
    String? ipAddress,
    required DateTime createdAt,
    required DateTime lastActiveAt,
    required int inactivityTimeoutMinutes,
    _isc.UuidValue? policySiteId,
    DateTime? inactivityEnabledAt,
    String? productCode,
    String? browserId,
    required String browserSessionPolicy,
    String? deviceType,
    DateTime? revokedAt,
    String? revokeReason,
  }) : super._(
         id: id,
         userId: userId,
         sessionToken: sessionToken,
         authSessionId: authSessionId,
         deviceLabel: deviceLabel,
         userAgent: userAgent,
         ipAddress: ipAddress,
         createdAt: createdAt,
         lastActiveAt: lastActiveAt,
         inactivityTimeoutMinutes: inactivityTimeoutMinutes,
         policySiteId: policySiteId,
         inactivityEnabledAt: inactivityEnabledAt,
         productCode: productCode,
         browserId: browserId,
         browserSessionPolicy: browserSessionPolicy,
         deviceType: deviceType,
         revokedAt: revokedAt,
         revokeReason: revokeReason,
       );

  /// Returns a shallow copy of this [SsoUserSessions]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoUserSessions copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? userId,
    _isc.UuidValue? sessionToken,
    Object? authSessionId = _Undefined,
    Object? deviceLabel = _Undefined,
    Object? userAgent = _Undefined,
    Object? ipAddress = _Undefined,
    DateTime? createdAt,
    DateTime? lastActiveAt,
    int? inactivityTimeoutMinutes,
    Object? policySiteId = _Undefined,
    Object? inactivityEnabledAt = _Undefined,
    Object? productCode = _Undefined,
    Object? browserId = _Undefined,
    String? browserSessionPolicy,
    Object? deviceType = _Undefined,
    Object? revokedAt = _Undefined,
    Object? revokeReason = _Undefined,
  }) {
    return SsoUserSessions(
      id: id is _isc.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      sessionToken: sessionToken ?? this.sessionToken,
      authSessionId: authSessionId is _isc.UuidValue?
          ? authSessionId
          : this.authSessionId,
      deviceLabel: deviceLabel is String? ? deviceLabel : this.deviceLabel,
      userAgent: userAgent is String? ? userAgent : this.userAgent,
      ipAddress: ipAddress is String? ? ipAddress : this.ipAddress,
      createdAt: createdAt ?? this.createdAt,
      lastActiveAt: lastActiveAt ?? this.lastActiveAt,
      inactivityTimeoutMinutes:
          inactivityTimeoutMinutes ?? this.inactivityTimeoutMinutes,
      policySiteId: policySiteId is _isc.UuidValue?
          ? policySiteId
          : this.policySiteId,
      inactivityEnabledAt: inactivityEnabledAt is DateTime?
          ? inactivityEnabledAt
          : this.inactivityEnabledAt,
      productCode: productCode is String? ? productCode : this.productCode,
      browserId: browserId is String? ? browserId : this.browserId,
      browserSessionPolicy: browserSessionPolicy ?? this.browserSessionPolicy,
      deviceType: deviceType is String? ? deviceType : this.deviceType,
      revokedAt: revokedAt is DateTime? ? revokedAt : this.revokedAt,
      revokeReason: revokeReason is String? ? revokeReason : this.revokeReason,
    );
  }
}
