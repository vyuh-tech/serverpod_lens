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
abstract class CampusOffer
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusOffer._({
    this.id,
    required this.applicationId,
    required this.programmeVersionId,
    required this.offeredAt,
    required this.expiresAt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusOffer({
    _isc.UuidValue? id,
    required _isc.UuidValue applicationId,
    required _isc.UuidValue programmeVersionId,
    required DateTime offeredAt,
    required DateTime expiresAt,
    required String status,
    DateTime? createdAt,
  }) = _CampusOfferImpl;

  factory CampusOffer.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusOffer(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      applicationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['applicationId'],
      ),
      programmeVersionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeVersionId'],
      ),
      offeredAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['offeredAt'],
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

  _isc.UuidValue applicationId;

  _isc.UuidValue programmeVersionId;

  DateTime offeredAt;

  DateTime expiresAt;

  String status;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusOffer]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusOffer copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? applicationId,
    _isc.UuidValue? programmeVersionId,
    DateTime? offeredAt,
    DateTime? expiresAt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusOffer',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'programmeVersionId': programmeVersionId.toJson(),
      'offeredAt': offeredAt.toJson(),
      'expiresAt': expiresAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusOffer',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'programmeVersionId': programmeVersionId.toJson(),
      'offeredAt': offeredAt.toJson(),
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

class _CampusOfferImpl extends CampusOffer {
  _CampusOfferImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue applicationId,
    required _isc.UuidValue programmeVersionId,
    required DateTime offeredAt,
    required DateTime expiresAt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         applicationId: applicationId,
         programmeVersionId: programmeVersionId,
         offeredAt: offeredAt,
         expiresAt: expiresAt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusOffer]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusOffer copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? applicationId,
    _isc.UuidValue? programmeVersionId,
    DateTime? offeredAt,
    DateTime? expiresAt,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusOffer(
      id: id is _isc.UuidValue? ? id : this.id,
      applicationId: applicationId ?? this.applicationId,
      programmeVersionId: programmeVersionId ?? this.programmeVersionId,
      offeredAt: offeredAt ?? this.offeredAt,
      expiresAt: expiresAt ?? this.expiresAt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
