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

/// Fictional university fixture: housing.
abstract class CampusHousingApplication
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusHousingApplication._({
    this.id,
    required this.studentId,
    required this.termId,
    required this.submittedAt,
    required this.status,
    this.accessibilityNeeds,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingApplication({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue termId,
    required DateTime submittedAt,
    required String status,
    String? accessibilityNeeds,
    DateTime? createdAt,
  }) = _CampusHousingApplicationImpl;

  factory CampusHousingApplication.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusHousingApplication(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      termId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['termId']),
      submittedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['submittedAt'],
      ),
      status: jsonSerialization['status'] as String,
      accessibilityNeeds: jsonSerialization['accessibilityNeeds'] as String?,
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

  _isc.UuidValue termId;

  DateTime submittedAt;

  String status;

  String? accessibilityNeeds;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusHousingApplication]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusHousingApplication copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    _isc.UuidValue? termId,
    DateTime? submittedAt,
    String? status,
    String? accessibilityNeeds,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingApplication',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'termId': termId.toJson(),
      'submittedAt': submittedAt.toJson(),
      'status': status,
      if (accessibilityNeeds != null) 'accessibilityNeeds': accessibilityNeeds,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingApplication',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'termId': termId.toJson(),
      'submittedAt': submittedAt.toJson(),
      'status': status,
      if (accessibilityNeeds != null) 'accessibilityNeeds': accessibilityNeeds,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingApplicationImpl extends CampusHousingApplication {
  _CampusHousingApplicationImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    required _isc.UuidValue termId,
    required DateTime submittedAt,
    required String status,
    String? accessibilityNeeds,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         termId: termId,
         submittedAt: submittedAt,
         status: status,
         accessibilityNeeds: accessibilityNeeds,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingApplication]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusHousingApplication copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    _isc.UuidValue? termId,
    DateTime? submittedAt,
    String? status,
    Object? accessibilityNeeds = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusHousingApplication(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      termId: termId ?? this.termId,
      submittedAt: submittedAt ?? this.submittedAt,
      status: status ?? this.status,
      accessibilityNeeds: accessibilityNeeds is String?
          ? accessibilityNeeds
          : this.accessibilityNeeds,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
