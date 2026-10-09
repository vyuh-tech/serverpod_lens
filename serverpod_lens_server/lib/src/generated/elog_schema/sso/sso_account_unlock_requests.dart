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

abstract class SsoAccountUnlockRequests
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoAccountUnlockRequests._({
    this.id,
    required this.userId,
    required this.requestedBy,
    this.lockoutReason,
    this.failedLoginAttempts,
    required this.status,
    this.remarks,
    this.decisionNote,
    this.approvedBy,
    this.approvedAt,
    this.rejectedBy,
    this.rejectedAt,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory SsoAccountUnlockRequests({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String requestedBy,
    String? lockoutReason,
    int? failedLoginAttempts,
    required String status,
    String? remarks,
    String? decisionNote,
    _is.UuidValue? approvedBy,
    DateTime? approvedAt,
    _is.UuidValue? rejectedBy,
    DateTime? rejectedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _SsoAccountUnlockRequestsImpl;

  factory SsoAccountUnlockRequests.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return SsoAccountUnlockRequests(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      requestedBy: jsonSerialization['requestedBy'] as String,
      lockoutReason: jsonSerialization['lockoutReason'] as String?,
      failedLoginAttempts: jsonSerialization['failedLoginAttempts'] as int?,
      status: jsonSerialization['status'] as String,
      remarks: jsonSerialization['remarks'] as String?,
      decisionNote: jsonSerialization['decisionNote'] as String?,
      approvedBy: jsonSerialization['approvedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['approvedBy'],
            ),
      approvedAt: jsonSerialization['approvedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['approvedAt']),
      rejectedBy: jsonSerialization['rejectedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['rejectedBy'],
            ),
      rejectedAt: jsonSerialization['rejectedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['rejectedAt']),
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['createdBy']),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['updatedBy']),
    );
  }

  static final t = SsoAccountUnlockRequestsTable();

  static const db = SsoAccountUnlockRequestsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue userId;

  String requestedBy;

  String? lockoutReason;

  int? failedLoginAttempts;

  String status;

  String? remarks;

  String? decisionNote;

  _is.UuidValue? approvedBy;

  DateTime? approvedAt;

  _is.UuidValue? rejectedBy;

  DateTime? rejectedAt;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoAccountUnlockRequests]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoAccountUnlockRequests copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    String? requestedBy,
    String? lockoutReason,
    int? failedLoginAttempts,
    String? status,
    String? remarks,
    String? decisionNote,
    _is.UuidValue? approvedBy,
    DateTime? approvedAt,
    _is.UuidValue? rejectedBy,
    DateTime? rejectedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoAccountUnlockRequests',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'requestedBy': requestedBy,
      if (lockoutReason != null) 'lockoutReason': lockoutReason,
      if (failedLoginAttempts != null)
        'failedLoginAttempts': failedLoginAttempts,
      'status': status,
      if (remarks != null) 'remarks': remarks,
      if (decisionNote != null) 'decisionNote': decisionNote,
      if (approvedBy != null) 'approvedBy': approvedBy?.toJson(),
      if (approvedAt != null) 'approvedAt': approvedAt?.toJson(),
      if (rejectedBy != null) 'rejectedBy': rejectedBy?.toJson(),
      if (rejectedAt != null) 'rejectedAt': rejectedAt?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoAccountUnlockRequests',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'requestedBy': requestedBy,
      if (lockoutReason != null) 'lockoutReason': lockoutReason,
      if (failedLoginAttempts != null)
        'failedLoginAttempts': failedLoginAttempts,
      'status': status,
      if (remarks != null) 'remarks': remarks,
      if (decisionNote != null) 'decisionNote': decisionNote,
      if (approvedBy != null) 'approvedBy': approvedBy?.toJson(),
      if (approvedAt != null) 'approvedAt': approvedAt?.toJson(),
      if (rejectedBy != null) 'rejectedBy': rejectedBy?.toJson(),
      if (rejectedAt != null) 'rejectedAt': rejectedAt?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static SsoAccountUnlockRequestsInclude include() {
    return SsoAccountUnlockRequestsInclude._();
  }

  static SsoAccountUnlockRequestsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoAccountUnlockRequestsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoAccountUnlockRequestsTable>? orderBy,
    _is.OrderByListBuilder<SsoAccountUnlockRequestsTable>? orderByList,
    SsoAccountUnlockRequestsInclude? include,
  }) {
    return SsoAccountUnlockRequestsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoAccountUnlockRequests.t),
      orderByList: orderByList?.call(SsoAccountUnlockRequests.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoAccountUnlockRequestsImpl extends SsoAccountUnlockRequests {
  _SsoAccountUnlockRequestsImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String requestedBy,
    String? lockoutReason,
    int? failedLoginAttempts,
    required String status,
    String? remarks,
    String? decisionNote,
    _is.UuidValue? approvedBy,
    DateTime? approvedAt,
    _is.UuidValue? rejectedBy,
    DateTime? rejectedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) : super._(
         id: id,
         userId: userId,
         requestedBy: requestedBy,
         lockoutReason: lockoutReason,
         failedLoginAttempts: failedLoginAttempts,
         status: status,
         remarks: remarks,
         decisionNote: decisionNote,
         approvedBy: approvedBy,
         approvedAt: approvedAt,
         rejectedBy: rejectedBy,
         rejectedAt: rejectedAt,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [SsoAccountUnlockRequests]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoAccountUnlockRequests copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    String? requestedBy,
    Object? lockoutReason = _Undefined,
    Object? failedLoginAttempts = _Undefined,
    String? status,
    Object? remarks = _Undefined,
    Object? decisionNote = _Undefined,
    Object? approvedBy = _Undefined,
    Object? approvedAt = _Undefined,
    Object? rejectedBy = _Undefined,
    Object? rejectedAt = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return SsoAccountUnlockRequests(
      id: id is _is.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      requestedBy: requestedBy ?? this.requestedBy,
      lockoutReason: lockoutReason is String?
          ? lockoutReason
          : this.lockoutReason,
      failedLoginAttempts: failedLoginAttempts is int?
          ? failedLoginAttempts
          : this.failedLoginAttempts,
      status: status ?? this.status,
      remarks: remarks is String? ? remarks : this.remarks,
      decisionNote: decisionNote is String? ? decisionNote : this.decisionNote,
      approvedBy: approvedBy is _is.UuidValue? ? approvedBy : this.approvedBy,
      approvedAt: approvedAt is DateTime? ? approvedAt : this.approvedAt,
      rejectedBy: rejectedBy is _is.UuidValue? ? rejectedBy : this.rejectedBy,
      rejectedAt: rejectedAt is DateTime? ? rejectedAt : this.rejectedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class SsoAccountUnlockRequestsUpdateTable
    extends _is.UpdateTable<SsoAccountUnlockRequestsTable> {
  SsoAccountUnlockRequestsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<String, String> requestedBy(String value) => _is.ColumnValue(
    table.requestedBy,
    value,
  );

  _is.ColumnValue<String, String> lockoutReason(String? value) =>
      _is.ColumnValue(
        table.lockoutReason,
        value,
      );

  _is.ColumnValue<int, int> failedLoginAttempts(int? value) => _is.ColumnValue(
    table.failedLoginAttempts,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<String, String> remarks(String? value) => _is.ColumnValue(
    table.remarks,
    value,
  );

  _is.ColumnValue<String, String> decisionNote(String? value) =>
      _is.ColumnValue(
        table.decisionNote,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> approvedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.approvedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> approvedAt(DateTime? value) =>
      _is.ColumnValue(
        table.approvedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> rejectedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.rejectedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> rejectedAt(DateTime? value) =>
      _is.ColumnValue(
        table.rejectedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
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

class SsoAccountUnlockRequestsTable extends _is.Table<_is.UuidValue?> {
  SsoAccountUnlockRequestsTable({super.tableRelation})
    : super(tableName: 'sso_account_unlock_requests') {
    updateTable = SsoAccountUnlockRequestsUpdateTable(this);
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    requestedBy = _is.ColumnString(
      'requestedBy',
      this,
    );
    lockoutReason = _is.ColumnString(
      'lockoutReason',
      this,
    );
    failedLoginAttempts = _is.ColumnInt(
      'failedLoginAttempts',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    remarks = _is.ColumnString(
      'remarks',
      this,
    );
    decisionNote = _is.ColumnString(
      'decisionNote',
      this,
    );
    approvedBy = _is.ColumnUuid(
      'approvedBy',
      this,
    );
    approvedAt = _is.ColumnDateTime(
      'approvedAt',
      this,
    );
    rejectedBy = _is.ColumnUuid(
      'rejectedBy',
      this,
    );
    rejectedAt = _is.ColumnDateTime(
      'rejectedAt',
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

  late final SsoAccountUnlockRequestsUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnString requestedBy;

  late final _is.ColumnString lockoutReason;

  late final _is.ColumnInt failedLoginAttempts;

  late final _is.ColumnString status;

  late final _is.ColumnString remarks;

  late final _is.ColumnString decisionNote;

  late final _is.ColumnUuid approvedBy;

  late final _is.ColumnDateTime approvedAt;

  late final _is.ColumnUuid rejectedBy;

  late final _is.ColumnDateTime rejectedAt;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    requestedBy,
    lockoutReason,
    failedLoginAttempts,
    status,
    remarks,
    decisionNote,
    approvedBy,
    approvedAt,
    rejectedBy,
    rejectedAt,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class SsoAccountUnlockRequestsInclude extends _is.IncludeObject {
  SsoAccountUnlockRequestsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoAccountUnlockRequests.t;
}

class SsoAccountUnlockRequestsIncludeList extends _is.IncludeList {
  SsoAccountUnlockRequestsIncludeList._({
    _is.WhereExpressionBuilder<SsoAccountUnlockRequestsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoAccountUnlockRequests.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoAccountUnlockRequests.t;
}

class SsoAccountUnlockRequestsRepository {
  const SsoAccountUnlockRequestsRepository._();

  /// Returns a list of [SsoAccountUnlockRequests]s matching the given query parameters.
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
  Future<List<SsoAccountUnlockRequests>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoAccountUnlockRequestsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoAccountUnlockRequestsTable>? orderBy,
    _is.OrderByListBuilder<SsoAccountUnlockRequestsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoAccountUnlockRequests>(
      where: where?.call(SsoAccountUnlockRequests.t),
      orderBy: orderBy?.call(SsoAccountUnlockRequests.t),
      orderByList: orderByList?.call(SsoAccountUnlockRequests.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoAccountUnlockRequests] matching the given query parameters.
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
  Future<SsoAccountUnlockRequests?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoAccountUnlockRequestsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoAccountUnlockRequestsTable>? orderBy,
    _is.OrderByListBuilder<SsoAccountUnlockRequestsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoAccountUnlockRequests>(
      where: where?.call(SsoAccountUnlockRequests.t),
      orderBy: orderBy?.call(SsoAccountUnlockRequests.t),
      orderByList: orderByList?.call(SsoAccountUnlockRequests.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoAccountUnlockRequests] by its [id] or null if no such row exists.
  Future<SsoAccountUnlockRequests?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoAccountUnlockRequests>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoAccountUnlockRequests]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoAccountUnlockRequests]s will have their `id` fields set.
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
  Future<List<SsoAccountUnlockRequests>> insert(
    _is.DatabaseSession session,
    List<SsoAccountUnlockRequests> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoAccountUnlockRequests>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoAccountUnlockRequests] and returns the inserted row.
  ///
  /// The returned [SsoAccountUnlockRequests] will have its `id` field set.
  Future<SsoAccountUnlockRequests> insertRow(
    _is.DatabaseSession session,
    SsoAccountUnlockRequests row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoAccountUnlockRequests>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoAccountUnlockRequests]s in the list and returns the resulting rows.
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
  /// The returned [SsoAccountUnlockRequests]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoAccountUnlockRequests>> upsert(
    _is.DatabaseSession session,
    List<SsoAccountUnlockRequests> rows, {
    required _is.ColumnSelections<SsoAccountUnlockRequestsTable>
    conflictColumns,
    _is.ColumnSelections<SsoAccountUnlockRequestsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoAccountUnlockRequestsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoAccountUnlockRequests>(
      rows,
      conflictColumns: conflictColumns(SsoAccountUnlockRequests.t),
      updateColumns: updateColumns?.call(SsoAccountUnlockRequests.t),
      updateWhere: updateWhere?.call(SsoAccountUnlockRequests.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoAccountUnlockRequests] and returns the resulting row.
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
  /// The returned [SsoAccountUnlockRequests] will have its `id` field set.
  Future<SsoAccountUnlockRequests?> upsertRow(
    _is.DatabaseSession session,
    SsoAccountUnlockRequests row, {
    required _is.ColumnSelections<SsoAccountUnlockRequestsTable>
    conflictColumns,
    _is.ColumnSelections<SsoAccountUnlockRequestsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoAccountUnlockRequestsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoAccountUnlockRequests>(
      row,
      conflictColumns: conflictColumns(SsoAccountUnlockRequests.t),
      updateColumns: updateColumns?.call(SsoAccountUnlockRequests.t),
      updateWhere: updateWhere?.call(SsoAccountUnlockRequests.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoAccountUnlockRequests]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoAccountUnlockRequests>> update(
    _is.DatabaseSession session,
    List<SsoAccountUnlockRequests> rows, {
    _is.ColumnSelections<SsoAccountUnlockRequestsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoAccountUnlockRequests>(
      rows,
      columns: columns?.call(SsoAccountUnlockRequests.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoAccountUnlockRequests]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoAccountUnlockRequests> updateRow(
    _is.DatabaseSession session,
    SsoAccountUnlockRequests row, {
    _is.ColumnSelections<SsoAccountUnlockRequestsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoAccountUnlockRequests>(
      row,
      columns: columns?.call(SsoAccountUnlockRequests.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoAccountUnlockRequests] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoAccountUnlockRequests?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoAccountUnlockRequestsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoAccountUnlockRequests>(
      id,
      columnValues: columnValues(SsoAccountUnlockRequests.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoAccountUnlockRequests]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoAccountUnlockRequests>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoAccountUnlockRequestsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoAccountUnlockRequestsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoAccountUnlockRequestsTable>? orderBy,
    _is.OrderByListBuilder<SsoAccountUnlockRequestsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoAccountUnlockRequests>(
      columnValues: columnValues(SsoAccountUnlockRequests.t.updateTable),
      where: where(SsoAccountUnlockRequests.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoAccountUnlockRequests.t),
      orderByList: orderByList?.call(SsoAccountUnlockRequests.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoAccountUnlockRequests]s in the list and returns the deleted rows.
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
  Future<List<SsoAccountUnlockRequests>> delete(
    _is.DatabaseSession session,
    List<SsoAccountUnlockRequests> rows, {
    _is.OrderByBuilder<SsoAccountUnlockRequestsTable>? orderBy,
    _is.OrderByListBuilder<SsoAccountUnlockRequestsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoAccountUnlockRequests>(
      rows,
      orderBy: orderBy?.call(SsoAccountUnlockRequests.t),
      orderByList: orderByList?.call(SsoAccountUnlockRequests.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoAccountUnlockRequests].
  Future<SsoAccountUnlockRequests> deleteRow(
    _is.DatabaseSession session,
    SsoAccountUnlockRequests row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoAccountUnlockRequests>(
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
  Future<List<SsoAccountUnlockRequests>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoAccountUnlockRequestsTable> where,
    _is.OrderByBuilder<SsoAccountUnlockRequestsTable>? orderBy,
    _is.OrderByListBuilder<SsoAccountUnlockRequestsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoAccountUnlockRequests>(
      where: where(SsoAccountUnlockRequests.t),
      orderBy: orderBy?.call(SsoAccountUnlockRequests.t),
      orderByList: orderByList?.call(SsoAccountUnlockRequests.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoAccountUnlockRequestsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoAccountUnlockRequests>(
      where: where?.call(SsoAccountUnlockRequests.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoAccountUnlockRequests] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoAccountUnlockRequestsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoAccountUnlockRequests>(
      where: where(SsoAccountUnlockRequests.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
