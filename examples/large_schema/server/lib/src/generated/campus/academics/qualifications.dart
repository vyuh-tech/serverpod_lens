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

/// Fictional university fixture: academics.
abstract class CampusQualification
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusQualification._({
    this.id,
    required this.code,
    required this.title,
    required this.level,
    required this.requiredCredits,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusQualification({
    _is.UuidValue? id,
    required String code,
    required String title,
    required int level,
    required int requiredCredits,
    DateTime? createdAt,
  }) = _CampusQualificationImpl;

  factory CampusQualification.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusQualification(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      title: jsonSerialization['title'] as String,
      level: jsonSerialization['level'] as int,
      requiredCredits: jsonSerialization['requiredCredits'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusQualificationTable();

  static const db = CampusQualificationRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String title;

  int level;

  int requiredCredits;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusQualification]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusQualification copyWith({
    _is.UuidValue? id,
    String? code,
    String? title,
    int? level,
    int? requiredCredits,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusQualification',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'title': title,
      'level': level,
      'requiredCredits': requiredCredits,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusQualification',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'title': title,
      'level': level,
      'requiredCredits': requiredCredits,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusQualificationInclude include() {
    return CampusQualificationInclude._();
  }

  static CampusQualificationIncludeList includeList({
    _is.WhereExpressionBuilder<CampusQualificationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusQualificationTable>? orderBy,
    _is.OrderByListBuilder<CampusQualificationTable>? orderByList,
    CampusQualificationInclude? include,
  }) {
    return CampusQualificationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusQualification.t),
      orderByList: orderByList?.call(CampusQualification.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusQualificationImpl extends CampusQualification {
  _CampusQualificationImpl({
    _is.UuidValue? id,
    required String code,
    required String title,
    required int level,
    required int requiredCredits,
    DateTime? createdAt,
  }) : super._(
         id: id,
         code: code,
         title: title,
         level: level,
         requiredCredits: requiredCredits,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusQualification]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusQualification copyWith({
    Object? id = _Undefined,
    String? code,
    String? title,
    int? level,
    int? requiredCredits,
    DateTime? createdAt,
  }) {
    return CampusQualification(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      title: title ?? this.title,
      level: level ?? this.level,
      requiredCredits: requiredCredits ?? this.requiredCredits,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusQualificationUpdateTable
    extends _is.UpdateTable<CampusQualificationTable> {
  CampusQualificationUpdateTable(super.table);

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<int, int> level(int value) => _is.ColumnValue(
    table.level,
    value,
  );

  _is.ColumnValue<int, int> requiredCredits(int value) => _is.ColumnValue(
    table.requiredCredits,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusQualificationTable extends _is.Table<_is.UuidValue?> {
  CampusQualificationTable({super.tableRelation})
    : super(tableName: 'campus_qualifications') {
    updateTable = CampusQualificationUpdateTable(this);
    code = _is.ColumnString(
      'code',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    level = _is.ColumnInt(
      'level',
      this,
    );
    requiredCredits = _is.ColumnInt(
      'requiredCredits',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusQualificationUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString title;

  late final _is.ColumnInt level;

  late final _is.ColumnInt requiredCredits;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    title,
    level,
    requiredCredits,
    createdAt,
  ];
}

class CampusQualificationInclude extends _is.IncludeObject {
  CampusQualificationInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusQualification.t;
}

class CampusQualificationIncludeList extends _is.IncludeList {
  CampusQualificationIncludeList._({
    _is.WhereExpressionBuilder<CampusQualificationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusQualification.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusQualification.t;
}

class CampusQualificationRepository {
  const CampusQualificationRepository._();

  /// Returns a list of [CampusQualification]s matching the given query parameters.
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
  Future<List<CampusQualification>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusQualificationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusQualificationTable>? orderBy,
    _is.OrderByListBuilder<CampusQualificationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusQualification>(
      where: where?.call(CampusQualification.t),
      orderBy: orderBy?.call(CampusQualification.t),
      orderByList: orderByList?.call(CampusQualification.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusQualification] matching the given query parameters.
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
  Future<CampusQualification?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusQualificationTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusQualificationTable>? orderBy,
    _is.OrderByListBuilder<CampusQualificationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusQualification>(
      where: where?.call(CampusQualification.t),
      orderBy: orderBy?.call(CampusQualification.t),
      orderByList: orderByList?.call(CampusQualification.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusQualification] by its [id] or null if no such row exists.
  Future<CampusQualification?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusQualification>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusQualification]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusQualification]s will have their `id` fields set.
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
  Future<List<CampusQualification>> insert(
    _is.DatabaseSession session,
    List<CampusQualification> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusQualification>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusQualification] and returns the inserted row.
  ///
  /// The returned [CampusQualification] will have its `id` field set.
  Future<CampusQualification> insertRow(
    _is.DatabaseSession session,
    CampusQualification row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusQualification>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusQualification]s in the list and returns the resulting rows.
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
  /// The returned [CampusQualification]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusQualification>> upsert(
    _is.DatabaseSession session,
    List<CampusQualification> rows, {
    required _is.ColumnSelections<CampusQualificationTable> conflictColumns,
    _is.ColumnSelections<CampusQualificationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusQualificationTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusQualification>(
      rows,
      conflictColumns: conflictColumns(CampusQualification.t),
      updateColumns: updateColumns?.call(CampusQualification.t),
      updateWhere: updateWhere?.call(CampusQualification.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusQualification] and returns the resulting row.
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
  /// The returned [CampusQualification] will have its `id` field set.
  Future<CampusQualification?> upsertRow(
    _is.DatabaseSession session,
    CampusQualification row, {
    required _is.ColumnSelections<CampusQualificationTable> conflictColumns,
    _is.ColumnSelections<CampusQualificationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusQualificationTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusQualification>(
      row,
      conflictColumns: conflictColumns(CampusQualification.t),
      updateColumns: updateColumns?.call(CampusQualification.t),
      updateWhere: updateWhere?.call(CampusQualification.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusQualification]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusQualification>> update(
    _is.DatabaseSession session,
    List<CampusQualification> rows, {
    _is.ColumnSelections<CampusQualificationTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusQualification>(
      rows,
      columns: columns?.call(CampusQualification.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusQualification]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusQualification> updateRow(
    _is.DatabaseSession session,
    CampusQualification row, {
    _is.ColumnSelections<CampusQualificationTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusQualification>(
      row,
      columns: columns?.call(CampusQualification.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusQualification] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusQualification?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusQualificationUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusQualification>(
      id,
      columnValues: columnValues(CampusQualification.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusQualification]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusQualification>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusQualificationUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusQualificationTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusQualificationTable>? orderBy,
    _is.OrderByListBuilder<CampusQualificationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusQualification>(
      columnValues: columnValues(CampusQualification.t.updateTable),
      where: where(CampusQualification.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusQualification.t),
      orderByList: orderByList?.call(CampusQualification.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusQualification]s in the list and returns the deleted rows.
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
  Future<List<CampusQualification>> delete(
    _is.DatabaseSession session,
    List<CampusQualification> rows, {
    _is.OrderByBuilder<CampusQualificationTable>? orderBy,
    _is.OrderByListBuilder<CampusQualificationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusQualification>(
      rows,
      orderBy: orderBy?.call(CampusQualification.t),
      orderByList: orderByList?.call(CampusQualification.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusQualification].
  Future<CampusQualification> deleteRow(
    _is.DatabaseSession session,
    CampusQualification row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusQualification>(
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
  Future<List<CampusQualification>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusQualificationTable> where,
    _is.OrderByBuilder<CampusQualificationTable>? orderBy,
    _is.OrderByListBuilder<CampusQualificationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusQualification>(
      where: where(CampusQualification.t),
      orderBy: orderBy?.call(CampusQualification.t),
      orderByList: orderByList?.call(CampusQualification.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusQualificationTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusQualification>(
      where: where?.call(CampusQualification.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusQualification] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusQualificationTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusQualification>(
      where: where(CampusQualification.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
