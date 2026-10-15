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
abstract class CampusSponsor
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusSponsor._({
    this.id,
    required this.name,
    required this.contactEmail,
    this.organisation,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSponsor({
    _is.UuidValue? id,
    required String name,
    required String contactEmail,
    String? organisation,
    DateTime? createdAt,
  }) = _CampusSponsorImpl;

  factory CampusSponsor.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusSponsor(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      contactEmail: jsonSerialization['contactEmail'] as String,
      organisation: jsonSerialization['organisation'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusSponsorTable();

  static const db = CampusSponsorRepository._();

  @override
  _is.UuidValue? id;

  String name;

  String contactEmail;

  String? organisation;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusSponsor]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusSponsor copyWith({
    _is.UuidValue? id,
    String? name,
    String? contactEmail,
    String? organisation,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSponsor',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'contactEmail': contactEmail,
      if (organisation != null) 'organisation': organisation,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSponsor',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'contactEmail': contactEmail,
      if (organisation != null) 'organisation': organisation,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusSponsorInclude include() {
    return CampusSponsorInclude._();
  }

  static CampusSponsorIncludeList includeList({
    _is.WhereExpressionBuilder<CampusSponsorTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSponsorTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorTable>? orderByList,
    CampusSponsorInclude? include,
  }) {
    return CampusSponsorIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSponsor.t),
      orderByList: orderByList?.call(CampusSponsor.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSponsorImpl extends CampusSponsor {
  _CampusSponsorImpl({
    _is.UuidValue? id,
    required String name,
    required String contactEmail,
    String? organisation,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         contactEmail: contactEmail,
         organisation: organisation,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSponsor]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusSponsor copyWith({
    Object? id = _Undefined,
    String? name,
    String? contactEmail,
    Object? organisation = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusSponsor(
      id: id is _is.UuidValue? ? id : this.id,
      name: name ?? this.name,
      contactEmail: contactEmail ?? this.contactEmail,
      organisation: organisation is String? ? organisation : this.organisation,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusSponsorUpdateTable extends _is.UpdateTable<CampusSponsorTable> {
  CampusSponsorUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> contactEmail(String value) => _is.ColumnValue(
    table.contactEmail,
    value,
  );

  _is.ColumnValue<String, String> organisation(String? value) =>
      _is.ColumnValue(
        table.organisation,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusSponsorTable extends _is.Table<_is.UuidValue?> {
  CampusSponsorTable({super.tableRelation})
    : super(tableName: 'campus_sponsors') {
    updateTable = CampusSponsorUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    contactEmail = _is.ColumnString(
      'contactEmail',
      this,
    );
    organisation = _is.ColumnString(
      'organisation',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusSponsorUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString contactEmail;

  late final _is.ColumnString organisation;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    contactEmail,
    organisation,
    createdAt,
  ];
}

class CampusSponsorInclude extends _is.IncludeObject {
  CampusSponsorInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSponsor.t;
}

class CampusSponsorIncludeList extends _is.IncludeList {
  CampusSponsorIncludeList._({
    _is.WhereExpressionBuilder<CampusSponsorTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusSponsor.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSponsor.t;
}

class CampusSponsorRepository {
  const CampusSponsorRepository._();

  /// Returns a list of [CampusSponsor]s matching the given query parameters.
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
  Future<List<CampusSponsor>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSponsorTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSponsorTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusSponsor>(
      where: where?.call(CampusSponsor.t),
      orderBy: orderBy?.call(CampusSponsor.t),
      orderByList: orderByList?.call(CampusSponsor.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusSponsor] matching the given query parameters.
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
  Future<CampusSponsor?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSponsorTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusSponsorTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusSponsor>(
      where: where?.call(CampusSponsor.t),
      orderBy: orderBy?.call(CampusSponsor.t),
      orderByList: orderByList?.call(CampusSponsor.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusSponsor] by its [id] or null if no such row exists.
  Future<CampusSponsor?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusSponsor>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusSponsor]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusSponsor]s will have their `id` fields set.
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
  Future<List<CampusSponsor>> insert(
    _is.DatabaseSession session,
    List<CampusSponsor> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusSponsor>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusSponsor] and returns the inserted row.
  ///
  /// The returned [CampusSponsor] will have its `id` field set.
  Future<CampusSponsor> insertRow(
    _is.DatabaseSession session,
    CampusSponsor row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusSponsor>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusSponsor]s in the list and returns the resulting rows.
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
  /// The returned [CampusSponsor]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSponsor>> upsert(
    _is.DatabaseSession session,
    List<CampusSponsor> rows, {
    required _is.ColumnSelections<CampusSponsorTable> conflictColumns,
    _is.ColumnSelections<CampusSponsorTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSponsorTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusSponsor>(
      rows,
      conflictColumns: conflictColumns(CampusSponsor.t),
      updateColumns: updateColumns?.call(CampusSponsor.t),
      updateWhere: updateWhere?.call(CampusSponsor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusSponsor] and returns the resulting row.
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
  /// The returned [CampusSponsor] will have its `id` field set.
  Future<CampusSponsor?> upsertRow(
    _is.DatabaseSession session,
    CampusSponsor row, {
    required _is.ColumnSelections<CampusSponsorTable> conflictColumns,
    _is.ColumnSelections<CampusSponsorTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSponsorTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusSponsor>(
      row,
      conflictColumns: conflictColumns(CampusSponsor.t),
      updateColumns: updateColumns?.call(CampusSponsor.t),
      updateWhere: updateWhere?.call(CampusSponsor.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSponsor]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSponsor>> update(
    _is.DatabaseSession session,
    List<CampusSponsor> rows, {
    _is.ColumnSelections<CampusSponsorTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusSponsor>(
      rows,
      columns: columns?.call(CampusSponsor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusSponsor]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusSponsor> updateRow(
    _is.DatabaseSession session,
    CampusSponsor row, {
    _is.ColumnSelections<CampusSponsorTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusSponsor>(
      row,
      columns: columns?.call(CampusSponsor.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusSponsor] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusSponsor?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusSponsorUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusSponsor>(
      id,
      columnValues: columnValues(CampusSponsor.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSponsor]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSponsor>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusSponsorUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusSponsorTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSponsorTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusSponsor>(
      columnValues: columnValues(CampusSponsor.t.updateTable),
      where: where(CampusSponsor.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSponsor.t),
      orderByList: orderByList?.call(CampusSponsor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusSponsor]s in the list and returns the deleted rows.
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
  Future<List<CampusSponsor>> delete(
    _is.DatabaseSession session,
    List<CampusSponsor> rows, {
    _is.OrderByBuilder<CampusSponsorTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusSponsor>(
      rows,
      orderBy: orderBy?.call(CampusSponsor.t),
      orderByList: orderByList?.call(CampusSponsor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusSponsor].
  Future<CampusSponsor> deleteRow(
    _is.DatabaseSession session,
    CampusSponsor row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusSponsor>(
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
  Future<List<CampusSponsor>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSponsorTable> where,
    _is.OrderByBuilder<CampusSponsorTable>? orderBy,
    _is.OrderByListBuilder<CampusSponsorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusSponsor>(
      where: where(CampusSponsor.t),
      orderBy: orderBy?.call(CampusSponsor.t),
      orderByList: orderByList?.call(CampusSponsor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSponsorTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusSponsor>(
      where: where?.call(CampusSponsor.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusSponsor] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSponsorTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusSponsor>(
      where: where(CampusSponsor.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
