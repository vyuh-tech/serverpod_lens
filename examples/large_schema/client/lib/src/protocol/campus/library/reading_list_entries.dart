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
abstract class CampusReadingListEntry
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusReadingListEntry._({
    this.id,
    required this.readingListId,
    required this.bookId,
    required this.required,
    this.notes,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusReadingListEntry({
    _isc.UuidValue? id,
    required _isc.UuidValue readingListId,
    required _isc.UuidValue bookId,
    required bool required,
    String? notes,
    DateTime? createdAt,
  }) = _CampusReadingListEntryImpl;

  factory CampusReadingListEntry.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusReadingListEntry(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      readingListId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['readingListId'],
      ),
      bookId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['bookId']),
      required: _isc.BoolJsonExtension.fromJson(jsonSerialization['required']),
      notes: jsonSerialization['notes'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue readingListId;

  _isc.UuidValue bookId;

  bool required;

  String? notes;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusReadingListEntry]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusReadingListEntry copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? readingListId,
    _isc.UuidValue? bookId,
    bool? required,
    String? notes,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusReadingListEntry',
      if (id != null) 'id': id?.toJson(),
      'readingListId': readingListId.toJson(),
      'bookId': bookId.toJson(),
      'required': required,
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusReadingListEntry',
      if (id != null) 'id': id?.toJson(),
      'readingListId': readingListId.toJson(),
      'bookId': bookId.toJson(),
      'required': required,
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusReadingListEntryImpl extends CampusReadingListEntry {
  _CampusReadingListEntryImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue readingListId,
    required _isc.UuidValue bookId,
    required bool required,
    String? notes,
    DateTime? createdAt,
  }) : super._(
         id: id,
         readingListId: readingListId,
         bookId: bookId,
         required: required,
         notes: notes,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusReadingListEntry]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusReadingListEntry copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? readingListId,
    _isc.UuidValue? bookId,
    bool? required,
    Object? notes = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusReadingListEntry(
      id: id is _isc.UuidValue? ? id : this.id,
      readingListId: readingListId ?? this.readingListId,
      bookId: bookId ?? this.bookId,
      required: required ?? this.required,
      notes: notes is String? ? notes : this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
