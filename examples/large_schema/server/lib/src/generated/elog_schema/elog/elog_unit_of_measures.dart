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

abstract class ElogUnitOfMeasures
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogUnitOfMeasures._({
    this.id,
    required this.code,
    required this.name,
    required this.symbol,
    this.description,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
    required this.versionNumber,
  });

  factory ElogUnitOfMeasures({
    _is.UuidValue? id,
    required String code,
    required String name,
    required String symbol,
    String? description,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    required int versionNumber,
  }) = _ElogUnitOfMeasuresImpl;

  factory ElogUnitOfMeasures.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogUnitOfMeasures(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      symbol: jsonSerialization['symbol'] as String,
      description: jsonSerialization['description'] as String?,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
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
      versionNumber: jsonSerialization['versionNumber'] as int,
    );
  }

  static final t = ElogUnitOfMeasuresTable();

  static const db = ElogUnitOfMeasuresRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String symbol;

  String? description;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  int versionNumber;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogUnitOfMeasures]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogUnitOfMeasures copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? symbol,
    String? description,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    int? versionNumber,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogUnitOfMeasures',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      'symbol': symbol,
      if (description != null) 'description': description,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      'versionNumber': versionNumber,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogUnitOfMeasures',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      'symbol': symbol,
      if (description != null) 'description': description,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      'versionNumber': versionNumber,
    };
  }

  static ElogUnitOfMeasuresInclude include() {
    return ElogUnitOfMeasuresInclude._();
  }

  static ElogUnitOfMeasuresIncludeList includeList({
    _is.WhereExpressionBuilder<ElogUnitOfMeasuresTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogUnitOfMeasuresTable>? orderBy,
    _is.OrderByListBuilder<ElogUnitOfMeasuresTable>? orderByList,
    ElogUnitOfMeasuresInclude? include,
  }) {
    return ElogUnitOfMeasuresIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogUnitOfMeasures.t),
      orderByList: orderByList?.call(ElogUnitOfMeasures.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogUnitOfMeasuresImpl extends ElogUnitOfMeasures {
  _ElogUnitOfMeasuresImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    required String symbol,
    String? description,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    required int versionNumber,
  }) : super._(
         id: id,
         code: code,
         name: name,
         symbol: symbol,
         description: description,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
         versionNumber: versionNumber,
       );

  /// Returns a shallow copy of this [ElogUnitOfMeasures]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogUnitOfMeasures copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    String? symbol,
    Object? description = _Undefined,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    int? versionNumber,
  }) {
    return ElogUnitOfMeasures(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      description: description is String? ? description : this.description,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
      versionNumber: versionNumber ?? this.versionNumber,
    );
  }
}

