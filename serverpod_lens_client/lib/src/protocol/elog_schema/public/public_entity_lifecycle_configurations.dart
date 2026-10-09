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

abstract class PublicEntityLifecycleConfigurations
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PublicEntityLifecycleConfigurations._({
    this.id,
    required this.entityType,
    required this.registrationEsignRequired,
    required this.registrationRemarksRequired,
    required this.registrationApprovalsRequired,
    required this.modificationEsignRequired,
    required this.modificationRemarksRequired,
    required this.modificationApprovalsRequired,
    required this.statusChangeEsignRequired,
    required this.statusChangeRemarksRequired,
    required this.statusChangeApprovalsRequired,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
    required this.versionNumber,
  });

  factory PublicEntityLifecycleConfigurations({
    _isc.UuidValue? id,
    required String entityType,
    required bool registrationEsignRequired,
    required bool registrationRemarksRequired,
    required int registrationApprovalsRequired,
    required bool modificationEsignRequired,
    required bool modificationRemarksRequired,
    required int modificationApprovalsRequired,
    required bool statusChangeEsignRequired,
    required bool statusChangeRemarksRequired,
    required int statusChangeApprovalsRequired,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    required int versionNumber,
  }) = _PublicEntityLifecycleConfigurationsImpl;

  factory PublicEntityLifecycleConfigurations.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return PublicEntityLifecycleConfigurations(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      entityType: jsonSerialization['entityType'] as String,
      registrationEsignRequired: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['registrationEsignRequired'],
      ),
      registrationRemarksRequired: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['registrationRemarksRequired'],
      ),
      registrationApprovalsRequired:
          jsonSerialization['registrationApprovalsRequired'] as int,
      modificationEsignRequired: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['modificationEsignRequired'],
      ),
      modificationRemarksRequired: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['modificationRemarksRequired'],
      ),
      modificationApprovalsRequired:
          jsonSerialization['modificationApprovalsRequired'] as int,
      statusChangeEsignRequired: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['statusChangeEsignRequired'],
      ),
      statusChangeRemarksRequired: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['statusChangeRemarksRequired'],
      ),
      statusChangeApprovalsRequired:
          jsonSerialization['statusChangeApprovalsRequired'] as int,
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

  String entityType;

  bool registrationEsignRequired;

  bool registrationRemarksRequired;

  int registrationApprovalsRequired;

  bool modificationEsignRequired;

  bool modificationRemarksRequired;

  int modificationApprovalsRequired;

  bool statusChangeEsignRequired;

  bool statusChangeRemarksRequired;

  int statusChangeApprovalsRequired;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  int versionNumber;

  /// Returns a shallow copy of this [PublicEntityLifecycleConfigurations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PublicEntityLifecycleConfigurations copyWith({
    _isc.UuidValue? id,
    String? entityType,
    bool? registrationEsignRequired,
    bool? registrationRemarksRequired,
    int? registrationApprovalsRequired,
    bool? modificationEsignRequired,
    bool? modificationRemarksRequired,
    int? modificationApprovalsRequired,
    bool? statusChangeEsignRequired,
    bool? statusChangeRemarksRequired,
    int? statusChangeApprovalsRequired,
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
      '__className__': 'PublicEntityLifecycleConfigurations',
      if (id != null) 'id': id?.toJson(),
      'entityType': entityType,
      'registrationEsignRequired': registrationEsignRequired,
      'registrationRemarksRequired': registrationRemarksRequired,
      'registrationApprovalsRequired': registrationApprovalsRequired,
      'modificationEsignRequired': modificationEsignRequired,
      'modificationRemarksRequired': modificationRemarksRequired,
      'modificationApprovalsRequired': modificationApprovalsRequired,
      'statusChangeEsignRequired': statusChangeEsignRequired,
      'statusChangeRemarksRequired': statusChangeRemarksRequired,
      'statusChangeApprovalsRequired': statusChangeApprovalsRequired,
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
      '__className__': 'PublicEntityLifecycleConfigurations',
      if (id != null) 'id': id?.toJson(),
      'entityType': entityType,
      'registrationEsignRequired': registrationEsignRequired,
      'registrationRemarksRequired': registrationRemarksRequired,
      'registrationApprovalsRequired': registrationApprovalsRequired,
      'modificationEsignRequired': modificationEsignRequired,
      'modificationRemarksRequired': modificationRemarksRequired,
      'modificationApprovalsRequired': modificationApprovalsRequired,
      'statusChangeEsignRequired': statusChangeEsignRequired,
      'statusChangeRemarksRequired': statusChangeRemarksRequired,
      'statusChangeApprovalsRequired': statusChangeApprovalsRequired,
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

