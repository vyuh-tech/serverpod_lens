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
abstract class CampusLibraryVisit
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusLibraryVisit._({
    this.id,
    required this.branchId,
    required this.studentId,
    required this.enteredAt,
    this.exitedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusLibraryVisit({
    _isc.UuidValue? id,
    required _isc.UuidValue branchId,
    required _isc.UuidValue studentId,
    required DateTime enteredAt,
    DateTime? exitedAt,
    DateTime? createdAt,
  }) = _CampusLibraryVisitImpl;

  factory CampusLibraryVisit.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusLibraryVisit(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      branchId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['branchId'],
      ),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      enteredAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['enteredAt'],
      ),
      exitedAt: jsonSerialization['exitedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['exitedAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue branchId;

  _isc.UuidValue studentId;

  DateTime enteredAt;

  DateTime? exitedAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusLibraryVisit]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusLibraryVisit copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? branchId,
    _isc.UuidValue? studentId,
    DateTime? enteredAt,
    DateTime? exitedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusLibraryVisit',
      if (id != null) 'id': id?.toJson(),
      'branchId': branchId.toJson(),
      'studentId': studentId.toJson(),
      'enteredAt': enteredAt.toJson(),
      if (exitedAt != null) 'exitedAt': exitedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusLibraryVisit',
      if (id != null) 'id': id?.toJson(),
      'branchId': branchId.toJson(),
      'studentId': studentId.toJson(),
      'enteredAt': enteredAt.toJson(),
      if (exitedAt != null) 'exitedAt': exitedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusLibraryVisitImpl extends CampusLibraryVisit {
  _CampusLibraryVisitImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue branchId,
    required _isc.UuidValue studentId,
    required DateTime enteredAt,
    DateTime? exitedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         branchId: branchId,
         studentId: studentId,
         enteredAt: enteredAt,
         exitedAt: exitedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusLibraryVisit]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusLibraryVisit copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? branchId,
    _isc.UuidValue? studentId,
    DateTime? enteredAt,
    Object? exitedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusLibraryVisit(
      id: id is _isc.UuidValue? ? id : this.id,
      branchId: branchId ?? this.branchId,
      studentId: studentId ?? this.studentId,
      enteredAt: enteredAt ?? this.enteredAt,
      exitedAt: exitedAt is DateTime? ? exitedAt : this.exitedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
