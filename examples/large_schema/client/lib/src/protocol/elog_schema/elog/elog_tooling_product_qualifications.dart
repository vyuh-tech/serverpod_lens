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

abstract class ElogToolingProductQualifications
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogToolingProductQualifications._({
    this.id,
    required this.toolingTypeId,
    required this.productId,
    required this.status,
    required this.effectiveFrom,
    this.effectiveUntil,
    this.qualificationReference,
    required this.qualifiedAt,
    this.qualifiedBy,
    required this.versionNumber,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogToolingProductQualifications({
    _isc.UuidValue? id,
    required _isc.UuidValue toolingTypeId,
    required _isc.UuidValue productId,
    required String status,
    required DateTime effectiveFrom,
    DateTime? effectiveUntil,
    String? qualificationReference,
    required DateTime qualifiedAt,
    _isc.UuidValue? qualifiedBy,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) = _ElogToolingProductQualificationsImpl;

  factory ElogToolingProductQualifications.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogToolingProductQualifications(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      toolingTypeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['toolingTypeId'],
      ),
      productId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['productId'],
      ),
      status: jsonSerialization['status'] as String,
      effectiveFrom: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['effectiveFrom'],
      ),
      effectiveUntil: jsonSerialization['effectiveUntil'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['effectiveUntil'],
            ),
      qualificationReference:
          jsonSerialization['qualificationReference'] as String?,
      qualifiedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['qualifiedAt'],
      ),
      qualifiedBy: jsonSerialization['qualifiedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['qualifiedBy'],
            ),
      versionNumber: jsonSerialization['versionNumber'] as int,
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['createdBy'],
            ),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['updatedBy'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue toolingTypeId;

  _isc.UuidValue productId;

  String status;

  DateTime effectiveFrom;

  DateTime? effectiveUntil;

  String? qualificationReference;

  DateTime qualifiedAt;

  _isc.UuidValue? qualifiedBy;

  int versionNumber;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [ElogToolingProductQualifications]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogToolingProductQualifications copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? toolingTypeId,
    _isc.UuidValue? productId,
    String? status,
    DateTime? effectiveFrom,
    DateTime? effectiveUntil,
    String? qualificationReference,
    DateTime? qualifiedAt,
    _isc.UuidValue? qualifiedBy,
    int? versionNumber,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogToolingProductQualifications',
      if (id != null) 'id': id?.toJson(),
      'toolingTypeId': toolingTypeId.toJson(),
      'productId': productId.toJson(),
      'status': status,
      'effectiveFrom': effectiveFrom.toJson(),
      if (effectiveUntil != null) 'effectiveUntil': effectiveUntil?.toJson(),
      if (qualificationReference != null)
        'qualificationReference': qualificationReference,
      'qualifiedAt': qualifiedAt.toJson(),
      if (qualifiedBy != null) 'qualifiedBy': qualifiedBy?.toJson(),
      'versionNumber': versionNumber,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogToolingProductQualifications',
      if (id != null) 'id': id?.toJson(),
      'toolingTypeId': toolingTypeId.toJson(),
      'productId': productId.toJson(),
      'status': status,
      'effectiveFrom': effectiveFrom.toJson(),
      if (effectiveUntil != null) 'effectiveUntil': effectiveUntil?.toJson(),
      if (qualificationReference != null)
        'qualificationReference': qualificationReference,
      'qualifiedAt': qualifiedAt.toJson(),
      if (qualifiedBy != null) 'qualifiedBy': qualifiedBy?.toJson(),
      'versionNumber': versionNumber,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogToolingProductQualificationsImpl
    extends ElogToolingProductQualifications {
  _ElogToolingProductQualificationsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue toolingTypeId,
    required _isc.UuidValue productId,
    required String status,
    required DateTime effectiveFrom,
    DateTime? effectiveUntil,
    String? qualificationReference,
    required DateTime qualifiedAt,
    _isc.UuidValue? qualifiedBy,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         toolingTypeId: toolingTypeId,
         productId: productId,
         status: status,
         effectiveFrom: effectiveFrom,
         effectiveUntil: effectiveUntil,
         qualificationReference: qualificationReference,
         qualifiedAt: qualifiedAt,
         qualifiedBy: qualifiedBy,
         versionNumber: versionNumber,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogToolingProductQualifications]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogToolingProductQualifications copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? toolingTypeId,
    _isc.UuidValue? productId,
    String? status,
    DateTime? effectiveFrom,
    Object? effectiveUntil = _Undefined,
    Object? qualificationReference = _Undefined,
    DateTime? qualifiedAt,
    Object? qualifiedBy = _Undefined,
    int? versionNumber,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogToolingProductQualifications(
      id: id is _isc.UuidValue? ? id : this.id,
      toolingTypeId: toolingTypeId ?? this.toolingTypeId,
      productId: productId ?? this.productId,
      status: status ?? this.status,
      effectiveFrom: effectiveFrom ?? this.effectiveFrom,
      effectiveUntil: effectiveUntil is DateTime?
          ? effectiveUntil
          : this.effectiveUntil,
      qualificationReference: qualificationReference is String?
          ? qualificationReference
          : this.qualificationReference,
      qualifiedAt: qualifiedAt ?? this.qualifiedAt,
      qualifiedBy: qualifiedBy is _isc.UuidValue?
          ? qualifiedBy
          : this.qualifiedBy,
      versionNumber: versionNumber ?? this.versionNumber,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
