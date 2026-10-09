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

abstract class SsoStandardReasons
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  SsoStandardReasons._({
    this.id,
    required this.name,
    this.description,
    required this.code,
    this.displayOrder,
  });

  factory SsoStandardReasons({
    _is.UuidValue? id,
    required String name,
    String? description,
    required String code,
    int? displayOrder,
  }) = _SsoStandardReasonsImpl;

  factory SsoStandardReasons.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoStandardReasons(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      code: jsonSerialization['code'] as String,
      displayOrder: jsonSerialization['displayOrder'] as int?,
    );
  }

  static final t = SsoStandardReasonsTable();

  static const db = SsoStandardReasonsRepository._();

  @override
  _is.UuidValue? id;

  String name;

  String? description;

  String code;

  int? displayOrder;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [SsoStandardReasons]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SsoStandardReasons copyWith({
    _is.UuidValue? id,
    String? name,
    String? description,
    String? code,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoStandardReasons',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'code': code,
      if (displayOrder != null) 'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoStandardReasons',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'code': code,
      if (displayOrder != null) 'displayOrder': displayOrder,
    };
  }

  static SsoStandardReasonsInclude include() {
    return SsoStandardReasonsInclude._();
  }

  static SsoStandardReasonsIncludeList includeList({
    _is.WhereExpressionBuilder<SsoStandardReasonsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoStandardReasonsTable>? orderBy,
    _is.OrderByListBuilder<SsoStandardReasonsTable>? orderByList,
    SsoStandardReasonsInclude? include,
  }) {
    return SsoStandardReasonsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoStandardReasons.t),
      orderByList: orderByList?.call(SsoStandardReasons.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoStandardReasonsImpl extends SsoStandardReasons {
  _SsoStandardReasonsImpl({
    _is.UuidValue? id,
    required String name,
    String? description,
    required String code,
    int? displayOrder,
  }) : super._(
         id: id,
         name: name,
         description: description,
         code: code,
         displayOrder: displayOrder,
       );

  /// Returns a shallow copy of this [SsoStandardReasons]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SsoStandardReasons copyWith({
    Object? id = _Undefined,
    String? name,
    Object? description = _Undefined,
    String? code,
    Object? displayOrder = _Undefined,
  }) {
    return SsoStandardReasons(
      id: id is _is.UuidValue? ? id : this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      code: code ?? this.code,
      displayOrder: displayOrder is int? ? displayOrder : this.displayOrder,
    );
  }
}

class SsoStandardReasonsUpdateTable
    extends _is.UpdateTable<SsoStandardReasonsTable> {
  SsoStandardReasonsUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<int, int> displayOrder(int? value) => _is.ColumnValue(
    table.displayOrder,
    value,
  );
}

class SsoStandardReasonsTable extends _is.Table<_is.UuidValue?> {
  SsoStandardReasonsTable({super.tableRelation})
    : super(tableName: 'sso_standard_reasons') {
    updateTable = SsoStandardReasonsUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    displayOrder = _is.ColumnInt(
      'displayOrder',
      this,
    );
  }

  late final SsoStandardReasonsUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString code;

  late final _is.ColumnInt displayOrder;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    description,
    code,
    displayOrder,
  ];
}

class SsoStandardReasonsInclude extends _is.IncludeObject {
  SsoStandardReasonsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoStandardReasons.t;
}

