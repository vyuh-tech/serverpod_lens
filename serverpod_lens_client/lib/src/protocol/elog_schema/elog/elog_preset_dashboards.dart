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

abstract class ElogPresetDashboards
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPresetDashboards._({
    this.id,
    required this.industryId,
    required this.roleCode,
    required this.code,
    required this.name,
    required this.config,
    required this.isDefault,
    required this.displayOrder,
  });

  factory ElogPresetDashboards({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String roleCode,
    required String code,
    required String name,
    required String config,
    required bool isDefault,
    required int displayOrder,
  }) = _ElogPresetDashboardsImpl;

  factory ElogPresetDashboards.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPresetDashboards(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      roleCode: jsonSerialization['roleCode'] as String,
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      config: jsonSerialization['config'] as String,
      isDefault: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['isDefault'],
      ),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue industryId;

  String roleCode;

  String code;

  String name;

  String config;

  bool isDefault;

  int displayOrder;

  /// Returns a shallow copy of this [ElogPresetDashboards]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPresetDashboards copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? industryId,
    String? roleCode,
    String? code,
    String? name,
    String? config,
    bool? isDefault,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetDashboards',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'roleCode': roleCode,
      'code': code,
      'name': name,
      'config': config,
      'isDefault': isDefault,
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetDashboards',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'roleCode': roleCode,
      'code': code,
      'name': name,
      'config': config,
      'isDefault': isDefault,
      'displayOrder': displayOrder,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetDashboardsImpl extends ElogPresetDashboards {
  _ElogPresetDashboardsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String roleCode,
    required String code,
    required String name,
    required String config,
    required bool isDefault,
    required int displayOrder,
  }) : super._(
         id: id,
         industryId: industryId,
         roleCode: roleCode,
         code: code,
         name: name,
         config: config,
         isDefault: isDefault,
         displayOrder: displayOrder,
       );

  /// Returns a shallow copy of this [ElogPresetDashboards]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPresetDashboards copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? industryId,
    String? roleCode,
    String? code,
    String? name,
    String? config,
    bool? isDefault,
    int? displayOrder,
  }) {
    return ElogPresetDashboards(
      id: id is _isc.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      roleCode: roleCode ?? this.roleCode,
      code: code ?? this.code,
      name: name ?? this.name,
      config: config ?? this.config,
      isDefault: isDefault ?? this.isDefault,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}
