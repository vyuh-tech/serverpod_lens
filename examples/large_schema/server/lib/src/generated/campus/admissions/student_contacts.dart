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
abstract class CampusStudentContact
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusStudentContact._({
    this.id,
    required this.studentId,
    required this.kind,
    required this.value,
    required this.preferred,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentContact({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required String kind,
    required String value,
    required bool preferred,
    DateTime? createdAt,
  }) = _CampusStudentContactImpl;

  factory CampusStudentContact.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusStudentContact(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      kind: jsonSerialization['kind'] as String,
      value: jsonSerialization['value'] as String,
      preferred: _is.BoolJsonExtension.fromJson(jsonSerialization['preferred']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusStudentContactTable();

  static const db = CampusStudentContactRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  String kind;

  String value;

  bool preferred;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusStudentContact]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusStudentContact copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    String? kind,
    String? value,
    bool? preferred,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentContact',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'kind': kind,
      'value': value,
      'preferred': preferred,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentContact',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'kind': kind,
      'value': value,
      'preferred': preferred,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusStudentContactInclude include() {
    return CampusStudentContactInclude._();
  }

  static CampusStudentContactIncludeList includeList({
    _is.WhereExpressionBuilder<CampusStudentContactTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentContactTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentContactTable>? orderByList,
    CampusStudentContactInclude? include,
  }) {
    return CampusStudentContactIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentContact.t),
      orderByList: orderByList?.call(CampusStudentContact.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentContactImpl extends CampusStudentContact {
  _CampusStudentContactImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required String kind,
    required String value,
    required bool preferred,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         kind: kind,
         value: value,
         preferred: preferred,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentContact]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusStudentContact copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    String? kind,
    String? value,
    bool? preferred,
    DateTime? createdAt,
  }) {
    return CampusStudentContact(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      kind: kind ?? this.kind,
      value: value ?? this.value,
      preferred: preferred ?? this.preferred,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusStudentContactUpdateTable
    extends _is.UpdateTable<CampusStudentContactTable> {
  CampusStudentContactUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<String, String> kind(String value) => _is.ColumnValue(
    table.kind,
    value,
  );

  _is.ColumnValue<String, String> value(String value) => _is.ColumnValue(
    table.value,
    value,
  );

  _is.ColumnValue<bool, bool> preferred(bool value) => _is.ColumnValue(
    table.preferred,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusStudentContactTable extends _is.Table<_is.UuidValue?> {
  CampusStudentContactTable({super.tableRelation})
    : super(tableName: 'campus_student_contacts') {
    updateTable = CampusStudentContactUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    kind = _is.ColumnString(
      'kind',
      this,
    );
    value = _is.ColumnString(
      'value',
      this,
    );
    preferred = _is.ColumnBool(
      'preferred',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusStudentContactUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnString kind;

  late final _is.ColumnString value;

  late final _is.ColumnBool preferred;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    kind,
    value,
    preferred,
    createdAt,
  ];
}

class CampusStudentContactInclude extends _is.IncludeObject {
  CampusStudentContactInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentContact.t;
}

class CampusStudentContactIncludeList extends _is.IncludeList {
  CampusStudentContactIncludeList._({
    _is.WhereExpressionBuilder<CampusStudentContactTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusStudentContact.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentContact.t;
}

class CampusStudentContactRepository {
  const CampusStudentContactRepository._();

  /// Returns a list of [CampusStudentContact]s matching the given query parameters.
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
  Future<List<CampusStudentContact>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentContactTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentContactTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentContactTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusStudentContact>(
      where: where?.call(CampusStudentContact.t),
      orderBy: orderBy?.call(CampusStudentContact.t),
      orderByList: orderByList?.call(CampusStudentContact.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusStudentContact] matching the given query parameters.
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
  Future<CampusStudentContact?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentContactTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusStudentContactTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentContactTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusStudentContact>(
      where: where?.call(CampusStudentContact.t),
      orderBy: orderBy?.call(CampusStudentContact.t),
      orderByList: orderByList?.call(CampusStudentContact.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusStudentContact] by its [id] or null if no such row exists.
  Future<CampusStudentContact?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusStudentContact>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusStudentContact]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusStudentContact]s will have their `id` fields set.
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
  Future<List<CampusStudentContact>> insert(
    _is.DatabaseSession session,
    List<CampusStudentContact> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusStudentContact>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusStudentContact] and returns the inserted row.
  ///
  /// The returned [CampusStudentContact] will have its `id` field set.
  Future<CampusStudentContact> insertRow(
    _is.DatabaseSession session,
    CampusStudentContact row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusStudentContact>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusStudentContact]s in the list and returns the resulting rows.
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
  /// The returned [CampusStudentContact]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentContact>> upsert(
    _is.DatabaseSession session,
    List<CampusStudentContact> rows, {
    required _is.ColumnSelections<CampusStudentContactTable> conflictColumns,
    _is.ColumnSelections<CampusStudentContactTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentContactTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusStudentContact>(
      rows,
      conflictColumns: conflictColumns(CampusStudentContact.t),
      updateColumns: updateColumns?.call(CampusStudentContact.t),
      updateWhere: updateWhere?.call(CampusStudentContact.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusStudentContact] and returns the resulting row.
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
  /// The returned [CampusStudentContact] will have its `id` field set.
  Future<CampusStudentContact?> upsertRow(
    _is.DatabaseSession session,
    CampusStudentContact row, {
    required _is.ColumnSelections<CampusStudentContactTable> conflictColumns,
    _is.ColumnSelections<CampusStudentContactTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentContactTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusStudentContact>(
      row,
      conflictColumns: conflictColumns(CampusStudentContact.t),
      updateColumns: updateColumns?.call(CampusStudentContact.t),
      updateWhere: updateWhere?.call(CampusStudentContact.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentContact]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentContact>> update(
    _is.DatabaseSession session,
    List<CampusStudentContact> rows, {
    _is.ColumnSelections<CampusStudentContactTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusStudentContact>(
      rows,
      columns: columns?.call(CampusStudentContact.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusStudentContact]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusStudentContact> updateRow(
    _is.DatabaseSession session,
    CampusStudentContact row, {
    _is.ColumnSelections<CampusStudentContactTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusStudentContact>(
      row,
      columns: columns?.call(CampusStudentContact.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusStudentContact] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusStudentContact?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusStudentContactUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusStudentContact>(
      id,
      columnValues: columnValues(CampusStudentContact.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentContact]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentContact>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusStudentContactUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusStudentContactTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentContactTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentContactTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusStudentContact>(
      columnValues: columnValues(CampusStudentContact.t.updateTable),
      where: where(CampusStudentContact.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentContact.t),
      orderByList: orderByList?.call(CampusStudentContact.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusStudentContact]s in the list and returns the deleted rows.
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
  Future<List<CampusStudentContact>> delete(
    _is.DatabaseSession session,
    List<CampusStudentContact> rows, {
    _is.OrderByBuilder<CampusStudentContactTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentContactTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusStudentContact>(
      rows,
      orderBy: orderBy?.call(CampusStudentContact.t),
      orderByList: orderByList?.call(CampusStudentContact.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusStudentContact].
  Future<CampusStudentContact> deleteRow(
    _is.DatabaseSession session,
    CampusStudentContact row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusStudentContact>(
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
  Future<List<CampusStudentContact>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentContactTable> where,
    _is.OrderByBuilder<CampusStudentContactTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentContactTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusStudentContact>(
      where: where(CampusStudentContact.t),
      orderBy: orderBy?.call(CampusStudentContact.t),
      orderByList: orderByList?.call(CampusStudentContact.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentContactTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusStudentContact>(
      where: where?.call(CampusStudentContact.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusStudentContact] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentContactTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusStudentContact>(
      where: where(CampusStudentContact.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