class SsoStandardReasonsIncludeList extends _is.IncludeList {
  SsoStandardReasonsIncludeList._({
    _is.WhereExpressionBuilder<SsoStandardReasonsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SsoStandardReasons.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => SsoStandardReasons.t;
}

class SsoStandardReasonsRepository {
  const SsoStandardReasonsRepository._();

  /// Returns a list of [SsoStandardReasons]s matching the given query parameters.
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
  Future<List<SsoStandardReasons>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoStandardReasonsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoStandardReasonsTable>? orderBy,
    _is.OrderByListBuilder<SsoStandardReasonsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SsoStandardReasons>(
      where: where?.call(SsoStandardReasons.t),
      orderBy: orderBy?.call(SsoStandardReasons.t),
      orderByList: orderByList?.call(SsoStandardReasons.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SsoStandardReasons] matching the given query parameters.
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
  Future<SsoStandardReasons?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoStandardReasonsTable>? where,
    int? offset,
    _is.OrderByBuilder<SsoStandardReasonsTable>? orderBy,
    _is.OrderByListBuilder<SsoStandardReasonsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SsoStandardReasons>(
      where: where?.call(SsoStandardReasons.t),
      orderBy: orderBy?.call(SsoStandardReasons.t),
      orderByList: orderByList?.call(SsoStandardReasons.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SsoStandardReasons] by its [id] or null if no such row exists.
  Future<SsoStandardReasons?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SsoStandardReasons>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SsoStandardReasons]s in the list and returns the inserted rows.
  ///
  /// The returned [SsoStandardReasons]s will have their `id` fields set.
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
  Future<List<SsoStandardReasons>> insert(
    _is.DatabaseSession session,
    List<SsoStandardReasons> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SsoStandardReasons>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SsoStandardReasons] and returns the inserted row.
  ///
  /// The returned [SsoStandardReasons] will have its `id` field set.
  Future<SsoStandardReasons> insertRow(
    _is.DatabaseSession session,
    SsoStandardReasons row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SsoStandardReasons>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SsoStandardReasons]s in the list and returns the resulting rows.
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
  /// The returned [SsoStandardReasons]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoStandardReasons>> upsert(
    _is.DatabaseSession session,
    List<SsoStandardReasons> rows, {
    required _is.ColumnSelections<SsoStandardReasonsTable> conflictColumns,
    _is.ColumnSelections<SsoStandardReasonsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoStandardReasonsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SsoStandardReasons>(
      rows,
      conflictColumns: conflictColumns(SsoStandardReasons.t),
      updateColumns: updateColumns?.call(SsoStandardReasons.t),
      updateWhere: updateWhere?.call(SsoStandardReasons.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SsoStandardReasons] and returns the resulting row.
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
  /// The returned [SsoStandardReasons] will have its `id` field set.
  Future<SsoStandardReasons?> upsertRow(
    _is.DatabaseSession session,
    SsoStandardReasons row, {
    required _is.ColumnSelections<SsoStandardReasonsTable> conflictColumns,
    _is.ColumnSelections<SsoStandardReasonsTable>? updateColumns,
    _is.WhereExpressionBuilder<SsoStandardReasonsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SsoStandardReasons>(
      row,
      conflictColumns: conflictColumns(SsoStandardReasons.t),
      updateColumns: updateColumns?.call(SsoStandardReasons.t),
      updateWhere: updateWhere?.call(SsoStandardReasons.t),
      transaction: transaction,
    );
  }

  /// Updates all [SsoStandardReasons]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoStandardReasons>> update(
    _is.DatabaseSession session,
    List<SsoStandardReasons> rows, {
    _is.ColumnSelections<SsoStandardReasonsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SsoStandardReasons>(
      rows,
      columns: columns?.call(SsoStandardReasons.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SsoStandardReasons]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SsoStandardReasons> updateRow(
    _is.DatabaseSession session,
    SsoStandardReasons row, {
    _is.ColumnSelections<SsoStandardReasonsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SsoStandardReasons>(
      row,
      columns: columns?.call(SsoStandardReasons.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SsoStandardReasons] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SsoStandardReasons?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SsoStandardReasonsUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SsoStandardReasons>(
      id,
      columnValues: columnValues(SsoStandardReasons.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SsoStandardReasons]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SsoStandardReasons>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SsoStandardReasonsUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SsoStandardReasonsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SsoStandardReasonsTable>? orderBy,
    _is.OrderByListBuilder<SsoStandardReasonsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SsoStandardReasons>(
      columnValues: columnValues(SsoStandardReasons.t.updateTable),
      where: where(SsoStandardReasons.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SsoStandardReasons.t),
      orderByList: orderByList?.call(SsoStandardReasons.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SsoStandardReasons]s in the list and returns the deleted rows.
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
  Future<List<SsoStandardReasons>> delete(
    _is.DatabaseSession session,
    List<SsoStandardReasons> rows, {
    _is.OrderByBuilder<SsoStandardReasonsTable>? orderBy,
    _is.OrderByListBuilder<SsoStandardReasonsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SsoStandardReasons>(
      rows,
      orderBy: orderBy?.call(SsoStandardReasons.t),
      orderByList: orderByList?.call(SsoStandardReasons.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SsoStandardReasons].
  Future<SsoStandardReasons> deleteRow(
    _is.DatabaseSession session,
    SsoStandardReasons row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SsoStandardReasons>(
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
  Future<List<SsoStandardReasons>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoStandardReasonsTable> where,
    _is.OrderByBuilder<SsoStandardReasonsTable>? orderBy,
    _is.OrderByListBuilder<SsoStandardReasonsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SsoStandardReasons>(
      where: where(SsoStandardReasons.t),
      orderBy: orderBy?.call(SsoStandardReasons.t),
      orderByList: orderByList?.call(SsoStandardReasons.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SsoStandardReasonsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SsoStandardReasons>(
      where: where?.call(SsoStandardReasons.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SsoStandardReasons] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SsoStandardReasonsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SsoStandardReasons>(
      where: where(SsoStandardReasons.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
