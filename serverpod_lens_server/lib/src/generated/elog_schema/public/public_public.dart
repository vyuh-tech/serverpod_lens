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

abstract class PublicPublic
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  PublicPublic._({
    this.id,
    required this.relationshipTable,
    this.relationshipId,
    required this.subjectEntity,
    required this.subjectId,
    required this.objectEntity,
    required this.objectId,
    required this.action,
    this.performedBy,
    required this.performedAt,
    this.companyId,
    this.siteId,
    this.beforeState,
    this.afterState,
    this.fieldChanges,
    this.reason,
    this.signatureId,
  });

  factory PublicPublic({
    _is.UuidValue? id,
    required String relationshipTable,
    _is.UuidValue? relationshipId,
    required String subjectEntity,
    required _is.UuidValue subjectId,
    required String objectEntity,
    required _is.UuidValue objectId,
    required String action,
    _is.UuidValue? performedBy,
    required DateTime performedAt,
    _is.UuidValue? companyId,
    _is.UuidValue? siteId,
    String? beforeState,
    String? afterState,
    String? fieldChanges,
    String? reason,
    _is.UuidValue? signatureId,
  }) = _PublicPublicImpl;

  factory PublicPublic.fromJson(Map<String, dynamic> jsonSerialization) {
    return PublicPublic(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      relationshipTable: jsonSerialization['relationshipTable'] as String,
      relationshipId: jsonSerialization['relationshipId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['relationshipId'],
            ),
      subjectEntity: jsonSerialization['subjectEntity'] as String,
      subjectId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['subjectId'],
      ),
      objectEntity: jsonSerialization['objectEntity'] as String,
      objectId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['objectId'],
      ),
      action: jsonSerialization['action'] as String,
      performedBy: jsonSerialization['performedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['performedBy'],
            ),
      performedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['performedAt'],
      ),
      companyId: jsonSerialization['companyId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['companyId']),
      siteId: jsonSerialization['siteId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['siteId']),
      beforeState: jsonSerialization['beforeState'] as String?,
      afterState: jsonSerialization['afterState'] as String?,
      fieldChanges: jsonSerialization['fieldChanges'] as String?,
      reason: jsonSerialization['reason'] as String?,
      signatureId: jsonSerialization['signatureId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['signatureId'],
            ),
    );
  }

  static final t = PublicPublicTable();

  static const db = PublicPublicRepository._();

  @override
  _is.UuidValue? id;

  String relationshipTable;

  _is.UuidValue? relationshipId;

  String subjectEntity;

  _is.UuidValue subjectId;

  String objectEntity;

  _is.UuidValue objectId;

  String action;

  _is.UuidValue? performedBy;

  DateTime performedAt;

  _is.UuidValue? companyId;

  _is.UuidValue? siteId;

  String? beforeState;

  String? afterState;

  String? fieldChanges;

  String? reason;

  _is.UuidValue? signatureId;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [PublicPublic]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  PublicPublic copyWith({
    _is.UuidValue? id,
    String? relationshipTable,
    _is.UuidValue? relationshipId,
    String? subjectEntity,
    _is.UuidValue? subjectId,
    String? objectEntity,
    _is.UuidValue? objectId,
    String? action,
    _is.UuidValue? performedBy,
    DateTime? performedAt,
    _is.UuidValue? companyId,
    _is.UuidValue? siteId,
    String? beforeState,
    String? afterState,
    String? fieldChanges,
    String? reason,
    _is.UuidValue? signatureId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicPublic',
      if (id != null) 'id': id?.toJson(),
      'relationshipTable': relationshipTable,
      if (relationshipId != null) 'relationshipId': relationshipId?.toJson(),
      'subjectEntity': subjectEntity,
      'subjectId': subjectId.toJson(),
      'objectEntity': objectEntity,
      'objectId': objectId.toJson(),
      'action': action,
      if (performedBy != null) 'performedBy': performedBy?.toJson(),
      'performedAt': performedAt.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (siteId != null) 'siteId': siteId?.toJson(),
      if (beforeState != null) 'beforeState': beforeState,
      if (afterState != null) 'afterState': afterState,
      if (fieldChanges != null) 'fieldChanges': fieldChanges,
      if (reason != null) 'reason': reason,
      if (signatureId != null) 'signatureId': signatureId?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicPublic',
      if (id != null) 'id': id?.toJson(),
      'relationshipTable': relationshipTable,
      if (relationshipId != null) 'relationshipId': relationshipId?.toJson(),
      'subjectEntity': subjectEntity,
      'subjectId': subjectId.toJson(),
      'objectEntity': objectEntity,
      'objectId': objectId.toJson(),
      'action': action,
      if (performedBy != null) 'performedBy': performedBy?.toJson(),
      'performedAt': performedAt.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (siteId != null) 'siteId': siteId?.toJson(),
      if (beforeState != null) 'beforeState': beforeState,
      if (afterState != null) 'afterState': afterState,
      if (fieldChanges != null) 'fieldChanges': fieldChanges,
      if (reason != null) 'reason': reason,
      if (signatureId != null) 'signatureId': signatureId?.toJson(),
    };
  }

  static PublicPublicInclude include() {
    return PublicPublicInclude._();
  }

  static PublicPublicIncludeList includeList({
    _is.WhereExpressionBuilder<PublicPublicTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicPublicTable>? orderBy,
    _is.OrderByListBuilder<PublicPublicTable>? orderByList,
    PublicPublicInclude? include,
  }) {
    return PublicPublicIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicPublic.t),
      orderByList: orderByList?.call(PublicPublic.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicPublicImpl extends PublicPublic {
  _PublicPublicImpl({
    _is.UuidValue? id,
    required String relationshipTable,
    _is.UuidValue? relationshipId,
    required String subjectEntity,
    required _is.UuidValue subjectId,
    required String objectEntity,
    required _is.UuidValue objectId,
    required String action,
    _is.UuidValue? performedBy,
    required DateTime performedAt,
    _is.UuidValue? companyId,
    _is.UuidValue? siteId,
    String? beforeState,
    String? afterState,
    String? fieldChanges,
    String? reason,
    _is.UuidValue? signatureId,
  }) : super._(
         id: id,
         relationshipTable: relationshipTable,
         relationshipId: relationshipId,
         subjectEntity: subjectEntity,
         subjectId: subjectId,
         objectEntity: objectEntity,
         objectId: objectId,
         action: action,
         performedBy: performedBy,
         performedAt: performedAt,
         companyId: companyId,
         siteId: siteId,
         beforeState: beforeState,
         afterState: afterState,
         fieldChanges: fieldChanges,
         reason: reason,
         signatureId: signatureId,
       );

  /// Returns a shallow copy of this [PublicPublic]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  PublicPublic copyWith({
    Object? id = _Undefined,
    String? relationshipTable,
    Object? relationshipId = _Undefined,
    String? subjectEntity,
    _is.UuidValue? subjectId,
    String? objectEntity,
    _is.UuidValue? objectId,
    String? action,
    Object? performedBy = _Undefined,
    DateTime? performedAt,
    Object? companyId = _Undefined,
    Object? siteId = _Undefined,
    Object? beforeState = _Undefined,
    Object? afterState = _Undefined,
    Object? fieldChanges = _Undefined,
    Object? reason = _Undefined,
    Object? signatureId = _Undefined,
  }) {
    return PublicPublic(
      id: id is _is.UuidValue? ? id : this.id,
      relationshipTable: relationshipTable ?? this.relationshipTable,
      relationshipId: relationshipId is _is.UuidValue?
          ? relationshipId
          : this.relationshipId,
      subjectEntity: subjectEntity ?? this.subjectEntity,
      subjectId: subjectId ?? this.subjectId,
      objectEntity: objectEntity ?? this.objectEntity,
      objectId: objectId ?? this.objectId,
      action: action ?? this.action,
      performedBy: performedBy is _is.UuidValue?
          ? performedBy
          : this.performedBy,
      performedAt: performedAt ?? this.performedAt,
      companyId: companyId is _is.UuidValue? ? companyId : this.companyId,
      siteId: siteId is _is.UuidValue? ? siteId : this.siteId,
      beforeState: beforeState is String? ? beforeState : this.beforeState,
      afterState: afterState is String? ? afterState : this.afterState,
      fieldChanges: fieldChanges is String? ? fieldChanges : this.fieldChanges,
      reason: reason is String? ? reason : this.reason,
      signatureId: signatureId is _is.UuidValue?
          ? signatureId
          : this.signatureId,
    );
  }
}

