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
abstract class CampusStudentGuardian
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusStudentGuardian._({
    this.id,
    required this.studentId,
    required this.guardianId,
    required this.relationship,
    required this.emergencyContact,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentGuardian({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue guardianId,
    required String relationship,
    required bool emergencyContact,
    DateTime? createdAt,
  }) = _CampusStudentGuardianImpl;

  factory CampusStudentGuardian.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusStudentGuardian(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      guardianId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['guardianId'],
      ),
      relationship: jsonSerialization['relationship'] as String,
      emergencyContact: _is.BoolJsonExtension.fromJson(
        jsonSerialization['emergencyContact'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusStudentGuardianTable();

  static const db = CampusStudentGuardianRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  _is.UuidValue guardianId;

  String relationship;

  bool emergencyContact;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusStudentGuardian]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusStudentGuardian copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    _is.UuidValue? guardianId,
    String? relationship,
    bool? emergencyContact,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentGuardian',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'guardianId': guardianId.toJson(),
      'relationship': relationship,
      'emergencyContact': emergencyContact,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentGuardian',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'guardianId': guardianId.toJson(),
      'relationship': relationship,
      'emergencyContact': emergencyContact,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusStudentGuardianInclude include() {
    return CampusStudentGuardianInclude._();
  }

  static CampusStudentGuardianIncludeList includeList({
    _is.WhereExpressionBuilder<CampusStudentGuardianTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentGuardianTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentGuardianTable>? orderByList,
    CampusStudentGuardianInclude? include,
  }) {
    return CampusStudentGuardianIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentGuardian.t),
      orderByList: orderByList?.call(CampusStudentGuardian.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentGuardianImpl extends CampusStudentGuardian {
  _CampusStudentGuardianImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required _is.UuidValue guardianId,
    required String relationship,
    required bool emergencyContact,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         guardianId: guardianId,
         relationship: relationship,
         emergencyContact: emergencyContact,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentGuardian]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusStudentGuardian copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    _is.UuidValue? guardianId,
    String? relationship,
    bool? emergencyContact,
    DateTime? createdAt,
  }) {
    return CampusStudentGuardian(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      guardianId: guardianId ?? this.guardianId,
      relationship: relationship ?? this.relationship,
      emergencyContact: emergencyContact ?? this.emergencyContact,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusStudentGuardianUpdateTable
    extends _is.UpdateTable<CampusStudentGuardianTable> {
  CampusStudentGuardianUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> guardianId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.guardianId,
    value,
  );

  _is.ColumnValue<String, String> relationship(String value) => _is.ColumnValue(
    table.relationship,
    value,
  );

  _is.ColumnValue<bool, bool> emergencyContact(bool value) => _is.ColumnValue(
    table.emergencyContact,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusStudentGuardianTable extends _is.Table<_is.UuidValue?> {
  CampusStudentGuardianTable({super.tableRelation})
    : super(tableName: 'campus_student_guardians') {
    updateTable = CampusStudentGuardianUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    guardianId = _is.ColumnUuid(
      'guardianId',
      this,
    );
    relationship = _is.ColumnString(
      'relationship',
      this,
    );
    emergencyContact = _is.ColumnBool(
      'emergencyContact',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusStudentGuardianUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnUuid guardianId;

  late final _is.ColumnString relationship;

  late final _is.ColumnBool emergencyContact;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    guardianId,
    relationship,
    emergencyContact,
    createdAt,
  ];
}

class CampusStudentGuardianInclude extends _is.IncludeObject {
  CampusStudentGuardianInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentGuardian.t;
}

class CampusStudentGuardianIncludeList extends _is.IncludeList {
  CampusStudentGuardianIncludeList._({
    _is.WhereExpressionBuilder<CampusStudentGuardianTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusStudentGuardian.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentGuardian.t;
}

class CampusStudentGuardianRepository {
  const CampusStudentGuardianRepository._();

  /// Returns a list of [CampusStudentGuardian]s matching the given query parameters.
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
  Future<List<CampusStudentGuardian>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentGuardianTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentGuardianTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentGuardianTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusStudentGuardian>(
      where: where?.call(CampusStudentGuardian.t),
      orderBy: orderBy?.call(CampusStudentGuardian.t),
      orderByList: orderByList?.call(CampusStudentGuardian.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusStudentGuardian] matching the given query parameters.
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
  Future<CampusStudentGuardian?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentGuardianTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusStudentGuardianTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentGuardianTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusStudentGuardian>(
      where: where?.call(CampusStudentGuardian.t),
      orderBy: orderBy?.call(CampusStudentGuardian.t),
      orderByList: orderByList?.call(CampusStudentGuardian.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusStudentGuardian] by its [id] or null if no such row exists.
  Future<CampusStudentGuardian?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusStudentGuardian>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusStudentGuardian]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusStudentGuardian]s will have their `id` fields set.
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
  Future<List<CampusStudentGuardian>> insert(
    _is.DatabaseSession session,
    List<CampusStudentGuardian> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusStudentGuardian>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusStudentGuardian] and returns the inserted row.
  ///
  /// The returned [CampusStudentGuardian] will have its `id` field set.
  Future<CampusStudentGuardian> insertRow(
    _is.DatabaseSession session,
    CampusStudentGuardian row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusStudentGuardian>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusStudentGuardian]s in the list and returns the resulting rows.
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
  /// The returned [CampusStudentGuardian]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentGuardian>> upsert(
    _is.DatabaseSession session,
    List<CampusStudentGuardian> rows, {
    required _is.ColumnSelections<CampusStudentGuardianTable> conflictColumns,
    _is.ColumnSelections<CampusStudentGuardianTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentGuardianTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusStudentGuardian>(
      rows,
      conflictColumns: conflictColumns(CampusStudentGuardian.t),
      updateColumns: updateColumns?.call(CampusStudentGuardian.t),
      updateWhere: updateWhere?.call(CampusStudentGuardian.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusStudentGuardian] and returns the resulting row.
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
  /// The returned [CampusStudentGuardian] will have its `id` field set.
  Future<CampusStudentGuardian?> upsertRow(
    _is.DatabaseSession session,
    CampusStudentGuardian row, {
    required _is.ColumnSelections<CampusStudentGuardianTable> conflictColumns,
    _is.ColumnSelections<CampusStudentGuardianTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentGuardianTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusStudentGuardian>(
      row,
      conflictColumns: conflictColumns(CampusStudentGuardian.t),
      updateColumns: updateColumns?.call(CampusStudentGuardian.t),
      updateWhere: updateWhere?.call(CampusStudentGuardian.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentGuardian]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentGuardian>> update(
    _is.DatabaseSession session,
    List<CampusStudentGuardian> rows, {
    _is.ColumnSelections<CampusStudentGuardianTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusStudentGuardian>(
      rows,
      columns: columns?.call(CampusStudentGuardian.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusStudentGuardian]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusStudentGuardian> updateRow(
    _is.DatabaseSession session,
    CampusStudentGuardian row, {
    _is.ColumnSelections<CampusStudentGuardianTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusStudentGuardian>(
      row,
      columns: columns?.call(CampusStudentGuardian.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusStudentGuardian] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusStudentGuardian?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusStudentGuardianUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusStudentGuardian>(
      id,
      columnValues: columnValues(CampusStudentGuardian.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentGuardian]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentGuardian>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusStudentGuardianUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusStudentGuardianTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentGuardianTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentGuardianTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusStudentGuardian>(
      columnValues: columnValues(CampusStudentGuardian.t.updateTable),
      where: where(CampusStudentGuardian.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentGuardian.t),
      orderByList: orderByList?.call(CampusStudentGuardian.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusStudentGuardian]s in the list and returns the deleted rows.
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
  Future<List<CampusStudentGuardian>> delete(
    _is.DatabaseSession session,
    List<CampusStudentGuardian> rows, {
    _is.OrderByBuilder<CampusStudentGuardianTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentGuardianTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusStudentGuardian>(
      rows,
      orderBy: orderBy?.call(CampusStudentGuardian.t),
      orderByList: orderByList?.call(CampusStudentGuardian.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusStudentGuardian].
  Future<CampusStudentGuardian> deleteRow(
    _is.DatabaseSession session,
    CampusStudentGuardian row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusStudentGuardian>(
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
  Future<List<CampusStudentGuardian>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentGuardianTable> where,
    _is.OrderByBuilder<CampusStudentGuardianTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentGuardianTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusStudentGuardian>(
      where: where(CampusStudentGuardian.t),
      orderBy: orderBy?.call(CampusStudentGuardian.t),
      orderByList: orderByList?.call(CampusStudentGuardian.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentGuardianTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusStudentGuardian>(
      where: where?.call(CampusStudentGuardian.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusStudentGuardian] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentGuardianTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusStudentGuardian>(
      where: where(CampusStudentGuardian.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
