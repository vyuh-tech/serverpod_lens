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

abstract class SsoCompanySiteAssignments
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoCompanySiteAssignments._({
    this.id,
    required this.companyId,
    required this.siteId,
    required this.effectiveFrom,
    this.effectiveTo,
    required this.metadata,
  });

  factory SsoCompanySiteAssignments({
    _isc.UuidValue? id,
    required _isc.UuidValue companyId,
    required _isc.UuidValue siteId,
    required DateTime effectiveFrom,
    DateTime? effectiveTo,
    required String metadata,
  }) = _SsoCompanySiteAssignmentsImpl;

  factory SsoCompanySiteAssignments.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return SsoCompanySiteAssignments(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      companyId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['companyId'],
      ),
      siteId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['siteId']),
      effectiveFrom: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['effectiveFrom'],
      ),
      effectiveTo: jsonSerialization['effectiveTo'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['effectiveTo'],
            ),
      metadata: jsonSerialization['metadata'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue companyId;

  _isc.UuidValue siteId;

  DateTime effectiveFrom;

  DateTime? effectiveTo;

  String metadata;

  /// Returns a shallow copy of this [SsoCompanySiteAssignments]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoCompanySiteAssignments copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? companyId,
    _isc.UuidValue? siteId,
    DateTime? effectiveFrom,
    DateTime? effectiveTo,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoCompanySiteAssignments',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'siteId': siteId.toJson(),
      'effectiveFrom': effectiveFrom.toJson(),
      if (effectiveTo != null) 'effectiveTo': effectiveTo?.toJson(),
      'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoCompanySiteAssignments',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'siteId': siteId.toJson(),
      'effectiveFrom': effectiveFrom.toJson(),
      if (effectiveTo != null) 'effectiveTo': effectiveTo?.toJson(),
      'metadata': metadata,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoCompanySiteAssignmentsImpl extends SsoCompanySiteAssignments {
  _SsoCompanySiteAssignmentsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue companyId,
    required _isc.UuidValue siteId,
    required DateTime effectiveFrom,
    DateTime? effectiveTo,
    required String metadata,
  }) : super._(
         id: id,
         companyId: companyId,
         siteId: siteId,
         effectiveFrom: effectiveFrom,
         effectiveTo: effectiveTo,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [SsoCompanySiteAssignments]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoCompanySiteAssignments copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? companyId,
    _isc.UuidValue? siteId,
    DateTime? effectiveFrom,
    Object? effectiveTo = _Undefined,
    String? metadata,
  }) {
    return SsoCompanySiteAssignments(
      id: id is _isc.UuidValue? ? id : this.id,
      companyId: companyId ?? this.companyId,
      siteId: siteId ?? this.siteId,
      effectiveFrom: effectiveFrom ?? this.effectiveFrom,
      effectiveTo: effectiveTo is DateTime? ? effectiveTo : this.effectiveTo,
      metadata: metadata ?? this.metadata,
    );
  }
}
