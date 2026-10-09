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

abstract class SsoCompanies
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoCompanies._({
    this.id,
    required this.parentCompanyId,
    required this.name,
    this.subtitle,
    required this.code,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.state,
    this.country,
    this.postalCode,
    this.phone,
    this.email,
    this.website,
    this.logoUrl,
    this.metadata,
    this.legalName,
    this.supportEmail,
    required this.plan,
    required this.language,
    required this.timeZone,
    required this.dateFormat,
    required this.timeFormat,
    required this.numberFormat,
    required this.firstDayOfWeek,
  });

  factory SsoCompanies({
    _is.UuidValue? id,
    required _is.UuidValue parentCompanyId,
    required String name,
    String? subtitle,
    required String code,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    String? phone,
    String? email,
    String? website,
    String? logoUrl,
    String? metadata,
    String? legalName,
    String? supportEmail,
    required String plan,
    required String language,
    required String timeZone,
    required String dateFormat,
    required String timeFormat,
    required String numberFormat,
    required int firstDayOfWeek,
  }) = _SsoCompaniesImpl;

  factory SsoCompanies.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoCompanies(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      parentCompanyId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['parentCompanyId'],
      ),
      name: jsonSerialization['name'] as String,
      subtitle: jsonSerialization['subtitle'] as String?,
      code: jsonSerialization['code'] as String,
      addressLine1: jsonSerialization['addressLine1'] as String?,
      addressLine2: jsonSerialization['addressLine2'] as String?,
      city: jsonSerialization['city'] as String?,
      state: jsonSerialization['state'] as String?,
      country: jsonSerialization['country'] as String?,
      postalCode: jsonSerialization['postalCode'] as String?,
      phone: jsonSerialization['phone'] as String?,
      email: jsonSerialization['email'] as String?,
      website: jsonSerialization['website'] as String?,
      logoUrl: jsonSerialization['logoUrl'] as String?,
      metadata: jsonSerialization['metadata'] as String?,
      legalName: jsonSerialization['legalName'] as String?,
      supportEmail: jsonSerialization['supportEmail'] as String?,
      plan: jsonSerialization['plan'] as String,
      language: jsonSerialization['language'] as String,
      timeZone: jsonSerialization['timeZone'] as String,
      dateFormat: jsonSerialization['dateFormat'] as String,
      timeFormat: jsonSerialization['timeFormat'] as String,
      numberFormat: jsonSerialization['numberFormat'] as String,
      firstDayOfWeek: jsonSerialization['firstDayOfWeek'] as int,
    );
  }

  static final t = SsoCompaniesTable();

  static const db = SsoCompaniesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue parentCompanyId;

  String name;

  String? subtitle;

  String code;

  String? addressLine1;

  String? addressLine2;

  String? city;

  String? state;

  String? country;

  String? postalCode;

  String? phone;

  String? email;

  String? website;

  String? logoUrl;

  String? metadata;

  String? legalName;

  String? supportEmail;

  String plan;

  String language;

  String timeZone;

  String dateFormat;

  String timeFormat;

  String numberFormat;

  int firstDayOfWeek;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoCompanies]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoCompanies copyWith({
    _is.UuidValue? id,
    _is.UuidValue? parentCompanyId,
    String? name,
    String? subtitle,
    String? code,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    String? phone,
    String? email,
    String? website,
    String? logoUrl,
    String? metadata,
    String? legalName,
    String? supportEmail,
    String? plan,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoCompanies',
      if (id != null) 'id': id?.toJson(),
      'parentCompanyId': parentCompanyId.toJson(),
      'name': name,
      if (subtitle != null) 'subtitle': subtitle,
      'code': code,
      if (addressLine1 != null) 'addressLine1': addressLine1,
      if (addressLine2 != null) 'addressLine2': addressLine2,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (postalCode != null) 'postalCode': postalCode,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (website != null) 'website': website,
      if (logoUrl != null) 'logoUrl': logoUrl,
      if (metadata != null) 'metadata': metadata,
      if (legalName != null) 'legalName': legalName,
      if (supportEmail != null) 'supportEmail': supportEmail,
      'plan': plan,
      'language': language,
      'timeZone': timeZone,
      'dateFormat': dateFormat,
      'timeFormat': timeFormat,
      'numberFormat': numberFormat,
      'firstDayOfWeek': firstDayOfWeek,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoCompanies',
      if (id != null) 'id': id?.toJson(),
      'parentCompanyId': parentCompanyId.toJson(),
      'name': name,
      if (subtitle != null) 'subtitle': subtitle,
      'code': code,
      if (addressLine1 != null) 'addressLine1': addressLine1,
      if (addressLine2 != null) 'addressLine2': addressLine2,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (postalCode != null) 'postalCode': postalCode,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (website != null) 'website': website,
      if (logoUrl != null) 'logoUrl': logoUrl,
      if (metadata != null) 'metadata': metadata,
      if (legalName != null) 'legalName': legalName,
      if (supportEmail != null) 'supportEmail': supportEmail,
      'plan': plan,
      'language': language,
      'timeZone': timeZone,
      'dateFormat': dateFormat,
      'timeFormat': timeFormat,
      'numberFormat': numberFormat,
      'firstDayOfWeek': firstDayOfWeek,
    };
  }

  static SsoCompaniesInclude include() {
    return SsoCompaniesInclude._();
  }

  static SsoCompaniesIncludeList includeList({
    _is.WhereExpressionBuilder<SsoCompaniesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoCompaniesTable>? orderBy,
    _is.OrderByListBuilder<SsoCompaniesTable>? orderByList,
    SsoCompaniesInclude? include,
  }) {
    return SsoCompaniesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoCompanies.t),
      orderByList: orderByList?.call(SsoCompanies.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoCompaniesImpl extends SsoCompanies {
  _SsoCompaniesImpl({
    _is.UuidValue? id,
    required _is.UuidValue parentCompanyId,
    required String name,
    String? subtitle,
    required String code,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    String? phone,
    String? email,
    String? website,
    String? logoUrl,
    String? metadata,
    String? legalName,
    String? supportEmail,
    required String plan,
    required String language,
    required String timeZone,
    required String dateFormat,
    required String timeFormat,
    required String numberFormat,
    required int firstDayOfWeek,
  }) : super._(
         id: id,
         parentCompanyId: parentCompanyId,
         name: name,
         subtitle: subtitle,
         code: code,
         addressLine1: addressLine1,
         addressLine2: addressLine2,
         city: city,
         state: state,
         country: country,
         postalCode: postalCode,
         phone: phone,
         email: email,
         website: website,
         logoUrl: logoUrl,
         metadata: metadata,
         legalName: legalName,
         supportEmail: supportEmail,
         plan: plan,
         language: language,
         timeZone: timeZone,
         dateFormat: dateFormat,
         timeFormat: timeFormat,
         numberFormat: numberFormat,
         firstDayOfWeek: firstDayOfWeek,
       );

  /// Returns a shallow copy of this [SsoCompanies]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoCompanies copyWith({
    Object? id = _Undefined,
    _is.UuidValue? parentCompanyId,
    String? name,
    Object? subtitle = _Undefined,
    String? code,
    Object? addressLine1 = _Undefined,
    Object? addressLine2 = _Undefined,
    Object? city = _Undefined,
    Object? state = _Undefined,
    Object? country = _Undefined,
    Object? postalCode = _Undefined,
    Object? phone = _Undefined,
    Object? email = _Undefined,
    Object? website = _Undefined,
    Object? logoUrl = _Undefined,
    Object? metadata = _Undefined,
    Object? legalName = _Undefined,
    Object? supportEmail = _Undefined,
    String? plan,
    String? language,
    String? timeZone,
    String? dateFormat,
    String? timeFormat,
    String? numberFormat,
    int? firstDayOfWeek,
  }) {
    return SsoCompanies(
      id: id is _is.UuidValue? ? id : this.id,
      parentCompanyId: parentCompanyId ?? this.parentCompanyId,
      name: name ?? this.name,
      subtitle: subtitle is String? ? subtitle : this.subtitle,
      code: code ?? this.code,
      addressLine1: addressLine1 is String? ? addressLine1 : this.addressLine1,
      addressLine2: addressLine2 is String? ? addressLine2 : this.addressLine2,
      city: city is String? ? city : this.city,
      state: state is String? ? state : this.state,
      country: country is String? ? country : this.country,
      postalCode: postalCode is String? ? postalCode : this.postalCode,
      phone: phone is String? ? phone : this.phone,
      email: email is String? ? email : this.email,
      website: website is String? ? website : this.website,
      logoUrl: logoUrl is String? ? logoUrl : this.logoUrl,
      metadata: metadata is String? ? metadata : this.metadata,
      legalName: legalName is String? ? legalName : this.legalName,
      supportEmail: supportEmail is String? ? supportEmail : this.supportEmail,
      plan: plan ?? this.plan,
      language: language ?? this.language,
      timeZone: timeZone ?? this.timeZone,
      dateFormat: dateFormat ?? this.dateFormat,
      timeFormat: timeFormat ?? this.timeFormat,
      numberFormat: numberFormat ?? this.numberFormat,
      firstDayOfWeek: firstDayOfWeek ?? this.firstDayOfWeek,
    );
  }
}

