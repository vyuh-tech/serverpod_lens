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

abstract class ElogDashboardConfigs
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogDashboardConfigs._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.dashboardCategory,
    required this.config,
  });

  factory ElogDashboardConfigs({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String dashboardCategory,
    required String config,
  }) = _ElogDashboardConfigsImpl;

  factory ElogDashboardConfigs.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogDashboardConfigs(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      dashboardCategory: jsonSerialization['dashboardCategory'] as String,
      config: jsonSerialization['config'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String? description;

  String dashboardCategory;

  String config;

  /// Returns a shallow copy of this [ElogDashboardConfigs]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogDashboardConfigs copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? dashboardCategory,
    String? config,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogDashboardConfigs',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'dashboardCategory': dashboardCategory,
      'config': config,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogDashboardConfigs',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'dashboardCategory': dashboardCategory,
      'config': config,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogDashboardConfigsImpl extends ElogDashboardConfigs {
  _ElogDashboardConfigsImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String dashboardCategory,
    required String config,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         dashboardCategory: dashboardCategory,
         config: config,
       );

  /// Returns a shallow copy of this [ElogDashboardConfigs]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogDashboardConfigs copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? dashboardCategory,
    String? config,
  }) {
    return ElogDashboardConfigs(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      dashboardCategory: dashboardCategory ?? this.dashboardCategory,
      config: config ?? this.config,
    );
  }
}
