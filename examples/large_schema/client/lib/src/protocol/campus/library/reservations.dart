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
abstract class CampusReservation
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusReservation._({
    this.id,
    required this.bookId,
    required this.studentId,
    required this.pickupBranchId,
    required this.expiresAt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusReservation({
    _isc.UuidValue? id,
    required _isc.UuidValue bookId,
    required _isc.UuidValue studentId,
    required _isc.UuidValue pickupBranchId,
    required DateTime expiresAt,
    required String status,
    DateTime? createdAt,
  }) = _CampusReservationImpl;

  factory CampusReservation.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusReservation(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      bookId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['bookId']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      pickupBranchId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['pickupBranchId'],
      ),
      expiresAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['expiresAt'],
      ),
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

  _isc.UuidValue bookId;

  _isc.UuidValue studentId;

  _isc.UuidValue pickupBranchId;

  DateTime expiresAt;

  String status;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusReservation]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusReservation copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? bookId,
    _isc.UuidValue? studentId,
    _isc.UuidValue? pickupBranchId,
    DateTime? expiresAt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusReservation',
      if (id != null) 'id': id?.toJson(),
      'bookId': bookId.toJson(),
      'studentId': studentId.toJson(),
      'pickupBranchId': pickupBranchId.toJson(),
      'expiresAt': expiresAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusReservation',
      if (id != null) 'id': id?.toJson(),
      'bookId': bookId.toJson(),
      'studentId': studentId.toJson(),
      'pickupBranchId': pickupBranchId.toJson(),
      'expiresAt': expiresAt.toJson(),
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

class _CampusReservationImpl extends CampusReservation {
  _CampusReservationImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue bookId,
    required _isc.UuidValue studentId,
    required _isc.UuidValue pickupBranchId,
    required DateTime expiresAt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         bookId: bookId,
         studentId: studentId,
         pickupBranchId: pickupBranchId,
         expiresAt: expiresAt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusReservation]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusReservation copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? bookId,
    _isc.UuidValue? studentId,
    _isc.UuidValue? pickupBranchId,
    DateTime? expiresAt,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusReservation(
      id: id is _isc.UuidValue? ? id : this.id,
      bookId: bookId ?? this.bookId,
      studentId: studentId ?? this.studentId,
      pickupBranchId: pickupBranchId ?? this.pickupBranchId,
      expiresAt: expiresAt ?? this.expiresAt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