class ElogUnitOfMeasuresUpdateTable
    extends _is.UpdateTable<ElogUnitOfMeasuresTable> {
  ElogUnitOfMeasuresUpdateTable(super.table);

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> symbol(String value) => _is.ColumnValue(
    table.symbol,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
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

  _is.ColumnValue<int, int> versionNumber(int value) => _is.ColumnValue(
    table.versionNumber,
    value,
  );
}

class ElogUnitOfMeasuresTable extends _is.Table<_is.UuidValue?> {
  ElogUnitOfMeasuresTable({super.tableRelation})
    : super(tableName: 'elog_unit_of_measures') {
    updateTable = ElogUnitOfMeasuresUpdateTable(this);
    code = _is.ColumnString(
      'code',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    symbol = _is.ColumnString(
      'symbol',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
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
    versionNumber = _is.ColumnInt(
      'versionNumber',
      this,
    );
  }

  late final ElogUnitOfMeasuresUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString symbol;

  late final _is.ColumnString description;

  late final _is.ColumnBool isActive;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  late final _is.ColumnInt versionNumber;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    symbol,
    description,
    isActive,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
    versionNumber,
  ];
}

class ElogUnitOfMeasuresInclude extends _is.IncludeObject {
  ElogUnitOfMeasuresInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogUnitOfMeasures.t;
}

class ElogUnitOfMeasuresIncludeList extends _is.IncludeList {
  ElogUnitOfMeasuresIncludeList._({
    _is.WhereExpressionBuilder<ElogUnitOfMeasuresTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogUnitOfMeasures.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogUnitOfMeasures.t;
}

class ElogUnitOfMeasuresRepository {
  const ElogUnitOfMeasuresRepository._();

  /// Returns a list of [ElogUnitOfMeasures]s matching the given query parameters.
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
  Future<List<ElogUnitOfMeasures>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogUnitOfMeasuresTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogUnitOfMeasuresTable>? orderBy,
    _is.OrderByListBuilder<ElogUnitOfMeasuresTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogUnitOfMeasures>(
      where: where?.call(ElogUnitOfMeasures.t),
      orderBy: orderBy?.call(ElogUnitOfMeasures.t),
      orderByList: orderByList?.call(ElogUnitOfMeasures.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogUnitOfMeasures] matching the given query parameters.
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
  Future<ElogUnitOfMeasures?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogUnitOfMeasuresTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogUnitOfMeasuresTable>? orderBy,
    _is.OrderByListBuilder<ElogUnitOfMeasuresTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogUnitOfMeasures>(
      where: where?.call(ElogUnitOfMeasures.t),
      orderBy: orderBy?.call(ElogUnitOfMeasures.t),
      orderByList: orderByList?.call(ElogUnitOfMeasures.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogUnitOfMeasures] by its [id] or null if no such row exists.
  Future<ElogUnitOfMeasures?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogUnitOfMeasures>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogUnitOfMeasures]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogUnitOfMeasures]s will have their `id` fields set.
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
  Future<List<ElogUnitOfMeasures>> insert(
    _is.DatabaseSession session,
    List<ElogUnitOfMeasures> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogUnitOfMeasures>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogUnitOfMeasures] and returns the inserted row.
  ///
  /// The returned [ElogUnitOfMeasures] will have its `id` field set.
  Future<ElogUnitOfMeasures> insertRow(
    _is.DatabaseSession session,
    ElogUnitOfMeasures row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogUnitOfMeasures>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogUnitOfMeasures]s in the list and returns the resulting rows.
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
  /// The returned [ElogUnitOfMeasures]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogUnitOfMeasures>> upsert(
    _is.DatabaseSession session,
    List<ElogUnitOfMeasures> rows, {
    required _is.ColumnSelections<ElogUnitOfMeasuresTable> conflictColumns,
    _is.ColumnSelections<ElogUnitOfMeasuresTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogUnitOfMeasuresTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogUnitOfMeasures>(
      rows,
      conflictColumns: conflictColumns(ElogUnitOfMeasures.t),
      updateColumns: updateColumns?.call(ElogUnitOfMeasures.t),
      updateWhere: updateWhere?.call(ElogUnitOfMeasures.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogUnitOfMeasures] and returns the resulting row.
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
  /// The returned [ElogUnitOfMeasures] will have its `id` field set.
  Future<ElogUnitOfMeasures?> upsertRow(
    _is.DatabaseSession session,
    ElogUnitOfMeasures row, {
    required _is.ColumnSelections<ElogUnitOfMeasuresTable> conflictColumns,
    _is.ColumnSelections<ElogUnitOfMeasuresTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogUnitOfMeasuresTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogUnitOfMeasures>(
      row,
      conflictColumns: conflictColumns(ElogUnitOfMeasures.t),
      updateColumns: updateColumns?.call(ElogUnitOfMeasures.t),
      updateWhere: updateWhere?.call(ElogUnitOfMeasures.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogUnitOfMeasures]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogUnitOfMeasures>> update(
    _is.DatabaseSession session,
    List<ElogUnitOfMeasures> rows, {
    _is.ColumnSelections<ElogUnitOfMeasuresTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogUnitOfMeasures>(
      rows,
      columns: columns?.call(ElogUnitOfMeasures.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogUnitOfMeasures]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogUnitOfMeasures> updateRow(
    _is.DatabaseSession session,
    ElogUnitOfMeasures row, {
    _is.ColumnSelections<ElogUnitOfMeasuresTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogUnitOfMeasures>(
      row,
      columns: columns?.call(ElogUnitOfMeasures.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogUnitOfMeasures] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogUnitOfMeasures?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogUnitOfMeasuresUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogUnitOfMeasures>(
      id,
      columnValues: columnValues(ElogUnitOfMeasures.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogUnitOfMeasures]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogUnitOfMeasures>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogUnitOfMeasuresUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogUnitOfMeasuresTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogUnitOfMeasuresTable>? orderBy,
    _is.OrderByListBuilder<ElogUnitOfMeasuresTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogUnitOfMeasures>(
      columnValues: columnValues(ElogUnitOfMeasures.t.updateTable),
      where: where(ElogUnitOfMeasures.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogUnitOfMeasures.t),
      orderByList: orderByList?.call(ElogUnitOfMeasures.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogUnitOfMeasures]s in the list and returns the deleted rows.
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
  Future<List<ElogUnitOfMeasures>> delete(
    _is.DatabaseSession session,
    List<ElogUnitOfMeasures> rows, {
    _is.OrderByBuilder<ElogUnitOfMeasuresTable>? orderBy,
    _is.OrderByListBuilder<ElogUnitOfMeasuresTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogUnitOfMeasures>(
      rows,
      orderBy: orderBy?.call(ElogUnitOfMeasures.t),
      orderByList: orderByList?.call(ElogUnitOfMeasures.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogUnitOfMeasures].
  Future<ElogUnitOfMeasures> deleteRow(
    _is.DatabaseSession session,
    ElogUnitOfMeasures row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogUnitOfMeasures>(
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
  Future<List<ElogUnitOfMeasures>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogUnitOfMeasuresTable> where,
    _is.OrderByBuilder<ElogUnitOfMeasuresTable>? orderBy,
    _is.OrderByListBuilder<ElogUnitOfMeasuresTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogUnitOfMeasures>(
      where: where(ElogUnitOfMeasures.t),
      orderBy: orderBy?.call(ElogUnitOfMeasures.t),
      orderByList: orderByList?.call(ElogUnitOfMeasures.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogUnitOfMeasuresTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogUnitOfMeasures>(
      where: where?.call(ElogUnitOfMeasures.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogUnitOfMeasures] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogUnitOfMeasuresTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogUnitOfMeasures>(
      where: where(ElogUnitOfMeasures.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
