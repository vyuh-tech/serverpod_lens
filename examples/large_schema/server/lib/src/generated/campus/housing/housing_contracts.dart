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

/// Fictional university fixture: housing.
abstract class CampusHousingContract
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusHousingContract._({
    this.id,
    required this.allocationId,
    required this.reference,
    this.signedAt,
    required this.rentMinor,
    required this.currency,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingContract({
    _is.UuidValue? id,
    required _is.UuidValue allocationId,
    required String reference,
    DateTime? signedAt,
    required int rentMinor,
    required String currency,
    DateTime? createdAt,
  }) = _CampusHousingContractImpl;

  factory CampusHousingContract.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusHousingContract(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      allocationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['allocationId'],
      ),
      reference: jsonSerialization['reference'] as String,
      signedAt: jsonSerialization['signedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['signedAt']),
      rentMinor: jsonSerialization['rentMinor'] as int,
      currency: jsonSerialization['currency'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusHousingContractTable();

  static const db = CampusHousingContractRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue allocationId;

  String reference;

  DateTime? signedAt;

  int rentMinor;

  String currency;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusHousingContract]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusHousingContract copyWith({
    _is.UuidValue? id,
    _is.UuidValue? allocationId,
    String? reference,
    DateTime? signedAt,
    int? rentMinor,
    String? currency,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingContract',
      if (id != null) 'id': id?.toJson(),
      'allocationId': allocationId.toJson(),
      'reference': reference,
      if (signedAt != null) 'signedAt': signedAt?.toJson(),
      'rentMinor': rentMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingContract',
      if (id != null) 'id': id?.toJson(),
      'allocationId': allocationId.toJson(),
      'reference': reference,
      if (signedAt != null) 'signedAt': signedAt?.toJson(),
      'rentMinor': rentMinor,
      'currency': currency,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusHousingContractInclude include() {
    return CampusHousingContractInclude._();
  }

  static CampusHousingContractIncludeList includeList({
    _is.WhereExpressionBuilder<CampusHousingContractTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingContractTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingContractTable>? orderByList,
    CampusHousingContractInclude? include,
  }) {
    return CampusHousingContractIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingContract.t),
      orderByList: orderByList?.call(CampusHousingContract.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingContractImpl extends CampusHousingContract {
  _CampusHousingContractImpl({
    _is.UuidValue? id,
    required _is.UuidValue allocationId,
    required String reference,
    DateTime? signedAt,
    required int rentMinor,
    required String currency,
    DateTime? createdAt,
  }) : super._(
         id: id,
         allocationId: allocationId,
         reference: reference,
         signedAt: signedAt,
         rentMinor: rentMinor,
         currency: currency,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingContract]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusHousingContract copyWith({
    Object? id = _Undefined,
    _is.UuidValue? allocationId,
    String? reference,
    Object? signedAt = _Undefined,
    int? rentMinor,
    String? currency,
    DateTime? createdAt,
  }) {
    return CampusHousingContract(
      id: id is _is.UuidValue? ? id : this.id,
      allocationId: allocationId ?? this.allocationId,
      reference: reference ?? this.reference,
      signedAt: signedAt is DateTime? ? signedAt : this.signedAt,
      rentMinor: rentMinor ?? this.rentMinor,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusHousingContractUpdateTable
    extends _is.UpdateTable<CampusHousingContractTable> {
  CampusHousingContractUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> allocationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.allocationId,
    value,
  );

  _is.ColumnValue<String, String> reference(String value) => _is.ColumnValue(
    table.reference,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> signedAt(DateTime? value) =>
      _is.ColumnValue(
        table.signedAt,
        value,
      );

  _is.ColumnValue<int, int> rentMinor(int value) => _is.ColumnValue(
    table.rentMinor,
    value,
  );

  _is.ColumnValue<String, String> currency(String value) => _is.ColumnValue(
    table.currency,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusHousingContractTable extends _is.Table<_is.UuidValue?> {
  CampusHousingContractTable({super.tableRelation})
    : super(tableName: 'campus_housing_contracts') {
    updateTable = CampusHousingContractUpdateTable(this);
    allocationId = _is.ColumnUuid(
      'allocationId',
      this,
    );
    reference = _is.ColumnString(
      'reference',
      this,
    );
    signedAt = _is.ColumnDateTime(
      'signedAt',
      this,
    );
    rentMinor = _is.ColumnInt(
      'rentMinor',
      this,
    );
    currency = _is.ColumnString(
      'currency',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusHousingContractUpdateTable updateTable;

  late final _is.ColumnUuid allocationId;

  late final _is.ColumnString reference;

  late final _is.ColumnDateTime signedAt;

  late final _is.ColumnInt rentMinor;

  late final _is.ColumnString currency;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    allocationId,
    reference,
    signedAt,
    rentMinor,
    currency,
    createdAt,
  ];
}

class CampusHousingContractInclude extends _is.IncludeObject {
  CampusHousingContractInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingContract.t;
}

class CampusHousingContractIncludeList extends _is.IncludeList {
  CampusHousingContractIncludeList._({
    _is.WhereExpressionBuilder<CampusHousingContractTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusHousingContract.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusHousingContract.t;
}

class CampusHousingContractRepository {
  const CampusHousingContractRepository._();

  /// Returns a list of [CampusHousingContract]s matching the given query parameters.
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
  Future<List<CampusHousingContract>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingContractTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingContractTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingContractTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusHousingContract>(
      where: where?.call(CampusHousingContract.t),
      orderBy: orderBy?.call(CampusHousingContract.t),
      orderByList: orderByList?.call(CampusHousingContract.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusHousingContract] matching the given query parameters.
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
  Future<CampusHousingContract?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingContractTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusHousingContractTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingContractTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusHousingContract>(
      where: where?.call(CampusHousingContract.t),
      orderBy: orderBy?.call(CampusHousingContract.t),
      orderByList: orderByList?.call(CampusHousingContract.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusHousingContract] by its [id] or null if no such row exists.
  Future<CampusHousingContract?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusHousingContract>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusHousingContract]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusHousingContract]s will have their `id` fields set.
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
  Future<List<CampusHousingContract>> insert(
    _is.DatabaseSession session,
    List<CampusHousingContract> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusHousingContract>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusHousingContract] and returns the inserted row.
  ///
  /// The returned [CampusHousingContract] will have its `id` field set.
  Future<CampusHousingContract> insertRow(
    _is.DatabaseSession session,
    CampusHousingContract row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusHousingContract>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusHousingContract]s in the list and returns the resulting rows.
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
  /// The returned [CampusHousingContract]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingContract>> upsert(
    _is.DatabaseSession session,
    List<CampusHousingContract> rows, {
    required _is.ColumnSelections<CampusHousingContractTable> conflictColumns,
    _is.ColumnSelections<CampusHousingContractTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingContractTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusHousingContract>(
      rows,
      conflictColumns: conflictColumns(CampusHousingContract.t),
      updateColumns: updateColumns?.call(CampusHousingContract.t),
      updateWhere: updateWhere?.call(CampusHousingContract.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusHousingContract] and returns the resulting row.
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
  /// The returned [CampusHousingContract] will have its `id` field set.
  Future<CampusHousingContract?> upsertRow(
    _is.DatabaseSession session,
    CampusHousingContract row, {
    required _is.ColumnSelections<CampusHousingContractTable> conflictColumns,
    _is.ColumnSelections<CampusHousingContractTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusHousingContractTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusHousingContract>(
      row,
      conflictColumns: conflictColumns(CampusHousingContract.t),
      updateColumns: updateColumns?.call(CampusHousingContract.t),
      updateWhere: updateWhere?.call(CampusHousingContract.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingContract]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingContract>> update(
    _is.DatabaseSession session,
    List<CampusHousingContract> rows, {
    _is.ColumnSelections<CampusHousingContractTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusHousingContract>(
      rows,
      columns: columns?.call(CampusHousingContract.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusHousingContract]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusHousingContract> updateRow(
    _is.DatabaseSession session,
    CampusHousingContract row, {
    _is.ColumnSelections<CampusHousingContractTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusHousingContract>(
      row,
      columns: columns?.call(CampusHousingContract.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusHousingContract] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusHousingContract?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusHousingContractUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusHousingContract>(
      id,
      columnValues: columnValues(CampusHousingContract.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusHousingContract]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusHousingContract>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusHousingContractUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusHousingContractTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusHousingContractTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingContractTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusHousingContract>(
      columnValues: columnValues(CampusHousingContract.t.updateTable),
      where: where(CampusHousingContract.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusHousingContract.t),
      orderByList: orderByList?.call(CampusHousingContract.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusHousingContract]s in the list and returns the deleted rows.
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
  Future<List<CampusHousingContract>> delete(
    _is.DatabaseSession session,
    List<CampusHousingContract> rows, {
    _is.OrderByBuilder<CampusHousingContractTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingContractTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusHousingContract>(
      rows,
      orderBy: orderBy?.call(CampusHousingContract.t),
      orderByList: orderByList?.call(CampusHousingContract.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusHousingContract].
  Future<CampusHousingContract> deleteRow(
    _is.DatabaseSession session,
    CampusHousingContract row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusHousingContract>(
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
  Future<List<CampusHousingContract>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingContractTable> where,
    _is.OrderByBuilder<CampusHousingContractTable>? orderBy,
    _is.OrderByListBuilder<CampusHousingContractTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusHousingContract>(
      where: where(CampusHousingContract.t),
      orderBy: orderBy?.call(CampusHousingContract.t),
      orderByList: orderByList?.call(CampusHousingContract.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusHousingContractTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusHousingContract>(
      where: where?.call(CampusHousingContract.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusHousingContract] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusHousingContractTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusHousingContract>(
      where: where(CampusHousingContract.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
