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
abstract class CampusStudentAddress
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusStudentAddress._({
    this.id,
    required this.studentId,
    required this.kind,
    required this.line1,
    required this.city,
    required this.postalCode,
    required this.countryCode,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentAddress({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required String kind,
    required String line1,
    required String city,
    required String postalCode,
    required String countryCode,
    DateTime? createdAt,
  }) = _CampusStudentAddressImpl;

  factory CampusStudentAddress.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusStudentAddress(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      kind: jsonSerialization['kind'] as String,
      line1: jsonSerialization['line1'] as String,
      city: jsonSerialization['city'] as String,
      postalCode: jsonSerialization['postalCode'] as String,
      countryCode: jsonSerialization['countryCode'] as String,
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

  String line1;

  String city;

  String postalCode;

  String countryCode;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusStudentAddress]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusStudentAddress copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    String? kind,
    String? line1,
    String? city,
    String? postalCode,
    String? countryCode,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentAddress',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'kind': kind,
      'line1': line1,
      'city': city,
      'postalCode': postalCode,
      'countryCode': countryCode,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentAddress',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'kind': kind,
      'line1': line1,
      'city': city,
      'postalCode': postalCode,
      'countryCode': countryCode,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentAddressImpl extends CampusStudentAddress {
  _CampusStudentAddressImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required String kind,
    required String line1,
    required String city,
    required String postalCode,
    required String countryCode,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         kind: kind,
         line1: line1,
         city: city,
         postalCode: postalCode,
         countryCode: countryCode,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentAddress]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusStudentAddress copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    String? kind,
    String? line1,
    String? city,
    String? postalCode,
    String? countryCode,
    DateTime? createdAt,
  }) {
    return CampusStudentAddress(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      kind: kind ?? this.kind,
      line1: line1 ?? this.line1,
      city: city ?? this.city,
      postalCode: postalCode ?? this.postalCode,
      countryCode: countryCode ?? this.countryCode,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
