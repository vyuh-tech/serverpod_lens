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

/// Fictional university fixture: research.
abstract class CampusPublication
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusPublication._({
    this.id,
    required this.projectId,
    required this.title,
    this.doi,
    this.publishedAt,
    this.venue,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusPublication({
    _is.UuidValue? id,
    required _is.UuidValue projectId,
    required String title,
    String? doi,
    DateTime? publishedAt,
    String? venue,
    DateTime? createdAt,
  }) = _CampusPublicationImpl;

  factory CampusPublication.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusPublication(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      projectId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['projectId'],
      ),
      title: jsonSerialization['title'] as String,
      doi: jsonSerialization['doi'] as String?,
      publishedAt: jsonSerialization['publishedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['publishedAt'],
            ),
      venue: jsonSerialization['venue'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusPublicationTable();

  static const db = CampusPublicationRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue projectId;

  String title;

  String? doi;

  DateTime? publishedAt;

  String? venue;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusPublication]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusPublication copyWith({
    _is.UuidValue? id,
    _is.UuidValue? projectId,
    String? title,
    String? doi,
    DateTime? publishedAt,
    String? venue,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusPublication',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'title': title,
      if (doi != null) 'doi': doi,
      if (publishedAt != null) 'publishedAt': publishedAt?.toJson(),
      if (venue != null) 'venue': venue,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusPublication',
      if (id != null) 'id': id?.toJson(),
      'projectId': projectId.toJson(),
      'title': title,
      if (doi != null) 'doi': doi,
      if (publishedAt != null) 'publishedAt': publishedAt?.toJson(),
      if (venue != null) 'venue': venue,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusPublicationInclude include() {
    return CampusPublicationInclude._();
  }

  static CampusPublicationIncludeList includeList({
    _is.WhereExpressionBuilder<CampusPublicationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPublicationTable>? orderBy,
    _is.OrderByListBuilder<CampusPublicationTable>? orderByList,
    CampusPublicationInclude? include,
  }) {
    return CampusPublicationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusPublication.t),
      orderByList: orderByList?.call(CampusPublication.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusPublicationImpl extends CampusPublication {
  _CampusPublicationImpl({
    _is.UuidValue? id,
    required _is.UuidValue projectId,
    required String title,
    String? doi,
    DateTime? publishedAt,
    String? venue,
    DateTime? createdAt,
  }) : super._(
         id: id,
         projectId: projectId,
         title: title,
         doi: doi,
         publishedAt: publishedAt,
         venue: venue,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusPublication]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusPublication copyWith({
    Object? id = _Undefined,
    _is.UuidValue? projectId,
    String? title,
    Object? doi = _Undefined,
    Object? publishedAt = _Undefined,
    Object? venue = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusPublication(
      id: id is _is.UuidValue? ? id : this.id,
      projectId: projectId ?? this.projectId,
      title: title ?? this.title,
      doi: doi is String? ? doi : this.doi,
      publishedAt: publishedAt is DateTime? ? publishedAt : this.publishedAt,
      venue: venue is String? ? venue : this.venue,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusPublicationUpdateTable
    extends _is.UpdateTable<CampusPublicationTable> {
  CampusPublicationUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> projectId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.projectId,
    value,
  );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<String, String> doi(String? value) => _is.ColumnValue(
    table.doi,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> publishedAt(DateTime? value) =>
      _is.ColumnValue(
        table.publishedAt,
        value,
      );

  _is.ColumnValue<String, String> venue(String? value) => _is.ColumnValue(
    table.venue,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusPublicationTable extends _is.Table<_is.UuidValue?> {
  CampusPublicationTable({super.tableRelation})
    : super(tableName: 'campus_publications') {
    updateTable = CampusPublicationUpdateTable(this);
    projectId = _is.ColumnUuid(
      'projectId',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    doi = _is.ColumnString(
      'doi',
      this,
    );
    publishedAt = _is.ColumnDateTime(
      'publishedAt',
      this,
    );
    venue = _is.ColumnString(
      'venue',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusPublicationUpdateTable updateTable;

  late final _is.ColumnUuid projectId;

  late final _is.ColumnString title;

  late final _is.ColumnString doi;

  late final _is.ColumnDateTime publishedAt;

  late final _is.ColumnString venue;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    projectId,
    title,
    doi,
    publishedAt,
    venue,
    createdAt,
  ];
}

class CampusPublicationInclude extends _is.IncludeObject {
  CampusPublicationInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusPublication.t;
}

class CampusPublicationIncludeList extends _is.IncludeList {
  CampusPublicationIncludeList._({
    _is.WhereExpressionBuilder<CampusPublicationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusPublication.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusPublication.t;
}

class CampusPublicationRepository {
  const CampusPublicationRepository._();

  /// Returns a list of [CampusPublication]s matching the given query parameters.
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
  Future<List<CampusPublication>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPublicationTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPublicationTable>? orderBy,
    _is.OrderByListBuilder<CampusPublicationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusPublication>(
      where: where?.call(CampusPublication.t),
      orderBy: orderBy?.call(CampusPublication.t),
      orderByList: orderByList?.call(CampusPublication.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusPublication] matching the given query parameters.
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
  Future<CampusPublication?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPublicationTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusPublicationTable>? orderBy,
    _is.OrderByListBuilder<CampusPublicationTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusPublication>(
      where: where?.call(CampusPublication.t),
      orderBy: orderBy?.call(CampusPublication.t),
      orderByList: orderByList?.call(CampusPublication.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusPublication] by its [id] or null if no such row exists.
  Future<CampusPublication?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusPublication>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusPublication]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusPublication]s will have their `id` fields set.
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
  Future<List<CampusPublication>> insert(
    _is.DatabaseSession session,
    List<CampusPublication> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusPublication>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusPublication] and returns the inserted row.
  ///
  /// The returned [CampusPublication] will have its `id` field set.
  Future<CampusPublication> insertRow(
    _is.DatabaseSession session,
    CampusPublication row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusPublication>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusPublication]s in the list and returns the resulting rows.
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
  /// The returned [CampusPublication]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPublication>> upsert(
    _is.DatabaseSession session,
    List<CampusPublication> rows, {
    required _is.ColumnSelections<CampusPublicationTable> conflictColumns,
    _is.ColumnSelections<CampusPublicationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusPublicationTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusPublication>(
      rows,
      conflictColumns: conflictColumns(CampusPublication.t),
      updateColumns: updateColumns?.call(CampusPublication.t),
      updateWhere: updateWhere?.call(CampusPublication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusPublication] and returns the resulting row.
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
  /// The returned [CampusPublication] will have its `id` field set.
  Future<CampusPublication?> upsertRow(
    _is.DatabaseSession session,
    CampusPublication row, {
    required _is.ColumnSelections<CampusPublicationTable> conflictColumns,
    _is.ColumnSelections<CampusPublicationTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusPublicationTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusPublication>(
      row,
      conflictColumns: conflictColumns(CampusPublication.t),
      updateColumns: updateColumns?.call(CampusPublication.t),
      updateWhere: updateWhere?.call(CampusPublication.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusPublication]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPublication>> update(
    _is.DatabaseSession session,
    List<CampusPublication> rows, {
    _is.ColumnSelections<CampusPublicationTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusPublication>(
      rows,
      columns: columns?.call(CampusPublication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusPublication]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusPublication> updateRow(
    _is.DatabaseSession session,
    CampusPublication row, {
    _is.ColumnSelections<CampusPublicationTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusPublication>(
      row,
      columns: columns?.call(CampusPublication.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusPublication] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusPublication?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusPublicationUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusPublication>(
      id,
      columnValues: columnValues(CampusPublication.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusPublication]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusPublication>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusPublicationUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusPublicationTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusPublicationTable>? orderBy,
    _is.OrderByListBuilder<CampusPublicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusPublication>(
      columnValues: columnValues(CampusPublication.t.updateTable),
      where: where(CampusPublication.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusPublication.t),
      orderByList: orderByList?.call(CampusPublication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusPublication]s in the list and returns the deleted rows.
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
  Future<List<CampusPublication>> delete(
    _is.DatabaseSession session,
    List<CampusPublication> rows, {
    _is.OrderByBuilder<CampusPublicationTable>? orderBy,
    _is.OrderByListBuilder<CampusPublicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusPublication>(
      rows,
      orderBy: orderBy?.call(CampusPublication.t),
      orderByList: orderByList?.call(CampusPublication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusPublication].
  Future<CampusPublication> deleteRow(
    _is.DatabaseSession session,
    CampusPublication row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusPublication>(
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
  Future<List<CampusPublication>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusPublicationTable> where,
    _is.OrderByBuilder<CampusPublicationTable>? orderBy,
    _is.OrderByListBuilder<CampusPublicationTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusPublication>(
      where: where(CampusPublication.t),
      orderBy: orderBy?.call(CampusPublication.t),
      orderByList: orderByList?.call(CampusPublication.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusPublicationTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusPublication>(
      where: where?.call(CampusPublication.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusPublication] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusPublicationTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusPublication>(
      where: where(CampusPublication.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
