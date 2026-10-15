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
abstract class CampusEthicsApplication
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusEthicsApplication._({
    this.id,
    required this.projectId,
    required this.submittedById,
    required this.submittedAt,
    required this.summary,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusEthicsApplication({
    _isc.UuidValue? id,
    required _isc.UuidValue projectId,
    required _isc.UuidValue submittedById,
    required DateTime submittedAt,
    required String summary,
    required String status,
    DateTime? createdAt,
  }) = _CampusEthicsApplicationImpl;

  factory CampusEthicsApplication.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusEthicsApplication(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      projectId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['projectId'],
      ),
      submittedById: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['submittedById'],
      ),
      submittedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['submittedAt'],
      ),
      summary: jsonSerialization['summary'] as String,
      status: jsonSerialization['status'] as String,
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

  _isc.UuidValue submittedById;

  DateTime submittedAt;

  String summary;

  String status;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusEthicsApplication]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusEthicsApplication copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? projectId,
    _isc.UuidValue? submittedById,
    DateTime? submittedAt,
    String? summary,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusEthicsApplication',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'submittedById': submittedById.toJson(),
      'submittedAt': submittedAt.toJson(),
      'summary': summary,
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusEthicsApplication',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'submittedById': submittedById.toJson(),
      'submittedAt': submittedAt.toJson(),
      'summary': summary,
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusEthicsApplicationImpl extends CampusEthicsApplication {
  _CampusEthicsApplicationImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue projectId,
    required _isc.UuidValue submittedById,
    required DateTime submittedAt,
    required String summary,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         projectId: projectId,
         submittedById: submittedById,
         submittedAt: submittedAt,
         summary: summary,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusEthicsApplication]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusEthicsApplication copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? projectId,
    _isc.UuidValue? submittedById,
    DateTime? submittedAt,
    String? summary,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusEthicsApplication(
      id: id is _isc.UuidValue? ? id : this.id,
      projectId: projectId ?? this.projectId,
      submittedById: submittedById ?? this.submittedById,
      submittedAt: submittedAt ?? this.submittedAt,
      summary: summary ?? this.summary,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
