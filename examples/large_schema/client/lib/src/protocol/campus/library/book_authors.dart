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
abstract class CampusBookAuthor
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusBookAuthor._({
    this.id,
    required this.bookId,
    required this.authorId,
    required this.sequence,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusBookAuthor({
    _isc.UuidValue? id,
    required _isc.UuidValue bookId,
    required _isc.UuidValue authorId,
    required int sequence,
    DateTime? createdAt,
  }) = _CampusBookAuthorImpl;

  factory CampusBookAuthor.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusBookAuthor(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      bookId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['bookId']),
      authorId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['authorId'],
      ),
      sequence: jsonSerialization['sequence'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue bookId;

  _isc.UuidValue authorId;

  int sequence;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusBookAuthor]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusBookAuthor copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? bookId,
    _isc.UuidValue? authorId,
    int? sequence,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusBookAuthor',
      if (id != null) 'id': id?.toJson(),
      'bookId': bookId.toJson(),
      'authorId': authorId.toJson(),
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusBookAuthor',
      if (id != null) 'id': id?.toJson(),
      'bookId': bookId.toJson(),
      'authorId': authorId.toJson(),
      'sequence': sequence,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusBookAuthorImpl extends CampusBookAuthor {
  _CampusBookAuthorImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue bookId,
    required _isc.UuidValue authorId,
    required int sequence,
    DateTime? createdAt,
  }) : super._(
         id: id,
         bookId: bookId,
         authorId: authorId,
         sequence: sequence,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusBookAuthor]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusBookAuthor copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? bookId,
    _isc.UuidValue? authorId,
    int? sequence,
    DateTime? createdAt,
  }) {
    return CampusBookAuthor(
      id: id is _isc.UuidValue? ? id : this.id,
      bookId: bookId ?? this.bookId,
      authorId: authorId ?? this.authorId,
      sequence: sequence ?? this.sequence,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
