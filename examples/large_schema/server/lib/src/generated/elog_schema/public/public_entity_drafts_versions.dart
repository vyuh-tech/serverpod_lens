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

abstract class PublicEntityDraftsVersions
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  PublicEntityDraftsVersions._({
    this.id,
    required this.draftId,
    required this.draftVersion,
    required this.entityData,
    this.createdAt,
    this.createdBy,
  });

  factory PublicEntityDraftsVersions({
    _is.UuidValue? id,
    required _is.UuidValue draftId,
    required int draftVersion,
    required String entityData,
    DateTime? createdAt,
    _is.UuidValue? createdBy,
  }) = _PublicEntityDraftsVersionsImpl;

  factory PublicEntityDraftsVersions.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return PublicEntityDraftsVersions(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      draftId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['draftId'],
      ),
      draftVersion: jsonSerialization['draftVersion'] as int,
      entityData: jsonSerialization['entityData'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['createdBy']),
    );
  }

  static final t = PublicEntityDraftsVersionsTable();

  static const db = PublicEntityDraftsVersionsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue draftId;

  int draftVersion;

  String entityData;

  DateTime? createdAt;

  _is.UuidValue? createdBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [PublicEntityDraftsVersions]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  PublicEntityDraftsVersions copyWith({
    _is.UuidValue? id,
    _is.UuidValue? draftId,
    int? draftVersion,
    String? entityData,
    DateTime? createdAt,
    _is.UuidValue? createdBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PublicEntityDraftsVersions',
      if (id != null) 'id': id?.toJson(),
      'draftId': draftId.toJson(),
      'draftVersion': draftVersion,
      'entityData': entityData,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PublicEntityDraftsVersions',
      if (id != null) 'id': id?.toJson(),
      'draftId': draftId.toJson(),
      'draftVersion': draftVersion,
      'entityData': entityData,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
    };
  }

  static PublicEntityDraftsVersionsInclude include() {
    return PublicEntityDraftsVersionsInclude._();
  }

  static PublicEntityDraftsVersionsIncludeList includeList({
    _is.WhereExpressionBuilder<PublicEntityDraftsVersionsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityDraftsVersionsTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityDraftsVersionsTable>? orderByList,
    PublicEntityDraftsVersionsInclude? include,
  }) {
    return PublicEntityDraftsVersionsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicEntityDraftsVersions.t),
      orderByList: orderByList?.call(PublicEntityDraftsVersions.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicEntityDraftsVersionsImpl extends PublicEntityDraftsVersions {
  _PublicEntityDraftsVersionsImpl({
    _is.UuidValue? id,
    required _is.UuidValue draftId,
    required int draftVersion,
    required String entityData,
    DateTime? createdAt,
    _is.UuidValue? createdBy,
  }) : super._(
         id: id,
         draftId: draftId,
         draftVersion: draftVersion,
         entityData: entityData,
         createdAt: createdAt,
         createdBy: createdBy,
       );

  /// Returns a shallow copy of this [PublicEntityDraftsVersions]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  PublicEntityDraftsVersions copyWith({
    Object? id = _Undefined,
    _is.UuidValue? draftId,
    int? draftVersion,
    String? entityData,
    Object? createdAt = _Undefined,
    Object? createdBy = _Undefined,
  }) {
    return PublicEntityDraftsVersions(
      id: id is _is.UuidValue? ? id : this.id,
      draftId: draftId ?? this.draftId,
      draftVersion: draftVersion ?? this.draftVersion,
      entityData: entityData ?? this.entityData,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
    );
  }
}

class PublicEntityDraftsVersionsUpdateTable
    extends _is.UpdateTable<PublicEntityDraftsVersionsTable> {
  PublicEntityDraftsVersionsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> draftId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.draftId,
        value,
      );

  _is.ColumnValue<int, int> draftVersion(int value) => _is.ColumnValue(
    table.draftVersion,
    value,
  );

  _is.ColumnValue<String, String> entityData(String value) => _is.ColumnValue(
    table.entityData,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> createdBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.createdBy,
    value,
  );
}