class PublicPublicUpdateTable extends _is.UpdateTable<PublicPublicTable> {
  PublicPublicUpdateTable(super.table);

  _is.ColumnValue<String, String> relationshipTable(String value) =>
      _is.ColumnValue(
        table.relationshipTable,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> relationshipId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.relationshipId,
    value,
  );

  _is.ColumnValue<String, String> subjectEntity(String value) =>
      _is.ColumnValue(
        table.subjectEntity,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> subjectId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.subjectId,
    value,
  );

  _is.ColumnValue<String, String> objectEntity(String value) => _is.ColumnValue(
    table.objectEntity,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> objectId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.objectId,
        value,
      );

  _is.ColumnValue<String, String> action(String value) => _is.ColumnValue(
    table.action,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> performedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.performedBy,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> performedAt(DateTime value) =>
      _is.ColumnValue(
        table.performedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.companyId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> siteId(_is.UuidValue? value) =>
      _is.ColumnValue(
        table.siteId,
        value,
      );

  _is.ColumnValue<String, String> beforeState(String? value) => _is.ColumnValue(
    table.beforeState,
    value,
  );

  _is.ColumnValue<String, String> afterState(String? value) => _is.ColumnValue(
    table.afterState,
    value,
  );

  _is.ColumnValue<String, String> fieldChanges(String? value) =>
      _is.ColumnValue(
        table.fieldChanges,
        value,
      );

  _is.ColumnValue<String, String> reason(String? value) => _is.ColumnValue(
    table.reason,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> signatureId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.signatureId,
    value,
  );
}

class PublicPublicTable extends _is.Table<_is.UuidValue?> {
  PublicPublicTable({super.tableRelation}) : super(tableName: 'public_public') {
    updateTable = PublicPublicUpdateTable(this);
    relationshipTable = _is.ColumnString(
      'relationshipTable',
      this,
    );
    relationshipId = _is.ColumnUuid(
      'relationshipId',
      this,
    );
    subjectEntity = _is.ColumnString(
      'subjectEntity',
      this,
    );
    subjectId = _is.ColumnUuid(
      'subjectId',
      this,
    );
    objectEntity = _is.ColumnString(
      'objectEntity',
      this,
    );
    objectId = _is.ColumnUuid(
      'objectId',
      this,
    );
    action = _is.ColumnString(
      'action',
      this,
    );
    performedBy = _is.ColumnUuid(
      'performedBy',
      this,
    );
    performedAt = _is.ColumnDateTime(
      'performedAt',
      this,
    );
    companyId = _is.ColumnUuid(
      'companyId',
      this,
    );
    siteId = _is.ColumnUuid(
      'siteId',
      this,
    );
    beforeState = _is.ColumnString(
      'beforeState',
      this,
    );
    afterState = _is.ColumnString(
      'afterState',
      this,
    );
    fieldChanges = _is.ColumnString(
      'fieldChanges',
      this,
    );
    reason = _is.ColumnString(
      'reason',
      this,
    );
    signatureId = _is.ColumnUuid(
      'signatureId',
      this,
    );
  }

  late final PublicPublicUpdateTable updateTable;

  late final _is.ColumnString relationshipTable;

  late final _is.ColumnUuid relationshipId;

  late final _is.ColumnString subjectEntity;

  late final _is.ColumnUuid subjectId;

  late final _is.ColumnString objectEntity;

  late final _is.ColumnUuid objectId;

  late final _is.ColumnString action;

  late final _is.ColumnUuid performedBy;

  late final _is.ColumnDateTime performedAt;

  late final _is.ColumnUuid companyId;

  late final _is.ColumnUuid siteId;

  late final _is.ColumnString beforeState;

  late final _is.ColumnString afterState;

  late final _is.ColumnString fieldChanges;

  late final _is.ColumnString reason;

  late final _is.ColumnUuid signatureId;

  @override
  List<_is.Column> get columns => [
    id,
    relationshipTable,
    relationshipId,
    subjectEntity,
    subjectId,
    objectEntity,
    objectId,
    action,
    performedBy,
    performedAt,
    companyId,
    siteId,
    beforeState,
    afterState,
    fieldChanges,
    reason,
    signatureId,
  ];
}

class PublicPublicInclude extends _is.IncludeObject {
  PublicPublicInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicPublic.t;
}

class PublicPublicIncludeList extends _is.IncludeList {
  PublicPublicIncludeList._({
    _is.WhereExpressionBuilder<PublicPublicTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PublicPublic.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicPublic.t;
}

class PublicPublicRepository {
  const PublicPublicRepository._();

  /// Returns a list of [PublicPublic]s matching the given query parameters.
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
  Future<List<PublicPublic>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicPublicTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicPublicTable>? orderBy,
    _is.OrderByListBuilder<PublicPublicTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PublicPublic>(
      where: where?.call(PublicPublic.t),
      orderBy: orderBy?.call(PublicPublic.t),
      orderByList: orderByList?.call(PublicPublic.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PublicPublic] matching the given query parameters.
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
  Future<PublicPublic?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicPublicTable>? where,
    int? offset,
    _is.OrderByBuilder<PublicPublicTable>? orderBy,
    _is.OrderByListBuilder<PublicPublicTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PublicPublic>(
      where: where?.call(PublicPublic.t),
      orderBy: orderBy?.call(PublicPublic.t),
      orderByList: orderByList?.call(PublicPublic.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PublicPublic] by its [id] or null if no such row exists.
  Future<PublicPublic?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PublicPublic>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PublicPublic]s in the list and returns the inserted rows.
  ///
  /// The returned [PublicPublic]s will have their `id` fields set.
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
  Future<List<PublicPublic>> insert(
    _is.DatabaseSession session,
    List<PublicPublic> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<PublicPublic>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [PublicPublic] and returns the inserted row.
  ///
  /// The returned [PublicPublic] will have its `id` field set.
  Future<PublicPublic> insertRow(
    _is.DatabaseSession session,
    PublicPublic row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<PublicPublic>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [PublicPublic]s in the list and returns the resulting rows.
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
  /// The returned [PublicPublic]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicPublic>> upsert(
    _is.DatabaseSession session,
    List<PublicPublic> rows, {
    required _is.ColumnSelections<PublicPublicTable> conflictColumns,
    _is.ColumnSelections<PublicPublicTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicPublicTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<PublicPublic>(
      rows,
      conflictColumns: conflictColumns(PublicPublic.t),
      updateColumns: updateColumns?.call(PublicPublic.t),
      updateWhere: updateWhere?.call(PublicPublic.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [PublicPublic] and returns the resulting row.
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
  /// The returned [PublicPublic] will have its `id` field set.
  Future<PublicPublic?> upsertRow(
    _is.DatabaseSession session,
    PublicPublic row, {
    required _is.ColumnSelections<PublicPublicTable> conflictColumns,
    _is.ColumnSelections<PublicPublicTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicPublicTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<PublicPublic>(
      row,
      conflictColumns: conflictColumns(PublicPublic.t),
      updateColumns: updateColumns?.call(PublicPublic.t),
      updateWhere: updateWhere?.call(PublicPublic.t),
      transaction: transaction,
    );
  }

  /// Updates all [PublicPublic]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicPublic>> update(
    _is.DatabaseSession session,
    List<PublicPublic> rows, {
    _is.ColumnSelections<PublicPublicTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<PublicPublic>(
      rows,
      columns: columns?.call(PublicPublic.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [PublicPublic]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PublicPublic> updateRow(
    _is.DatabaseSession session,
    PublicPublic row, {
    _is.ColumnSelections<PublicPublicTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<PublicPublic>(
      row,
      columns: columns?.call(PublicPublic.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PublicPublic] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PublicPublic?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<PublicPublicUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<PublicPublic>(
      id,
      columnValues: columnValues(PublicPublic.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PublicPublic]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicPublic>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<PublicPublicUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<PublicPublicTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicPublicTable>? orderBy,
    _is.OrderByListBuilder<PublicPublicTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<PublicPublic>(
      columnValues: columnValues(PublicPublic.t.updateTable),
      where: where(PublicPublic.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicPublic.t),
      orderByList: orderByList?.call(PublicPublic.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [PublicPublic]s in the list and returns the deleted rows.
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
  Future<List<PublicPublic>> delete(
    _is.DatabaseSession session,
    List<PublicPublic> rows, {
    _is.OrderByBuilder<PublicPublicTable>? orderBy,
    _is.OrderByListBuilder<PublicPublicTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<PublicPublic>(
      rows,
      orderBy: orderBy?.call(PublicPublic.t),
      orderByList: orderByList?.call(PublicPublic.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [PublicPublic].
  Future<PublicPublic> deleteRow(
    _is.DatabaseSession session,
    PublicPublic row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PublicPublic>(
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
  Future<List<PublicPublic>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicPublicTable> where,
    _is.OrderByBuilder<PublicPublicTable>? orderBy,
    _is.OrderByListBuilder<PublicPublicTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<PublicPublic>(
      where: where(PublicPublic.t),
      orderBy: orderBy?.call(PublicPublic.t),
      orderByList: orderByList?.call(PublicPublic.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicPublicTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<PublicPublic>(
      where: where?.call(PublicPublic.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PublicPublic] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicPublicTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PublicPublic>(
      where: where(PublicPublic.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
