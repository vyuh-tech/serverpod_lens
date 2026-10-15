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

/// Fictional university fixture: finance.
abstract class CampusFeeType
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusFeeType._({
    this.id,
    required this.code,
    required this.name,
    required this.refundable,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusFeeType({
    _is.UuidValue? id,
    required String code,
    required String name,
    required bool refundable,
    DateTime? createdAt,
  }) = _CampusFeeTypeImpl;

  factory CampusFeeType.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusFeeType(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      refundable: _is.BoolJsonExtension.fromJson(
        jsonSerialization['refundable'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusFeeTypeTable();

  static const db = CampusFeeTypeRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  bool refundable;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusFeeType]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusFeeType copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    bool? refundable,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusFeeType',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      'refundable': refundable,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusFeeType',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      'refundable': refundable,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusFeeTypeInclude include() {
    return CampusFeeTypeInclude._();
  }

  static CampusFeeTypeIncludeList includeList({
    _is.WhereExpressionBuilder<CampusFeeTypeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFeeTypeTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeTypeTable>? orderByList,
    CampusFeeTypeInclude? include,
  }) {
    return CampusFeeTypeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFeeType.t),
      orderByList: orderByList?.call(CampusFeeType.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusFeeTypeImpl extends CampusFeeType {
  _CampusFeeTypeImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    required bool refundable,
    DateTime? createdAt,
  }) : super._(
         id: id,
         code: code,
         name: name,
         refundable: refundable,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusFeeType]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusFeeType copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    bool? refundable,
    DateTime? createdAt,
  }) {
    return CampusFeeType(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      refundable: refundable ?? this.refundable,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusFeeTypeUpdateTable extends _is.UpdateTable<CampusFeeTypeTable> {
  CampusFeeTypeUpdateTable(super.table);

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<bool, bool> refundable(bool value) => _is.ColumnValue(
    table.refundable,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusFeeTypeTable extends _is.Table<_is.UuidValue?> {
  CampusFeeTypeTable({super.tableRelation})
    : super(tableName: 'campus_fee_types') {
    updateTable = CampusFeeTypeUpdateTable(this);
    code = _is.ColumnString(
      'code',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    refundable = _is.ColumnBool(
      'refundable',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusFeeTypeUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnBool refundable;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    refundable,
    createdAt,
  ];
}

class CampusFeeTypeInclude extends _is.IncludeObject {
  CampusFeeTypeInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFeeType.t;
}

class CampusFeeTypeIncludeList extends _is.IncludeList {
  CampusFeeTypeIncludeList._({
    _is.WhereExpressionBuilder<CampusFeeTypeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusFeeType.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusFeeType.t;
}

class CampusFeeTypeRepository {
  const CampusFeeTypeRepository._();

  /// Returns a list of [CampusFeeType]s matching the given query parameters.
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
  Future<List<CampusFeeType>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFeeTypeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFeeTypeTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeTypeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusFeeType>(
      where: where?.call(CampusFeeType.t),
      orderBy: orderBy?.call(CampusFeeType.t),
      orderByList: orderByList?.call(CampusFeeType.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusFeeType] matching the given query parameters.
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
  Future<CampusFeeType?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFeeTypeTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusFeeTypeTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeTypeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusFeeType>(
      where: where?.call(CampusFeeType.t),
      orderBy: orderBy?.call(CampusFeeType.t),
      orderByList: orderByList?.call(CampusFeeType.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusFeeType] by its [id] or null if no such row exists.
  Future<CampusFeeType?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusFeeType>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusFeeType]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusFeeType]s will have their `id` fields set.
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
  Future<List<CampusFeeType>> insert(
    _is.DatabaseSession session,
    List<CampusFeeType> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusFeeType>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusFeeType] and returns the inserted row.
  ///
  /// The returned [CampusFeeType] will have its `id` field set.
  Future<CampusFeeType> insertRow(
    _is.DatabaseSession session,
    CampusFeeType row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusFeeType>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusFeeType]s in the list and returns the resulting rows.
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
  /// The returned [CampusFeeType]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFeeType>> upsert(
    _is.DatabaseSession session,
    List<CampusFeeType> rows, {
    required _is.ColumnSelections<CampusFeeTypeTable> conflictColumns,
    _is.ColumnSelections<CampusFeeTypeTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFeeTypeTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusFeeType>(
      rows,
      conflictColumns: conflictColumns(CampusFeeType.t),
      updateColumns: updateColumns?.call(CampusFeeType.t),
      updateWhere: updateWhere?.call(CampusFeeType.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusFeeType] and returns the resulting row.
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
  /// The returned [CampusFeeType] will have its `id` field set.
  Future<CampusFeeType?> upsertRow(
    _is.DatabaseSession session,
    CampusFeeType row, {
    required _is.ColumnSelections<CampusFeeTypeTable> conflictColumns,
    _is.ColumnSelections<CampusFeeTypeTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusFeeTypeTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusFeeType>(
      row,
      conflictColumns: conflictColumns(CampusFeeType.t),
      updateColumns: updateColumns?.call(CampusFeeType.t),
      updateWhere: updateWhere?.call(CampusFeeType.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFeeType]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFeeType>> update(
    _is.DatabaseSession session,
    List<CampusFeeType> rows, {
    _is.ColumnSelections<CampusFeeTypeTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusFeeType>(
      rows,
      columns: columns?.call(CampusFeeType.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusFeeType]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusFeeType> updateRow(
    _is.DatabaseSession session,
    CampusFeeType row, {
    _is.ColumnSelections<CampusFeeTypeTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusFeeType>(
      row,
      columns: columns?.call(CampusFeeType.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusFeeType] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusFeeType?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusFeeTypeUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusFeeType>(
      id,
      columnValues: columnValues(CampusFeeType.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusFeeType]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusFeeType>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusFeeTypeUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusFeeTypeTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusFeeTypeTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeTypeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusFeeType>(
      columnValues: columnValues(CampusFeeType.t.updateTable),
      where: where(CampusFeeType.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusFeeType.t),
      orderByList: orderByList?.call(CampusFeeType.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusFeeType]s in the list and returns the deleted rows.
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
  Future<List<CampusFeeType>> delete(
    _is.DatabaseSession session,
    List<CampusFeeType> rows, {
    _is.OrderByBuilder<CampusFeeTypeTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeTypeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusFeeType>(
      rows,
      orderBy: orderBy?.call(CampusFeeType.t),
      orderByList: orderByList?.call(CampusFeeType.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusFeeType].
  Future<CampusFeeType> deleteRow(
    _is.DatabaseSession session,
    CampusFeeType row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusFeeType>(
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
  Future<List<CampusFeeType>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFeeTypeTable> where,
    _is.OrderByBuilder<CampusFeeTypeTable>? orderBy,
    _is.OrderByListBuilder<CampusFeeTypeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusFeeType>(
      where: where(CampusFeeType.t),
      orderBy: orderBy?.call(CampusFeeType.t),
      orderByList: orderByList?.call(CampusFeeType.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusFeeTypeTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusFeeType>(
      where: where?.call(CampusFeeType.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusFeeType] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusFeeTypeTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusFeeType>(
      where: where(CampusFeeType.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