class SsoCompaniesUpdateTable extends _is.UpdateTable<SsoCompaniesTable> {
  SsoCompaniesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> parentCompanyId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.parentCompanyId,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> subtitle(String? value) => _is.ColumnValue(
    table.subtitle,
    value,
  );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> addressLine1(String? value) =>
      _is.ColumnValue(
        table.addressLine1,
        value,
      );

  _is.ColumnValue<String, String> addressLine2(String? value) =>
      _is.ColumnValue(
        table.addressLine2,
        value,
      );

  _is.ColumnValue<String, String> city(String? value) => _is.ColumnValue(
    table.city,
    value,
  );

  _is.ColumnValue<String, String> state(String? value) => _is.ColumnValue(
    table.state,
    value,
  );

  _is.ColumnValue<String, String> country(String? value) => _is.ColumnValue(
    table.country,
    value,
  );

  _is.ColumnValue<String, String> postalCode(String? value) => _is.ColumnValue(
    table.postalCode,
    value,
  );

  _is.ColumnValue<String, String> phone(String? value) => _is.ColumnValue(
    table.phone,
    value,
  );

  _is.ColumnValue<String, String> email(String? value) => _is.ColumnValue(
    table.email,
    value,
  );

  _is.ColumnValue<String, String> website(String? value) => _is.ColumnValue(
    table.website,
    value,
  );

