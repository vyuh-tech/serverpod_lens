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

/// Fictional university fixture: finance.
abstract class CampusScholarship
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusScholarship._({
    this.id,
    required this.name,
    this.departmentId,
    this.sponsorId,
    required this.annualBudgetMinor,
    required this.currency,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusScholarship({
    _isc.UuidValue? id,
    required String name,
    _isc.UuidValue? departmentId,
    _isc.UuidValue? sponsorId,
    required int annualBudgetMinor,
    required String currency,
    DateTime? createdAt,
  }) = _CampusScholarshipImpl;

  factory CampusScholarship.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusScholarship(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      departmentId: jsonSerialization['departmentId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['departmentId'],
            ),
      sponsorId: jsonSerialization['sponsorId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['sponsorId'],
            ),
      annualBudgetMinor: jsonSerialization['annualBudgetMinor'] as int,
      currency: jsonSerialization['currency'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String name;

  _isc.UuidValue? departmentId;

  _isc.UuidValue? sponsorId;

  int annualBudgetMinor;

  String currency;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusScholarship]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusScholarship copyWith({
    _isc.UuidValue? id,
    String? name,
    _isc.UuidValue? departmentId,
    _isc.UuidValue? sponsorId,
    int? annualBudgetMinor,
    String? currency,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusScholarship',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (departmentId != null) 'departmentId': departmentId?.toJson(),
      if (sponsorId != null) 'sponsorId': sponsorId?.toJson(),
      'annualBudgetMinor': annualBudgetMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusScholarship',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (departmentId != null) 'departmentId': departmentId?.toJson(),
      if (sponsorId != null) 'sponsorId': sponsorId?.toJson(),
      'annualBudgetMinor': annualBudgetMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusScholarshipImpl extends CampusScholarship {
  _CampusScholarshipImpl({
    _isc.UuidValue? id,
    required String name,
    _isc.UuidValue? departmentId,
    _isc.UuidValue? sponsorId,
    required int annualBudgetMinor,
    required String currency,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         departmentId: departmentId,
         sponsorId: sponsorId,
         annualBudgetMinor: annualBudgetMinor,
         currency: currency,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusScholarship]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusScholarship copyWith({
    Object? id = _Undefined,
    String? name,
    Object? departmentId = _Undefined,
    Object? sponsorId = _Undefined,
    int? annualBudgetMinor,
    String? currency,
    DateTime? createdAt,
  }) {
    return CampusScholarship(
      id: id is _isc.UuidValue? ? id : this.id,
      name: name ?? this.name,
      departmentId: departmentId is _isc.UuidValue?
          ? departmentId
          : this.departmentId,
      sponsorId: sponsorId is _isc.UuidValue? ? sponsorId : this.sponsorId,
      annualBudgetMinor: annualBudgetMinor ?? this.annualBudgetMinor,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
