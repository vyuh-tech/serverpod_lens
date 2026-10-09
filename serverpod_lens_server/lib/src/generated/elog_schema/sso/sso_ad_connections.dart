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

abstract class SsoAdConnections
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
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
    _is.UuidValue? id,
    required _is.UuidValue companyId,
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
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    required int versionNumber,
  }) = _SsoAdConnectionsImpl;

  factory SsoAdConnections.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoAdConnections(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      companyId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['companyId'],
      ),
      name: jsonSerialization['name'] as String,
      host: jsonSerialization['host'] as String,
      port: jsonSerialization['port'] as int,
      useSsl: _is.BoolJsonExtension.fromJson(jsonSerialization['useSsl']),
      baseDn: jsonSerialization['baseDn'] as String,
      bindDn: jsonSerialization['bindDn'] as String,
      bindPassword: jsonSerialization['bindPassword'] as String,
      userSearchFilter: jsonSerialization['userSearchFilter'] as String?,
      usernameAttribute: jsonSerialization['usernameAttribute'] as String?,
      emailAttribute: jsonSerialization['emailAttribute'] as String?,
      nameAttribute: jsonSerialization['nameAttribute'] as String?,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      lastTestAt: jsonSerialization['lastTestAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['lastTestAt']),
      lastTestSuccess: jsonSerialization['lastTestSuccess'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(
              jsonSerialization['lastTestSuccess'],
            ),
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
      versionNumber: jsonSerialization['versionNumber'] as int,
    );
  }

  static final t = SsoAdConnectionsTable();

  static const db = SsoAdConnectionsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue companyId;

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

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  int versionNumber;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoAdConnections]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoAdConnections copyWith({
    _is.UuidValue? id,
    _is.UuidValue? companyId,
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
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
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

  static SsoAdConnectionsInclude include() {
    return SsoAdConnectionsInclude._();
  }

  static SsoAdConnectionsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoAdConnectionsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoAdConnectionsTable>? orderBy,
    _is.OrderByListBuilder<SsoAdConnectionsTable>? orderByList,
    SsoAdConnectionsInclude? include,
  }) {
    return SsoAdConnectionsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoAdConnections.t),
      orderByList: orderByList?.call(SsoAdConnections.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoAdConnectionsImpl extends SsoAdConnections {
  _SsoAdConnectionsImpl({
    _is.UuidValue? id,
    required _is.UuidValue companyId,
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
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
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
  @_is.useResult
  @override
  SsoAdConnections copyWith({
    Object? id = _Undefined,
    _is.UuidValue? companyId,
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
      id: id is _is.UuidValue? ? id : this.id,
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
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
      versionNumber: versionNumber ?? this.versionNumber,
    );
  }
}

class SsoAdConnectionsUpdateTable
    extends _is.UpdateTable<SsoAdConnectionsTable> {
  SsoAdConnectionsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.companyId,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> host(String value) => _is.ColumnValue(
    table.host,
    value,
  );

  _is.ColumnValue<int, int> port(int value) => _is.ColumnValue(
    table.port,
    value,
  );

  _is.ColumnValue<bool, bool> useSsl(bool value) => _is.ColumnValue(
    table.useSsl,
    value,
  );

  _is.ColumnValue<String, String> baseDn(String value) => _is.ColumnValue(
    table.baseDn,
    value,
  );

  _is.ColumnValue<String, String> bindDn(String value) => _is.ColumnValue(
    table.bindDn,
    value,
  );

  _is.ColumnValue<String, String> bindPassword(String value) => _is.ColumnValue(
    table.bindPassword,
    value,
  );

  _is.ColumnValue<String, String> userSearchFilter(String? value) =>
      _is.ColumnValue(
        table.userSearchFilter,
        value,
      );

  _is.ColumnValue<String, String> usernameAttribute(String? value) =>
      _is.ColumnValue(
        table.usernameAttribute,
        value,
      );

  _is.ColumnValue<String, String> emailAttribute(String? value) =>
      _is.ColumnValue(
        table.emailAttribute,
        value,
      );

  _is.ColumnValue<String, String> nameAttribute(String? value) =>
      _is.ColumnValue(
        table.nameAttribute,
        value,
      );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> lastTestAt(DateTime? value) =>
      _is.ColumnValue(
        table.lastTestAt,
        value,
      );

  _is.ColumnValue<bool, bool> lastTestSuccess(bool? value) => _is.ColumnValue(
    table.lastTestSuccess,
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

  _is.ColumnValue<int, int> versionNumber(int value) => _is.ColumnValue(
    table.versionNumber,
    value,
  );
}

class SsoAdConnectionsTable extends _is.Table<_is.UuidValue?> {
  SsoAdConnectionsTable({super.tableRelation})
    : super(tableName: 'sso_ad_connections') {
    updateTable = SsoAdConnectionsUpdateTable(this);
    companyId = _is.ColumnUuid(
      'companyId',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    host = _is.ColumnString(
      'host',
      this,
    );
    port = _is.ColumnInt(
      'port',
      this,
    );
    useSsl = _is.ColumnBool(
      'useSsl',
      this,
    );
    baseDn = _is.ColumnString(
      'baseDn',
      this,
    );
    bindDn = _is.ColumnString(
      'bindDn',
      this,
    );
    bindPassword = _is.ColumnString(
      'bindPassword',
      this,
    );
    userSearchFilter = _is.ColumnString(
      'userSearchFilter',
      this,
    );
    usernameAttribute = _is.ColumnString(
      'usernameAttribute',
      this,
    );
    emailAttribute = _is.ColumnString(
      'emailAttribute',
      this,
    );
    nameAttribute = _is.ColumnString(
      'nameAttribute',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
    lastTestAt = _is.ColumnDateTime(
      'lastTestAt',
      this,
    );
    lastTestSuccess = _is.ColumnBool(
      'lastTestSuccess',
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
    versionNumber = _is.ColumnInt(
      'versionNumber',
      this,
    );
  }

  late final SsoAdConnectionsUpdateTable updateTable;

  late final _is.ColumnUuid companyId;

  late final _is.ColumnString name;

  late final _is.ColumnString host;

  late final _is.ColumnInt port;

  late final _is.ColumnBool useSsl;

  late final _is.ColumnString baseDn;

  late final _is.ColumnString bindDn;

  late final _is.ColumnString bindPassword;

  late final _is.ColumnString userSearchFilter;

  late final _is.ColumnString usernameAttribute;

  late final _is.ColumnString emailAttribute;

  late final _is.ColumnString nameAttribute;

  late final _is.ColumnBool isActive;

  late final _is.ColumnDateTime lastTestAt;

  late final _is.ColumnBool lastTestSuccess;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  late final _is.ColumnInt versionNumber;

  @override
  List<_is.Column> get columns => [
    id,
    companyId,
    name,
    host,
    port,
    useSsl,
    baseDn,
    bindDn,
    bindPassword,
    userSearchFilter,
    usernameAttribute,
    emailAttribute,
    nameAttribute,
    isActive,
    lastTestAt,
    lastTestSuccess,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
    versionNumber,
  ];
}

class SsoAdConnectionsInclude extends _is.IncludeObject {
  SsoAdConnectionsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoAdConnections.t;
}

class SsoAdConnectionsIncludeList extends _is.IncludeList {
  SsoAdConnectionsIncludeList._({
    _is.WhereExpressionBuilder<SsoAdConnectionsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoAdConnections.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoAdConnections.t;
}

class SsoAdConnectionsRepository {
  const SsoAdConnectionsRepository._();

  /// Returns a list of [SsoAdConnections]s matching the given query parameters.
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
  Future<List<SsoAdConnections>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoAdConnectionsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoAdConnectionsTable>? orderBy,
    _is.OrderByListBuilder<SsoAdConnectionsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoAdConnections>(
      where: where?.call(SsoAdConnections.t),
      orderBy: orderBy?.call(SsoAdConnections.t),
      orderByList: orderByList?.call(SsoAdConnections.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoAdConnections] matching the given query parameters.
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
  Future<SsoAdConnections?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoAdConnectionsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoAdConnectionsTable>? orderBy,
    _is.OrderByListBuilder<SsoAdConnectionsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoAdConnections>(
      where: where?.call(SsoAdConnections.t),
      orderBy: orderBy?.call(SsoAdConnections.t),
      orderByList: orderByList?.call(SsoAdConnections.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoAdConnections] by its [id] or null if no such row exists.
  Future<SsoAdConnections?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoAdConnections>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoAdConnections]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoAdConnections]s will have their `id` fields set.
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
  Future<List<SsoAdConnections>> insert(
    _is.DatabaseSession session,
    List<SsoAdConnections> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoAdConnections>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoAdConnections] and returns the inserted row.
  ///
  /// The returned [SsoAdConnections] will have its `id` field set.
  Future<SsoAdConnections> insertRow(
    _is.DatabaseSession session,
    SsoAdConnections row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoAdConnections>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoAdConnections]s in the list and returns the resulting rows.
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
  /// The returned [SsoAdConnections]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoAdConnections>> upsert(
    _is.DatabaseSession session,
    List<SsoAdConnections> rows, {
    required _is.ColumnSelections<SsoAdConnectionsTable> conflictColumns,
    _is.ColumnSelections<SsoAdConnectionsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoAdConnectionsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoAdConnections>(
      rows,
      conflictColumns: conflictColumns(SsoAdConnections.t),
      updateColumns: updateColumns?.call(SsoAdConnections.t),
      updateWhere: updateWhere?.call(SsoAdConnections.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoAdConnections] and returns the resulting row.
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
  /// The returned [SsoAdConnections] will have its `id` field set.
  Future<SsoAdConnections?> upsertRow(
    _is.DatabaseSession session,
    SsoAdConnections row, {
    required _is.ColumnSelections<SsoAdConnectionsTable> conflictColumns,
    _is.ColumnSelections<SsoAdConnectionsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoAdConnectionsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoAdConnections>(
      row,
      conflictColumns: conflictColumns(SsoAdConnections.t),
      updateColumns: updateColumns?.call(SsoAdConnections.t),
      updateWhere: updateWhere?.call(SsoAdConnections.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoAdConnections]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoAdConnections>> update(
    _is.DatabaseSession session,
    List<SsoAdConnections> rows, {
    _is.ColumnSelections<SsoAdConnectionsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoAdConnections>(
      rows,
      columns: columns?.call(SsoAdConnections.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoAdConnections]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoAdConnections> updateRow(
    _is.DatabaseSession session,
    SsoAdConnections row, {
    _is.ColumnSelections<SsoAdConnectionsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoAdConnections>(
      row,
      columns: columns?.call(SsoAdConnections.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoAdConnections] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoAdConnections?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoAdConnectionsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoAdConnections>(
      id,
      columnValues: columnValues(SsoAdConnections.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoAdConnections]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoAdConnections>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoAdConnectionsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoAdConnectionsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoAdConnectionsTable>? orderBy,
    _is.OrderByListBuilder<SsoAdConnectionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoAdConnections>(
      columnValues: columnValues(SsoAdConnections.t.updateTable),
      where: where(SsoAdConnections.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoAdConnections.t),
      orderByList: orderByList?.call(SsoAdConnections.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoAdConnections]s in the list and returns the deleted rows.
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
  Future<List<SsoAdConnections>> delete(
    _is.DatabaseSession session,
    List<SsoAdConnections> rows, {
    _is.OrderByBuilder<SsoAdConnectionsTable>? orderBy,
    _is.OrderByListBuilder<SsoAdConnectionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoAdConnections>(
      rows,
      orderBy: orderBy?.call(SsoAdConnections.t),
      orderByList: orderByList?.call(SsoAdConnections.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoAdConnections].
  Future<SsoAdConnections> deleteRow(
    _is.DatabaseSession session,
    SsoAdConnections row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoAdConnections>(
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
  Future<List<SsoAdConnections>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoAdConnectionsTable> where,
    _is.OrderByBuilder<SsoAdConnectionsTable>? orderBy,
    _is.OrderByListBuilder<SsoAdConnectionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoAdConnections>(
      where: where(SsoAdConnections.t),
      orderBy: orderBy?.call(SsoAdConnections.t),
      orderByList: orderByList?.call(SsoAdConnections.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoAdConnectionsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoAdConnections>(
      where: where?.call(SsoAdConnections.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoAdConnections] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoAdConnectionsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoAdConnections>(
      where: where(SsoAdConnections.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
