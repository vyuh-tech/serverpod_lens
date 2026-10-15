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
abstract class CampusStudentNote
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusStudentNote._({
    this.id,
    required this.studentId,
    required this.lecturerId,
    required this.category,
    required this.note,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentNote({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue lecturerId,
    required String category,
    required String note,
    DateTime? createdAt,
  }) = _CampusStudentNoteImpl;

  factory CampusStudentNote.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusStudentNote(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      lecturerId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      category: jsonSerialization['category'] as String,
      note: jsonSerialization['note'] as String,
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

  _isc.UuidValue lecturerId;

  String category;

  String note;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusStudentNote]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusStudentNote copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    _isc.UuidValue? lecturerId,
    String? category,
    String? note,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentNote',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'category': category,
      'note': note,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentNote',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'category': category,
      'note': note,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentNoteImpl extends CampusStudentNote {
  _CampusStudentNoteImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue lecturerId,
    required String category,
    required String note,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         lecturerId: lecturerId,
         category: category,
         note: note,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentNote]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusStudentNote copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    _isc.UuidValue? lecturerId,
    String? category,
    String? note,
    DateTime? createdAt,
  }) {
    return CampusStudentNote(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      lecturerId: lecturerId ?? this.lecturerId,
      category: category ?? this.category,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
