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

/// Fictional university fixture: admissions.
abstract class CampusGuardian
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusGuardian._({
    this.id,
    required this.name,
    this.email,
    this.phone,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGuardian({
    _is.UuidValue? id,
    required String name,
    String? email,
    String? phone,
    DateTime? createdAt,
  }) = _CampusGuardianImpl;

  factory CampusGuardian.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusGuardian(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String?,
      phone: jsonSerialization['phone'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusGuardianTable();

  static const db = CampusGuardianRepository._();

  @override
  _is.UuidValue? id;

  String name;

  String? email;

  String? phone;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusGuardian]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusGuardian copyWith({
    _is.UuidValue? id,
    String? name,
    String? email,
    String? phone,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGuardian',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGuardian',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusGuardianInclude include() {
    return CampusGuardianInclude._();
  }

  static CampusGuardianIncludeList includeList({
    _is.WhereExpressionBuilder<CampusGuardianTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGuardianTable>? orderBy,
    _is.OrderByListBuilder<CampusGuardianTable>? orderByList,
    CampusGuardianInclude? include,
  }) {
    return CampusGuardianIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGuardian.t),
      orderByList: orderByList?.call(CampusGuardian.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGuardianImpl extends CampusGuardian {
  _CampusGuardianImpl({
    _is.UuidValue? id,
    required String name,
    String? email,
    String? phone,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         email: email,
         phone: phone,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGuardian]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusGuardian copyWith({
    Object? id = _Undefined,
    String? name,
    Object? email = _Undefined,
    Object? phone = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusGuardian(
      id: id is _is.UuidValue? ? id : this.id,
      name: name ?? this.name,
      email: email is String? ? email : this.email,
      phone: phone is String? ? phone : this.phone,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusGuardianUpdateTable extends _is.UpdateTable<CampusGuardianTable> {
  CampusGuardianUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> email(String? value) => _is.ColumnValue(
    table.email,
    value,
  );

  _is.ColumnValue<String, String> phone(String? value) => _is.ColumnValue(
    table.phone,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusGuardianTable extends _is.Table<_is.UuidValue?> {
  CampusGuardianTable({super.tableRelation})
    : super(tableName: 'campus_guardians') {
    updateTable = CampusGuardianUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    email = _is.ColumnString(
      'email',
      this,
    );
    phone = _is.ColumnString(
      'phone',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusGuardianUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString email;

  late final _is.ColumnString phone;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    email,
    phone,
    createdAt,
  ];
}

class CampusGuardianInclude extends _is.IncludeObject {
  CampusGuardianInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGuardian.t;
}

class CampusGuardianIncludeList extends _is.IncludeList {
  CampusGuardianIncludeList._({
    _is.WhereExpressionBuilder<CampusGuardianTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusGuardian.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusGuardian.t;
}

class CampusGuardianRepository {
  const CampusGuardianRepository._();

  /// Returns a list of [CampusGuardian]s matching the given query parameters.
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
  Future<List<CampusGuardian>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGuardianTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGuardianTable>? orderBy,
    _is.OrderByListBuilder<CampusGuardianTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusGuardian>(
      where: where?.call(CampusGuardian.t),
      orderBy: orderBy?.call(CampusGuardian.t),
      orderByList: orderByList?.call(CampusGuardian.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusGuardian] matching the given query parameters.
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
  Future<CampusGuardian?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGuardianTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusGuardianTable>? orderBy,
    _is.OrderByListBuilder<CampusGuardianTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusGuardian>(
      where: where?.call(CampusGuardian.t),
      orderBy: orderBy?.call(CampusGuardian.t),
      orderByList: orderByList?.call(CampusGuardian.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusGuardian] by its [id] or null if no such row exists.
  Future<CampusGuardian?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusGuardian>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusGuardian]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusGuardian]s will have their `id` fields set.
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
  Future<List<CampusGuardian>> insert(
    _is.DatabaseSession session,
    List<CampusGuardian> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusGuardian>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusGuardian] and returns the inserted row.
  ///
  /// The returned [CampusGuardian] will have its `id` field set.
  Future<CampusGuardian> insertRow(
    _is.DatabaseSession session,
    CampusGuardian row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusGuardian>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusGuardian]s in the list and returns the resulting rows.
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
  /// The returned [CampusGuardian]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGuardian>> upsert(
    _is.DatabaseSession session,
    List<CampusGuardian> rows, {
    required _is.ColumnSelections<CampusGuardianTable> conflictColumns,
    _is.ColumnSelections<CampusGuardianTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGuardianTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusGuardian>(
      rows,
      conflictColumns: conflictColumns(CampusGuardian.t),
      updateColumns: updateColumns?.call(CampusGuardian.t),
      updateWhere: updateWhere?.call(CampusGuardian.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusGuardian] and returns the resulting row.
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
  /// The returned [CampusGuardian] will have its `id` field set.
  Future<CampusGuardian?> upsertRow(
    _is.DatabaseSession session,
    CampusGuardian row, {
    required _is.ColumnSelections<CampusGuardianTable> conflictColumns,
    _is.ColumnSelections<CampusGuardianTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusGuardianTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusGuardian>(
      row,
      conflictColumns: conflictColumns(CampusGuardian.t),
      updateColumns: updateColumns?.call(CampusGuardian.t),
      updateWhere: updateWhere?.call(CampusGuardian.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGuardian]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGuardian>> update(
    _is.DatabaseSession session,
    List<CampusGuardian> rows, {
    _is.ColumnSelections<CampusGuardianTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusGuardian>(
      rows,
      columns: columns?.call(CampusGuardian.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusGuardian]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusGuardian> updateRow(
    _is.DatabaseSession session,
    CampusGuardian row, {
    _is.ColumnSelections<CampusGuardianTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusGuardian>(
      row,
      columns: columns?.call(CampusGuardian.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusGuardian] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusGuardian?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusGuardianUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusGuardian>(
      id,
      columnValues: columnValues(CampusGuardian.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusGuardian]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusGuardian>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusGuardianUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusGuardianTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusGuardianTable>? orderBy,
    _is.OrderByListBuilder<CampusGuardianTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusGuardian>(
      columnValues: columnValues(CampusGuardian.t.updateTable),
      where: where(CampusGuardian.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusGuardian.t),
      orderByList: orderByList?.call(CampusGuardian.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusGuardian]s in the list and returns the deleted rows.
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
  Future<List<CampusGuardian>> delete(
    _is.DatabaseSession session,
    List<CampusGuardian> rows, {
    _is.OrderByBuilder<CampusGuardianTable>? orderBy,
    _is.OrderByListBuilder<CampusGuardianTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusGuardian>(
      rows,
      orderBy: orderBy?.call(CampusGuardian.t),
      orderByList: orderByList?.call(CampusGuardian.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusGuardian].
  Future<CampusGuardian> deleteRow(
    _is.DatabaseSession session,
    CampusGuardian row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusGuardian>(
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
  Future<List<CampusGuardian>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGuardianTable> where,
    _is.OrderByBuilder<CampusGuardianTable>? orderBy,
    _is.OrderByListBuilder<CampusGuardianTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusGuardian>(
      where: where(CampusGuardian.t),
      orderBy: orderBy?.call(CampusGuardian.t),
      orderByList: orderByList?.call(CampusGuardian.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusGuardianTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusGuardian>(
      where: where?.call(CampusGuardian.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusGuardian] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusGuardianTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusGuardian>(
      where: where(CampusGuardian.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
