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
import 'package:serverpod_lens_server/src/generated/protocol.dart' as _ioh8es0p;

abstract class SsoSecurityPolicies
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
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
    _is.UuidValue? id,
    required String name,
    required String code,
    String? description,
    required String scopeLevel,
    _is.UuidValue? siteId,
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
    required _is.UuidValue companyId,
  }) = _SsoSecurityPoliciesImpl;

  factory SsoSecurityPolicies.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoSecurityPolicies(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      code: jsonSerialization['code'] as String,
      description: jsonSerialization['description'] as String?,
      scopeLevel: jsonSerialization['scopeLevel'] as String,
      siteId: jsonSerialization['siteId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['siteId']),
      inheritedFields: _ioh8es0p.Protocol().deserialize<List<String>>(
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
      inactivityTimeoutEnabled: _is.BoolJsonExtension.fromJson(
        jsonSerialization['inactivityTimeoutEnabled'],
      ),
      inactivityTimeoutMinutes:
          jsonSerialization['inactivityTimeoutMinutes'] as int,
      dormancyThresholdDays: jsonSerialization['dormancyThresholdDays'] as int,
      preventConcurrentLogin:
          jsonSerialization['preventConcurrentLogin'] as String,
      browserSessionPolicy: jsonSerialization['browserSessionPolicy'] as String,
      companyId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['companyId'],
      ),
    );
  }

  static final t = SsoSecurityPoliciesTable();

  static const db = SsoSecurityPoliciesRepository._();

  @override
  _is.UuidValue? id;

  String name;

  String code;

  String? description;

  String scopeLevel;

  _is.UuidValue? siteId;

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

  _is.UuidValue companyId;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoSecurityPolicies]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoSecurityPolicies copyWith({
    _is.UuidValue? id,
    String? name,
    String? code,
    String? description,
    String? scopeLevel,
    _is.UuidValue? siteId,
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
    _is.UuidValue? companyId,
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

  static SsoSecurityPoliciesInclude include() {
    return SsoSecurityPoliciesInclude._();
  }

  static SsoSecurityPoliciesIncludeList includeList({
    _is.WhereExpressionBuilder<SsoSecurityPoliciesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoSecurityPoliciesTable>? orderBy,
    _is.OrderByListBuilder<SsoSecurityPoliciesTable>? orderByList,
    SsoSecurityPoliciesInclude? include,
  }) {
    return SsoSecurityPoliciesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoSecurityPolicies.t),
      orderByList: orderByList?.call(SsoSecurityPolicies.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoSecurityPoliciesImpl extends SsoSecurityPolicies {
  _SsoSecurityPoliciesImpl({
    _is.UuidValue? id,
    required String name,
    required String code,
    String? description,
    required String scopeLevel,
    _is.UuidValue? siteId,
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
    required _is.UuidValue companyId,
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
  @_is.useResult
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
    _is.UuidValue? companyId,
  }) {
    return SsoSecurityPolicies(
      id: id is _is.UuidValue? ? id : this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      description: description is String? ? description : this.description,
      scopeLevel: scopeLevel ?? this.scopeLevel,
      siteId: siteId is _is.UuidValue? ? siteId : this.siteId,
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

class SsoSecurityPoliciesUpdateTable
    extends _is.UpdateTable<SsoSecurityPoliciesTable> {
  SsoSecurityPoliciesUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<String, String> scopeLevel(String value) => _is.ColumnValue(
    table.scopeLevel,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> siteId(_is.UuidValue? value) =>
      _is.ColumnValue(
        table.siteId,
        value,
      );

  _is.ColumnValue<List<String>, List<String>> inheritedFields(
    List<String> value,
  ) => _is.ColumnValue(
    table.inheritedFields,
    value,
  );

  _is.ColumnValue<int, int> minUserIdLength(int value) => _is.ColumnValue(
    table.minUserIdLength,
    value,
  );

  _is.ColumnValue<int, int> maxUserIdLength(int value) => _is.ColumnValue(
    table.maxUserIdLength,
    value,
  );

  _is.ColumnValue<int, int> minPasswordLength(int value) => _is.ColumnValue(
    table.minPasswordLength,
    value,
  );

  _is.ColumnValue<int, int> maxPasswordLength(int value) => _is.ColumnValue(
    table.maxPasswordLength,
    value,
  );

  _is.ColumnValue<int, int> passwordMaxAgeDays(int value) => _is.ColumnValue(
    table.passwordMaxAgeDays,
    value,
  );

  _is.ColumnValue<int, int> passwordMinAgeDays(int value) => _is.ColumnValue(
    table.passwordMinAgeDays,
    value,
  );

  _is.ColumnValue<int, int> passwordHistoryCount(int value) => _is.ColumnValue(
    table.passwordHistoryCount,
    value,
  );

  _is.ColumnValue<int, int> passwordExpiryWarningDays(int value) =>
      _is.ColumnValue(
        table.passwordExpiryWarningDays,
        value,
      );

  _is.ColumnValue<String, String> passwordComplexity(String value) =>
      _is.ColumnValue(
        table.passwordComplexity,
        value,
      );

  _is.ColumnValue<int, int> maxFailedLoginAttempts(int value) =>
      _is.ColumnValue(
        table.maxFailedLoginAttempts,
        value,
      );

  _is.ColumnValue<bool, bool> inactivityTimeoutEnabled(bool value) =>
      _is.ColumnValue(
        table.inactivityTimeoutEnabled,
        value,
      );

  _is.ColumnValue<int, int> inactivityTimeoutMinutes(int value) =>
      _is.ColumnValue(
        table.inactivityTimeoutMinutes,
        value,
      );

  _is.ColumnValue<int, int> dormancyThresholdDays(int value) => _is.ColumnValue(
    table.dormancyThresholdDays,
    value,
  );

  _is.ColumnValue<String, String> preventConcurrentLogin(String value) =>
      _is.ColumnValue(
        table.preventConcurrentLogin,
        value,
      );

  _is.ColumnValue<String, String> browserSessionPolicy(String value) =>
      _is.ColumnValue(
        table.browserSessionPolicy,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.companyId,
    value,
  );
}

class SsoSecurityPoliciesTable extends _is.Table<_is.UuidValue?> {
  SsoSecurityPoliciesTable({super.tableRelation})
    : super(tableName: 'sso_security_policies') {
    updateTable = SsoSecurityPoliciesUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    scopeLevel = _is.ColumnString(
      'scopeLevel',
      this,
    );
    siteId = _is.ColumnUuid(
      'siteId',
      this,
    );
    inheritedFields = _is.ColumnSerializable<List<String>>(
      'inheritedFields',
      this,
    );
    minUserIdLength = _is.ColumnInt(
      'minUserIdLength',
      this,
    );
    maxUserIdLength = _is.ColumnInt(
      'maxUserIdLength',
      this,
    );
    minPasswordLength = _is.ColumnInt(
      'minPasswordLength',
      this,
    );
    maxPasswordLength = _is.ColumnInt(
      'maxPasswordLength',
      this,
    );
    passwordMaxAgeDays = _is.ColumnInt(
      'passwordMaxAgeDays',
      this,
    );
    passwordMinAgeDays = _is.ColumnInt(
      'passwordMinAgeDays',
      this,
    );
    passwordHistoryCount = _is.ColumnInt(
      'passwordHistoryCount',
      this,
    );
    passwordExpiryWarningDays = _is.ColumnInt(
      'passwordExpiryWarningDays',
      this,
    );
    passwordComplexity = _is.ColumnString(
      'passwordComplexity',
      this,
    );
    maxFailedLoginAttempts = _is.ColumnInt(
      'maxFailedLoginAttempts',
      this,
    );
    inactivityTimeoutEnabled = _is.ColumnBool(
      'inactivityTimeoutEnabled',
      this,
    );
    inactivityTimeoutMinutes = _is.ColumnInt(
      'inactivityTimeoutMinutes',
      this,
    );
    dormancyThresholdDays = _is.ColumnInt(
      'dormancyThresholdDays',
      this,
    );
    preventConcurrentLogin = _is.ColumnString(
      'preventConcurrentLogin',
      this,
    );
    browserSessionPolicy = _is.ColumnString(
      'browserSessionPolicy',
      this,
    );
    companyId = _is.ColumnUuid(
      'companyId',
      this,
    );
  }

  late final SsoSecurityPoliciesUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString code;

  late final _is.ColumnString description;

  late final _is.ColumnString scopeLevel;

  late final _is.ColumnUuid siteId;

  late final _is.ColumnSerializable<List<String>> inheritedFields;

  late final _is.ColumnInt minUserIdLength;

  late final _is.ColumnInt maxUserIdLength;

  late final _is.ColumnInt minPasswordLength;

  late final _is.ColumnInt maxPasswordLength;

  late final _is.ColumnInt passwordMaxAgeDays;

  late final _is.ColumnInt passwordMinAgeDays;

  late final _is.ColumnInt passwordHistoryCount;

  late final _is.ColumnInt passwordExpiryWarningDays;

  late final _is.ColumnString passwordComplexity;

  late final _is.ColumnInt maxFailedLoginAttempts;

  late final _is.ColumnBool inactivityTimeoutEnabled;

  late final _is.ColumnInt inactivityTimeoutMinutes;

  late final _is.ColumnInt dormancyThresholdDays;

  late final _is.ColumnString preventConcurrentLogin;

  late final _is.ColumnString browserSessionPolicy;

  late final _is.ColumnUuid companyId;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    code,
    description,
    scopeLevel,
    siteId,
    inheritedFields,
    minUserIdLength,
    maxUserIdLength,
    minPasswordLength,
    maxPasswordLength,
    passwordMaxAgeDays,
    passwordMinAgeDays,
    passwordHistoryCount,
    passwordExpiryWarningDays,
    passwordComplexity,
    maxFailedLoginAttempts,
    inactivityTimeoutEnabled,
    inactivityTimeoutMinutes,
    dormancyThresholdDays,
    preventConcurrentLogin,
    browserSessionPolicy,
    companyId,
  ];
}

class SsoSecurityPoliciesInclude extends _is.IncludeObject {
  SsoSecurityPoliciesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoSecurityPolicies.t;
}

class SsoSecurityPoliciesIncludeList extends _is.IncludeList {
  SsoSecurityPoliciesIncludeList._({
    _is.WhereExpressionBuilder<SsoSecurityPoliciesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoSecurityPolicies.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoSecurityPolicies.t;
}

class SsoSecurityPoliciesRepository {
  const SsoSecurityPoliciesRepository._();

  /// Returns a list of [SsoSecurityPolicies]s matching the given query parameters.
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
  Future<List<SsoSecurityPolicies>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoSecurityPoliciesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoSecurityPoliciesTable>? orderBy,
    _is.OrderByListBuilder<SsoSecurityPoliciesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoSecurityPolicies>(
      where: where?.call(SsoSecurityPolicies.t),
      orderBy: orderBy?.call(SsoSecurityPolicies.t),
      orderByList: orderByList?.call(SsoSecurityPolicies.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoSecurityPolicies] matching the given query parameters.
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
  Future<SsoSecurityPolicies?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoSecurityPoliciesTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoSecurityPoliciesTable>? orderBy,
    _is.OrderByListBuilder<SsoSecurityPoliciesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoSecurityPolicies>(
      where: where?.call(SsoSecurityPolicies.t),
      orderBy: orderBy?.call(SsoSecurityPolicies.t),
      orderByList: orderByList?.call(SsoSecurityPolicies.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoSecurityPolicies] by its [id] or null if no such row exists.
  Future<SsoSecurityPolicies?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoSecurityPolicies>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoSecurityPolicies]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoSecurityPolicies]s will have their `id` fields set.
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
  Future<List<SsoSecurityPolicies>> insert(
    _is.DatabaseSession session,
    List<SsoSecurityPolicies> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoSecurityPolicies>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoSecurityPolicies] and returns the inserted row.
  ///
  /// The returned [SsoSecurityPolicies] will have its `id` field set.
  Future<SsoSecurityPolicies> insertRow(
    _is.DatabaseSession session,
    SsoSecurityPolicies row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoSecurityPolicies>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoSecurityPolicies]s in the list and returns the resulting rows.
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
  /// The returned [SsoSecurityPolicies]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoSecurityPolicies>> upsert(
    _is.DatabaseSession session,
    List<SsoSecurityPolicies> rows, {
    required _is.ColumnSelections<SsoSecurityPoliciesTable> conflictColumns,
    _is.ColumnSelections<SsoSecurityPoliciesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoSecurityPoliciesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoSecurityPolicies>(
      rows,
      conflictColumns: conflictColumns(SsoSecurityPolicies.t),
      updateColumns: updateColumns?.call(SsoSecurityPolicies.t),
      updateWhere: updateWhere?.call(SsoSecurityPolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoSecurityPolicies] and returns the resulting row.
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
  /// The returned [SsoSecurityPolicies] will have its `id` field set.
  Future<SsoSecurityPolicies?> upsertRow(
    _is.DatabaseSession session,
    SsoSecurityPolicies row, {
    required _is.ColumnSelections<SsoSecurityPoliciesTable> conflictColumns,
    _is.ColumnSelections<SsoSecurityPoliciesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoSecurityPoliciesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoSecurityPolicies>(
      row,
      conflictColumns: conflictColumns(SsoSecurityPolicies.t),
      updateColumns: updateColumns?.call(SsoSecurityPolicies.t),
      updateWhere: updateWhere?.call(SsoSecurityPolicies.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoSecurityPolicies]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoSecurityPolicies>> update(
    _is.DatabaseSession session,
    List<SsoSecurityPolicies> rows, {
    _is.ColumnSelections<SsoSecurityPoliciesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoSecurityPolicies>(
      rows,
      columns: columns?.call(SsoSecurityPolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoSecurityPolicies]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoSecurityPolicies> updateRow(
    _is.DatabaseSession session,
    SsoSecurityPolicies row, {
    _is.ColumnSelections<SsoSecurityPoliciesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoSecurityPolicies>(
      row,
      columns: columns?.call(SsoSecurityPolicies.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoSecurityPolicies] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoSecurityPolicies?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoSecurityPoliciesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoSecurityPolicies>(
      id,
      columnValues: columnValues(SsoSecurityPolicies.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoSecurityPolicies]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoSecurityPolicies>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoSecurityPoliciesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoSecurityPoliciesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoSecurityPoliciesTable>? orderBy,
    _is.OrderByListBuilder<SsoSecurityPoliciesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoSecurityPolicies>(
      columnValues: columnValues(SsoSecurityPolicies.t.updateTable),
      where: where(SsoSecurityPolicies.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoSecurityPolicies.t),
      orderByList: orderByList?.call(SsoSecurityPolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoSecurityPolicies]s in the list and returns the deleted rows.
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
  Future<List<SsoSecurityPolicies>> delete(
    _is.DatabaseSession session,
    List<SsoSecurityPolicies> rows, {
    _is.OrderByBuilder<SsoSecurityPoliciesTable>? orderBy,
    _is.OrderByListBuilder<SsoSecurityPoliciesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoSecurityPolicies>(
      rows,
      orderBy: orderBy?.call(SsoSecurityPolicies.t),
      orderByList: orderByList?.call(SsoSecurityPolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoSecurityPolicies].
  Future<SsoSecurityPolicies> deleteRow(
    _is.DatabaseSession session,
    SsoSecurityPolicies row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoSecurityPolicies>(
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
  Future<List<SsoSecurityPolicies>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoSecurityPoliciesTable> where,
    _is.OrderByBuilder<SsoSecurityPoliciesTable>? orderBy,
    _is.OrderByListBuilder<SsoSecurityPoliciesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoSecurityPolicies>(
      where: where(SsoSecurityPolicies.t),
      orderBy: orderBy?.call(SsoSecurityPolicies.t),
      orderByList: orderByList?.call(SsoSecurityPolicies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoSecurityPoliciesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoSecurityPolicies>(
      where: where?.call(SsoSecurityPolicies.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoSecurityPolicies] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoSecurityPoliciesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoSecurityPolicies>(
      where: where(SsoSecurityPolicies.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
