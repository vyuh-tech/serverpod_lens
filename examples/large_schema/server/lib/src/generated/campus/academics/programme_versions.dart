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
abstract class CampusProgrammeVersion
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusProgrammeVersion._({
    this.id,
    required this.programmeId,
    required this.academicYearId,
    required this.version,
    required this.published,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusProgrammeVersion({
    _is.UuidValue? id,
    required _is.UuidValue programmeId,
    required _is.UuidValue academicYearId,
    required int version,
    required bool published,
    DateTime? createdAt,
  }) = _CampusProgrammeVersionImpl;

  factory CampusProgrammeVersion.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusProgrammeVersion(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      programmeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['programmeId'],
      ),
      academicYearId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['academicYearId'],
      ),
      version: jsonSerialization['version'] as int,
      published: _is.BoolJsonExtension.fromJson(jsonSerialization['published']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusProgrammeVersionTable();

  static const db = CampusProgrammeVersionRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue programmeId;

  _is.UuidValue academicYearId;

  int version;

  bool published;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusProgrammeVersion]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusProgrammeVersion copyWith({
    _is.UuidValue? id,
    _is.UuidValue? programmeId,
    _is.UuidValue? academicYearId,
    int? version,
    bool? published,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusProgrammeVersion',
      if (id != null) 'id': id?.toJson(),
      'programmeId': programmeId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'version': version,
      'published': published,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusProgrammeVersion',
      if (id != null) 'id': id?.toJson(),
      'programmeId': programmeId.toJson(),
      'academicYearId': academicYearId.toJson(),
      'version': version,
      'published': published,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusProgrammeVersionInclude include() {
    return CampusProgrammeVersionInclude._();
  }

  static CampusProgrammeVersionIncludeList includeList({
    _is.WhereExpressionBuilder<CampusProgrammeVersionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusProgrammeVersionTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeVersionTable>? orderByList,
    CampusProgrammeVersionInclude? include,
  }) {
    return CampusProgrammeVersionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusProgrammeVersion.t),
      orderByList: orderByList?.call(CampusProgrammeVersion.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusProgrammeVersionImpl extends CampusProgrammeVersion {
  _CampusProgrammeVersionImpl({
    _is.UuidValue? id,
    required _is.UuidValue programmeId,
    required _is.UuidValue academicYearId,
    required int version,
    required bool published,
    DateTime? createdAt,
  }) : super._(
         id: id,
         programmeId: programmeId,
         academicYearId: academicYearId,
         version: version,
         published: published,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusProgrammeVersion]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusProgrammeVersion copyWith({
    Object? id = _Undefined,
    _is.UuidValue? programmeId,
    _is.UuidValue? academicYearId,
    int? version,
    bool? published,
    DateTime? createdAt,
  }) {
    return CampusProgrammeVersion(
      id: id is _is.UuidValue? ? id : this.id,
      programmeId: programmeId ?? this.programmeId,
      academicYearId: academicYearId ?? this.academicYearId,
      version: version ?? this.version,
      published: published ?? this.published,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusProgrammeVersionUpdateTable
    extends _is.UpdateTable<CampusProgrammeVersionTable> {
  CampusProgrammeVersionUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> programmeId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.programmeId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> academicYearId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.academicYearId,
    value,
  );

  _is.ColumnValue<int, int> version(int value) => _is.ColumnValue(
    table.version,
    value,
  );

  _is.ColumnValue<bool, bool> published(bool value) => _is.ColumnValue(
    table.published,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusProgrammeVersionTable extends _is.Table<_is.UuidValue?> {
  CampusProgrammeVersionTable({super.tableRelation})
    : super(tableName: 'campus_programme_versions') {
    updateTable = CampusProgrammeVersionUpdateTable(this);
    programmeId = _is.ColumnUuid(
      'programmeId',
      this,
    );
    academicYearId = _is.ColumnUuid(
      'academicYearId',
      this,
    );
    version = _is.ColumnInt(
      'version',
      this,
    );
    published = _is.ColumnBool(
      'published',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusProgrammeVersionUpdateTable updateTable;

  late final _is.ColumnUuid programmeId;

  late final _is.ColumnUuid academicYearId;

  late final _is.ColumnInt version;

  late final _is.ColumnBool published;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    programmeId,
    academicYearId,
    version,
    published,
    createdAt,
  ];
}

class CampusProgrammeVersionInclude extends _is.IncludeObject {
  CampusProgrammeVersionInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusProgrammeVersion.t;
}

class CampusProgrammeVersionIncludeList extends _is.IncludeList {
  CampusProgrammeVersionIncludeList._({
    _is.WhereExpressionBuilder<CampusProgrammeVersionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusProgrammeVersion.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusProgrammeVersion.t;
}

class CampusProgrammeVersionRepository {
  const CampusProgrammeVersionRepository._();

  /// Returns a list of [CampusProgrammeVersion]s matching the given query parameters.
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
  Future<List<CampusProgrammeVersion>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusProgrammeVersionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusProgrammeVersionTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeVersionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusProgrammeVersion>(
      where: where?.call(CampusProgrammeVersion.t),
      orderBy: orderBy?.call(CampusProgrammeVersion.t),
      orderByList: orderByList?.call(CampusProgrammeVersion.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusProgrammeVersion] matching the given query parameters.
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
  Future<CampusProgrammeVersion?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusProgrammeVersionTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusProgrammeVersionTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeVersionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusProgrammeVersion>(
      where: where?.call(CampusProgrammeVersion.t),
      orderBy: orderBy?.call(CampusProgrammeVersion.t),
      orderByList: orderByList?.call(CampusProgrammeVersion.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusProgrammeVersion] by its [id] or null if no such row exists.
  Future<CampusProgrammeVersion?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusProgrammeVersion>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusProgrammeVersion]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusProgrammeVersion]s will have their `id` fields set.
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
  Future<List<CampusProgrammeVersion>> insert(
    _is.DatabaseSession session,
    List<CampusProgrammeVersion> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusProgrammeVersion>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusProgrammeVersion] and returns the inserted row.
  ///
  /// The returned [CampusProgrammeVersion] will have its `id` field set.
  Future<CampusProgrammeVersion> insertRow(
    _is.DatabaseSession session,
    CampusProgrammeVersion row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusProgrammeVersion>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusProgrammeVersion]s in the list and returns the resulting rows.
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
  /// The returned [CampusProgrammeVersion]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusProgrammeVersion>> upsert(
    _is.DatabaseSession session,
    List<CampusProgrammeVersion> rows, {
    required _is.ColumnSelections<CampusProgrammeVersionTable> conflictColumns,
    _is.ColumnSelections<CampusProgrammeVersionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusProgrammeVersionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusProgrammeVersion>(
      rows,
      conflictColumns: conflictColumns(CampusProgrammeVersion.t),
      updateColumns: updateColumns?.call(CampusProgrammeVersion.t),
      updateWhere: updateWhere?.call(CampusProgrammeVersion.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusProgrammeVersion] and returns the resulting row.
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
  /// The returned [CampusProgrammeVersion] will have its `id` field set.
  Future<CampusProgrammeVersion?> upsertRow(
    _is.DatabaseSession session,
    CampusProgrammeVersion row, {
    required _is.ColumnSelections<CampusProgrammeVersionTable> conflictColumns,
    _is.ColumnSelections<CampusProgrammeVersionTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusProgrammeVersionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusProgrammeVersion>(
      row,
      conflictColumns: conflictColumns(CampusProgrammeVersion.t),
      updateColumns: updateColumns?.call(CampusProgrammeVersion.t),
      updateWhere: updateWhere?.call(CampusProgrammeVersion.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusProgrammeVersion]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusProgrammeVersion>> update(
    _is.DatabaseSession session,
    List<CampusProgrammeVersion> rows, {
    _is.ColumnSelections<CampusProgrammeVersionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusProgrammeVersion>(
      rows,
      columns: columns?.call(CampusProgrammeVersion.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusProgrammeVersion]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusProgrammeVersion> updateRow(
    _is.DatabaseSession session,
    CampusProgrammeVersion row, {
    _is.ColumnSelections<CampusProgrammeVersionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusProgrammeVersion>(
      row,
      columns: columns?.call(CampusProgrammeVersion.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusProgrammeVersion] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusProgrammeVersion?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusProgrammeVersionUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusProgrammeVersion>(
      id,
      columnValues: columnValues(CampusProgrammeVersion.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusProgrammeVersion]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusProgrammeVersion>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusProgrammeVersionUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusProgrammeVersionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusProgrammeVersionTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeVersionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusProgrammeVersion>(
      columnValues: columnValues(CampusProgrammeVersion.t.updateTable),
      where: where(CampusProgrammeVersion.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusProgrammeVersion.t),
      orderByList: orderByList?.call(CampusProgrammeVersion.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusProgrammeVersion]s in the list and returns the deleted rows.
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
  Future<List<CampusProgrammeVersion>> delete(
    _is.DatabaseSession session,
    List<CampusProgrammeVersion> rows, {
    _is.OrderByBuilder<CampusProgrammeVersionTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeVersionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusProgrammeVersion>(
      rows,
      orderBy: orderBy?.call(CampusProgrammeVersion.t),
      orderByList: orderByList?.call(CampusProgrammeVersion.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusProgrammeVersion].
  Future<CampusProgrammeVersion> deleteRow(
    _is.DatabaseSession session,
    CampusProgrammeVersion row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusProgrammeVersion>(
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
  Future<List<CampusProgrammeVersion>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusProgrammeVersionTable> where,
    _is.OrderByBuilder<CampusProgrammeVersionTable>? orderBy,
    _is.OrderByListBuilder<CampusProgrammeVersionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusProgrammeVersion>(
      where: where(CampusProgrammeVersion.t),
      orderBy: orderBy?.call(CampusProgrammeVersion.t),
      orderByList: orderByList?.call(CampusProgrammeVersion.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusProgrammeVersionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusProgrammeVersion>(
      where: where?.call(CampusProgrammeVersion.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusProgrammeVersion] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusProgrammeVersionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusProgrammeVersion>(
      where: where(CampusProgrammeVersion.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
