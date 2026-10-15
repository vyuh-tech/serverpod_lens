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
abstract class CampusStudentContact
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusStudentContact._({
    this.id,
    required this.studentId,
    required this.kind,
    required this.value,
    required this.preferred,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentContact({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required String kind,
    required String value,
    required bool preferred,
    DateTime? createdAt,
  }) = _CampusStudentContactImpl;

  factory CampusStudentContact.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusStudentContact(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      kind: jsonSerialization['kind'] as String,
      value: jsonSerialization['value'] as String,
      preferred: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['preferred'],
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

  _isc.UuidValue studentId;

  String kind;

  String value;

  bool preferred;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusStudentContact]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusStudentContact copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    String? kind,
    String? value,
    bool? preferred,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentContact',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'kind': kind,
      'value': value,
      'preferred': preferred,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentContact',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'kind': kind,
      'value': value,
      'preferred': preferred,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentContactImpl extends CampusStudentContact {
  _CampusStudentContactImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required String kind,
    required String value,
    required bool preferred,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         kind: kind,
         value: value,
         preferred: preferred,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentContact]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusStudentContact copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    String? kind,
    String? value,
    bool? preferred,
    DateTime? createdAt,
  }) {
    return CampusStudentContact(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      kind: kind ?? this.kind,
      value: value ?? this.value,
      preferred: preferred ?? this.preferred,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
