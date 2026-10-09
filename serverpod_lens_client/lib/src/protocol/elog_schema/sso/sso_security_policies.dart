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
import 'package:serverpod_lens_client/src/protocol/protocol.dart' as _ixq89rj6;

abstract class SsoSecurityPolicies
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoSecurityPolicies._({
    this.id,
    required this.name,
    required this.code,
    this.description,
    required this.scopeLevel,
    this.siteId,
    required this.inheritedFields,
    required this.minUserIdLength,
    required this.maxUserIdLength,
    required this.minPasswordLength,
    required this.maxPasswordLength,
    required this.passwordMaxAgeDays,
    required this.passwordMinAgeDays,
    required this.passwordHistoryCount,
    required this.passwordExpiryWarningDays,
    required this.passwordComplexity,
    required this.maxFailedLoginAttempts,
    required this.inactivityTimeoutEnabled,
    required this.inactivityTimeoutMinutes,
    required this.dormancyThresholdDays,
    required this.preventConcurrentLogin,
    required this.browserSessionPolicy,
    required this.companyId,
  });

  factory SsoSecurityPolicies({
    _isc.UuidValue? id,
    required String name,
    required String code,
    String? description,
    required String scopeLevel,
    _isc.UuidValue? siteId,
    required List<String> inheritedFields,
    required int minUserIdLength,
    required int maxUserIdLength,
    required int minPasswordLength,
    required int maxPasswordLength,
    required int passwordMaxAgeDays,
    required int passwordMinAgeDays,
    required int passwordHistoryCount,
    required int passwordExpiryWarningDays,
    required String passwordComplexity,
    required int maxFailedLoginAttempts,
    required bool inactivityTimeoutEnabled,
    required int inactivityTimeoutMinutes,
    required int dormancyThresholdDays,
    required String preventConcurrentLogin,
    required String browserSessionPolicy,
    required _isc.UuidValue companyId,
  }) = _SsoSecurityPoliciesImpl;

  factory SsoSecurityPolicies.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoSecurityPolicies(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      code: jsonSerialization['code'] as String,
      description: jsonSerialization['description'] as String?,
      scopeLevel: jsonSerialization['scopeLevel'] as String,
      siteId: jsonSerialization['siteId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['siteId']),
      inheritedFields: _ixq89rj6.Protocol().deserialize<List<String>>(
        jsonSerialization['inheritedFields'],
      ),
      minUserIdLength: jsonSerialization['minUserIdLength'] as int,
      maxUserIdLength: jsonSerialization['maxUserIdLength'] as int,
      minPasswordLength: jsonSerialization['minPasswordLength'] as int,
      maxPasswordLength: jsonSerialization['maxPasswordLength'] as int,
      passwordMaxAgeDays: jsonSerialization['passwordMaxAgeDays'] as int,
      passwordMinAgeDays: jsonSerialization['passwordMinAgeDays'] as int,
      passwordHistoryCount: jsonSerialization['passwordHistoryCount'] as int,
      passwordExpiryWarningDays:
          jsonSerialization['passwordExpiryWarningDays'] as int,
      passwordComplexity: jsonSerialization['passwordComplexity'] as String,
      maxFailedLoginAttempts:
          jsonSerialization['maxFailedLoginAttempts'] as int,
      inactivityTimeoutEnabled: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['inactivityTimeoutEnabled'],
      ),
      inactivityTimeoutMinutes:
          jsonSerialization['inactivityTimeoutMinutes'] as int,
      dormancyThresholdDays: jsonSerialization['dormancyThresholdDays'] as int,
      preventConcurrentLogin:
          jsonSerialization['preventConcurrentLogin'] as String,
      browserSessionPolicy: jsonSerialization['browserSessionPolicy'] as String,
      companyId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['companyId'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String name;

  String code;

  String? description;

  String scopeLevel;

  _isc.UuidValue? siteId;

  List<String> inheritedFields;

  int minUserIdLength;

  int maxUserIdLength;

  int minPasswordLength;

  int maxPasswordLength;

  int passwordMaxAgeDays;

  int passwordMinAgeDays;

  int passwordHistoryCount;

  int passwordExpiryWarningDays;

  String passwordComplexity;

  int maxFailedLoginAttempts;

  bool inactivityTimeoutEnabled;

  int inactivityTimeoutMinutes;

  int dormancyThresholdDays;

  String preventConcurrentLogin;

  String browserSessionPolicy;

  _isc.UuidValue companyId;

  /// Returns a shallow copy of this [SsoSecurityPolicies]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoSecurityPolicies copyWith({
    _isc.UuidValue? id,
    String? name,
    String? code,
    String? description,
    String? scopeLevel,
    _isc.UuidValue? siteId,
    List<String>? inheritedFields,
    int? minUserIdLength,
    int? maxUserIdLength,
    int? minPasswordLength,
    int? maxPasswordLength,
    int? passwordMaxAgeDays,
    int? passwordMinAgeDays,
    int? passwordHistoryCount,
    int? passwordExpiryWarningDays,
    String? passwordComplexity,
    int? maxFailedLoginAttempts,
    bool? inactivityTimeoutEnabled,
    int? inactivityTimeoutMinutes,
    int? dormancyThresholdDays,
    String? preventConcurrentLogin,
    String? browserSessionPolicy,
    _isc.UuidValue? companyId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoSecurityPolicies',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'code': code,
      if (description != null) 'description': description,
      'scopeLevel': scopeLevel,
      if (siteId != null) 'siteId': siteId?.toJson(),
      'inheritedFields': inheritedFields.toJson(),
      'minUserIdLength': minUserIdLength,
      'maxUserIdLength': maxUserIdLength,
      'minPasswordLength': minPasswordLength,
      'maxPasswordLength': maxPasswordLength,
      'passwordMaxAgeDays': passwordMaxAgeDays,
      'passwordMinAgeDays': passwordMinAgeDays,
      'passwordHistoryCount': passwordHistoryCount,
      'passwordExpiryWarningDays': passwordExpiryWarningDays,
      'passwordComplexity': passwordComplexity,
      'maxFailedLoginAttempts': maxFailedLoginAttempts,
      'inactivityTimeoutEnabled': inactivityTimeoutEnabled,
      'inactivityTimeoutMinutes': inactivityTimeoutMinutes,
      'dormancyThresholdDays': dormancyThresholdDays,
      'preventConcurrentLogin': preventConcurrentLogin,
      'browserSessionPolicy': browserSessionPolicy,
      'companyId': companyId.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoSecurityPolicies',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'code': code,
      if (description != null) 'description': description,
      'scopeLevel': scopeLevel,
      if (siteId != null) 'siteId': siteId?.toJson(),
      'inheritedFields': inheritedFields.toJson(),
      'minUserIdLength': minUserIdLength,
      'maxUserIdLength': maxUserIdLength,
      'minPasswordLength': minPasswordLength,
      'maxPasswordLength': maxPasswordLength,
      'passwordMaxAgeDays': passwordMaxAgeDays,
      'passwordMinAgeDays': passwordMinAgeDays,
      'passwordHistoryCount': passwordHistoryCount,
      'passwordExpiryWarningDays': passwordExpiryWarningDays,
      'passwordComplexity': passwordComplexity,
      'maxFailedLoginAttempts': maxFailedLoginAttempts,
      'inactivityTimeoutEnabled': inactivityTimeoutEnabled,
      'inactivityTimeoutMinutes': inactivityTimeoutMinutes,
      'dormancyThresholdDays': dormancyThresholdDays,
      'preventConcurrentLogin': preventConcurrentLogin,
      'browserSessionPolicy': browserSessionPolicy,
      'companyId': companyId.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoSecurityPoliciesImpl extends SsoSecurityPolicies {
  _SsoSecurityPoliciesImpl({
    _isc.UuidValue? id,
    required String name,
    required String code,
    String? description,
    required String scopeLevel,
    _isc.UuidValue? siteId,
    required List<String> inheritedFields,
    required int minUserIdLength,
    required int maxUserIdLength,
    required int minPasswordLength,
    required int maxPasswordLength,
    required int passwordMaxAgeDays,
    required int passwordMinAgeDays,
    required int passwordHistoryCount,
    required int passwordExpiryWarningDays,
    required String passwordComplexity,
    required int maxFailedLoginAttempts,
    required bool inactivityTimeoutEnabled,
    required int inactivityTimeoutMinutes,
    required int dormancyThresholdDays,
    required String preventConcurrentLogin,
    required String browserSessionPolicy,
    required _isc.UuidValue companyId,
  }) : super._(
         id: id,
         name: name,
         code: code,
         description: description,
         scopeLevel: scopeLevel,
         siteId: siteId,
         inheritedFields: inheritedFields,
         minUserIdLength: minUserIdLength,
         maxUserIdLength: maxUserIdLength,
         minPasswordLength: minPasswordLength,
         maxPasswordLength: maxPasswordLength,
         passwordMaxAgeDays: passwordMaxAgeDays,
         passwordMinAgeDays: passwordMinAgeDays,
         passwordHistoryCount: passwordHistoryCount,
         passwordExpiryWarningDays: passwordExpiryWarningDays,
         passwordComplexity: passwordComplexity,
         maxFailedLoginAttempts: maxFailedLoginAttempts,
         inactivityTimeoutEnabled: inactivityTimeoutEnabled,
         inactivityTimeoutMinutes: inactivityTimeoutMinutes,
         dormancyThresholdDays: dormancyThresholdDays,
         preventConcurrentLogin: preventConcurrentLogin,
         browserSessionPolicy: browserSessionPolicy,
         companyId: companyId,
       );

  /// Returns a shallow copy of this [SsoSecurityPolicies]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoSecurityPolicies copyWith({
    Object? id = _Undefined,
    String? name,
    String? code,
    Object? description = _Undefined,
    String? scopeLevel,
    Object? siteId = _Undefined,
    List<String>? inheritedFields,
    int? minUserIdLength,
    int? maxUserIdLength,
    int? minPasswordLength,
    int? maxPasswordLength,
    int? passwordMaxAgeDays,
    int? passwordMinAgeDays,
    int? passwordHistoryCount,
    int? passwordExpiryWarningDays,
    String? passwordComplexity,
    int? maxFailedLoginAttempts,
    bool? inactivityTimeoutEnabled,
    int? inactivityTimeoutMinutes,
    int? dormancyThresholdDays,
    String? preventConcurrentLogin,
    String? browserSessionPolicy,
    _isc.UuidValue? companyId,
  }) {
    return SsoSecurityPolicies(
      id: id is _isc.UuidValue? ? id : this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      description: description is String? ? description : this.description,
      scopeLevel: scopeLevel ?? this.scopeLevel,
      siteId: siteId is _isc.UuidValue? ? siteId : this.siteId,
      inheritedFields:
          inheritedFields ?? this.inheritedFields.map((e0) => e0).toList(),
      minUserIdLength: minUserIdLength ?? this.minUserIdLength,
      maxUserIdLength: maxUserIdLength ?? this.maxUserIdLength,
      minPasswordLength: minPasswordLength ?? this.minPasswordLength,
      maxPasswordLength: maxPasswordLength ?? this.maxPasswordLength,
      passwordMaxAgeDays: passwordMaxAgeDays ?? this.passwordMaxAgeDays,
      passwordMinAgeDays: passwordMinAgeDays ?? this.passwordMinAgeDays,
      passwordHistoryCount: passwordHistoryCount ?? this.passwordHistoryCount,
      passwordExpiryWarningDays:
          passwordExpiryWarningDays ?? this.passwordExpiryWarningDays,
      passwordComplexity: passwordComplexity ?? this.passwordComplexity,
      maxFailedLoginAttempts:
          maxFailedLoginAttempts ?? this.maxFailedLoginAttempts,
      inactivityTimeoutEnabled:
          inactivityTimeoutEnabled ?? this.inactivityTimeoutEnabled,
      inactivityTimeoutMinutes:
          inactivityTimeoutMinutes ?? this.inactivityTimeoutMinutes,
      dormancyThresholdDays:
          dormancyThresholdDays ?? this.dormancyThresholdDays,
      preventConcurrentLogin:
          preventConcurrentLogin ?? this.preventConcurrentLogin,
      browserSessionPolicy: browserSessionPolicy ?? this.browserSessionPolicy,
      companyId: companyId ?? this.companyId,
    );
  }
}
