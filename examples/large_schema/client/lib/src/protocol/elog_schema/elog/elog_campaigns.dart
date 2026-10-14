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

abstract class ElogCampaigns
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogCampaigns._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.productId,
    required this.batchLimit,
    required this.status,
    this.startedAt,
    this.completedAt,
    this.notes,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
    required this.versionNumber,
  });

  factory ElogCampaigns({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required _isc.UuidValue productId,
    required int batchLimit,
    required String status,
    DateTime? startedAt,
    DateTime? completedAt,
    String? notes,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    required int versionNumber,
  }) = _ElogCampaignsImpl;

  factory ElogCampaigns.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogCampaigns(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      productId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['productId'],
      ),
      batchLimit: jsonSerialization['batchLimit'] as int,
      status: jsonSerialization['status'] as String,
      startedAt: jsonSerialization['startedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      notes: jsonSerialization['notes'] as String?,
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
      versionNumber: jsonSerialization['versionNumber'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String? description;

  _isc.UuidValue productId;

  int batchLimit;

  String status;

  DateTime? startedAt;

  DateTime? completedAt;

  String? notes;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  int versionNumber;

  /// Returns a shallow copy of this [ElogCampaigns]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogCampaigns copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    _isc.UuidValue? productId,
    int? batchLimit,
    String? status,
    DateTime? startedAt,
    DateTime? completedAt,
    String? notes,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    int? versionNumber,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogCampaigns',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'productId': productId.toJson(),
      'batchLimit': batchLimit,
      'status': status,
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (notes != null) 'notes': notes,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      'versionNumber': versionNumber,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogCampaigns',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'productId': productId.toJson(),
      'batchLimit': batchLimit,
      'status': status,
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (notes != null) 'notes': notes,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      'versionNumber': versionNumber,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogCampaignsImpl extends ElogCampaigns {
  _ElogCampaignsImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required _isc.UuidValue productId,
    required int batchLimit,
    required String status,
    DateTime? startedAt,
    DateTime? completedAt,
    String? notes,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    required int versionNumber,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         productId: productId,
         batchLimit: batchLimit,
         status: status,
         startedAt: startedAt,
         completedAt: completedAt,
         notes: notes,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
         versionNumber: versionNumber,
       );

  /// Returns a shallow copy of this [ElogCampaigns]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogCampaigns copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    _isc.UuidValue? productId,
    int? batchLimit,
    String? status,
    Object? startedAt = _Undefined,
    Object? completedAt = _Undefined,
    Object? notes = _Undefined,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    int? versionNumber,
  }) {
    return ElogCampaigns(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      productId: productId ?? this.productId,
      batchLimit: batchLimit ?? this.batchLimit,
      status: status ?? this.status,
      startedAt: startedAt is DateTime? ? startedAt : this.startedAt,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      notes: notes is String? ? notes : this.notes,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
      versionNumber: versionNumber ?? this.versionNumber,
    );
  }
}
