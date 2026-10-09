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

abstract class SsoAdConnections
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoAdConnections._({
    this.id,
    required this.companyId,
    required this.name,
    required this.host,
    required this.port,
    required this.useSsl,
    required this.baseDn,
    required this.bindDn,
    required this.bindPassword,
    this.userSearchFilter,
    this.usernameAttribute,
    this.emailAttribute,
    this.nameAttribute,
    required this.isActive,
    this.lastTestAt,
    this.lastTestSuccess,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    required this.versionNumber,
  });

  factory SsoAdConnections({
    _isc.UuidValue? id,
    required _isc.UuidValue companyId,
    required String name,
    required String host,
    required int port,
    required bool useSsl,
    required String baseDn,
    required String bindDn,
    required String bindPassword,
    String? userSearchFilter,
    String? usernameAttribute,
    String? emailAttribute,
    String? nameAttribute,
    required bool isActive,
    DateTime? lastTestAt,
    bool? lastTestSuccess,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    required int versionNumber,
  }) = _SsoAdConnectionsImpl;

  factory SsoAdConnections.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoAdConnections(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      companyId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['companyId'],
      ),
      name: jsonSerialization['name'] as String,
      host: jsonSerialization['host'] as String,
      port: jsonSerialization['port'] as int,
      useSsl: _isc.BoolJsonExtension.fromJson(jsonSerialization['useSsl']),
      baseDn: jsonSerialization['baseDn'] as String,
      bindDn: jsonSerialization['bindDn'] as String,
      bindPassword: jsonSerialization['bindPassword'] as String,
      userSearchFilter: jsonSerialization['userSearchFilter'] as String?,
      usernameAttribute: jsonSerialization['usernameAttribute'] as String?,
      emailAttribute: jsonSerialization['emailAttribute'] as String?,
      nameAttribute: jsonSerialization['nameAttribute'] as String?,
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      lastTestAt: jsonSerialization['lastTestAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastTestAt'],
            ),
      lastTestSuccess: jsonSerialization['lastTestSuccess'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(
              jsonSerialization['lastTestSuccess'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
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

  _isc.UuidValue companyId;

  String name;

  String host;

  int port;

  bool useSsl;

  String baseDn;

  String bindDn;

  String bindPassword;

  String? userSearchFilter;

  String? usernameAttribute;

  String? emailAttribute;

  String? nameAttribute;

  bool isActive;

  DateTime? lastTestAt;

  bool? lastTestSuccess;

  DateTime? createdAt;

  DateTime? updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  int versionNumber;

  /// Returns a shallow copy of this [SsoAdConnections]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoAdConnections copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? companyId,
    String? name,
    String? host,
    int? port,
    bool? useSsl,
    String? baseDn,
    String? bindDn,
    String? bindPassword,
    String? userSearchFilter,
    String? usernameAttribute,
    String? emailAttribute,
    String? nameAttribute,
    bool? isActive,
    DateTime? lastTestAt,
    bool? lastTestSuccess,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    int? versionNumber,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoAdConnections',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'name': name,
      'host': host,
      'port': port,
      'useSsl': useSsl,
      'baseDn': baseDn,
      'bindDn': bindDn,
      'bindPassword': bindPassword,
      if (userSearchFilter != null) 'userSearchFilter': userSearchFilter,
      if (usernameAttribute != null) 'usernameAttribute': usernameAttribute,
      if (emailAttribute != null) 'emailAttribute': emailAttribute,
      if (nameAttribute != null) 'nameAttribute': nameAttribute,
      'isActive': isActive,
      if (lastTestAt != null) 'lastTestAt': lastTestAt?.toJson(),
      if (lastTestSuccess != null) 'lastTestSuccess': lastTestSuccess,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      'versionNumber': versionNumber,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoAdConnections',
      if (id != null) 'id': id?.toJson(),
      'companyId': companyId.toJson(),
      'name': name,
      'host': host,
      'port': port,
      'useSsl': useSsl,
      'baseDn': baseDn,
      'bindDn': bindDn,
      'bindPassword': bindPassword,
      if (userSearchFilter != null) 'userSearchFilter': userSearchFilter,
      if (usernameAttribute != null) 'usernameAttribute': usernameAttribute,
      if (emailAttribute != null) 'emailAttribute': emailAttribute,
      if (nameAttribute != null) 'nameAttribute': nameAttribute,
      'isActive': isActive,
      if (lastTestAt != null) 'lastTestAt': lastTestAt?.toJson(),
      if (lastTestSuccess != null) 'lastTestSuccess': lastTestSuccess,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
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

class _SsoAdConnectionsImpl extends SsoAdConnections {
  _SsoAdConnectionsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue companyId,
    required String name,
    required String host,
    required int port,
    required bool useSsl,
    required String baseDn,
    required String bindDn,
    required String bindPassword,
    String? userSearchFilter,
    String? usernameAttribute,
    String? emailAttribute,
    String? nameAttribute,
    required bool isActive,
    DateTime? lastTestAt,
    bool? lastTestSuccess,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    required int versionNumber,
  }) : super._(
         id: id,
         companyId: companyId,
         name: name,
         host: host,
         port: port,
         useSsl: useSsl,
         baseDn: baseDn,
         bindDn: bindDn,
         bindPassword: bindPassword,
         userSearchFilter: userSearchFilter,
         usernameAttribute: usernameAttribute,
         emailAttribute: emailAttribute,
         nameAttribute: nameAttribute,
         isActive: isActive,
         lastTestAt: lastTestAt,
         lastTestSuccess: lastTestSuccess,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
         versionNumber: versionNumber,
       );

  /// Returns a shallow copy of this [SsoAdConnections]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoAdConnections copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? companyId,
    String? name,
    String? host,
    int? port,
    bool? useSsl,
    String? baseDn,
    String? bindDn,
    String? bindPassword,
    Object? userSearchFilter = _Undefined,
    Object? usernameAttribute = _Undefined,
    Object? emailAttribute = _Undefined,
    Object? nameAttribute = _Undefined,
    bool? isActive,
    Object? lastTestAt = _Undefined,
    Object? lastTestSuccess = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    int? versionNumber,
  }) {
    return SsoAdConnections(
      id: id is _isc.UuidValue? ? id : this.id,
      companyId: companyId ?? this.companyId,
      name: name ?? this.name,
      host: host ?? this.host,
      port: port ?? this.port,
      useSsl: useSsl ?? this.useSsl,
      baseDn: baseDn ?? this.baseDn,
      bindDn: bindDn ?? this.bindDn,
      bindPassword: bindPassword ?? this.bindPassword,
      userSearchFilter: userSearchFilter is String?
          ? userSearchFilter
          : this.userSearchFilter,
      usernameAttribute: usernameAttribute is String?
          ? usernameAttribute
          : this.usernameAttribute,
      emailAttribute: emailAttribute is String?
          ? emailAttribute
          : this.emailAttribute,
      nameAttribute: nameAttribute is String?
          ? nameAttribute
          : this.nameAttribute,
      isActive: isActive ?? this.isActive,
      lastTestAt: lastTestAt is DateTime? ? lastTestAt : this.lastTestAt,
      lastTestSuccess: lastTestSuccess is bool?
          ? lastTestSuccess
          : this.lastTestSuccess,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
      versionNumber: versionNumber ?? this.versionNumber,
    );
  }
}
