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

abstract class SsoUserSessions
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoUserSessions._({
    this.id,
    required this.userId,
    required this.sessionToken,
    this.authSessionId,
    this.deviceLabel,
    this.userAgent,
    this.ipAddress,
    required this.createdAt,
    required this.lastActiveAt,
    required this.inactivityTimeoutMinutes,
    this.policySiteId,
    this.inactivityEnabledAt,
    this.productCode,
    this.browserId,
    required this.browserSessionPolicy,
    this.deviceType,
    this.revokedAt,
    this.revokeReason,
  });

  factory SsoUserSessions({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required _is.UuidValue sessionToken,
    _is.UuidValue? authSessionId,
    String? deviceLabel,
    String? userAgent,
    String? ipAddress,
    required DateTime createdAt,
    required DateTime lastActiveAt,
    required int inactivityTimeoutMinutes,
    _is.UuidValue? policySiteId,
    DateTime? inactivityEnabledAt,
    String? productCode,
    String? browserId,
    required String browserSessionPolicy,
    String? deviceType,
    DateTime? revokedAt,
    String? revokeReason,
  }) = _SsoUserSessionsImpl;

  factory SsoUserSessions.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoUserSessions(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      sessionToken: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['sessionToken'],
      ),
      authSessionId: jsonSerialization['authSessionId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['authSessionId'],
            ),
      deviceLabel: jsonSerialization['deviceLabel'] as String?,
      userAgent: jsonSerialization['userAgent'] as String?,
      ipAddress: jsonSerialization['ipAddress'] as String?,
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      lastActiveAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['lastActiveAt'],
      ),
      inactivityTimeoutMinutes:
          jsonSerialization['inactivityTimeoutMinutes'] as int,
      policySiteId: jsonSerialization['policySiteId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['policySiteId'],
            ),
      inactivityEnabledAt: jsonSerialization['inactivityEnabledAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['inactivityEnabledAt'],
            ),
      productCode: jsonSerialization['productCode'] as String?,
      browserId: jsonSerialization['browserId'] as String?,
      browserSessionPolicy: jsonSerialization['browserSessionPolicy'] as String,
      deviceType: jsonSerialization['deviceType'] as String?,
      revokedAt: jsonSerialization['revokedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['revokedAt']),
      revokeReason: jsonSerialization['revokeReason'] as String?,
    );
  }

  static final t = SsoUserSessionsTable();

  static const db = SsoUserSessionsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue userId;

  _is.UuidValue sessionToken;

  _is.UuidValue? authSessionId;

  String? deviceLabel;

  String? userAgent;

  String? ipAddress;

  DateTime createdAt;

  DateTime lastActiveAt;

  int inactivityTimeoutMinutes;

  _is.UuidValue? policySiteId;

  DateTime? inactivityEnabledAt;

  String? productCode;

  String? browserId;

  String browserSessionPolicy;

  String? deviceType;

  DateTime? revokedAt;

  String? revokeReason;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoUserSessions]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoUserSessions copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _is.UuidValue? sessionToken,
    _is.UuidValue? authSessionId,
    String? deviceLabel,
    String? userAgent,
    String? ipAddress,
    DateTime? createdAt,
    DateTime? lastActiveAt,
    int? inactivityTimeoutMinutes,
    _is.UuidValue? policySiteId,
    DateTime? inactivityEnabledAt,
    String? productCode,
    String? browserId,
    String? browserSessionPolicy,
    String? deviceType,
    DateTime? revokedAt,
    String? revokeReason,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoUserSessions',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'sessionToken': sessionToken.toJson(),
      if (authSessionId != null) 'authSessionId': authSessionId?.toJson(),
      if (deviceLabel != null) 'deviceLabel': deviceLabel,
      if (userAgent != null) 'userAgent': userAgent,
      if (ipAddress != null) 'ipAddress': ipAddress,
      'createdAt': createdAt.toJson(),
      'lastActiveAt': lastActiveAt.toJson(),
      'inactivityTimeoutMinutes': inactivityTimeoutMinutes,
      if (policySiteId != null) 'policySiteId': policySiteId?.toJson(),
      if (inactivityEnabledAt != null)
        'inactivityEnabledAt': inactivityEnabledAt?.toJson(),
      if (productCode != null) 'productCode': productCode,
      if (browserId != null) 'browserId': browserId,
      'browserSessionPolicy': browserSessionPolicy,
      if (deviceType != null) 'deviceType': deviceType,
      if (revokedAt != null) 'revokedAt': revokedAt?.toJson(),
      if (revokeReason != null) 'revokeReason': revokeReason,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoUserSessions',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'sessionToken': sessionToken.toJson(),
      if (authSessionId != null) 'authSessionId': authSessionId?.toJson(),
      if (deviceLabel != null) 'deviceLabel': deviceLabel,
      if (userAgent != null) 'userAgent': userAgent,
      if (ipAddress != null) 'ipAddress': ipAddress,
      'createdAt': createdAt.toJson(),
      'lastActiveAt': lastActiveAt.toJson(),
      'inactivityTimeoutMinutes': inactivityTimeoutMinutes,
      if (policySiteId != null) 'policySiteId': policySiteId?.toJson(),
      if (inactivityEnabledAt != null)
        'inactivityEnabledAt': inactivityEnabledAt?.toJson(),
      if (productCode != null) 'productCode': productCode,
      if (browserId != null) 'browserId': browserId,
      'browserSessionPolicy': browserSessionPolicy,
      if (deviceType != null) 'deviceType': deviceType,
      if (revokedAt != null) 'revokedAt': revokedAt?.toJson(),
      if (revokeReason != null) 'revokeReason': revokeReason,
    };
  }

  static SsoUserSessionsInclude include() {
    return SsoUserSessionsInclude._();
  }

  static SsoUserSessionsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoUserSessionsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserSessionsTable>? orderBy,
    _is.OrderByListBuilder<SsoUserSessionsTable>? orderByList,
    SsoUserSessionsInclude? include,
  }) {
    return SsoUserSessionsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoUserSessions.t),
      orderByList: orderByList?.call(SsoUserSessions.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoUserSessionsImpl extends SsoUserSessions {
  _SsoUserSessionsImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required _is.UuidValue sessionToken,
    _is.UuidValue? authSessionId,
    String? deviceLabel,
    String? userAgent,
    String? ipAddress,
    required DateTime createdAt,
    required DateTime lastActiveAt,
    required int inactivityTimeoutMinutes,
    _is.UuidValue? policySiteId,
    DateTime? inactivityEnabledAt,
    String? productCode,
    String? browserId,
    required String browserSessionPolicy,
    String? deviceType,
    DateTime? revokedAt,
    String? revokeReason,
  }) : super._(
         id: id,
         userId: userId,
         sessionToken: sessionToken,
         authSessionId: authSessionId,
         deviceLabel: deviceLabel,
         userAgent: userAgent,
         ipAddress: ipAddress,
         createdAt: createdAt,
         lastActiveAt: lastActiveAt,
         inactivityTimeoutMinutes: inactivityTimeoutMinutes,
         policySiteId: policySiteId,
         inactivityEnabledAt: inactivityEnabledAt,
         productCode: productCode,
         browserId: browserId,
         browserSessionPolicy: browserSessionPolicy,
         deviceType: deviceType,
         revokedAt: revokedAt,
         revokeReason: revokeReason,
       );

  /// Returns a shallow copy of this [SsoUserSessions]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoUserSessions copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    _is.UuidValue? sessionToken,
    Object? authSessionId = _Undefined,
    Object? deviceLabel = _Undefined,
    Object? userAgent = _Undefined,
    Object? ipAddress = _Undefined,
    DateTime? createdAt,
    DateTime? lastActiveAt,
    int? inactivityTimeoutMinutes,
    Object? policySiteId = _Undefined,
    Object? inactivityEnabledAt = _Undefined,
    Object? productCode = _Undefined,
    Object? browserId = _Undefined,
    String? browserSessionPolicy,
    Object? deviceType = _Undefined,
    Object? revokedAt = _Undefined,
    Object? revokeReason = _Undefined,
  }) {
    return SsoUserSessions(
      id: id is _is.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      sessionToken: sessionToken ?? this.sessionToken,
      authSessionId: authSessionId is _is.UuidValue?
          ? authSessionId
          : this.authSessionId,
      deviceLabel: deviceLabel is String? ? deviceLabel : this.deviceLabel,
      userAgent: userAgent is String? ? userAgent : this.userAgent,
      ipAddress: ipAddress is String? ? ipAddress : this.ipAddress,
      createdAt: createdAt ?? this.createdAt,
      lastActiveAt: lastActiveAt ?? this.lastActiveAt,
      inactivityTimeoutMinutes:
          inactivityTimeoutMinutes ?? this.inactivityTimeoutMinutes,
      policySiteId: policySiteId is _is.UuidValue?
          ? policySiteId
          : this.policySiteId,
      inactivityEnabledAt: inactivityEnabledAt is DateTime?
          ? inactivityEnabledAt
          : this.inactivityEnabledAt,
      productCode: productCode is String? ? productCode : this.productCode,
      browserId: browserId is String? ? browserId : this.browserId,
      browserSessionPolicy: browserSessionPolicy ?? this.browserSessionPolicy,
      deviceType: deviceType is String? ? deviceType : this.deviceType,
      revokedAt: revokedAt is DateTime? ? revokedAt : this.revokedAt,
      revokeReason: revokeReason is String? ? revokeReason : this.revokeReason,
    );
  }
}