class PublicEntityDraftsVersionsTable extends _is.Table<_is.UuidValue?> {
  PublicEntityDraftsVersionsTable({super.tableRelation})
    : super(tableName: 'public_entity_drafts_versions') {
    updateTable = PublicEntityDraftsVersionsUpdateTable(this);
    draftId = _is.ColumnUuid(
      'draftId',
      this,
    );
    draftVersion = _is.ColumnInt(
      'draftVersion',
      this,
    );
    entityData = _is.ColumnString(
      'entityData',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    createdBy = _is.ColumnUuid(
      'createdBy',
      this,
    );
  }

  late final PublicEntityDraftsVersionsUpdateTable updateTable;

  late final _is.ColumnUuid draftId;

  late final _is.ColumnInt draftVersion;

  late final _is.ColumnString entityData;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnUuid createdBy;

  @override
  List<_is.Column> get columns => [
    id,
    draftId,
    draftVersion,
    entityData,
    createdAt,
    createdBy,
  ];
}

class PublicEntityDraftsVersionsInclude extends _is.IncludeObject {
  PublicEntityDraftsVersionsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicEntityDraftsVersions.t;
}

class PublicEntityDraftsVersionsIncludeList extends _is.IncludeList {
  PublicEntityDraftsVersionsIncludeList._({
    _is.WhereExpressionBuilder<PublicEntityDraftsVersionsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PublicEntityDraftsVersions.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicEntityDraftsVersions.t;
}

class PublicEntityDraftsVersionsRepository {
  const PublicEntityDraftsVersionsRepository._();

  /// Returns a list of [PublicEntityDraftsVersions]s matching the given query parameters.
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
  Future<List<PublicEntityDraftsVersions>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityDraftsVersionsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityDraftsVersionsTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityDraftsVersionsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PublicEntityDraftsVersions>(
      where: where?.call(PublicEntityDraftsVersions.t),
      orderBy: orderBy?.call(PublicEntityDraftsVersions.t),
      orderByList: orderByList?.call(PublicEntityDraftsVersions.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PublicEntityDraftsVersions] matching the given query parameters.
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
  Future<PublicEntityDraftsVersions?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityDraftsVersionsTable>? where,
    int? offset,
    _is.OrderByBuilder<PublicEntityDraftsVersionsTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityDraftsVersionsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PublicEntityDraftsVersions>(
      where: where?.call(PublicEntityDraftsVersions.t),
      orderBy: orderBy?.call(PublicEntityDraftsVersions.t),
      orderByList: orderByList?.call(PublicEntityDraftsVersions.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PublicEntityDraftsVersions] by its [id] or null if no such row exists.
  Future<PublicEntityDraftsVersions?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PublicEntityDraftsVersions>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PublicEntityDraftsVersions]s in the list and returns the inserted rows.
  ///
  /// The returned [PublicEntityDraftsVersions]s will have their `id` fields set.
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
  Future<List<PublicEntityDraftsVersions>> insert(
    _is.DatabaseSession session,
    List<PublicEntityDraftsVersions> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<PublicEntityDraftsVersions>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [PublicEntityDraftsVersions] and returns the inserted row.
  ///
  /// The returned [PublicEntityDraftsVersions] will have its `id` field set.
  Future<PublicEntityDraftsVersions> insertRow(
    _is.DatabaseSession session,
    PublicEntityDraftsVersions row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<PublicEntityDraftsVersions>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [PublicEntityDraftsVersions]s in the list and returns the resulting rows.
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
  /// The returned [PublicEntityDraftsVersions]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityDraftsVersions>> upsert(
    _is.DatabaseSession session,
    List<PublicEntityDraftsVersions> rows, {
    required _is.ColumnSelections<PublicEntityDraftsVersionsTable>
    conflictColumns,
    _is.ColumnSelections<PublicEntityDraftsVersionsTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicEntityDraftsVersionsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<PublicEntityDraftsVersions>(
      rows,
      conflictColumns: conflictColumns(PublicEntityDraftsVersions.t),
      updateColumns: updateColumns?.call(PublicEntityDraftsVersions.t),
      updateWhere: updateWhere?.call(PublicEntityDraftsVersions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [PublicEntityDraftsVersions] and returns the resulting row.
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
  /// The returned [PublicEntityDraftsVersions] will have its `id` field set.
  Future<PublicEntityDraftsVersions?> upsertRow(
    _is.DatabaseSession session,
    PublicEntityDraftsVersions row, {
    required _is.ColumnSelections<PublicEntityDraftsVersionsTable>
    conflictColumns,
    _is.ColumnSelections<PublicEntityDraftsVersionsTable>? updateColumns,
    _is.WhereExpressionBuilder<PublicEntityDraftsVersionsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<PublicEntityDraftsVersions>(
      row,
      conflictColumns: conflictColumns(PublicEntityDraftsVersions.t),
      updateColumns: updateColumns?.call(PublicEntityDraftsVersions.t),
      updateWhere: updateWhere?.call(PublicEntityDraftsVersions.t),
      transaction: transaction,
    );
  }

  /// Updates all [PublicEntityDraftsVersions]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityDraftsVersions>> update(
    _is.DatabaseSession session,
    List<PublicEntityDraftsVersions> rows, {
    _is.ColumnSelections<PublicEntityDraftsVersionsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<PublicEntityDraftsVersions>(
      rows,
      columns: columns?.call(PublicEntityDraftsVersions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [PublicEntityDraftsVersions]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PublicEntityDraftsVersions> updateRow(
    _is.DatabaseSession session,
    PublicEntityDraftsVersions row, {
    _is.ColumnSelections<PublicEntityDraftsVersionsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<PublicEntityDraftsVersions>(
      row,
      columns: columns?.call(PublicEntityDraftsVersions.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PublicEntityDraftsVersions] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PublicEntityDraftsVersions?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<PublicEntityDraftsVersionsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<PublicEntityDraftsVersions>(
      id,
      columnValues: columnValues(PublicEntityDraftsVersions.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PublicEntityDraftsVersions]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityDraftsVersions>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<PublicEntityDraftsVersionsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<PublicEntityDraftsVersionsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityDraftsVersionsTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityDraftsVersionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<PublicEntityDraftsVersions>(
      columnValues: columnValues(PublicEntityDraftsVersions.t.updateTable),
      where: where(PublicEntityDraftsVersions.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicEntityDraftsVersions.t),
      orderByList: orderByList?.call(PublicEntityDraftsVersions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [PublicEntityDraftsVersions]s in the list and returns the deleted rows.
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
  Future<List<PublicEntityDraftsVersions>> delete(
    _is.DatabaseSession session,
    List<PublicEntityDraftsVersions> rows, {
    _is.OrderByBuilder<PublicEntityDraftsVersionsTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityDraftsVersionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<PublicEntityDraftsVersions>(
      rows,
      orderBy: orderBy?.call(PublicEntityDraftsVersions.t),
      orderByList: orderByList?.call(PublicEntityDraftsVersions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [PublicEntityDraftsVersions].
  Future<PublicEntityDraftsVersions> deleteRow(
    _is.DatabaseSession session,
    PublicEntityDraftsVersions row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PublicEntityDraftsVersions>(
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
  Future<List<PublicEntityDraftsVersions>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicEntityDraftsVersionsTable> where,
    _is.OrderByBuilder<PublicEntityDraftsVersionsTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityDraftsVersionsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<PublicEntityDraftsVersions>(
      where: where(PublicEntityDraftsVersions.t),
      orderBy: orderBy?.call(PublicEntityDraftsVersions.t),
      orderByList: orderByList?.call(PublicEntityDraftsVersions.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityDraftsVersionsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<PublicEntityDraftsVersions>(
      where: where?.call(PublicEntityDraftsVersions.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PublicEntityDraftsVersions] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PublicEntityDraftsVersionsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PublicEntityDraftsVersions>(
      where: where(PublicEntityDraftsVersions.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
