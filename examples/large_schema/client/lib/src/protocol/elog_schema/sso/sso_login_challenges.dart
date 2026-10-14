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

abstract class SsoLoginChallenges
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoLoginChallenges._({
    this.id,
    required this.challengeToken,
    required this.userId,
    required this.resolvedEmail,
    this.ipAddress,
    this.userAgent,
    required this.createdAt,
    required this.expiresAt,
  });

  factory SsoLoginChallenges({
    _isc.UuidValue? id,
    required _isc.UuidValue challengeToken,
    required _isc.UuidValue userId,
    required String resolvedEmail,
    String? ipAddress,
    String? userAgent,
    required DateTime createdAt,
    required DateTime expiresAt,
  }) = _SsoLoginChallengesImpl;

  factory SsoLoginChallenges.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoLoginChallenges(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      challengeToken: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['challengeToken'],
      ),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      resolvedEmail: jsonSerialization['resolvedEmail'] as String,
      ipAddress: jsonSerialization['ipAddress'] as String?,
      userAgent: jsonSerialization['userAgent'] as String?,
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      expiresAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['expiresAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue challengeToken;

  _isc.UuidValue userId;

  String resolvedEmail;

  String? ipAddress;

  String? userAgent;

  DateTime createdAt;

  DateTime expiresAt;

  /// Returns a shallow copy of this [SsoLoginChallenges]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoLoginChallenges copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? challengeToken,
    _isc.UuidValue? userId,
    String? resolvedEmail,
    String? ipAddress,
    String? userAgent,
    DateTime? createdAt,
    DateTime? expiresAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoLoginChallenges',
      if (id != null) 'id': id?.toJson(),
      'challengeToken': challengeToken.toJson(),
      'userId': userId.toJson(),
      'resolvedEmail': resolvedEmail,
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (userAgent != null) 'userAgent': userAgent,
      'createdAt': createdAt.toJson(),
      'expiresAt': expiresAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoLoginChallenges',
      if (id != null) 'id': id?.toJson(),
      'challengeToken': challengeToken.toJson(),
      'userId': userId.toJson(),
      'resolvedEmail': resolvedEmail,
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (userAgent != null) 'userAgent': userAgent,
      'createdAt': createdAt.toJson(),
      'expiresAt': expiresAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoLoginChallengesImpl extends SsoLoginChallenges {
  _SsoLoginChallengesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue challengeToken,
    required _isc.UuidValue userId,
    required String resolvedEmail,
    String? ipAddress,
    String? userAgent,
    required DateTime createdAt,
    required DateTime expiresAt,
  }) : super._(
         id: id,
         challengeToken: challengeToken,
         userId: userId,
         resolvedEmail: resolvedEmail,
         ipAddress: ipAddress,
         userAgent: userAgent,
         createdAt: createdAt,
         expiresAt: expiresAt,
       );

  /// Returns a shallow copy of this [SsoLoginChallenges]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoLoginChallenges copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? challengeToken,
    _isc.UuidValue? userId,
    String? resolvedEmail,
    Object? ipAddress = _Undefined,
    Object? userAgent = _Undefined,
    DateTime? createdAt,
    DateTime? expiresAt,
  }) {
    return SsoLoginChallenges(
      id: id is _isc.UuidValue? ? id : this.id,
      challengeToken: challengeToken ?? this.challengeToken,
      userId: userId ?? this.userId,
      resolvedEmail: resolvedEmail ?? this.resolvedEmail,
      ipAddress: ipAddress is String? ? ipAddress : this.ipAddress,
      userAgent: userAgent is String? ? userAgent : this.userAgent,
      createdAt: createdAt ?? this.createdAt,
      expiresAt: expiresAt ?? this.expiresAt,
    );
  }
}
