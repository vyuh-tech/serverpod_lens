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
abstract class CampusBookEdition
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusBookEdition._({
    this.id,
    required this.bookId,
    required this.publisherId,
    required this.isbn,
    required this.publishedYear,
    required this.edition,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusBookEdition({
    _isc.UuidValue? id,
    required _isc.UuidValue bookId,
    required _isc.UuidValue publisherId,
    required String isbn,
    required int publishedYear,
    required int edition,
    DateTime? createdAt,
  }) = _CampusBookEditionImpl;

  factory CampusBookEdition.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusBookEdition(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      bookId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['bookId']),
      publisherId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['publisherId'],
      ),
      isbn: jsonSerialization['isbn'] as String,
      publishedYear: jsonSerialization['publishedYear'] as int,
      edition: jsonSerialization['edition'] as int,
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

  _isc.UuidValue publisherId;

  String isbn;

  int publishedYear;

  int edition;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusBookEdition]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusBookEdition copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? bookId,
    _isc.UuidValue? publisherId,
    String? isbn,
    int? publishedYear,
    int? edition,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusBookEdition',
      if (id != null) 'id': id?.toJson(),
      'bookId': bookId.toJson(),
      'publisherId': publisherId.toJson(),
      'isbn': isbn,
      'publishedYear': publishedYear,
      'edition': edition,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusBookEdition',
      if (id != null) 'id': id?.toJson(),
      'bookId': bookId.toJson(),
      'publisherId': publisherId.toJson(),
      'isbn': isbn,
      'publishedYear': publishedYear,
      'edition': edition,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusBookEditionImpl extends CampusBookEdition {
  _CampusBookEditionImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue bookId,
    required _isc.UuidValue publisherId,
    required String isbn,
    required int publishedYear,
    required int edition,
    DateTime? createdAt,
  }) : super._(
         id: id,
         bookId: bookId,
         publisherId: publisherId,
         isbn: isbn,
         publishedYear: publishedYear,
         edition: edition,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusBookEdition]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusBookEdition copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? bookId,
    _isc.UuidValue? publisherId,
    String? isbn,
    int? publishedYear,
    int? edition,
    DateTime? createdAt,
  }) {
    return CampusBookEdition(
      id: id is _isc.UuidValue? ? id : this.id,
      bookId: bookId ?? this.bookId,
      publisherId: publisherId ?? this.publisherId,
      isbn: isbn ?? this.isbn,
      publishedYear: publishedYear ?? this.publishedYear,
      edition: edition ?? this.edition,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
