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

abstract class ElogPdAssemblyMembers
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPdAssemblyMembers._({
    this.id,
    required this.assemblyId,
    required this.componentId,
  });

  factory ElogPdAssemblyMembers({
    _is.UuidValue? id,
    required _is.UuidValue assemblyId,
    required _is.UuidValue componentId,
  }) = _ElogPdAssemblyMembersImpl;

  factory ElogPdAssemblyMembers.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPdAssemblyMembers(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      assemblyId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['assemblyId'],
      ),
      componentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['componentId'],
      ),
    );
  }

  static final t = ElogPdAssemblyMembersTable();

  static const db = ElogPdAssemblyMembersRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue assemblyId;

  _is.UuidValue componentId;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPdAssemblyMembers]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPdAssemblyMembers copyWith({
    _is.UuidValue? id,
    _is.UuidValue? assemblyId,
    _is.UuidValue? componentId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdAssemblyMembers',
      if (id != null) 'id': id?.toJson(),
      'assemblyId': assemblyId.toJson(),
      'componentId': componentId.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdAssemblyMembers',
      if (id != null) 'id': id?.toJson(),
      'assemblyId': assemblyId.toJson(),
      'componentId': componentId.toJson(),
    };
  }

  static ElogPdAssemblyMembersInclude include() {
    return ElogPdAssemblyMembersInclude._();
  }

  static ElogPdAssemblyMembersIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPdAssemblyMembersTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdAssemblyMembersTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAssemblyMembersTable>? orderByList,
    ElogPdAssemblyMembersInclude? include,
  }) {
    return ElogPdAssemblyMembersIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdAssemblyMembers.t),
      orderByList: orderByList?.call(ElogPdAssemblyMembers.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdAssemblyMembersImpl extends ElogPdAssemblyMembers {
  _ElogPdAssemblyMembersImpl({
    _is.UuidValue? id,
    required _is.UuidValue assemblyId,
    required _is.UuidValue componentId,
  }) : super._(
         id: id,
         assemblyId: assemblyId,
         componentId: componentId,
       );

  /// Returns a shallow copy of this [ElogPdAssemblyMembers]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPdAssemblyMembers copyWith({
    Object? id = _Undefined,
    _is.UuidValue? assemblyId,
    _is.UuidValue? componentId,
  }) {
    return ElogPdAssemblyMembers(
      id: id is _is.UuidValue? ? id : this.id,
      assemblyId: assemblyId ?? this.assemblyId,
      componentId: componentId ?? this.componentId,
    );
  }
}

class ElogPdAssemblyMembersUpdateTable
    extends _is.UpdateTable<ElogPdAssemblyMembersTable> {
  ElogPdAssemblyMembersUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> assemblyId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.assemblyId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> componentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.componentId,
    value,
  );
}

class ElogPdAssemblyMembersTable extends _is.Table<_is.UuidValue?> {
  ElogPdAssemblyMembersTable({super.tableRelation})
    : super(tableName: 'elog_pd_assembly_members') {
    updateTable = ElogPdAssemblyMembersUpdateTable(this);
    assemblyId = _is.ColumnUuid(
      'assemblyId',
      this,
    );
    componentId = _is.ColumnUuid(
      'componentId',
      this,
    );
  }

  late final ElogPdAssemblyMembersUpdateTable updateTable;

  late final _is.ColumnUuid assemblyId;

  late final _is.ColumnUuid componentId;

  @override
  List<_is.Column> get columns => [
    id,
    assemblyId,
    componentId,
  ];
}

class ElogPdAssemblyMembersInclude extends _is.IncludeObject {
  ElogPdAssemblyMembersInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdAssemblyMembers.t;
}

