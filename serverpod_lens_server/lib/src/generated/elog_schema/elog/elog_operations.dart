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
import 'package:serverpod_lens_server/src/generated/protocol.dart' as _ioh8es0p;

abstract class ElogOperations
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogOperations._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.displayOrder,
    this.entityTypes,
  });

  factory ElogOperations({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required int displayOrder,
    List<String>? entityTypes,
  }) = _ElogOperationsImpl;

  factory ElogOperations.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogOperations(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      displayOrder: jsonSerialization['displayOrder'] as int,
      entityTypes: jsonSerialization['entityTypes'] == null
          ? null
          : _ioh8es0p.Protocol().deserialize<List<String>>(
              jsonSerialization['entityTypes'],
            ),
    );
  }

  static final t = ElogOperationsTable();

  static const db = ElogOperationsRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  int displayOrder;

  List<String>? entityTypes;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogOperations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogOperations copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    int? displayOrder,
    List<String>? entityTypes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogOperations',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'displayOrder': displayOrder,
      if (entityTypes != null) 'entityTypes': entityTypes?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogOperations',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'displayOrder': displayOrder,
      if (entityTypes != null) 'entityTypes': entityTypes?.toJson(),
    };
  }

  static ElogOperationsInclude include() {
    return ElogOperationsInclude._();
  }

  static ElogOperationsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogOperationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogOperationsTable>? orderBy,
    _is.OrderByListBuilder<ElogOperationsTable>? orderByList,
    ElogOperationsInclude? include,
  }) {
    return ElogOperationsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogOperations.t),
      orderByList: orderByList?.call(ElogOperations.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogOperationsImpl extends ElogOperations {
  _ElogOperationsImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required int displayOrder,
    List<String>? entityTypes,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         displayOrder: displayOrder,
         entityTypes: entityTypes,
       );

  /// Returns a shallow copy of this [ElogOperations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogOperations copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    int? displayOrder,
    Object? entityTypes = _Undefined,
  }) {
    return ElogOperations(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      displayOrder: displayOrder ?? this.displayOrder,
      entityTypes: entityTypes is List<String>?
          ? entityTypes
          : this.entityTypes?.map((e0) => e0).toList(),
    );
  }
}

class ElogOperationsUpdateTable extends _is.UpdateTable<ElogOperationsTable> {
  ElogOperationsUpdateTable(super.table);

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<int, int> displayOrder(int value) => _is.ColumnValue(
    table.displayOrder,
    value,
  );

  _is.ColumnValue<List<String>, List<String>> entityTypes(
    List<String>? value,
  ) => _is.ColumnValue(
    table.entityTypes,
    value,
  );
}

class ElogOperationsTable extends _is.Table<_is.UuidValue?> {
  ElogOperationsTable({super.tableRelation})
    : super(tableName: 'elog_operations') {
    updateTable = ElogOperationsUpdateTable(this);
    code = _is.ColumnString(
      'code',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    displayOrder = _is.ColumnInt(
      'displayOrder',
      this,
    );
    entityTypes = _is.ColumnSerializable<List<String>>(
      'entityTypes',
      this,
    );
  }

  late final ElogOperationsUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnInt displayOrder;

  late final _is.ColumnSerializable<List<String>> entityTypes;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    displayOrder,
    entityTypes,
  ];
}

class ElogOperationsInclude extends _is.IncludeObject {
  ElogOperationsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogOperations.t;
}

