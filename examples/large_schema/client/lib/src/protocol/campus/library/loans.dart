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
abstract class CampusLoan
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusLoan._({
    this.id,
    required this.copyId,
    required this.studentId,
    required this.borrowedAt,
    required this.dueAt,
    this.returnedAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusLoan({
    _isc.UuidValue? id,
    required _isc.UuidValue copyId,
    required _isc.UuidValue studentId,
    required DateTime borrowedAt,
    required DateTime dueAt,
    DateTime? returnedAt,
    DateTime? createdAt,
  }) = _CampusLoanImpl;

  factory CampusLoan.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusLoan(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      copyId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['copyId']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      borrowedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['borrowedAt'],
      ),
      dueAt: _isc.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
      returnedAt: jsonSerialization['returnedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['returnedAt'],
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

  _isc.UuidValue copyId;

  _isc.UuidValue studentId;

  DateTime borrowedAt;

  DateTime dueAt;

  DateTime? returnedAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusLoan]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusLoan copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? copyId,
    _isc.UuidValue? studentId,
    DateTime? borrowedAt,
    DateTime? dueAt,
    DateTime? returnedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusLoan',
      if (id != null) 'id': id?.toJson(),
      'copyId': copyId.toJson(),
      'studentId': studentId.toJson(),
      'borrowedAt': borrowedAt.toJson(),
      'dueAt': dueAt.toJson(),
      if (returnedAt != null) 'returnedAt': returnedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusLoan',
      if (id != null) 'id': id?.toJson(),
      'copyId': copyId.toJson(),
      'studentId': studentId.toJson(),
      'borrowedAt': borrowedAt.toJson(),
      'dueAt': dueAt.toJson(),
      if (returnedAt != null) 'returnedAt': returnedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusLoanImpl extends CampusLoan {
  _CampusLoanImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue copyId,
    required _isc.UuidValue studentId,
    required DateTime borrowedAt,
    required DateTime dueAt,
    DateTime? returnedAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         copyId: copyId,
         studentId: studentId,
         borrowedAt: borrowedAt,
         dueAt: dueAt,
         returnedAt: returnedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusLoan]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusLoan copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? copyId,
    _isc.UuidValue? studentId,
    DateTime? borrowedAt,
    DateTime? dueAt,
    Object? returnedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusLoan(
      id: id is _isc.UuidValue? ? id : this.id,
      copyId: copyId ?? this.copyId,
      studentId: studentId ?? this.studentId,
      borrowedAt: borrowedAt ?? this.borrowedAt,
      dueAt: dueAt ?? this.dueAt,
      returnedAt: returnedAt is DateTime? ? returnedAt : this.returnedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
