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

/// Fictional university fixture: admissions.
abstract class CampusGuardian
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusGuardian._({
    this.id,
    required this.name,
    this.email,
    this.phone,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGuardian({
    _isc.UuidValue? id,
    required String name,
    String? email,
    String? phone,
    DateTime? createdAt,
  }) = _CampusGuardianImpl;

  factory CampusGuardian.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusGuardian(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String?,
      phone: jsonSerialization['phone'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String name;

  String? email;

  String? phone;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusGuardian]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusGuardian copyWith({
    _isc.UuidValue? id,
    String? name,
    String? email,
    String? phone,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGuardian',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGuardian',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGuardianImpl extends CampusGuardian {
  _CampusGuardianImpl({
    _isc.UuidValue? id,
    required String name,
    String? email,
    String? phone,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         email: email,
         phone: phone,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGuardian]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusGuardian copyWith({
    Object? id = _Undefined,
    String? name,
    Object? email = _Undefined,
    Object? phone = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusGuardian(
      id: id is _isc.UuidValue? ? id : this.id,
      name: name ?? this.name,
      email: email is String? ? email : this.email,
      phone: phone is String? ? phone : this.phone,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
