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
abstract class CampusSectionInstructor
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusSectionInstructor._({
    this.id,
    required this.sectionId,
    required this.lecturerId,
    required this.lead,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSectionInstructor({
    _is.UuidValue? id,
    required _is.UuidValue sectionId,
    required _is.UuidValue lecturerId,
    required bool lead,
    DateTime? createdAt,
  }) = _CampusSectionInstructorImpl;

  factory CampusSectionInstructor.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusSectionInstructor(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      sectionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['sectionId'],
      ),
      lecturerId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['lecturerId'],
      ),
      lead: _is.BoolJsonExtension.fromJson(jsonSerialization['lead']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusSectionInstructorTable();

  static const db = CampusSectionInstructorRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue sectionId;

  _is.UuidValue lecturerId;

  bool lead;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusSectionInstructor]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusSectionInstructor copyWith({
    _is.UuidValue? id,
    _is.UuidValue? sectionId,
    _is.UuidValue? lecturerId,
    bool? lead,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSectionInstructor',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'lead': lead,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSectionInstructor',
      if (id != null) 'id': id?.toJson(),
      'sectionId': sectionId.toJson(),
      'lecturerId': lecturerId.toJson(),
      'lead': lead,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusSectionInstructorInclude include() {
    return CampusSectionInstructorInclude._();
  }

  static CampusSectionInstructorIncludeList includeList({
    _is.WhereExpressionBuilder<CampusSectionInstructorTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSectionInstructorTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionInstructorTable>? orderByList,
    CampusSectionInstructorInclude? include,
  }) {
    return CampusSectionInstructorIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSectionInstructor.t),
      orderByList: orderByList?.call(CampusSectionInstructor.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSectionInstructorImpl extends CampusSectionInstructor {
  _CampusSectionInstructorImpl({
    _is.UuidValue? id,
    required _is.UuidValue sectionId,
    required _is.UuidValue lecturerId,
    required bool lead,
    DateTime? createdAt,
  }) : super._(
         id: id,
         sectionId: sectionId,
         lecturerId: lecturerId,
         lead: lead,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSectionInstructor]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusSectionInstructor copyWith({
    Object? id = _Undefined,
    _is.UuidValue? sectionId,
    _is.UuidValue? lecturerId,
    bool? lead,
    DateTime? createdAt,
  }) {
    return CampusSectionInstructor(
      id: id is _is.UuidValue? ? id : this.id,
      sectionId: sectionId ?? this.sectionId,
      lecturerId: lecturerId ?? this.lecturerId,
      lead: lead ?? this.lead,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusSectionInstructorUpdateTable
    extends _is.UpdateTable<CampusSectionInstructorTable> {
  CampusSectionInstructorUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> sectionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.sectionId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> lecturerId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.lecturerId,
    value,
  );

  _is.ColumnValue<bool, bool> lead(bool value) => _is.ColumnValue(
    table.lead,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusSectionInstructorTable extends _is.Table<_is.UuidValue?> {
  CampusSectionInstructorTable({super.tableRelation})
    : super(tableName: 'campus_section_instructors') {
    updateTable = CampusSectionInstructorUpdateTable(this);
    sectionId = _is.ColumnUuid(
      'sectionId',
      this,
    );
    lecturerId = _is.ColumnUuid(
      'lecturerId',
      this,
    );
    lead = _is.ColumnBool(
      'lead',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusSectionInstructorUpdateTable updateTable;

  late final _is.ColumnUuid sectionId;

  late final _is.ColumnUuid lecturerId;

  late final _is.ColumnBool lead;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    sectionId,
    lecturerId,
    lead,
    createdAt,
  ];
}

class CampusSectionInstructorInclude extends _is.IncludeObject {
  CampusSectionInstructorInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSectionInstructor.t;
}

class CampusSectionInstructorIncludeList extends _is.IncludeList {
  CampusSectionInstructorIncludeList._({
    _is.WhereExpressionBuilder<CampusSectionInstructorTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusSectionInstructor.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSectionInstructor.t;
}

class CampusSectionInstructorRepository {
  const CampusSectionInstructorRepository._();

  /// Returns a list of [CampusSectionInstructor]s matching the given query parameters.
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
  Future<List<CampusSectionInstructor>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSectionInstructorTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSectionInstructorTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionInstructorTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusSectionInstructor>(
      where: where?.call(CampusSectionInstructor.t),
      orderBy: orderBy?.call(CampusSectionInstructor.t),
      orderByList: orderByList?.call(CampusSectionInstructor.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusSectionInstructor] matching the given query parameters.
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
  Future<CampusSectionInstructor?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSectionInstructorTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusSectionInstructorTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionInstructorTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusSectionInstructor>(
      where: where?.call(CampusSectionInstructor.t),
      orderBy: orderBy?.call(CampusSectionInstructor.t),
      orderByList: orderByList?.call(CampusSectionInstructor.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusSectionInstructor] by its [id] or null if no such row exists.
  Future<CampusSectionInstructor?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusSectionInstructor>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusSectionInstructor]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusSectionInstructor]s will have their `id` fields set.
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
  Future<List<CampusSectionInstructor>> insert(
    _is.DatabaseSession session,
    List<CampusSectionInstructor> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusSectionInstructor>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusSectionInstructor] and returns the inserted row.
  ///
  /// The returned [CampusSectionInstructor] will have its `id` field set.
  Future<CampusSectionInstructor> insertRow(
    _is.DatabaseSession session,
    CampusSectionInstructor row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusSectionInstructor>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusSectionInstructor]s in the list and returns the resulting rows.
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
  /// The returned [CampusSectionInstructor]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSectionInstructor>> upsert(
    _is.DatabaseSession session,
    List<CampusSectionInstructor> rows, {
    required _is.ColumnSelections<CampusSectionInstructorTable> conflictColumns,
    _is.ColumnSelections<CampusSectionInstructorTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSectionInstructorTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusSectionInstructor>(
      rows,
      conflictColumns: conflictColumns(CampusSectionInstructor.t),
      updateColumns: updateColumns?.call(CampusSectionInstructor.t),
      updateWhere: updateWhere?.call(CampusSectionInstructor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusSectionInstructor] and returns the resulting row.
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
  /// The returned [CampusSectionInstructor] will have its `id` field set.
  Future<CampusSectionInstructor?> upsertRow(
    _is.DatabaseSession session,
    CampusSectionInstructor row, {
    required _is.ColumnSelections<CampusSectionInstructorTable> conflictColumns,
    _is.ColumnSelections<CampusSectionInstructorTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSectionInstructorTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusSectionInstructor>(
      row,
      conflictColumns: conflictColumns(CampusSectionInstructor.t),
      updateColumns: updateColumns?.call(CampusSectionInstructor.t),
      updateWhere: updateWhere?.call(CampusSectionInstructor.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSectionInstructor]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSectionInstructor>> update(
    _is.DatabaseSession session,
    List<CampusSectionInstructor> rows, {
    _is.ColumnSelections<CampusSectionInstructorTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusSectionInstructor>(
      rows,
      columns: columns?.call(CampusSectionInstructor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusSectionInstructor]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusSectionInstructor> updateRow(
    _is.DatabaseSession session,
    CampusSectionInstructor row, {
    _is.ColumnSelections<CampusSectionInstructorTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusSectionInstructor>(
      row,
      columns: columns?.call(CampusSectionInstructor.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusSectionInstructor] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusSectionInstructor?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusSectionInstructorUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusSectionInstructor>(
      id,
      columnValues: columnValues(CampusSectionInstructor.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSectionInstructor]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSectionInstructor>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusSectionInstructorUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusSectionInstructorTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSectionInstructorTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionInstructorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusSectionInstructor>(
      columnValues: columnValues(CampusSectionInstructor.t.updateTable),
      where: where(CampusSectionInstructor.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSectionInstructor.t),
      orderByList: orderByList?.call(CampusSectionInstructor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusSectionInstructor]s in the list and returns the deleted rows.
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
  Future<List<CampusSectionInstructor>> delete(
    _is.DatabaseSession session,
    List<CampusSectionInstructor> rows, {
    _is.OrderByBuilder<CampusSectionInstructorTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionInstructorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusSectionInstructor>(
      rows,
      orderBy: orderBy?.call(CampusSectionInstructor.t),
      orderByList: orderByList?.call(CampusSectionInstructor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusSectionInstructor].
  Future<CampusSectionInstructor> deleteRow(
    _is.DatabaseSession session,
    CampusSectionInstructor row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusSectionInstructor>(
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
  Future<List<CampusSectionInstructor>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSectionInstructorTable> where,
    _is.OrderByBuilder<CampusSectionInstructorTable>? orderBy,
    _is.OrderByListBuilder<CampusSectionInstructorTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusSectionInstructor>(
      where: where(CampusSectionInstructor.t),
      orderBy: orderBy?.call(CampusSectionInstructor.t),
      orderByList: orderByList?.call(CampusSectionInstructor.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSectionInstructorTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusSectionInstructor>(
      where: where?.call(CampusSectionInstructor.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusSectionInstructor] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSectionInstructorTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusSectionInstructor>(
      where: where(CampusSectionInstructor.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