class SsoUserSessionsUpdateTable extends _is.UpdateTable<SsoUserSessionsTable> {
  SsoUserSessionsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> sessionToken(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.sessionToken,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> authSessionId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.authSessionId,
    value,
  );

  _is.ColumnValue<String, String> deviceLabel(String? value) => _is.ColumnValue(
    table.deviceLabel,
    value,
  );

  _is.ColumnValue<String, String> userAgent(String? value) => _is.ColumnValue(
    table.userAgent,
    value,
  );

  _is.ColumnValue<String, String> ipAddress(String? value) => _is.ColumnValue(
    table.ipAddress,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> lastActiveAt(DateTime value) =>
      _is.ColumnValue(
        table.lastActiveAt,
        value,
      );

  _is.ColumnValue<int, int> inactivityTimeoutMinutes(int value) =>
      _is.ColumnValue(
        table.inactivityTimeoutMinutes,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> policySiteId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.policySiteId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> inactivityEnabledAt(DateTime? value) =>
      _is.ColumnValue(
        table.inactivityEnabledAt,
        value,
      );

  _is.ColumnValue<String, String> productCode(String? value) => _is.ColumnValue(
    table.productCode,
    value,
  );

  _is.ColumnValue<String, String> browserId(String? value) => _is.ColumnValue(
    table.browserId,
    value,
  );

  _is.ColumnValue<String, String> browserSessionPolicy(String value) =>
      _is.ColumnValue(
        table.browserSessionPolicy,
        value,
      );

  _is.ColumnValue<String, String> deviceType(String? value) => _is.ColumnValue(
    table.deviceType,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> revokedAt(DateTime? value) =>
      _is.ColumnValue(
        table.revokedAt,
        value,
      );

  _is.ColumnValue<String, String> revokeReason(String? value) =>
      _is.ColumnValue(
        table.revokeReason,
        value,
      );
}

class SsoUserSessionsTable extends _is.Table<_is.UuidValue?> {
  SsoUserSessionsTable({super.tableRelation})
    : super(tableName: 'sso_user_sessions') {
    updateTable = SsoUserSessionsUpdateTable(this);
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    sessionToken = _is.ColumnUuid(
      'sessionToken',
      this,
    );
    authSessionId = _is.ColumnUuid(
      'authSessionId',
      this,
    );
    deviceLabel = _is.ColumnString(
      'deviceLabel',
      this,
    );
    userAgent = _is.ColumnString(
      'userAgent',
      this,
    );
    ipAddress = _is.ColumnString(
      'ipAddress',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    lastActiveAt = _is.ColumnDateTime(
      'lastActiveAt',
      this,
    );
    inactivityTimeoutMinutes = _is.ColumnInt(
      'inactivityTimeoutMinutes',
      this,
    );
    policySiteId = _is.ColumnUuid(
      'policySiteId',
      this,
    );
    inactivityEnabledAt = _is.ColumnDateTime(
      'inactivityEnabledAt',
      this,
    );
    productCode = _is.ColumnString(
      'productCode',
      this,
    );
    browserId = _is.ColumnString(
      'browserId',
      this,
    );
    browserSessionPolicy = _is.ColumnString(
      'browserSessionPolicy',
      this,
    );
    deviceType = _is.ColumnString(
      'deviceType',
      this,
    );
    revokedAt = _is.ColumnDateTime(
      'revokedAt',
      this,
    );
    revokeReason = _is.ColumnString(
      'revokeReason',
      this,
    );
  }

  late final SsoUserSessionsUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnUuid sessionToken;

  late final _is.ColumnUuid authSessionId;

  late final _is.ColumnString deviceLabel;

  late final _is.ColumnString userAgent;

  late final _is.ColumnString ipAddress;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime lastActiveAt;

  late final _is.ColumnInt inactivityTimeoutMinutes;

  late final _is.ColumnUuid policySiteId;

  late final _is.ColumnDateTime inactivityEnabledAt;

  late final _is.ColumnString productCode;

  late final _is.ColumnString browserId;

  late final _is.ColumnString browserSessionPolicy;

  late final _is.ColumnString deviceType;

  late final _is.ColumnDateTime revokedAt;

  late final _is.ColumnString revokeReason;

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    sessionToken,
    authSessionId,
    deviceLabel,
    userAgent,
    ipAddress,
    createdAt,
    lastActiveAt,
    inactivityTimeoutMinutes,
    policySiteId,
    inactivityEnabledAt,
    productCode,
    browserId,
    browserSessionPolicy,
    deviceType,
    revokedAt,
    revokeReason,
  ];
}

class SsoUserSessionsInclude extends _is.IncludeObject {
  SsoUserSessionsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoUserSessions.t;
}

class SsoUserSessionsIncludeList extends _is.IncludeList {
  SsoUserSessionsIncludeList._({
    _is.WhereExpressionBuilder<SsoUserSessionsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoUserSessions.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoUserSessions.t;
}

class SsoUserSessionsRepository {
  const SsoUserSessionsRepository._();

  /// Returns a list of [SsoUserSessions]s matching the given query parameters.
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
  Future<List<SsoUserSessions>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserSessionsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserSessionsTable>? orderBy,
    _is.OrderByListBuilder<SsoUserSessionsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoUserSessions>(
      where: where?.call(SsoUserSessions.t),
      orderBy: orderBy?.call(SsoUserSessions.t),
      orderByList: orderByList?.call(SsoUserSessions.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoUserSessions] matching the given query parameters.
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
  Future<SsoUserSessions?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserSessionsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoUserSessionsTable>? orderBy,
    _is.OrderByListBuilder<SsoUserSessionsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoUserSessions>(
      where: where?.call(SsoUserSessions.t),
      orderBy: orderBy?.call(SsoUserSessions.t),
      orderByList: orderByList?.call(SsoUserSessions.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoUserSessions] by its [id] or null if no such row exists.
  Future<SsoUserSessions?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoUserSessions>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoUserSessions]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoUserSessions]s will have their `id` fields set.
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
  Future<List<SsoUserSessions>> insert(
    _is.DatabaseSession session,
    List<SsoUserSessions> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoUserSessions>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoUserSessions] and returns the inserted row.
  ///
  /// The returned [SsoUserSessions] will have its `id` field set.
  Future<SsoUserSessions> insertRow(
    _is.DatabaseSession session,
    SsoUserSessions row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoUserSessions>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoUserSessions]s in the list and returns the resulting rows.
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
  /// The returned [SsoUserSessions]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserSessions>> upsert(
    _is.DatabaseSession session,
    List<SsoUserSessions> rows, {
    required _is.ColumnSelections<SsoUserSessionsTable> conflictColumns,
    _is.ColumnSelections<SsoUserSessionsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoUserSessionsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoUserSessions>(
      rows,
      conflictColumns: conflictColumns(SsoUserSessions.t),
      updateColumns: updateColumns?.call(SsoUserSessions.t),
      updateWhere: updateWhere?.call(SsoUserSessions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoUserSessions] and returns the resulting row.
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
  /// The returned [SsoUserSessions] will have its `id` field set.
  Future<SsoUserSessions?> upsertRow(
    _is.DatabaseSession session,
    SsoUserSessions row, {
    required _is.ColumnSelections<SsoUserSessionsTable> conflictColumns,
    _is.ColumnSelections<SsoUserSessionsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoUserSessionsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoUserSessions>(
      row,
      conflictColumns: conflictColumns(SsoUserSessions.t),
      updateColumns: updateColumns?.call(SsoUserSessions.t),
      updateWhere: updateWhere?.call(SsoUserSessions.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoUserSessions]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserSessions>> update(
    _is.DatabaseSession session,
    List<SsoUserSessions> rows, {
    _is.ColumnSelections<SsoUserSessionsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoUserSessions>(
      rows,
      columns: columns?.call(SsoUserSessions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoUserSessions]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoUserSessions> updateRow(
    _is.DatabaseSession session,
    SsoUserSessions row, {
    _is.ColumnSelections<SsoUserSessionsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoUserSessions>(
      row,
      columns: columns?.call(SsoUserSessions.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoUserSessions] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoUserSessions?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoUserSessionsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoUserSessions>(
      id,
      columnValues: columnValues(SsoUserSessions.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoUserSessions]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoUserSessions>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoUserSessionsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoUserSessionsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoUserSessionsTable>? orderBy,
    _is.OrderByListBuilder<SsoUserSessionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoUserSessions>(
      columnValues: columnValues(SsoUserSessions.t.updateTable),
      where: where(SsoUserSessions.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoUserSessions.t),
      orderByList: orderByList?.call(SsoUserSessions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoUserSessions]s in the list and returns the deleted rows.
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
  Future<List<SsoUserSessions>> delete(
    _is.DatabaseSession session,
    List<SsoUserSessions> rows, {
    _is.OrderByBuilder<SsoUserSessionsTable>? orderBy,
    _is.OrderByListBuilder<SsoUserSessionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoUserSessions>(
      rows,
      orderBy: orderBy?.call(SsoUserSessions.t),
      orderByList: orderByList?.call(SsoUserSessions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoUserSessions].
  Future<SsoUserSessions> deleteRow(
    _is.DatabaseSession session,
    SsoUserSessions row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoUserSessions>(
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
  Future<List<SsoUserSessions>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoUserSessionsTable> where,
    _is.OrderByBuilder<SsoUserSessionsTable>? orderBy,
    _is.OrderByListBuilder<SsoUserSessionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoUserSessions>(
      where: where(SsoUserSessions.t),
      orderBy: orderBy?.call(SsoUserSessions.t),
      orderByList: orderByList?.call(SsoUserSessions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoUserSessionsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoUserSessions>(
      where: where?.call(SsoUserSessions.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoUserSessions] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoUserSessionsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoUserSessions>(
      where: where(SsoUserSessions.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
