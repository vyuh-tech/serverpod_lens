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

abstract class SsoUsers
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoUsers._({
    this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.name,
    required this.username,
    required this.companyId,
    required this.designationId,
    required this.departmentId,
    required this.isActive,
    required this.isSystemAccount,
    this.phone,
    this.avatarUrl,
    this.avatarPath,
    this.employeeId,
    this.lastLoginAt,
    this.failedLoginAttempts,
    this.lockedAt,
    required this.requiresPasswordReset,
    this.passwordExpiryAt,
    this.passwordChangedAt,
    this.dormancyDeactivatedAt,
    this.deactivationReason,
    required this.userSource,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory SsoUsers({
    _isc.UuidValue? id,
    required String email,
    required String firstName,
    required String lastName,
    String? name,
    required String username,
    required _isc.UuidValue companyId,
    required _isc.UuidValue designationId,
    required _isc.UuidValue departmentId,
    required bool isActive,
    required bool isSystemAccount,
    String? phone,
    String? avatarUrl,
    String? avatarPath,
    String? employeeId,
    DateTime? lastLoginAt,
    int? failedLoginAttempts,
    DateTime? lockedAt,
    required bool requiresPasswordReset,
    DateTime? passwordExpiryAt,
    DateTime? passwordChangedAt,
    DateTime? dormancyDeactivatedAt,
    String? deactivationReason,
    required String userSource,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) = _SsoUsersImpl;

  factory SsoUsers.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoUsers(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      email: jsonSerialization['email'] as String,
      firstName: jsonSerialization['firstName'] as String,
      lastName: jsonSerialization['lastName'] as String,
      name: jsonSerialization['name'] as String?,
      username: jsonSerialization['username'] as String,
      companyId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['companyId'],
      ),
      designationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['designationId'],
      ),
      departmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentId'],
      ),
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      isSystemAccount: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['isSystemAccount'],
      ),
      phone: jsonSerialization['phone'] as String?,
      avatarUrl: jsonSerialization['avatarUrl'] as String?,
      avatarPath: jsonSerialization['avatarPath'] as String?,
      employeeId: jsonSerialization['employeeId'] as String?,
      lastLoginAt: jsonSerialization['lastLoginAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastLoginAt'],
            ),
      failedLoginAttempts: jsonSerialization['failedLoginAttempts'] as int?,
      lockedAt: jsonSerialization['lockedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['lockedAt']),
      requiresPasswordReset: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['requiresPasswordReset'],
      ),
      passwordExpiryAt: jsonSerialization['passwordExpiryAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['passwordExpiryAt'],
            ),
      passwordChangedAt: jsonSerialization['passwordChangedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['passwordChangedAt'],
            ),
      dormancyDeactivatedAt: jsonSerialization['dormancyDeactivatedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['dormancyDeactivatedAt'],
            ),
      deactivationReason: jsonSerialization['deactivationReason'] as String?,
      userSource: jsonSerialization['userSource'] as String,
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
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String email;

  String firstName;

  String lastName;

  String? name;

  String username;

  _isc.UuidValue companyId;

  _isc.UuidValue designationId;

  _isc.UuidValue departmentId;

  bool isActive;

  bool isSystemAccount;

  String? phone;

  String? avatarUrl;

  String? avatarPath;

  String? employeeId;

  DateTime? lastLoginAt;

  int? failedLoginAttempts;

  DateTime? lockedAt;

  bool requiresPasswordReset;

  DateTime? passwordExpiryAt;

  DateTime? passwordChangedAt;

  DateTime? dormancyDeactivatedAt;

  String? deactivationReason;

  String userSource;

  DateTime? createdAt;

  DateTime? updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [SsoUsers]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoUsers copyWith({
    _isc.UuidValue? id,
    String? email,
    String? firstName,
    String? lastName,
    String? name,
    String? username,
    _isc.UuidValue? companyId,
    _isc.UuidValue? designationId,
    _isc.UuidValue? departmentId,
    bool? isActive,
    bool? isSystemAccount,
    String? phone,
    String? avatarUrl,
    String? avatarPath,
    String? employeeId,
    DateTime? lastLoginAt,
    int? failedLoginAttempts,
    DateTime? lockedAt,
    bool? requiresPasswordReset,
    DateTime? passwordExpiryAt,
    DateTime? passwordChangedAt,
    DateTime? dormancyDeactivatedAt,
    String? deactivationReason,
    String? userSource,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoUsers',
      if (id != null) 'id': id?.toJson(),
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      if (name != null) 'name': name,
      'username': username,
      'companyId': companyId.toJson(),
      'designationId': designationId.toJson(),
      'departmentId': departmentId.toJson(),
      'isActive': isActive,
      'isSystemAccount': isSystemAccount,
      if (phone != null) 'phone': phone,
      if (avatarUrl != null) 'avatarUrl': avatarUrl,
      if (avatarPath != null) 'avatarPath': avatarPath,
      if (employeeId != null) 'employeeId': employeeId,
      if (lastLoginAt != null) 'lastLoginAt': lastLoginAt?.toJson(),
      if (failedLoginAttempts != null)
        'failedLoginAttempts': failedLoginAttempts,
      if (lockedAt != null) 'lockedAt': lockedAt?.toJson(),
      'requiresPasswordReset': requiresPasswordReset,
      if (passwordExpiryAt != null)
        'passwordExpiryAt': passwordExpiryAt?.toJson(),
      if (passwordChangedAt != null)
        'passwordChangedAt': passwordChangedAt?.toJson(),
      if (dormancyDeactivatedAt != null)
        'dormancyDeactivatedAt': dormancyDeactivatedAt?.toJson(),
      if (deactivationReason != null) 'deactivationReason': deactivationReason,
      'userSource': userSource,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoUsers',
      if (id != null) 'id': id?.toJson(),
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      if (name != null) 'name': name,
      'username': username,
      'companyId': companyId.toJson(),
      'designationId': designationId.toJson(),
      'departmentId': departmentId.toJson(),
      'isActive': isActive,
      'isSystemAccount': isSystemAccount,
      if (phone != null) 'phone': phone,
      if (avatarUrl != null) 'avatarUrl': avatarUrl,
      if (avatarPath != null) 'avatarPath': avatarPath,
      if (employeeId != null) 'employeeId': employeeId,
      if (lastLoginAt != null) 'lastLoginAt': lastLoginAt?.toJson(),
      if (failedLoginAttempts != null)
        'failedLoginAttempts': failedLoginAttempts,
      if (lockedAt != null) 'lockedAt': lockedAt?.toJson(),
      'requiresPasswordReset': requiresPasswordReset,
      if (passwordExpiryAt != null)
        'passwordExpiryAt': passwordExpiryAt?.toJson(),
      if (passwordChangedAt != null)
        'passwordChangedAt': passwordChangedAt?.toJson(),
      if (dormancyDeactivatedAt != null)
        'dormancyDeactivatedAt': dormancyDeactivatedAt?.toJson(),
      if (deactivationReason != null) 'deactivationReason': deactivationReason,
      'userSource': userSource,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
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

class _SsoUsersImpl extends SsoUsers {
  _SsoUsersImpl({
    _isc.UuidValue? id,
    required String email,
    required String firstName,
    required String lastName,
    String? name,
    required String username,
    required _isc.UuidValue companyId,
    required _isc.UuidValue designationId,
    required _isc.UuidValue departmentId,
    required bool isActive,
    required bool isSystemAccount,
    String? phone,
    String? avatarUrl,
    String? avatarPath,
    String? employeeId,
    DateTime? lastLoginAt,
    int? failedLoginAttempts,
    DateTime? lockedAt,
    required bool requiresPasswordReset,
    DateTime? passwordExpiryAt,
    DateTime? passwordChangedAt,
    DateTime? dormancyDeactivatedAt,
    String? deactivationReason,
    required String userSource,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         email: email,
         firstName: firstName,
         lastName: lastName,
         name: name,
         username: username,
         companyId: companyId,
         designationId: designationId,
         departmentId: departmentId,
         isActive: isActive,
         isSystemAccount: isSystemAccount,
         phone: phone,
         avatarUrl: avatarUrl,
         avatarPath: avatarPath,
         employeeId: employeeId,
         lastLoginAt: lastLoginAt,
         failedLoginAttempts: failedLoginAttempts,
         lockedAt: lockedAt,
         requiresPasswordReset: requiresPasswordReset,
         passwordExpiryAt: passwordExpiryAt,
         passwordChangedAt: passwordChangedAt,
         dormancyDeactivatedAt: dormancyDeactivatedAt,
         deactivationReason: deactivationReason,
         userSource: userSource,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [SsoUsers]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoUsers copyWith({
    Object? id = _Undefined,
    String? email,
    String? firstName,
    String? lastName,
    Object? name = _Undefined,
    String? username,
    _isc.UuidValue? companyId,
    _isc.UuidValue? designationId,
    _isc.UuidValue? departmentId,
    bool? isActive,
    bool? isSystemAccount,
    Object? phone = _Undefined,
    Object? avatarUrl = _Undefined,
    Object? avatarPath = _Undefined,
    Object? employeeId = _Undefined,
    Object? lastLoginAt = _Undefined,
    Object? failedLoginAttempts = _Undefined,
    Object? lockedAt = _Undefined,
    bool? requiresPasswordReset,
    Object? passwordExpiryAt = _Undefined,
    Object? passwordChangedAt = _Undefined,
    Object? dormancyDeactivatedAt = _Undefined,
    Object? deactivationReason = _Undefined,
    String? userSource,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return SsoUsers(
      id: id is _isc.UuidValue? ? id : this.id,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      name: name is String? ? name : this.name,
      username: username ?? this.username,
      companyId: companyId ?? this.companyId,
      designationId: designationId ?? this.designationId,
      departmentId: departmentId ?? this.departmentId,
      isActive: isActive ?? this.isActive,
      isSystemAccount: isSystemAccount ?? this.isSystemAccount,
      phone: phone is String? ? phone : this.phone,
      avatarUrl: avatarUrl is String? ? avatarUrl : this.avatarUrl,
      avatarPath: avatarPath is String? ? avatarPath : this.avatarPath,
      employeeId: employeeId is String? ? employeeId : this.employeeId,
      lastLoginAt: lastLoginAt is DateTime? ? lastLoginAt : this.lastLoginAt,
      failedLoginAttempts: failedLoginAttempts is int?
          ? failedLoginAttempts
          : this.failedLoginAttempts,
      lockedAt: lockedAt is DateTime? ? lockedAt : this.lockedAt,
      requiresPasswordReset:
          requiresPasswordReset ?? this.requiresPasswordReset,
      passwordExpiryAt: passwordExpiryAt is DateTime?
          ? passwordExpiryAt
          : this.passwordExpiryAt,
      passwordChangedAt: passwordChangedAt is DateTime?
          ? passwordChangedAt
          : this.passwordChangedAt,
      dormancyDeactivatedAt: dormancyDeactivatedAt is DateTime?
          ? dormancyDeactivatedAt
          : this.dormancyDeactivatedAt,
      deactivationReason: deactivationReason is String?
          ? deactivationReason
          : this.deactivationReason,
      userSource: userSource ?? this.userSource,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
