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

abstract class SsoLoginEvents
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoLoginEvents._({
    this.id,
    required this.userId,
    required this.loggedInAt,
    this.ipAddress,
    this.userAgent,
  });

  factory SsoLoginEvents({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required DateTime loggedInAt,
    String? ipAddress,
    String? userAgent,
  }) = _SsoLoginEventsImpl;

  factory SsoLoginEvents.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoLoginEvents(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      loggedInAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['loggedInAt'],
      ),
      ipAddress: jsonSerialization['ipAddress'] as String?,
      userAgent: jsonSerialization['userAgent'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue userId;

  DateTime loggedInAt;

  String? ipAddress;

  String? userAgent;

  /// Returns a shallow copy of this [SsoLoginEvents]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoLoginEvents copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    DateTime? loggedInAt,
    String? ipAddress,
    String? userAgent,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoLoginEvents',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'loggedInAt': loggedInAt.toJson(),
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (userAgent != null) 'userAgent': userAgent,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoLoginEvents',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'loggedInAt': loggedInAt.toJson(),
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (userAgent != null) 'userAgent': userAgent,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoLoginEventsImpl extends SsoLoginEvents {
  _SsoLoginEventsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required DateTime loggedInAt,
    String? ipAddress,
    String? userAgent,
  }) : super._(
         id: id,
         userId: userId,
         loggedInAt: loggedInAt,
         ipAddress: ipAddress,
         userAgent: userAgent,
       );

  /// Returns a shallow copy of this [SsoLoginEvents]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoLoginEvents copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? userId,
    DateTime? loggedInAt,
    Object? ipAddress = _Undefined,
    Object? userAgent = _Undefined,
  }) {
    return SsoLoginEvents(
      id: id is _isc.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      loggedInAt: loggedInAt ?? this.loggedInAt,
      ipAddress: ipAddress is String? ? ipAddress : this.ipAddress,
      userAgent: userAgent is String? ? userAgent : this.userAgent,
    );
  }
}
