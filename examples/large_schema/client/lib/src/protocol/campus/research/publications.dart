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

/// Fictional university fixture: research.
abstract class CampusPublication
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusPublication._({
    this.id,
    required this.projectId,
    required this.title,
    this.doi,
    this.publishedAt,
    this.venue,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusPublication({
    _isc.UuidValue? id,
    required _isc.UuidValue projectId,
    required String title,
    String? doi,
    DateTime? publishedAt,
    String? venue,
    DateTime? createdAt,
  }) = _CampusPublicationImpl;

  factory CampusPublication.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusPublication(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      projectId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['projectId'],
      ),
      title: jsonSerialization['title'] as String,
      doi: jsonSerialization['doi'] as String?,
      publishedAt: jsonSerialization['publishedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['publishedAt'],
            ),
      venue: jsonSerialization['venue'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue projectId;

  String title;

  String? doi;

  DateTime? publishedAt;

  String? venue;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusPublication]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusPublication copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? projectId,
    String? title,
    String? doi,
    DateTime? publishedAt,
    String? venue,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusPublication',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'title': title,
      if (doi != null) 'doi': doi,
      if (publishedAt != null) 'publishedAt': publishedAt?.toJson(),
      if (venue != null) 'venue': venue,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusPublication',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'title': title,
      if (doi != null) 'doi': doi,
      if (publishedAt != null) 'publishedAt': publishedAt?.toJson(),
      if (venue != null) 'venue': venue,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusPublicationImpl extends CampusPublication {
  _CampusPublicationImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue projectId,
    required String title,
    String? doi,
    DateTime? publishedAt,
    String? venue,
    DateTime? createdAt,
  }) : super._(
         id: id,
         projectId: projectId,
         title: title,
         doi: doi,
         publishedAt: publishedAt,
         venue: venue,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusPublication]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusPublication copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? projectId,
    String? title,
    Object? doi = _Undefined,
    Object? publishedAt = _Undefined,
    Object? venue = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusPublication(
      id: id is _isc.UuidValue? ? id : this.id,
      projectId: projectId ?? this.projectId,
      title: title ?? this.title,
      doi: doi is String? ? doi : this.doi,
      publishedAt: publishedAt is DateTime? ? publishedAt : this.publishedAt,
      venue: venue is String? ? venue : this.venue,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
