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
import 'package:serverpod_lens_client/src/protocol/protocol.dart' as _ixq89rj6;

/// Fictional university fixture: library.
abstract class CampusBook
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusBook._({
    this.id,
    required this.title,
    required this.subject,
    required this.language,
    required this.tags,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusBook({
    _isc.UuidValue? id,
    required String title,
    required String subject,
    required String language,
    required List<String> tags,
    DateTime? createdAt,
  }) = _CampusBookImpl;

  factory CampusBook.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusBook(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      title: jsonSerialization['title'] as String,
      subject: jsonSerialization['subject'] as String,
      language: jsonSerialization['language'] as String,
      tags: _ixq89rj6.Protocol().deserialize<List<String>>(
        jsonSerialization['tags'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String title;

  String subject;

  String language;

  List<String> tags;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusBook]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusBook copyWith({
    _isc.UuidValue? id,
    String? title,
    String? subject,
    String? language,
    List<String>? tags,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusBook',
      if (id != null) 'id': id?.toJson(),
      'title': title,
      'subject': subject,
      'language': language,
      'tags': tags.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusBook',
      if (id != null) 'id': id?.toJson(),
      'title': title,
      'subject': subject,
      'language': language,
      'tags': tags.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusBookImpl extends CampusBook {
  _CampusBookImpl({
    _isc.UuidValue? id,
    required String title,
    required String subject,
    required String language,
    required List<String> tags,
    DateTime? createdAt,
  }) : super._(
         id: id,
         title: title,
         subject: subject,
         language: language,
         tags: tags,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusBook]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusBook copyWith({
    Object? id = _Undefined,
    String? title,
    String? subject,
    String? language,
    List<String>? tags,
    DateTime? createdAt,
  }) {
    return CampusBook(
      id: id is _isc.UuidValue? ? id : this.id,
      title: title ?? this.title,
      subject: subject ?? this.subject,
      language: language ?? this.language,
      tags: tags ?? this.tags.map((e0) => e0).toList(),
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
