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

/// Fictional university fixture: assessment.
abstract class CampusSubmissionFile
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusSubmissionFile._({
    this.id,
    required this.submissionId,
    required this.fileName,
    required this.fileUrl,
    required this.sizeBytes,
    this.checksum,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSubmissionFile({
    _isc.UuidValue? id,
    required _isc.UuidValue submissionId,
    required String fileName,
    required String fileUrl,
    required int sizeBytes,
    String? checksum,
    DateTime? createdAt,
  }) = _CampusSubmissionFileImpl;

  factory CampusSubmissionFile.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusSubmissionFile(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      submissionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['submissionId'],
      ),
      fileName: jsonSerialization['fileName'] as String,
      fileUrl: jsonSerialization['fileUrl'] as String,
      sizeBytes: jsonSerialization['sizeBytes'] as int,
      checksum: jsonSerialization['checksum'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue submissionId;

  String fileName;

  String fileUrl;

  int sizeBytes;

  String? checksum;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusSubmissionFile]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusSubmissionFile copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? submissionId,
    String? fileName,
    String? fileUrl,
    int? sizeBytes,
    String? checksum,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSubmissionFile',
      if (id != null) 'id': id?.toJson(),
      'submissionId': submissionId.toJson(),
      'fileName': fileName,
      'fileUrl': fileUrl,
      'sizeBytes': sizeBytes,
      if (checksum != null) 'checksum': checksum,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSubmissionFile',
      if (id != null) 'id': id?.toJson(),
      'submissionId': submissionId.toJson(),
      'fileName': fileName,
      'fileUrl': fileUrl,
      'sizeBytes': sizeBytes,
      if (checksum != null) 'checksum': checksum,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSubmissionFileImpl extends CampusSubmissionFile {
  _CampusSubmissionFileImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue submissionId,
    required String fileName,
    required String fileUrl,
    required int sizeBytes,
    String? checksum,
    DateTime? createdAt,
  }) : super._(
         id: id,
         submissionId: submissionId,
         fileName: fileName,
         fileUrl: fileUrl,
         sizeBytes: sizeBytes,
         checksum: checksum,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSubmissionFile]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusSubmissionFile copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? submissionId,
    String? fileName,
    String? fileUrl,
    int? sizeBytes,
    Object? checksum = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusSubmissionFile(
      id: id is _isc.UuidValue? ? id : this.id,
      submissionId: submissionId ?? this.submissionId,
      fileName: fileName ?? this.fileName,
      fileUrl: fileUrl ?? this.fileUrl,
      sizeBytes: sizeBytes ?? this.sizeBytes,
      checksum: checksum is String? ? checksum : this.checksum,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
