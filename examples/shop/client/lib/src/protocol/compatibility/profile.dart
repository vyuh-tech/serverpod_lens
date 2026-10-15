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

abstract class ShopProfile
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ShopProfile._({this.id, required this.bio});

  factory ShopProfile({int? id, required String bio}) = _ShopProfileImpl;

  factory ShopProfile.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopProfile(
      id: jsonSerialization['id'] as int?,
      bio: jsonSerialization['bio'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String bio;

  /// Returns a shallow copy of this [ShopProfile]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ShopProfile copyWith({int? id, String? bio});
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopProfile',
      if (id != null) 'id': id,
      'bio': bio,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopProfile',
      if (id != null) 'id': id,
      'bio': bio,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopProfileImpl extends ShopProfile {
  _ShopProfileImpl({int? id, required String bio}) : super._(id: id, bio: bio);

  /// Returns a shallow copy of this [ShopProfile]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ShopProfile copyWith({Object? id = _Undefined, String? bio}) {
    return ShopProfile(id: id is int? ? id : this.id, bio: bio ?? this.bio);
  }
}