class _PublicEntityLifecycleConfigurationsImpl
    extends PublicEntityLifecycleConfigurations {
  _PublicEntityLifecycleConfigurationsImpl({
    _isc.UuidValue? id,
    required String entityType,
    required bool registrationEsignRequired,
    required bool registrationRemarksRequired,
    required int registrationApprovalsRequired,
    required bool modificationEsignRequired,
    required bool modificationRemarksRequired,
    required int modificationApprovalsRequired,
    required bool statusChangeEsignRequired,
    required bool statusChangeRemarksRequired,
    required int statusChangeApprovalsRequired,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    required int versionNumber,
  }) : super._(
         id: id,
         entityType: entityType,
         registrationEsignRequired: registrationEsignRequired,
         registrationRemarksRequired: registrationRemarksRequired,
         registrationApprovalsRequired: registrationApprovalsRequired,
         modificationEsignRequired: modificationEsignRequired,
         modificationRemarksRequired: modificationRemarksRequired,
         modificationApprovalsRequired: modificationApprovalsRequired,
         statusChangeEsignRequired: statusChangeEsignRequired,
         statusChangeRemarksRequired: statusChangeRemarksRequired,
         statusChangeApprovalsRequired: statusChangeApprovalsRequired,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
         versionNumber: versionNumber,
       );

  /// Returns a shallow copy of this [PublicEntityLifecycleConfigurations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PublicEntityLifecycleConfigurations copyWith({
    Object? id = _Undefined,
    String? entityType,
    bool? registrationEsignRequired,
    bool? registrationRemarksRequired,
    int? registrationApprovalsRequired,
    bool? modificationEsignRequired,
    bool? modificationRemarksRequired,
    int? modificationApprovalsRequired,
    bool? statusChangeEsignRequired,
    bool? statusChangeRemarksRequired,
    int? statusChangeApprovalsRequired,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    int? versionNumber,
  }) {
    return PublicEntityLifecycleConfigurations(
      id: id is _isc.UuidValue? ? id : this.id,
      entityType: entityType ?? this.entityType,
      registrationEsignRequired:
          registrationEsignRequired ?? this.registrationEsignRequired,
      registrationRemarksRequired:
          registrationRemarksRequired ?? this.registrationRemarksRequired,
      registrationApprovalsRequired:
          registrationApprovalsRequired ?? this.registrationApprovalsRequired,
      modificationEsignRequired:
          modificationEsignRequired ?? this.modificationEsignRequired,
      modificationRemarksRequired:
          modificationRemarksRequired ?? this.modificationRemarksRequired,
      modificationApprovalsRequired:
          modificationApprovalsRequired ?? this.modificationApprovalsRequired,
      statusChangeEsignRequired:
          statusChangeEsignRequired ?? this.statusChangeEsignRequired,
      statusChangeRemarksRequired:
          statusChangeRemarksRequired ?? this.statusChangeRemarksRequired,
      statusChangeApprovalsRequired:
          statusChangeApprovalsRequired ?? this.statusChangeApprovalsRequired,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
      versionNumber: versionNumber ?? this.versionNumber,
    );
  }
}
