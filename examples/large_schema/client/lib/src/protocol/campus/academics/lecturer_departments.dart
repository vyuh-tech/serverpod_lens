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

/// Fictional university fixture: academics.
abstract class CampusLecturerDepartment
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusLecturerDepartment._({
    this.id,
    required this.lecturerId,
    required this.departmentId,
    required this.allocationPercent,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusLecturerDepartment({
    _isc.UuidValue? id,
    required _isc.UuidValue lecturerId,
    required _isc.UuidValue departmentId,
    required int allocationPercent,
    DateTime? createdAt,
  }) = _CampusLecturerDepartmentImpl;

  factory CampusLecturerDepartment.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusLecturerDepartment(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      lecturerId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      departmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentId'],
      ),
      allocationPercent: jsonSerialization['allocationPercent'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue lecturerId;

  _isc.UuidValue departmentId;

  int allocationPercent;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusLecturerDepartment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusLecturerDepartment copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? lecturerId,
    _isc.UuidValue? departmentId,
    int? allocationPercent,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusLecturerDepartment',
      if (id != null) 'id': id?.toJson(),
      'lecturerId': lecturerId.toJson(),
      'departmentId': departmentId.toJson(),
      'allocationPercent': allocationPercent,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusLecturerDepartment',
      if (id != null) 'id': id?.toJson(),
      'lecturerId': lecturerId.toJson(),
      'departmentId': departmentId.toJson(),
      'allocationPercent': allocationPercent,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusLecturerDepartmentImpl extends CampusLecturerDepartment {
  _CampusLecturerDepartmentImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue lecturerId,
    required _isc.UuidValue departmentId,
    required int allocationPercent,
    DateTime? createdAt,
  }) : super._(
         id: id,
         lecturerId: lecturerId,
         departmentId: departmentId,
         allocationPercent: allocationPercent,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusLecturerDepartment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusLecturerDepartment copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? lecturerId,
    _isc.UuidValue? departmentId,
    int? allocationPercent,
    DateTime? createdAt,
  }) {
    return CampusLecturerDepartment(
      id: id is _isc.UuidValue? ? id : this.id,
      lecturerId: lecturerId ?? this.lecturerId,
      departmentId: departmentId ?? this.departmentId,
      allocationPercent: allocationPercent ?? this.allocationPercent,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
