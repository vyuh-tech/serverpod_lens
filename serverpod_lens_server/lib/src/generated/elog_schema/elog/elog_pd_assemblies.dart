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

abstract class ElogPdAssemblies
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPdAssemblies._({
    this.id,
    required this.punchSetId,
    required this.ordinal,
    required this.label,
  });

  factory ElogPdAssemblies({
    _is.UuidValue? id,
    required _is.UuidValue punchSetId,
    required int ordinal,
    required String label,
  }) = _ElogPdAssembliesImpl;

  factory ElogPdAssemblies.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPdAssemblies(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      punchSetId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['punchSetId'],
      ),
      ordinal: jsonSerialization['ordinal'] as int,
      label: jsonSerialization['label'] as String,
    );
  }

  static final t = ElogPdAssembliesTable();

  static const db = ElogPdAssembliesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue punchSetId;

  int ordinal;

  String label;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPdAssemblies]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPdAssemblies copyWith({
    _is.UuidValue? id,
    _is.UuidValue? punchSetId,
    int? ordinal,
    String? label,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdAssemblies',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'ordinal': ordinal,
      'label': label,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdAssemblies',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'ordinal': ordinal,
      'label': label,
    };
  }

  static ElogPdAssembliesInclude include() {
    return ElogPdAssembliesInclude._();
  }

  static ElogPdAssembliesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPdAssembliesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdAssembliesTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAssembliesTable>? orderByList,
    ElogPdAssembliesInclude? include,
  }) {
    return ElogPdAssembliesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdAssemblies.t),
      orderByList: orderByList?.call(ElogPdAssemblies.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdAssembliesImpl extends ElogPdAssemblies {
  _ElogPdAssembliesImpl({
    _is.UuidValue? id,
    required _is.UuidValue punchSetId,
    required int ordinal,
    required String label,
  }) : super._(
         id: id,
         punchSetId: punchSetId,
         ordinal: ordinal,
         label: label,
       );

  /// Returns a shallow copy of this [ElogPdAssemblies]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPdAssemblies copyWith({
    Object? id = _Undefined,
    _is.UuidValue? punchSetId,
    int? ordinal,
    String? label,
  }) {
    return ElogPdAssemblies(
      id: id is _is.UuidValue? ? id : this.id,
      punchSetId: punchSetId ?? this.punchSetId,
      ordinal: ordinal ?? this.ordinal,
      label: label ?? this.label,
    );
  }
}

class ElogPdAssembliesUpdateTable
    extends _is.UpdateTable<ElogPdAssembliesTable> {
  ElogPdAssembliesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> punchSetId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.punchSetId,
    value,
  );

  _is.ColumnValue<int, int> ordinal(int value) => _is.ColumnValue(
    table.ordinal,
    value,
  );

  _is.ColumnValue<String, String> label(String value) => _is.ColumnValue(
    table.label,
    value,
  );
}

class ElogPdAssembliesTable extends _is.Table<_is.UuidValue?> {
  ElogPdAssembliesTable({super.tableRelation})
    : super(tableName: 'elog_pd_assemblies') {
    updateTable = ElogPdAssembliesUpdateTable(this);
    punchSetId = _is.ColumnUuid(
      'punchSetId',
      this,
    );
    ordinal = _is.ColumnInt(
      'ordinal',
      this,
    );
    label = _is.ColumnString(
      'label',
      this,
    );
  }

  late final ElogPdAssembliesUpdateTable updateTable;

  late final _is.ColumnUuid punchSetId;

  late final _is.ColumnInt ordinal;

  late final _is.ColumnString label;

  @override
  List<_is.Column> get columns => [
    id,
    punchSetId,
    ordinal,
    label,
  ];
}

class ElogPdAssembliesInclude extends _is.IncludeObject {
  ElogPdAssembliesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdAssemblies.t;
}

