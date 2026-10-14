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

abstract class SsoPasswordResetRequests
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoPasswordResetRequests._({
    this.id,
    required this.userId,
    required this.requestedBy,
    required this.requestType,
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

  factory SsoPasswordResetRequests({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String requestedBy,
    required String requestType,
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
  }) = _SsoPasswordResetRequestsImpl;

  factory SsoPasswordResetRequests.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return SsoPasswordResetRequests(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      requestedBy: jsonSerialization['requestedBy'] as String,
      requestType: jsonSerialization['requestType'] as String,
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

  static final t = SsoPasswordResetRequestsTable();

  static const db = SsoPasswordResetRequestsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue userId;

  String requestedBy;

  String requestType;

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

  /// Returns a shallow copy of this [SsoPasswordResetRequests]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoPasswordResetRequests copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    String? requestedBy,
    String? requestType,
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
      '__className__': 'SsoPasswordResetRequests',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'requestedBy': requestedBy,
      'requestType': requestType,
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
      '__className__': 'SsoPasswordResetRequests',
      if (id != null) 'id': id?.toJson(),
      'userId': userId.toJson(),
      'requestedBy': requestedBy,
      'requestType': requestType,
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

  static SsoPasswordResetRequestsInclude include() {
    return SsoPasswordResetRequestsInclude._();
  }

  static SsoPasswordResetRequestsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoPasswordResetRequestsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoPasswordResetRequestsTable>? orderBy,
    _is.OrderByListBuilder<SsoPasswordResetRequestsTable>? orderByList,
    SsoPasswordResetRequestsInclude? include,
  }) {
    return SsoPasswordResetRequestsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoPasswordResetRequests.t),
      orderByList: orderByList?.call(SsoPasswordResetRequests.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoPasswordResetRequestsImpl extends SsoPasswordResetRequests {
  _SsoPasswordResetRequestsImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    required String requestedBy,
    required String requestType,
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
         requestType: requestType,
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

  /// Returns a shallow copy of this [SsoPasswordResetRequests]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoPasswordResetRequests copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    String? requestedBy,
    String? requestType,
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
    return SsoPasswordResetRequests(
      id: id is _is.UuidValue? ? id : this.id,
      userId: userId ?? this.userId,
      requestedBy: requestedBy ?? this.requestedBy,
      requestType: requestType ?? this.requestType,
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

class SsoPasswordResetRequestsUpdateTable
    extends _is.UpdateTable<SsoPasswordResetRequestsTable> {
  SsoPasswordResetRequestsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<String, String> requestedBy(String value) => _is.ColumnValue(
    table.requestedBy,
    value,
  );

  _is.ColumnValue<String, String> requestType(String value) => _is.ColumnValue(
    table.requestType,
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

class SsoPasswordResetRequestsTable extends _is.Table<_is.UuidValue?> {
  SsoPasswordResetRequestsTable({super.tableRelation})
    : super(tableName: 'sso_password_reset_requests') {
    updateTable = SsoPasswordResetRequestsUpdateTable(this);
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    requestedBy = _is.ColumnString(
      'requestedBy',
      this,
    );
    requestType = _is.ColumnString(
      'requestType',
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

  late final SsoPasswordResetRequestsUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnString requestedBy;

  late final _is.ColumnString requestType;

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
    requestType,
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

class SsoPasswordResetRequestsInclude extends _is.IncludeObject {
  SsoPasswordResetRequestsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoPasswordResetRequests.t;
}

class SsoPasswordResetRequestsIncludeList extends _is.IncludeList {
  SsoPasswordResetRequestsIncludeList._({
    _is.WhereExpressionBuilder<SsoPasswordResetRequestsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoPasswordResetRequests.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoPasswordResetRequests.t;
}

class SsoPasswordResetRequestsRepository {
  const SsoPasswordResetRequestsRepository._();

  /// Returns a list of [SsoPasswordResetRequests]s matching the given query parameters.
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
  Future<List<SsoPasswordResetRequests>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoPasswordResetRequestsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoPasswordResetRequestsTable>? orderBy,
    _is.OrderByListBuilder<SsoPasswordResetRequestsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoPasswordResetRequests>(
      where: where?.call(SsoPasswordResetRequests.t),
      orderBy: orderBy?.call(SsoPasswordResetRequests.t),
      orderByList: orderByList?.call(SsoPasswordResetRequests.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoPasswordResetRequests] matching the given query parameters.
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
  Future<SsoPasswordResetRequests?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoPasswordResetRequestsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoPasswordResetRequestsTable>? orderBy,
    _is.OrderByListBuilder<SsoPasswordResetRequestsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoPasswordResetRequests>(
      where: where?.call(SsoPasswordResetRequests.t),
      orderBy: orderBy?.call(SsoPasswordResetRequests.t),
      orderByList: orderByList?.call(SsoPasswordResetRequests.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoPasswordResetRequests] by its [id] or null if no such row exists.
  Future<SsoPasswordResetRequests?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoPasswordResetRequests>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoPasswordResetRequests]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoPasswordResetRequests]s will have their `id` fields set.
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
  Future<List<SsoPasswordResetRequests>> insert(
    _is.DatabaseSession session,
    List<SsoPasswordResetRequests> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoPasswordResetRequests>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoPasswordResetRequests] and returns the inserted row.
  ///
  /// The returned [SsoPasswordResetRequests] will have its `id` field set.
  Future<SsoPasswordResetRequests> insertRow(
    _is.DatabaseSession session,
    SsoPasswordResetRequests row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoPasswordResetRequests>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoPasswordResetRequests]s in the list and returns the resulting rows.
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
  /// The returned [SsoPasswordResetRequests]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoPasswordResetRequests>> upsert(
    _is.DatabaseSession session,
    List<SsoPasswordResetRequests> rows, {
    required _is.ColumnSelections<SsoPasswordResetRequestsTable>
    conflictColumns,
    _is.ColumnSelections<SsoPasswordResetRequestsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoPasswordResetRequestsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoPasswordResetRequests>(
      rows,
      conflictColumns: conflictColumns(SsoPasswordResetRequests.t),
      updateColumns: updateColumns?.call(SsoPasswordResetRequests.t),
      updateWhere: updateWhere?.call(SsoPasswordResetRequests.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoPasswordResetRequests] and returns the resulting row.
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
  /// The returned [SsoPasswordResetRequests] will have its `id` field set.
  Future<SsoPasswordResetRequests?> upsertRow(
    _is.DatabaseSession session,
    SsoPasswordResetRequests row, {
    required _is.ColumnSelections<SsoPasswordResetRequestsTable>
    conflictColumns,
    _is.ColumnSelections<SsoPasswordResetRequestsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoPasswordResetRequestsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoPasswordResetRequests>(
      row,
      conflictColumns: conflictColumns(SsoPasswordResetRequests.t),
      updateColumns: updateColumns?.call(SsoPasswordResetRequests.t),
      updateWhere: updateWhere?.call(SsoPasswordResetRequests.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoPasswordResetRequests]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoPasswordResetRequests>> update(
    _is.DatabaseSession session,
    List<SsoPasswordResetRequests> rows, {
    _is.ColumnSelections<SsoPasswordResetRequestsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoPasswordResetRequests>(
      rows,
      columns: columns?.call(SsoPasswordResetRequests.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoPasswordResetRequests]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoPasswordResetRequests> updateRow(
    _is.DatabaseSession session,
    SsoPasswordResetRequests row, {
    _is.ColumnSelections<SsoPasswordResetRequestsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoPasswordResetRequests>(
      row,
      columns: columns?.call(SsoPasswordResetRequests.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoPasswordResetRequests] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoPasswordResetRequests?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoPasswordResetRequestsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoPasswordResetRequests>(
      id,
      columnValues: columnValues(SsoPasswordResetRequests.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoPasswordResetRequests]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoPasswordResetRequests>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoPasswordResetRequestsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoPasswordResetRequestsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoPasswordResetRequestsTable>? orderBy,
    _is.OrderByListBuilder<SsoPasswordResetRequestsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoPasswordResetRequests>(
      columnValues: columnValues(SsoPasswordResetRequests.t.updateTable),
      where: where(SsoPasswordResetRequests.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoPasswordResetRequests.t),
      orderByList: orderByList?.call(SsoPasswordResetRequests.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoPasswordResetRequests]s in the list and returns the deleted rows.
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
  Future<List<SsoPasswordResetRequests>> delete(
    _is.DatabaseSession session,
    List<SsoPasswordResetRequests> rows, {
    _is.OrderByBuilder<SsoPasswordResetRequestsTable>? orderBy,
    _is.OrderByListBuilder<SsoPasswordResetRequestsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoPasswordResetRequests>(
      rows,
      orderBy: orderBy?.call(SsoPasswordResetRequests.t),
      orderByList: orderByList?.call(SsoPasswordResetRequests.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoPasswordResetRequests].
  Future<SsoPasswordResetRequests> deleteRow(
    _is.DatabaseSession session,
    SsoPasswordResetRequests row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoPasswordResetRequests>(
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
  Future<List<SsoPasswordResetRequests>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoPasswordResetRequestsTable> where,
    _is.OrderByBuilder<SsoPasswordResetRequestsTable>? orderBy,
    _is.OrderByListBuilder<SsoPasswordResetRequestsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoPasswordResetRequests>(
      where: where(SsoPasswordResetRequests.t),
      orderBy: orderBy?.call(SsoPasswordResetRequests.t),
      orderByList: orderByList?.call(SsoPasswordResetRequests.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoPasswordResetRequestsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoPasswordResetRequests>(
      where: where?.call(SsoPasswordResetRequests.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoPasswordResetRequests] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoPasswordResetRequestsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoPasswordResetRequests>(
      where: where(SsoPasswordResetRequests.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
