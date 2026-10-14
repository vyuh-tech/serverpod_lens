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
import 'package:serverpod/serverpod.dart' as _is;

abstract class SsoUsers
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
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
    _is.UuidValue? id,
    required String email,
    required String firstName,
    required String lastName,
    String? name,
    required String username,
    required _is.UuidValue companyId,
    required _is.UuidValue designationId,
    required _is.UuidValue departmentId,
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
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _SsoUsersImpl;

  factory SsoUsers.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoUsers(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      email: jsonSerialization['email'] as String,
      firstName: jsonSerialization['firstName'] as String,
      lastName: jsonSerialization['lastName'] as String,
      name: jsonSerialization['name'] as String?,
      username: jsonSerialization['username'] as String,
      companyId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['companyId'],
      ),
      designationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['designationId'],
      ),
      departmentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['departmentId'],
      ),
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      isSystemAccount: _is.BoolJsonExtension.fromJson(
        jsonSerialization['isSystemAccount'],
      ),
      phone: jsonSerialization['phone'] as String?,
      avatarUrl: jsonSerialization['avatarUrl'] as String?,
      avatarPath: jsonSerialization['avatarPath'] as String?,
      employeeId: jsonSerialization['employeeId'] as String?,
      lastLoginAt: jsonSerialization['lastLoginAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastLoginAt'],
            ),
      failedLoginAttempts: jsonSerialization['failedLoginAttempts'] as int?,
      lockedAt: jsonSerialization['lockedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['lockedAt']),
      requiresPasswordReset: _is.BoolJsonExtension.fromJson(
        jsonSerialization['requiresPasswordReset'],
      ),
      passwordExpiryAt: jsonSerialization['passwordExpiryAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['passwordExpiryAt'],
            ),
      passwordChangedAt: jsonSerialization['passwordChangedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['passwordChangedAt'],
            ),
      dormancyDeactivatedAt: jsonSerialization['dormancyDeactivatedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['dormancyDeactivatedAt'],
            ),
      deactivationReason: jsonSerialization['deactivationReason'] as String?,
      userSource: jsonSerialization['userSource'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['createdBy']),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['updatedBy']),
    );
  }

  static final t = SsoUsersTable();

  static const db = SsoUsersRepository._();

  @override
  _is.UuidValue? id;

  String email;

  String firstName;

  String lastName;

  String? name;

  String username;

  _is.UuidValue companyId;

  _is.UuidValue designationId;

  _is.UuidValue departmentId;

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

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoUsers]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoUsers copyWith({
    _is.UuidValue? id,
    String? email,
    String? firstName,
    String? lastName,
    String? name,
    String? username,
    _is.UuidValue? companyId,
    _is.UuidValue? designationId,
    _is.UuidValue? departmentId,
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
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
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

  static SsoUsersInclude include() {
    return SsoUsersInclude._();
  }

  static SsoUsersIncludeList includeList({
    _is.WhereExpressionBuilder<SsoUsersTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUsersTable>? orderBy,
    _is.OrderByListBuilder<SsoUsersTable>? orderByList,
    SsoUsersInclude? include,
  }) {
    return SsoUsersIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoUsers.t),
      orderByList: orderByList?.call(SsoUsers.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoUsersImpl extends SsoUsers {
  _SsoUsersImpl({
    _is.UuidValue? id,
    required String email,
    required String firstName,
    required String lastName,
    String? name,
    required String username,
    required _is.UuidValue companyId,
    required _is.UuidValue designationId,
    required _is.UuidValue departmentId,
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
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
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
  @_is.useResult
  @override
  SsoUsers copyWith({
    Object? id = _Undefined,
    String? email,
    String? firstName,
    String? lastName,
    Object? name = _Undefined,
    String? username,
    _is.UuidValue? companyId,
    _is.UuidValue? designationId,
    _is.UuidValue? departmentId,
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
      id: id is _is.UuidValue? ? id : this.id,
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
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class SsoUsersUpdateTable extends _is.UpdateTable<SsoUsersTable> {
  SsoUsersUpdateTable(super.table);

  _is.ColumnValue<String, String> email(String value) => _is.ColumnValue(
    table.email,
    value,
  );

  _is.ColumnValue<String, String> firstName(String value) => _is.ColumnValue(
    table.firstName,
    value,
  );

  _is.ColumnValue<String, String> lastName(String value) => _is.ColumnValue(
    table.lastName,
    value,
  );

  _is.ColumnValue<String, String> name(String? value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> username(String value) => _is.ColumnValue(
    table.username,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.companyId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> designationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.designationId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> departmentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.departmentId,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<bool, bool> isSystemAccount(bool value) => _is.ColumnValue(
    table.isSystemAccount,
    value,
  );

  _is.ColumnValue<String, String> phone(String? value) => _is.ColumnValue(
    table.phone,
    value,
  );

  _is.ColumnValue<String, String> avatarUrl(String? value) => _is.ColumnValue(
    table.avatarUrl,
    value,
  );

  _is.ColumnValue<String, String> avatarPath(String? value) => _is.ColumnValue(
    table.avatarPath,
    value,
  );

  _is.ColumnValue<String, String> employeeId(String? value) => _is.ColumnValue(
    table.employeeId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> lastLoginAt(DateTime? value) =>
      _is.ColumnValue(
        table.lastLoginAt,
        value,
      );

  _is.ColumnValue<int, int> failedLoginAttempts(int? value) => _is.ColumnValue(
    table.failedLoginAttempts,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> lockedAt(DateTime? value) =>
      _is.ColumnValue(
        table.lockedAt,
        value,
      );

  _is.ColumnValue<bool, bool> requiresPasswordReset(bool value) =>
      _is.ColumnValue(
        table.requiresPasswordReset,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> passwordExpiryAt(DateTime? value) =>
      _is.ColumnValue(
        table.passwordExpiryAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> passwordChangedAt(DateTime? value) =>
      _is.ColumnValue(
        table.passwordChangedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> dormancyDeactivatedAt(DateTime? value) =>
      _is.ColumnValue(
        table.dormancyDeactivatedAt,
        value,
      );

  _is.ColumnValue<String, String> deactivationReason(String? value) =>
      _is.ColumnValue(
        table.deactivationReason,
        value,
      );

  _is.ColumnValue<String, String> userSource(String value) => _is.ColumnValue(
    table.userSource,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime? value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> createdBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.createdBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> updatedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.updatedBy,
    value,
  );
}

class SsoUsersTable extends _is.Table<_is.UuidValue?> {
  SsoUsersTable({super.tableRelation}) : super(tableName: 'sso_users') {
    updateTable = SsoUsersUpdateTable(this);
    email = _is.ColumnString(
      'email',
      this,
    );
    firstName = _is.ColumnString(
      'firstName',
      this,
    );
    lastName = _is.ColumnString(
      'lastName',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    username = _is.ColumnString(
      'username',
      this,
    );
    companyId = _is.ColumnUuid(
      'companyId',
      this,
    );
    designationId = _is.ColumnUuid(
      'designationId',
      this,
    );
    departmentId = _is.ColumnUuid(
      'departmentId',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
    isSystemAccount = _is.ColumnBool(
      'isSystemAccount',
      this,
    );
    phone = _is.ColumnString(
      'phone',
      this,
    );
    avatarUrl = _is.ColumnString(
      'avatarUrl',
      this,
    );
    avatarPath = _is.ColumnString(
      'avatarPath',
      this,
    );
    employeeId = _is.ColumnString(
      'employeeId',
      this,
    );
    lastLoginAt = _is.ColumnDateTime(
      'lastLoginAt',
      this,
    );
    failedLoginAttempts = _is.ColumnInt(
      'failedLoginAttempts',
      this,
    );
    lockedAt = _is.ColumnDateTime(
      'lockedAt',
      this,
    );
    requiresPasswordReset = _is.ColumnBool(
      'requiresPasswordReset',
      this,
    );
    passwordExpiryAt = _is.ColumnDateTime(
      'passwordExpiryAt',
      this,
    );
    passwordChangedAt = _is.ColumnDateTime(
      'passwordChangedAt',
      this,
    );
    dormancyDeactivatedAt = _is.ColumnDateTime(
      'dormancyDeactivatedAt',
      this,
    );
    deactivationReason = _is.ColumnString(
      'deactivationReason',
      this,
    );
    userSource = _is.ColumnString(
      'userSource',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
    );
    createdBy = _is.ColumnUuid(
      'createdBy',
      this,
    );
    updatedBy = _is.ColumnUuid(
      'updatedBy',
      this,
    );
  }

  late final SsoUsersUpdateTable updateTable;

  late final _is.ColumnString email;

  late final _is.ColumnString firstName;

  late final _is.ColumnString lastName;

  late final _is.ColumnString name;

  late final _is.ColumnString username;

  late final _is.ColumnUuid companyId;

  late final _is.ColumnUuid designationId;

  late final _is.ColumnUuid departmentId;

  late final _is.ColumnBool isActive;

  late final _is.ColumnBool isSystemAccount;

  late final _is.ColumnString phone;

  late final _is.ColumnString avatarUrl;

  late final _is.ColumnString avatarPath;

  late final _is.ColumnString employeeId;

  late final _is.ColumnDateTime lastLoginAt;

  late final _is.ColumnInt failedLoginAttempts;

  late final _is.ColumnDateTime lockedAt;

  late final _is.ColumnBool requiresPasswordReset;

  late final _is.ColumnDateTime passwordExpiryAt;

  late final _is.ColumnDateTime passwordChangedAt;

  late final _is.ColumnDateTime dormancyDeactivatedAt;

  late final _is.ColumnString deactivationReason;

  late final _is.ColumnString userSource;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    email,
    firstName,
    lastName,
    name,
    username,
    companyId,
    designationId,
    departmentId,
    isActive,
    isSystemAccount,
    phone,
    avatarUrl,
    avatarPath,
    employeeId,
    lastLoginAt,
    failedLoginAttempts,
    lockedAt,
    requiresPasswordReset,
    passwordExpiryAt,
    passwordChangedAt,
    dormancyDeactivatedAt,
    deactivationReason,
    userSource,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class SsoUsersInclude extends _is.IncludeObject {
  SsoUsersInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoUsers.t;
}

class SsoUsersIncludeList extends _is.IncludeList {
  SsoUsersIncludeList._({
    _is.WhereExpressionBuilder<SsoUsersTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoUsers.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoUsers.t;
}

class SsoUsersRepository {
  const SsoUsersRepository._();

  /// Returns a list of [SsoUsers]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<SsoUsers>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUsersTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUsersTable>? orderBy,
    _is.OrderByListBuilder<SsoUsersTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoUsers>(
      where: where?.call(SsoUsers.t),
      orderBy: orderBy?.call(SsoUsers.t),
      orderByList: orderByList?.call(SsoUsers.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoUsers] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<SsoUsers?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUsersTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoUsersTable>? orderBy,
    _is.OrderByListBuilder<SsoUsersTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoUsers>(
      where: where?.call(SsoUsers.t),
      orderBy: orderBy?.call(SsoUsers.t),
      orderByList: orderByList?.call(SsoUsers.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoUsers] by its [id] or null if no such row exists.
  Future<SsoUsers?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoUsers>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoUsers]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoUsers]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUsers>> insert(
    _is.DatabaseSession session,
    List<SsoUsers> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoUsers>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoUsers] and returns the inserted row.
  ///
  /// The returned [SsoUsers] will have its `id` field set.
  Future<SsoUsers> insertRow(
    _is.DatabaseSession session,
    SsoUsers row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoUsers>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoUsers]s in the list and returns the resulting rows.
  ///
  /// If a row conflicts on the given [conflictColumns], the existing row is
  /// updated with the new values. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies to rows matching the
  /// given expression. Conflicting rows that don't match are skipped and not
  /// returned, so the resulting list may be shorter than [rows].
  ///
  /// The returned [SsoUsers]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUsers>> upsert(
    _is.DatabaseSession session,
    List<SsoUsers> rows, {
    required _is.ColumnSelections<SsoUsersTable> conflictColumns,
    _is.ColumnSelections<SsoUsersTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoUsersTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoUsers>(
      rows,
      conflictColumns: conflictColumns(SsoUsers.t),
      updateColumns: updateColumns?.call(SsoUsers.t),
      updateWhere: updateWhere?.call(SsoUsers.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoUsers] and returns the resulting row.
  ///
  /// If the row conflicts on the given [conflictColumns], the existing row is
  /// updated. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies when the existing
  /// row matches the expression. Returns `null` if no row was affected — for
  /// example when [updateWhere] does not match the conflicting row.
  ///
  /// The returned [SsoUsers] will have its `id` field set.
  Future<SsoUsers?> upsertRow(
    _is.DatabaseSession session,
    SsoUsers row, {
    required _is.ColumnSelections<SsoUsersTable> conflictColumns,
    _is.ColumnSelections<SsoUsersTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoUsersTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoUsers>(
      row,
      conflictColumns: conflictColumns(SsoUsers.t),
      updateColumns: updateColumns?.call(SsoUsers.t),
      updateWhere: updateWhere?.call(SsoUsers.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoUsers]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUsers>> update(
    _is.DatabaseSession session,
    List<SsoUsers> rows, {
    _is.ColumnSelections<SsoUsersTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoUsers>(
      rows,
      columns: columns?.call(SsoUsers.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoUsers]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoUsers> updateRow(
    _is.DatabaseSession session,
    SsoUsers row, {
    _is.ColumnSelections<SsoUsersTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoUsers>(
      row,
      columns: columns?.call(SsoUsers.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoUsers] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoUsers?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoUsersUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoUsers>(
      id,
      columnValues: columnValues(SsoUsers.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoUsers]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUsers>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoUsersUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<SsoUsersTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUsersTable>? orderBy,
    _is.OrderByListBuilder<SsoUsersTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoUsers>(
      columnValues: columnValues(SsoUsers.t.updateTable),
      where: where(SsoUsers.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoUsers.t),
      orderByList: orderByList?.call(SsoUsers.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoUsers]s in the list and returns the deleted rows.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUsers>> delete(
    _is.DatabaseSession session,
    List<SsoUsers> rows, {
    _is.OrderByBuilder<SsoUsersTable>? orderBy,
    _is.OrderByListBuilder<SsoUsersTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoUsers>(
      rows,
      orderBy: orderBy?.call(SsoUsers.t),
      orderByList: orderByList?.call(SsoUsers.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoUsers].
  Future<SsoUsers> deleteRow(
    _is.DatabaseSession session,
    SsoUsers row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoUsers>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUsers>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoUsersTable> where,
    _is.OrderByBuilder<SsoUsersTable>? orderBy,
    _is.OrderByListBuilder<SsoUsersTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoUsers>(
      where: where(SsoUsers.t),
      orderBy: orderBy?.call(SsoUsers.t),
      orderByList: orderByList?.call(SsoUsers.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUsersTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoUsers>(
      where: where?.call(SsoUsers.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoUsers] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoUsersTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoUsers>(
      where: where(SsoUsers.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