  _is.ColumnValue<String, String> logoUrl(String? value) => _is.ColumnValue(
    table.logoUrl,
    value,
  );

  _is.ColumnValue<String, String> metadata(String? value) => _is.ColumnValue(
    table.metadata,
    value,
  );

  _is.ColumnValue<String, String> legalName(String? value) => _is.ColumnValue(
    table.legalName,
    value,
  );

  _is.ColumnValue<String, String> supportEmail(String? value) =>
      _is.ColumnValue(
        table.supportEmail,
        value,
      );

  _is.ColumnValue<String, String> plan(String value) => _is.ColumnValue(
    table.plan,
    value,
  );

  _is.ColumnValue<String, String> language(String value) => _is.ColumnValue(
    table.language,
    value,
  );

  _is.ColumnValue<String, String> timeZone(String value) => _is.ColumnValue(
    table.timeZone,
    value,
  );

  _is.ColumnValue<String, String> dateFormat(String value) => _is.ColumnValue(
    table.dateFormat,
    value,
  );

  _is.ColumnValue<String, String> timeFormat(String value) => _is.ColumnValue(
    table.timeFormat,
    value,
  );

  _is.ColumnValue<String, String> numberFormat(String value) => _is.ColumnValue(
    table.numberFormat,
    value,
  );

  _is.ColumnValue<int, int> firstDayOfWeek(int value) => _is.ColumnValue(
    table.firstDayOfWeek,
    value,
  );
}

