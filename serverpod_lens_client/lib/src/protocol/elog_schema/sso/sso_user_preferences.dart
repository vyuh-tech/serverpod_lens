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

abstract class SsoUserPreferences
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoUserPreferences._({
    this.id,
    required this.userId,
    required this.productCode,
    required this.data,
    required this.createdAt,
    required this.updatedAt,
  });

  factory SsoUserPreferences({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required String productCode,
    required String data,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SsoUserPreferencesImpl;

  factory SsoUserPreferences.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoUserPreferences(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      productCode: jsonSerialization['productCode'] as String,
      data: jsonSerialization['data'] as String,
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
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

  _isc.UuidValue userId;

  String productCode;

  String data;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [SsoUserPreferences]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoUserPreferences copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    String? productCode,
    String? data,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoUserPreferences',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'productCode': productCode,
      'data': data,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoUserPreferences',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'productCode': productCode,
      'data': data,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoUserPreferencesImpl extends SsoUserPreferences {
  _SsoUserPreferencesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    required String productCode,
    required String data,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         productCode: productCode,
         data: data,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [SsoUserPreferences]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoUserPreferences copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? userId,
    String? productCode,
    String? data,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return SsoUserPreferences(
      id: id is _isc.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      productCode: productCode ?? this.productCode,
      data: data ?? this.data,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