class ElogPdAssembliesIncludeList extends _is.IncludeList {
  ElogPdAssembliesIncludeList._({
    _is.WhereExpressionBuilder<ElogPdAssembliesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPdAssemblies.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPdAssemblies.t;
}

class ElogPdAssembliesRepository {
  const ElogPdAssembliesRepository._();

  /// Returns a list of [ElogPdAssemblies]s matching the given query parameters.
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
  Future<List<ElogPdAssemblies>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdAssembliesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdAssembliesTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAssembliesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPdAssemblies>(
      where: where?.call(ElogPdAssemblies.t),
      orderBy: orderBy?.call(ElogPdAssemblies.t),
      orderByList: orderByList?.call(ElogPdAssemblies.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPdAssemblies] matching the given query parameters.
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
  Future<ElogPdAssemblies?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdAssembliesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPdAssembliesTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAssembliesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPdAssemblies>(
      where: where?.call(ElogPdAssemblies.t),
      orderBy: orderBy?.call(ElogPdAssemblies.t),
      orderByList: orderByList?.call(ElogPdAssemblies.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPdAssemblies] by its [id] or null if no such row exists.
  Future<ElogPdAssemblies?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPdAssemblies>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPdAssemblies]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPdAssemblies]s will have their `id` fields set.
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
  Future<List<ElogPdAssemblies>> insert(
    _is.DatabaseSession session,
    List<ElogPdAssemblies> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPdAssemblies>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPdAssemblies] and returns the inserted row.
  ///
  /// The returned [ElogPdAssemblies] will have its `id` field set.
  Future<ElogPdAssemblies> insertRow(
    _is.DatabaseSession session,
    ElogPdAssemblies row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPdAssemblies>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPdAssemblies]s in the list and returns the resulting rows.
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
  /// The returned [ElogPdAssemblies]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdAssemblies>> upsert(
    _is.DatabaseSession session,
    List<ElogPdAssemblies> rows, {
    required _is.ColumnSelections<ElogPdAssembliesTable> conflictColumns,
    _is.ColumnSelections<ElogPdAssembliesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdAssembliesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPdAssemblies>(
      rows,
      conflictColumns: conflictColumns(ElogPdAssemblies.t),
      updateColumns: updateColumns?.call(ElogPdAssemblies.t),
      updateWhere: updateWhere?.call(ElogPdAssemblies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPdAssemblies] and returns the resulting row.
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
  /// The returned [ElogPdAssemblies] will have its `id` field set.
  Future<ElogPdAssemblies?> upsertRow(
    _is.DatabaseSession session,
    ElogPdAssemblies row, {
    required _is.ColumnSelections<ElogPdAssembliesTable> conflictColumns,
    _is.ColumnSelections<ElogPdAssembliesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPdAssembliesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPdAssemblies>(
      row,
      conflictColumns: conflictColumns(ElogPdAssemblies.t),
      updateColumns: updateColumns?.call(ElogPdAssemblies.t),
      updateWhere: updateWhere?.call(ElogPdAssemblies.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdAssemblies]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdAssemblies>> update(
    _is.DatabaseSession session,
    List<ElogPdAssemblies> rows, {
    _is.ColumnSelections<ElogPdAssembliesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPdAssemblies>(
      rows,
      columns: columns?.call(ElogPdAssemblies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPdAssemblies]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPdAssemblies> updateRow(
    _is.DatabaseSession session,
    ElogPdAssemblies row, {
    _is.ColumnSelections<ElogPdAssembliesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPdAssemblies>(
      row,
      columns: columns?.call(ElogPdAssemblies.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPdAssemblies] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPdAssemblies?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPdAssembliesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPdAssemblies>(
      id,
      columnValues: columnValues(ElogPdAssemblies.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPdAssemblies]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPdAssemblies>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPdAssembliesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogPdAssembliesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPdAssembliesTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAssembliesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPdAssemblies>(
      columnValues: columnValues(ElogPdAssemblies.t.updateTable),
      where: where(ElogPdAssemblies.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPdAssemblies.t),
      orderByList: orderByList?.call(ElogPdAssemblies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPdAssemblies]s in the list and returns the deleted rows.
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
  Future<List<ElogPdAssemblies>> delete(
    _is.DatabaseSession session,
    List<ElogPdAssemblies> rows, {
    _is.OrderByBuilder<ElogPdAssembliesTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAssembliesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPdAssemblies>(
      rows,
      orderBy: orderBy?.call(ElogPdAssemblies.t),
      orderByList: orderByList?.call(ElogPdAssemblies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPdAssemblies].
  Future<ElogPdAssemblies> deleteRow(
    _is.DatabaseSession session,
    ElogPdAssemblies row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPdAssemblies>(
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
  Future<List<ElogPdAssemblies>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdAssembliesTable> where,
    _is.OrderByBuilder<ElogPdAssembliesTable>? orderBy,
    _is.OrderByListBuilder<ElogPdAssembliesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPdAssemblies>(
      where: where(ElogPdAssemblies.t),
      orderBy: orderBy?.call(ElogPdAssemblies.t),
      orderByList: orderByList?.call(ElogPdAssemblies.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPdAssembliesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPdAssemblies>(
      where: where?.call(ElogPdAssemblies.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPdAssemblies] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPdAssembliesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPdAssemblies>(
      where: where(ElogPdAssemblies.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
