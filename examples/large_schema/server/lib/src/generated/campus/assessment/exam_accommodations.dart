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
import 'package:serverpod_lens_server/src/generated/protocol.dart' as _ioh8es0p;

/// Fictional university fixture: assessment.
abstract class CampusExamAccommodation
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusExamAccommodation._({
    this.id,
    required this.registrationId,
    required this.extraMinutes,
    required this.requirements,
    this.approvedById,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusExamAccommodation({
    _is.UuidValue? id,
    required _is.UuidValue registrationId,
    required int extraMinutes,
    required List<String> requirements,
    _is.UuidValue? approvedById,
    DateTime? createdAt,
  }) = _CampusExamAccommodationImpl;

  factory CampusExamAccommodation.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusExamAccommodation(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      registrationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['registrationId'],
      ),
      extraMinutes: jsonSerialization['extraMinutes'] as int,
      requirements: _ioh8es0p.Protocol().deserialize<List<String>>(
        jsonSerialization['requirements'],
      ),
      approvedById: jsonSerialization['approvedById'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['approvedById'],
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusExamAccommodationTable();

  static const db = CampusExamAccommodationRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue registrationId;

  int extraMinutes;

  List<String> requirements;

  _is.UuidValue? approvedById;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusExamAccommodation]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusExamAccommodation copyWith({
    _is.UuidValue? id,
    _is.UuidValue? registrationId,
    int? extraMinutes,
    List<String>? requirements,
    _is.UuidValue? approvedById,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusExamAccommodation',
      if (id != null) 'id': id?.toJson(),
      'registrationId': registrationId.toJson(),
      'extraMinutes': extraMinutes,
      'requirements': requirements.toJson(),
      if (approvedById != null) 'approvedById': approvedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusExamAccommodation',
      if (id != null) 'id': id?.toJson(),
      'registrationId': registrationId.toJson(),
      'extraMinutes': extraMinutes,
      'requirements': requirements.toJson(),
      if (approvedById != null) 'approvedById': approvedById?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusExamAccommodationInclude include() {
    return CampusExamAccommodationInclude._();
  }

  static CampusExamAccommodationIncludeList includeList({
    _is.WhereExpressionBuilder<CampusExamAccommodationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamAccommodationTable>? orderBy,
    _is.OrderByListBuilder<CampusExamAccommodationTable>? orderByList,
    CampusExamAccommodationInclude? include,
  }) {
    return CampusExamAccommodationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusExamAccommodation.t),
      orderByList: orderByList?.call(CampusExamAccommodation.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusExamAccommodationImpl extends CampusExamAccommodation {
  _CampusExamAccommodationImpl({
    _is.UuidValue? id,
    required _is.UuidValue registrationId,
    required int extraMinutes,
    required List<String> requirements,
    _is.UuidValue? approvedById,
    DateTime? createdAt,
  }) : super._(
         id: id,
         registrationId: registrationId,
         extraMinutes: extraMinutes,
         requirements: requirements,
         approvedById: approvedById,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusExamAccommodation]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusExamAccommodation copyWith({
    Object? id = _Undefined,
    _is.UuidValue? registrationId,
    int? extraMinutes,
    List<String>? requirements,
    Object? approvedById = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusExamAccommodation(
      id: id is _is.UuidValue? ? id : this.id,
      registrationId: registrationId ?? this.registrationId,
      extraMinutes: extraMinutes ?? this.extraMinutes,
      requirements: requirements ?? this.requirements.map((e0) => e0).toList(),
      approvedById: approvedById is _is.UuidValue?
          ? approvedById
          : this.approvedById,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusExamAccommodationUpdateTable
    extends _is.UpdateTable<CampusExamAccommodationTable> {
  CampusExamAccommodationUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> registrationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.registrationId,
    value,
  );

  _is.ColumnValue<int, int> extraMinutes(int value) => _is.ColumnValue(
    table.extraMinutes,
    value,
  );

  _is.ColumnValue<List<String>, List<String>> requirements(
    List<String> value,
  ) => _is.ColumnValue(
    table.requirements,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> approvedById(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.approvedById,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusExamAccommodationTable extends _is.Table<_is.UuidValue?> {
  CampusExamAccommodationTable({super.tableRelation})
    : super(tableName: 'campus_exam_accommodations') {
    updateTable = CampusExamAccommodationUpdateTable(this);
    registrationId = _is.ColumnUuid(
      'registrationId',
      this,
    );
    extraMinutes = _is.ColumnInt(
      'extraMinutes',
      this,
    );
    requirements = _is.ColumnSerializable<List<String>>(
      'requirements',
      this,
    );
    approvedById = _is.ColumnUuid(
      'approvedById',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusExamAccommodationUpdateTable updateTable;

  late final _is.ColumnUuid registrationId;

  late final _is.ColumnInt extraMinutes;

  late final _is.ColumnSerializable<List<String>> requirements;

  late final _is.ColumnUuid approvedById;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    registrationId,
    extraMinutes,
    requirements,
    approvedById,
    createdAt,
  ];
}

class CampusExamAccommodationInclude extends _is.IncludeObject {
  CampusExamAccommodationInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusExamAccommodation.t;
}

class CampusExamAccommodationIncludeList extends _is.IncludeList {
  CampusExamAccommodationIncludeList._({
    _is.WhereExpressionBuilder<CampusExamAccommodationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusExamAccommodation.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusExamAccommodation.t;
}

class CampusExamAccommodationRepository {
  const CampusExamAccommodationRepository._();

  /// Returns a list of [CampusExamAccommodation]s matching the given query parameters.
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
  Future<List<CampusExamAccommodation>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamAccommodationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamAccommodationTable>? orderBy,
    _is.OrderByListBuilder<CampusExamAccommodationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusExamAccommodation>(
      where: where?.call(CampusExamAccommodation.t),
      orderBy: orderBy?.call(CampusExamAccommodation.t),
      orderByList: orderByList?.call(CampusExamAccommodation.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusExamAccommodation] matching the given query parameters.
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
  Future<CampusExamAccommodation?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamAccommodationTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusExamAccommodationTable>? orderBy,
    _is.OrderByListBuilder<CampusExamAccommodationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusExamAccommodation>(
      where: where?.call(CampusExamAccommodation.t),
      orderBy: orderBy?.call(CampusExamAccommodation.t),
      orderByList: orderByList?.call(CampusExamAccommodation.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusExamAccommodation] by its [id] or null if no such row exists.
  Future<CampusExamAccommodation?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusExamAccommodation>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusExamAccommodation]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusExamAccommodation]s will have their `id` fields set.
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
  Future<List<CampusExamAccommodation>> insert(
    _is.DatabaseSession session,
    List<CampusExamAccommodation> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusExamAccommodation>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusExamAccommodation] and returns the inserted row.
  ///
  /// The returned [CampusExamAccommodation] will have its `id` field set.
  Future<CampusExamAccommodation> insertRow(
    _is.DatabaseSession session,
    CampusExamAccommodation row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusExamAccommodation>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusExamAccommodation]s in the list and returns the resulting rows.
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
  /// The returned [CampusExamAccommodation]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExamAccommodation>> upsert(
    _is.DatabaseSession session,
    List<CampusExamAccommodation> rows, {
    required _is.ColumnSelections<CampusExamAccommodationTable> conflictColumns,
    _is.ColumnSelections<CampusExamAccommodationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusExamAccommodationTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusExamAccommodation>(
      rows,
      conflictColumns: conflictColumns(CampusExamAccommodation.t),
      updateColumns: updateColumns?.call(CampusExamAccommodation.t),
      updateWhere: updateWhere?.call(CampusExamAccommodation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusExamAccommodation] and returns the resulting row.
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
  /// The returned [CampusExamAccommodation] will have its `id` field set.
  Future<CampusExamAccommodation?> upsertRow(
    _is.DatabaseSession session,
    CampusExamAccommodation row, {
    required _is.ColumnSelections<CampusExamAccommodationTable> conflictColumns,
    _is.ColumnSelections<CampusExamAccommodationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusExamAccommodationTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusExamAccommodation>(
      row,
      conflictColumns: conflictColumns(CampusExamAccommodation.t),
      updateColumns: updateColumns?.call(CampusExamAccommodation.t),
      updateWhere: updateWhere?.call(CampusExamAccommodation.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusExamAccommodation]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExamAccommodation>> update(
    _is.DatabaseSession session,
    List<CampusExamAccommodation> rows, {
    _is.ColumnSelections<CampusExamAccommodationTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusExamAccommodation>(
      rows,
      columns: columns?.call(CampusExamAccommodation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusExamAccommodation]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusExamAccommodation> updateRow(
    _is.DatabaseSession session,
    CampusExamAccommodation row, {
    _is.ColumnSelections<CampusExamAccommodationTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusExamAccommodation>(
      row,
      columns: columns?.call(CampusExamAccommodation.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusExamAccommodation] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusExamAccommodation?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusExamAccommodationUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusExamAccommodation>(
      id,
      columnValues: columnValues(CampusExamAccommodation.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusExamAccommodation]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusExamAccommodation>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusExamAccommodationUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusExamAccommodationTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusExamAccommodationTable>? orderBy,
    _is.OrderByListBuilder<CampusExamAccommodationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusExamAccommodation>(
      columnValues: columnValues(CampusExamAccommodation.t.updateTable),
      where: where(CampusExamAccommodation.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusExamAccommodation.t),
      orderByList: orderByList?.call(CampusExamAccommodation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusExamAccommodation]s in the list and returns the deleted rows.
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
  Future<List<CampusExamAccommodation>> delete(
    _is.DatabaseSession session,
    List<CampusExamAccommodation> rows, {
    _is.OrderByBuilder<CampusExamAccommodationTable>? orderBy,
    _is.OrderByListBuilder<CampusExamAccommodationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusExamAccommodation>(
      rows,
      orderBy: orderBy?.call(CampusExamAccommodation.t),
      orderByList: orderByList?.call(CampusExamAccommodation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusExamAccommodation].
  Future<CampusExamAccommodation> deleteRow(
    _is.DatabaseSession session,
    CampusExamAccommodation row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusExamAccommodation>(
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
  Future<List<CampusExamAccommodation>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusExamAccommodationTable> where,
    _is.OrderByBuilder<CampusExamAccommodationTable>? orderBy,
    _is.OrderByListBuilder<CampusExamAccommodationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusExamAccommodation>(
      where: where(CampusExamAccommodation.t),
      orderBy: orderBy?.call(CampusExamAccommodation.t),
      orderByList: orderByList?.call(CampusExamAccommodation.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusExamAccommodationTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusExamAccommodation>(
      where: where?.call(CampusExamAccommodation.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusExamAccommodation] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusExamAccommodationTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusExamAccommodation>(
      where: where(CampusExamAccommodation.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
