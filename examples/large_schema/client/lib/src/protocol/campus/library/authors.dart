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

/// Fictional university fixture: library.
abstract class CampusAuthor
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusAuthor._({
    this.id,
    required this.name,
    this.biography,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusAuthor({
    _isc.UuidValue? id,
    required String name,
    String? biography,
    DateTime? createdAt,
  }) = _CampusAuthorImpl;

  factory CampusAuthor.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusAuthor(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      biography: jsonSerialization['biography'] as String?,
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

  String? biography;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusAuthor]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusAuthor copyWith({
    _isc.UuidValue? id,
    String? name,
    String? biography,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusAuthor',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (biography != null) 'biography': biography,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusAuthor',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (biography != null) 'biography': biography,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusAuthorImpl extends CampusAuthor {
  _CampusAuthorImpl({
    _isc.UuidValue? id,
    required String name,
    String? biography,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         biography: biography,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusAuthor]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusAuthor copyWith({
    Object? id = _Undefined,
    String? name,
    Object? biography = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusAuthor(
      id: id is _isc.UuidValue? ? id : this.id,
      name: name ?? this.name,
      biography: biography is String? ? biography : this.biography,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