class SsoCompaniesTable extends _is.Table<_is.UuidValue?> {
  SsoCompaniesTable({super.tableRelation}) : super(tableName: 'sso_companies') {
    updateTable = SsoCompaniesUpdateTable(this);
    parentCompanyId = _is.ColumnUuid(
      'parentCompanyId',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    subtitle = _is.ColumnString(
      'subtitle',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    addressLine1 = _is.ColumnString(
      'addressLine1',
      this,
    );
    addressLine2 = _is.ColumnString(
      'addressLine2',
      this,
    );
    city = _is.ColumnString(
      'city',
      this,
    );
    state = _is.ColumnString(
      'state',
      this,
    );
    country = _is.ColumnString(
      'country',
      this,
    );
    postalCode = _is.ColumnString(
      'postalCode',
      this,
    );
    phone = _is.ColumnString(
      'phone',
      this,
    );
    email = _is.ColumnString(
      'email',
      this,
    );
    website = _is.ColumnString(
      'website',
      this,
    );
    logoUrl = _is.ColumnString(
      'logoUrl',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
      this,
    );
    legalName = _is.ColumnString(
      'legalName',
      this,
    );
    supportEmail = _is.ColumnString(
      'supportEmail',
      this,
    );
    plan = _is.ColumnString(
      'plan',
      this,
    );
    language = _is.ColumnString(
      'language',
      this,
    );
    timeZone = _is.ColumnString(
      'timeZone',
      this,
    );
    dateFormat = _is.ColumnString(
      'dateFormat',
      this,
    );
    timeFormat = _is.ColumnString(
      'timeFormat',
      this,
    );
    numberFormat = _is.ColumnString(
      'numberFormat',
      this,
    );
    firstDayOfWeek = _is.ColumnInt(
      'firstDayOfWeek',
      this,
    );
  }

  late final SsoCompaniesUpdateTable updateTable;

  late final _is.ColumnUuid parentCompanyId;

  late final _is.ColumnString name;

  late final _is.ColumnString subtitle;

  late final _is.ColumnString code;

  late final _is.ColumnString addressLine1;

  late final _is.ColumnString addressLine2;

  late final _is.ColumnString city;

  late final _is.ColumnString state;

  late final _is.ColumnString country;

  late final _is.ColumnString postalCode;

  late final _is.ColumnString phone;

  late final _is.ColumnString email;

  late final _is.ColumnString website;

  late final _is.ColumnString logoUrl;

  late final _is.ColumnString metadata;

  late final _is.ColumnString legalName;

  late final _is.ColumnString supportEmail;

  late final _is.ColumnString plan;

  late final _is.ColumnString language;

  late final _is.ColumnString timeZone;

  late final _is.ColumnString dateFormat;

  late final _is.ColumnString timeFormat;

  late final _is.ColumnString numberFormat;

  late final _is.ColumnInt firstDayOfWeek;

  @override
  List<_is.Column> get columns => [
    id,
    parentCompanyId,
    name,
    subtitle,
    code,
    addressLine1,
    addressLine2,
    city,
    state,
    country,
    postalCode,
    phone,
    email,
    website,
    logoUrl,
    metadata,
    legalName,
    supportEmail,
    plan,
    language,
    timeZone,
    dateFormat,
    timeFormat,
    numberFormat,
    firstDayOfWeek,
  ];
}

class SsoCompaniesInclude extends _is.IncludeObject {
  SsoCompaniesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoCompanies.t;
}

class SsoCompaniesIncludeList extends _is.IncludeList {
  SsoCompaniesIncludeList._({
    _is.WhereExpressionBuilder<SsoCompaniesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoCompanies.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoCompanies.t;
}

class SsoCompaniesRepository {
  const SsoCompaniesRepository._();

  /// Returns a list of [SsoCompanies]s matching the given query parameters.
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
  Future<List<SsoCompanies>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoCompaniesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoCompaniesTable>? orderBy,
    _is.OrderByListBuilder<SsoCompaniesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoCompanies>(
      where: where?.call(SsoCompanies.t),
      orderBy: orderBy?.call(SsoCompanies.t),
      orderByList: orderByList?.call(SsoCompanies.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoCompanies] matching the given query parameters.
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
  Future<SsoCompanies?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoCompaniesTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoCompaniesTable>? orderBy,
    _is.OrderByListBuilder<SsoCompaniesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoCompanies>(
      where: where?.call(SsoCompanies.t),
      orderBy: orderBy?.call(SsoCompanies.t),
      orderByList: orderByList?.call(SsoCompanies.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoCompanies] by its [id] or null if no such row exists.
  Future<SsoCompanies?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoCompanies>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoCompanies]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoCompanies]s will have their `id` fields set.
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
  Future<List<SsoCompanies>> insert(
    _is.DatabaseSession session,
    List<SsoCompanies> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoCompanies>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoCompanies] and returns the inserted row.
  ///
  /// The returned [SsoCompanies] will have its `id` field set.
  Future<SsoCompanies> insertRow(
    _is.DatabaseSession session,
    SsoCompanies row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoCompanies>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoCompanies]s in the list and returns the resulting rows.
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
  /// The returned [SsoCompanies]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoCompanies>> upsert(
    _is.DatabaseSession session,
    List<SsoCompanies> rows, {
    required _is.ColumnSelections<SsoCompaniesTable> conflictColumns,
    _is.ColumnSelections<SsoCompaniesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoCompaniesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoCompanies>(
      rows,
      conflictColumns: conflictColumns(SsoCompanies.t),
      updateColumns: updateColumns?.call(SsoCompanies.t),
      updateWhere: updateWhere?.call(SsoCompanies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoCompanies] and returns the resulting row.
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
  /// The returned [SsoCompanies] will have its `id` field set.
  Future<SsoCompanies?> upsertRow(
    _is.DatabaseSession session,
    SsoCompanies row, {
    required _is.ColumnSelections<SsoCompaniesTable> conflictColumns,
    _is.ColumnSelections<SsoCompaniesTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoCompaniesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoCompanies>(
      row,
      conflictColumns: conflictColumns(SsoCompanies.t),
      updateColumns: updateColumns?.call(SsoCompanies.t),
      updateWhere: updateWhere?.call(SsoCompanies.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoCompanies]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoCompanies>> update(
    _is.DatabaseSession session,
    List<SsoCompanies> rows, {
    _is.ColumnSelections<SsoCompaniesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoCompanies>(
      rows,
      columns: columns?.call(SsoCompanies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoCompanies]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoCompanies> updateRow(
    _is.DatabaseSession session,
    SsoCompanies row, {
    _is.ColumnSelections<SsoCompaniesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoCompanies>(
      row,
      columns: columns?.call(SsoCompanies.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoCompanies] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoCompanies?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoCompaniesUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoCompanies>(
      id,
      columnValues: columnValues(SsoCompanies.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoCompanies]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoCompanies>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoCompaniesUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<SsoCompaniesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoCompaniesTable>? orderBy,
    _is.OrderByListBuilder<SsoCompaniesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoCompanies>(
      columnValues: columnValues(SsoCompanies.t.updateTable),
      where: where(SsoCompanies.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoCompanies.t),
      orderByList: orderByList?.call(SsoCompanies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoCompanies]s in the list and returns the deleted rows.
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
  Future<List<SsoCompanies>> delete(
    _is.DatabaseSession session,
    List<SsoCompanies> rows, {
    _is.OrderByBuilder<SsoCompaniesTable>? orderBy,
    _is.OrderByListBuilder<SsoCompaniesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoCompanies>(
      rows,
      orderBy: orderBy?.call(SsoCompanies.t),
      orderByList: orderByList?.call(SsoCompanies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoCompanies].
  Future<SsoCompanies> deleteRow(
    _is.DatabaseSession session,
    SsoCompanies row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoCompanies>(
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
  Future<List<SsoCompanies>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoCompaniesTable> where,
    _is.OrderByBuilder<SsoCompaniesTable>? orderBy,
    _is.OrderByListBuilder<SsoCompaniesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoCompanies>(
      where: where(SsoCompanies.t),
      orderBy: orderBy?.call(SsoCompanies.t),
      orderByList: orderByList?.call(SsoCompanies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoCompaniesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoCompanies>(
      where: where?.call(SsoCompanies.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoCompanies] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoCompaniesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoCompanies>(
      where: where(SsoCompanies.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
