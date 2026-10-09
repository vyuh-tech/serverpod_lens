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

abstract class SsoUserPasswordHistory
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoUserPasswordHistory._({
    this.id,
    required this.userId,
    required this.passwordHash,
    required this.changedAt,
    this.changedBy,
    required this.changeSource,
  });

  factory SsoUserPasswordHistory({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required String passwordHash,
    required DateTime changedAt,
    _isc.UuidValue? changedBy,
    required String changeSource,
  }) = _SsoUserPasswordHistoryImpl;

  factory SsoUserPasswordHistory.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return SsoUserPasswordHistory(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      passwordHash: jsonSerialization['passwordHash'] as String,
      changedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['changedAt'],
      ),
      changedBy: jsonSerialization['changedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['changedBy'],
            ),
      changeSource: jsonSerialization['changeSource'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue userId;

  String passwordHash;

  DateTime changedAt;

  _isc.UuidValue? changedBy;

  String changeSource;

  /// Returns a shallow copy of this [SsoUserPasswordHistory]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoUserPasswordHistory copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    String? passwordHash,
    DateTime? changedAt,
    _isc.UuidValue? changedBy,
    String? changeSource,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoUserPasswordHistory',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'passwordHash': passwordHash,
      'changedAt': changedAt.toJson(),
      if (changedBy != null) 'changedBy': changedBy?.toJson(),
      'changeSource': changeSource,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoUserPasswordHistory',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'passwordHash': passwordHash,
      'changedAt': changedAt.toJson(),
      if (changedBy != null) 'changedBy': changedBy?.toJson(),
      'changeSource': changeSource,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoUserPasswordHistoryImpl extends SsoUserPasswordHistory {
  _SsoUserPasswordHistoryImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required String passwordHash,
    required DateTime changedAt,
    _isc.UuidValue? changedBy,
    required String changeSource,
  }) : super._(
         id: id,
         userId: userId,
         passwordHash: passwordHash,
         changedAt: changedAt,
         changedBy: changedBy,
         changeSource: changeSource,
       );

  /// Returns a shallow copy of this [SsoUserPasswordHistory]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoUserPasswordHistory copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? userId,
    String? passwordHash,
    DateTime? changedAt,
    Object? changedBy = _Undefined,
    String? changeSource,
  }) {
    return SsoUserPasswordHistory(
      id: id is _isc.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      passwordHash: passwordHash ?? this.passwordHash,
      changedAt: changedAt ?? this.changedAt,
      changedBy: changedBy is _isc.UuidValue? ? changedBy : this.changedBy,
      changeSource: changeSource ?? this.changeSource,
    );
  }
}
