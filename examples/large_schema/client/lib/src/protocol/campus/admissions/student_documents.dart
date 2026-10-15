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
abstract class CampusStudentDocument
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusStudentDocument._({
    this.id,
    required this.studentId,
    required this.title,
    required this.documentType,
    required this.fileUrl,
    required this.verified,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentDocument({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required String title,
    required String documentType,
    required String fileUrl,
    required bool verified,
    DateTime? createdAt,
  }) = _CampusStudentDocumentImpl;

  factory CampusStudentDocument.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusStudentDocument(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      title: jsonSerialization['title'] as String,
      documentType: jsonSerialization['documentType'] as String,
      fileUrl: jsonSerialization['fileUrl'] as String,
      verified: _isc.BoolJsonExtension.fromJson(jsonSerialization['verified']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue studentId;

  String title;

  String documentType;

  String fileUrl;

  bool verified;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusStudentDocument]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusStudentDocument copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    String? title,
    String? documentType,
    String? fileUrl,
    bool? verified,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentDocument',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'title': title,
      'documentType': documentType,
      'fileUrl': fileUrl,
      'verified': verified,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentDocument',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'title': title,
      'documentType': documentType,
      'fileUrl': fileUrl,
      'verified': verified,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentDocumentImpl extends CampusStudentDocument {
  _CampusStudentDocumentImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required String title,
    required String documentType,
    required String fileUrl,
    required bool verified,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         title: title,
         documentType: documentType,
         fileUrl: fileUrl,
         verified: verified,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentDocument]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusStudentDocument copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    String? title,
    String? documentType,
    String? fileUrl,
    bool? verified,
    DateTime? createdAt,
  }) {
    return CampusStudentDocument(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      title: title ?? this.title,
      documentType: documentType ?? this.documentType,
      fileUrl: fileUrl ?? this.fileUrl,
      verified: verified ?? this.verified,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
