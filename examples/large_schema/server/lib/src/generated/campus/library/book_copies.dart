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

/// Fictional university fixture: library.
abstract class CampusBookCopy
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusBookCopy._({
    this.id,
    required this.editionId,
    required this.branchId,
    required this.barcode,
    required this.shelf,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusBookCopy({
    _is.UuidValue? id,
    required _is.UuidValue editionId,
    required _is.UuidValue branchId,
    required String barcode,
    required String shelf,
    required String status,
    DateTime? createdAt,
  }) = _CampusBookCopyImpl;

  factory CampusBookCopy.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusBookCopy(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      editionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['editionId'],
      ),
      branchId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['branchId'],
      ),
      barcode: jsonSerialization['barcode'] as String,
      shelf: jsonSerialization['shelf'] as String,
      status: jsonSerialization['status'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusBookCopyTable();

  static const db = CampusBookCopyRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue editionId;

  _is.UuidValue branchId;

  String barcode;

  String shelf;

  String status;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusBookCopy]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusBookCopy copyWith({
    _is.UuidValue? id,
    _is.UuidValue? editionId,
    _is.UuidValue? branchId,
    String? barcode,
    String? shelf,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusBookCopy',
      if (id != null) 'id': id?.toJson(),
      'editionId': editionId.toJson(),
      'branchId': branchId.toJson(),
      'barcode': barcode,
      'shelf': shelf,
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusBookCopy',
      if (id != null) 'id': id?.toJson(),
      'editionId': editionId.toJson(),
      'branchId': branchId.toJson(),
      'barcode': barcode,
      'shelf': shelf,
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusBookCopyInclude include() {
    return CampusBookCopyInclude._();
  }

  static CampusBookCopyIncludeList includeList({
    _is.WhereExpressionBuilder<CampusBookCopyTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBookCopyTable>? orderBy,
    _is.OrderByListBuilder<CampusBookCopyTable>? orderByList,
    CampusBookCopyInclude? include,
  }) {
    return CampusBookCopyIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusBookCopy.t),
      orderByList: orderByList?.call(CampusBookCopy.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusBookCopyImpl extends CampusBookCopy {
  _CampusBookCopyImpl({
    _is.UuidValue? id,
    required _is.UuidValue editionId,
    required _is.UuidValue branchId,
    required String barcode,
    required String shelf,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         editionId: editionId,
         branchId: branchId,
         barcode: barcode,
         shelf: shelf,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusBookCopy]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusBookCopy copyWith({
    Object? id = _Undefined,
    _is.UuidValue? editionId,
    _is.UuidValue? branchId,
    String? barcode,
    String? shelf,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusBookCopy(
      id: id is _is.UuidValue? ? id : this.id,
      editionId: editionId ?? this.editionId,
      branchId: branchId ?? this.branchId,
      barcode: barcode ?? this.barcode,
      shelf: shelf ?? this.shelf,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusBookCopyUpdateTable extends _is.UpdateTable<CampusBookCopyTable> {
  CampusBookCopyUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> editionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.editionId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> branchId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.branchId,
        value,
      );

  _is.ColumnValue<String, String> barcode(String value) => _is.ColumnValue(
    table.barcode,
    value,
  );

  _is.ColumnValue<String, String> shelf(String value) => _is.ColumnValue(
    table.shelf,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusBookCopyTable extends _is.Table<_is.UuidValue?> {
  CampusBookCopyTable({super.tableRelation})
    : super(tableName: 'campus_book_copies') {
    updateTable = CampusBookCopyUpdateTable(this);
    editionId = _is.ColumnUuid(
      'editionId',
      this,
    );
    branchId = _is.ColumnUuid(
      'branchId',
      this,
    );
    barcode = _is.ColumnString(
      'barcode',
      this,
    );
    shelf = _is.ColumnString(
      'shelf',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusBookCopyUpdateTable updateTable;

  late final _is.ColumnUuid editionId;

  late final _is.ColumnUuid branchId;

  late final _is.ColumnString barcode;

  late final _is.ColumnString shelf;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    editionId,
    branchId,
    barcode,
    shelf,
    status,
    createdAt,
  ];
}

class CampusBookCopyInclude extends _is.IncludeObject {
  CampusBookCopyInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusBookCopy.t;
}

class CampusBookCopyIncludeList extends _is.IncludeList {
  CampusBookCopyIncludeList._({
    _is.WhereExpressionBuilder<CampusBookCopyTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusBookCopy.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusBookCopy.t;
}

class CampusBookCopyRepository {
  const CampusBookCopyRepository._();

  /// Returns a list of [CampusBookCopy]s matching the given query parameters.
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
  Future<List<CampusBookCopy>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBookCopyTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBookCopyTable>? orderBy,
    _is.OrderByListBuilder<CampusBookCopyTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusBookCopy>(
      where: where?.call(CampusBookCopy.t),
      orderBy: orderBy?.call(CampusBookCopy.t),
      orderByList: orderByList?.call(CampusBookCopy.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusBookCopy] matching the given query parameters.
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
  Future<CampusBookCopy?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBookCopyTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusBookCopyTable>? orderBy,
    _is.OrderByListBuilder<CampusBookCopyTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusBookCopy>(
      where: where?.call(CampusBookCopy.t),
      orderBy: orderBy?.call(CampusBookCopy.t),
      orderByList: orderByList?.call(CampusBookCopy.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusBookCopy] by its [id] or null if no such row exists.
  Future<CampusBookCopy?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusBookCopy>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusBookCopy]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusBookCopy]s will have their `id` fields set.
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
  Future<List<CampusBookCopy>> insert(
    _is.DatabaseSession session,
    List<CampusBookCopy> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusBookCopy>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusBookCopy] and returns the inserted row.
  ///
  /// The returned [CampusBookCopy] will have its `id` field set.
  Future<CampusBookCopy> insertRow(
    _is.DatabaseSession session,
    CampusBookCopy row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusBookCopy>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusBookCopy]s in the list and returns the resulting rows.
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
  /// The returned [CampusBookCopy]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBookCopy>> upsert(
    _is.DatabaseSession session,
    List<CampusBookCopy> rows, {
    required _is.ColumnSelections<CampusBookCopyTable> conflictColumns,
    _is.ColumnSelections<CampusBookCopyTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusBookCopyTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusBookCopy>(
      rows,
      conflictColumns: conflictColumns(CampusBookCopy.t),
      updateColumns: updateColumns?.call(CampusBookCopy.t),
      updateWhere: updateWhere?.call(CampusBookCopy.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusBookCopy] and returns the resulting row.
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
  /// The returned [CampusBookCopy] will have its `id` field set.
  Future<CampusBookCopy?> upsertRow(
    _is.DatabaseSession session,
    CampusBookCopy row, {
    required _is.ColumnSelections<CampusBookCopyTable> conflictColumns,
    _is.ColumnSelections<CampusBookCopyTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusBookCopyTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusBookCopy>(
      row,
      conflictColumns: conflictColumns(CampusBookCopy.t),
      updateColumns: updateColumns?.call(CampusBookCopy.t),
      updateWhere: updateWhere?.call(CampusBookCopy.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusBookCopy]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBookCopy>> update(
    _is.DatabaseSession session,
    List<CampusBookCopy> rows, {
    _is.ColumnSelections<CampusBookCopyTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusBookCopy>(
      rows,
      columns: columns?.call(CampusBookCopy.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusBookCopy]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusBookCopy> updateRow(
    _is.DatabaseSession session,
    CampusBookCopy row, {
    _is.ColumnSelections<CampusBookCopyTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusBookCopy>(
      row,
      columns: columns?.call(CampusBookCopy.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusBookCopy] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusBookCopy?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusBookCopyUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusBookCopy>(
      id,
      columnValues: columnValues(CampusBookCopy.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusBookCopy]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBookCopy>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusBookCopyUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusBookCopyTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBookCopyTable>? orderBy,
    _is.OrderByListBuilder<CampusBookCopyTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusBookCopy>(
      columnValues: columnValues(CampusBookCopy.t.updateTable),
      where: where(CampusBookCopy.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusBookCopy.t),
      orderByList: orderByList?.call(CampusBookCopy.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusBookCopy]s in the list and returns the deleted rows.
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
  Future<List<CampusBookCopy>> delete(
    _is.DatabaseSession session,
    List<CampusBookCopy> rows, {
    _is.OrderByBuilder<CampusBookCopyTable>? orderBy,
    _is.OrderByListBuilder<CampusBookCopyTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusBookCopy>(
      rows,
      orderBy: orderBy?.call(CampusBookCopy.t),
      orderByList: orderByList?.call(CampusBookCopy.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusBookCopy].
  Future<CampusBookCopy> deleteRow(
    _is.DatabaseSession session,
    CampusBookCopy row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusBookCopy>(
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
  Future<List<CampusBookCopy>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusBookCopyTable> where,
    _is.OrderByBuilder<CampusBookCopyTable>? orderBy,
    _is.OrderByListBuilder<CampusBookCopyTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusBookCopy>(
      where: where(CampusBookCopy.t),
      orderBy: orderBy?.call(CampusBookCopy.t),
      orderByList: orderByList?.call(CampusBookCopy.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBookCopyTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusBookCopy>(
      where: where?.call(CampusBookCopy.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusBookCopy] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusBookCopyTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusBookCopy>(
      where: where(CampusBookCopy.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