class ElogPdAssemblyMembersIncludeList extends _is.IncludeList {
  ElogPdAssemblyMembersIncludeList._({
    _is.WhereExpressionBuilder<ElogPdAssemblyMembersTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPdAssemblyMembers.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdAssemblyMembers.t;
}

class ElogPdAssemblyMembersRepository {
  const ElogPdAssemblyMembersRepository._();

  /// Returns a list of [ElogPdAssemblyMembers]s matching the given query parameters.
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
  Future<List<ElogPdAssemblyMembers>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdAssemblyMembersTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdAssemblyMembersTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAssemblyMembersTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPdAssemblyMembers>(
      where: where?.call(ElogPdAssemblyMembers.t),
      orderBy: orderBy?.call(ElogPdAssemblyMembers.t),
      orderByList: orderByList?.call(ElogPdAssemblyMembers.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPdAssemblyMembers] matching the given query parameters.
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
  Future<ElogPdAssemblyMembers?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdAssemblyMembersTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPdAssemblyMembersTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAssemblyMembersTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPdAssemblyMembers>(
      where: where?.call(ElogPdAssemblyMembers.t),
      orderBy: orderBy?.call(ElogPdAssemblyMembers.t),
      orderByList: orderByList?.call(ElogPdAssemblyMembers.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPdAssemblyMembers] by its [id] or null if no such row exists.
  Future<ElogPdAssemblyMembers?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPdAssemblyMembers>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPdAssemblyMembers]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPdAssemblyMembers]s will have their `id` fields set.
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
  Future<List<ElogPdAssemblyMembers>> insert(
    _is.DatabaseSession session,
    List<ElogPdAssemblyMembers> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPdAssemblyMembers>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPdAssemblyMembers] and returns the inserted row.
  ///
  /// The returned [ElogPdAssemblyMembers] will have its `id` field set.
  Future<ElogPdAssemblyMembers> insertRow(
    _is.DatabaseSession session,
    ElogPdAssemblyMembers row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPdAssemblyMembers>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPdAssemblyMembers]s in the list and returns the resulting rows.
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
  /// The returned [ElogPdAssemblyMembers]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdAssemblyMembers>> upsert(
    _is.DatabaseSession session,
    List<ElogPdAssemblyMembers> rows, {
    required _is.ColumnSelections<ElogPdAssemblyMembersTable> conflictColumns,
    _is.ColumnSelections<ElogPdAssemblyMembersTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdAssemblyMembersTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPdAssemblyMembers>(
      rows,
      conflictColumns: conflictColumns(ElogPdAssemblyMembers.t),
      updateColumns: updateColumns?.call(ElogPdAssemblyMembers.t),
      updateWhere: updateWhere?.call(ElogPdAssemblyMembers.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPdAssemblyMembers] and returns the resulting row.
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
  /// The returned [ElogPdAssemblyMembers] will have its `id` field set.
  Future<ElogPdAssemblyMembers?> upsertRow(
    _is.DatabaseSession session,
    ElogPdAssemblyMembers row, {
    required _is.ColumnSelections<ElogPdAssemblyMembersTable> conflictColumns,
    _is.ColumnSelections<ElogPdAssemblyMembersTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdAssemblyMembersTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPdAssemblyMembers>(
      row,
      conflictColumns: conflictColumns(ElogPdAssemblyMembers.t),
      updateColumns: updateColumns?.call(ElogPdAssemblyMembers.t),
      updateWhere: updateWhere?.call(ElogPdAssemblyMembers.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdAssemblyMembers]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdAssemblyMembers>> update(
    _is.DatabaseSession session,
    List<ElogPdAssemblyMembers> rows, {
    _is.ColumnSelections<ElogPdAssemblyMembersTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPdAssemblyMembers>(
      rows,
      columns: columns?.call(ElogPdAssemblyMembers.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPdAssemblyMembers]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPdAssemblyMembers> updateRow(
    _is.DatabaseSession session,
    ElogPdAssemblyMembers row, {
    _is.ColumnSelections<ElogPdAssemblyMembersTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPdAssemblyMembers>(
      row,
      columns: columns?.call(ElogPdAssemblyMembers.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPdAssemblyMembers] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPdAssemblyMembers?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPdAssemblyMembersUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPdAssemblyMembers>(
      id,
      columnValues: columnValues(ElogPdAssemblyMembers.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdAssemblyMembers]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdAssemblyMembers>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPdAssemblyMembersUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPdAssemblyMembersTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdAssemblyMembersTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAssemblyMembersTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPdAssemblyMembers>(
      columnValues: columnValues(ElogPdAssemblyMembers.t.updateTable),
      where: where(ElogPdAssemblyMembers.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdAssemblyMembers.t),
      orderByList: orderByList?.call(ElogPdAssemblyMembers.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPdAssemblyMembers]s in the list and returns the deleted rows.
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
  Future<List<ElogPdAssemblyMembers>> delete(
    _is.DatabaseSession session,
    List<ElogPdAssemblyMembers> rows, {
    _is.OrderByBuilder<ElogPdAssemblyMembersTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAssemblyMembersTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPdAssemblyMembers>(
      rows,
      orderBy: orderBy?.call(ElogPdAssemblyMembers.t),
      orderByList: orderByList?.call(ElogPdAssemblyMembers.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPdAssemblyMembers].
  Future<ElogPdAssemblyMembers> deleteRow(
    _is.DatabaseSession session,
    ElogPdAssemblyMembers row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPdAssemblyMembers>(
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
  Future<List<ElogPdAssemblyMembers>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdAssemblyMembersTable> where,
    _is.OrderByBuilder<ElogPdAssemblyMembersTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAssemblyMembersTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPdAssemblyMembers>(
      where: where(ElogPdAssemblyMembers.t),
      orderBy: orderBy?.call(ElogPdAssemblyMembers.t),
      orderByList: orderByList?.call(ElogPdAssemblyMembers.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdAssemblyMembersTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPdAssemblyMembers>(
      where: where?.call(ElogPdAssemblyMembers.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPdAssemblyMembers] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdAssemblyMembersTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPdAssemblyMembers>(
      where: where(ElogPdAssemblyMembers.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