class ElogOperationsIncludeList extends _is.IncludeList {
  ElogOperationsIncludeList._({
    _is.WhereExpressionBuilder<ElogOperationsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogOperations.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogOperations.t;
}

class ElogOperationsRepository {
  const ElogOperationsRepository._();

  /// Returns a list of [ElogOperations]s matching the given query parameters.
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
  Future<List<ElogOperations>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogOperationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogOperationsTable>? orderBy,
    _is.OrderByListBuilder<ElogOperationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogOperations>(
      where: where?.call(ElogOperations.t),
      orderBy: orderBy?.call(ElogOperations.t),
      orderByList: orderByList?.call(ElogOperations.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogOperations] matching the given query parameters.
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
  Future<ElogOperations?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogOperationsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogOperationsTable>? orderBy,
    _is.OrderByListBuilder<ElogOperationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogOperations>(
      where: where?.call(ElogOperations.t),
      orderBy: orderBy?.call(ElogOperations.t),
      orderByList: orderByList?.call(ElogOperations.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogOperations] by its [id] or null if no such row exists.
  Future<ElogOperations?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogOperations>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogOperations]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogOperations]s will have their `id` fields set.
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
  Future<List<ElogOperations>> insert(
    _is.DatabaseSession session,
    List<ElogOperations> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogOperations>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogOperations] and returns the inserted row.
  ///
  /// The returned [ElogOperations] will have its `id` field set.
  Future<ElogOperations> insertRow(
    _is.DatabaseSession session,
    ElogOperations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogOperations>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogOperations]s in the list and returns the resulting rows.
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
  /// The returned [ElogOperations]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogOperations>> upsert(
    _is.DatabaseSession session,
    List<ElogOperations> rows, {
    required _is.ColumnSelections<ElogOperationsTable> conflictColumns,
    _is.ColumnSelections<ElogOperationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogOperationsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogOperations>(
      rows,
      conflictColumns: conflictColumns(ElogOperations.t),
      updateColumns: updateColumns?.call(ElogOperations.t),
      updateWhere: updateWhere?.call(ElogOperations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogOperations] and returns the resulting row.
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
  /// The returned [ElogOperations] will have its `id` field set.
  Future<ElogOperations?> upsertRow(
    _is.DatabaseSession session,
    ElogOperations row, {
    required _is.ColumnSelections<ElogOperationsTable> conflictColumns,
    _is.ColumnSelections<ElogOperationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogOperationsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogOperations>(
      row,
      conflictColumns: conflictColumns(ElogOperations.t),
      updateColumns: updateColumns?.call(ElogOperations.t),
      updateWhere: updateWhere?.call(ElogOperations.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogOperations]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogOperations>> update(
    _is.DatabaseSession session,
    List<ElogOperations> rows, {
    _is.ColumnSelections<ElogOperationsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogOperations>(
      rows,
      columns: columns?.call(ElogOperations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogOperations]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogOperations> updateRow(
    _is.DatabaseSession session,
    ElogOperations row, {
    _is.ColumnSelections<ElogOperationsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogOperations>(
      row,
      columns: columns?.call(ElogOperations.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogOperations] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogOperations?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogOperationsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogOperations>(
      id,
      columnValues: columnValues(ElogOperations.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogOperations]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogOperations>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogOperationsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogOperationsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogOperationsTable>? orderBy,
    _is.OrderByListBuilder<ElogOperationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogOperations>(
      columnValues: columnValues(ElogOperations.t.updateTable),
      where: where(ElogOperations.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogOperations.t),
      orderByList: orderByList?.call(ElogOperations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogOperations]s in the list and returns the deleted rows.
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
  Future<List<ElogOperations>> delete(
    _is.DatabaseSession session,
    List<ElogOperations> rows, {
    _is.OrderByBuilder<ElogOperationsTable>? orderBy,
    _is.OrderByListBuilder<ElogOperationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogOperations>(
      rows,
      orderBy: orderBy?.call(ElogOperations.t),
      orderByList: orderByList?.call(ElogOperations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogOperations].
  Future<ElogOperations> deleteRow(
    _is.DatabaseSession session,
    ElogOperations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogOperations>(
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
  Future<List<ElogOperations>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogOperationsTable> where,
    _is.OrderByBuilder<ElogOperationsTable>? orderBy,
    _is.OrderByListBuilder<ElogOperationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogOperations>(
      where: where(ElogOperations.t),
      orderBy: orderBy?.call(ElogOperations.t),
      orderByList: orderByList?.call(ElogOperations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogOperationsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogOperations>(
      where: where?.call(ElogOperations.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogOperations] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogOperationsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogOperations>(
      where: where(ElogOperations.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
