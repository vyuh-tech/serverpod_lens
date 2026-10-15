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
abstract class CampusApplicationDocument
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusApplicationDocument._({
    this.id,
    required this.applicationId,
    required this.documentId,
    required this.required,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusApplicationDocument({
    _is.UuidValue? id,
    required _is.UuidValue applicationId,
    required _is.UuidValue documentId,
    required bool required,
    DateTime? createdAt,
  }) = _CampusApplicationDocumentImpl;

  factory CampusApplicationDocument.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusApplicationDocument(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      applicationId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['applicationId'],
      ),
      documentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['documentId'],
      ),
      required: _is.BoolJsonExtension.fromJson(jsonSerialization['required']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusApplicationDocumentTable();

  static const db = CampusApplicationDocumentRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue applicationId;

  _is.UuidValue documentId;

  bool required;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusApplicationDocument]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusApplicationDocument copyWith({
    _is.UuidValue? id,
    _is.UuidValue? applicationId,
    _is.UuidValue? documentId,
    bool? required,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusApplicationDocument',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'documentId': documentId.toJson(),
      'required': required,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusApplicationDocument',
      if (id != null) 'id': id?.toJson(),
      'applicationId': applicationId.toJson(),
      'documentId': documentId.toJson(),
      'required': required,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusApplicationDocumentInclude include() {
    return CampusApplicationDocumentInclude._();
  }

  static CampusApplicationDocumentIncludeList includeList({
    _is.WhereExpressionBuilder<CampusApplicationDocumentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusApplicationDocumentTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationDocumentTable>? orderByList,
    CampusApplicationDocumentInclude? include,
  }) {
    return CampusApplicationDocumentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusApplicationDocument.t),
      orderByList: orderByList?.call(CampusApplicationDocument.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusApplicationDocumentImpl extends CampusApplicationDocument {
  _CampusApplicationDocumentImpl({
    _is.UuidValue? id,
    required _is.UuidValue applicationId,
    required _is.UuidValue documentId,
    required bool required,
    DateTime? createdAt,
  }) : super._(
         id: id,
         applicationId: applicationId,
         documentId: documentId,
         required: required,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusApplicationDocument]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusApplicationDocument copyWith({
    Object? id = _Undefined,
    _is.UuidValue? applicationId,
    _is.UuidValue? documentId,
    bool? required,
    DateTime? createdAt,
  }) {
    return CampusApplicationDocument(
      id: id is _is.UuidValue? ? id : this.id,
      applicationId: applicationId ?? this.applicationId,
      documentId: documentId ?? this.documentId,
      required: required ?? this.required,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusApplicationDocumentUpdateTable
    extends _is.UpdateTable<CampusApplicationDocumentTable> {
  CampusApplicationDocumentUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> applicationId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.applicationId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> documentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.documentId,
    value,
  );

  _is.ColumnValue<bool, bool> required(bool value) => _is.ColumnValue(
    table.required,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusApplicationDocumentTable extends _is.Table<_is.UuidValue?> {
  CampusApplicationDocumentTable({super.tableRelation})
    : super(tableName: 'campus_application_documents') {
    updateTable = CampusApplicationDocumentUpdateTable(this);
    applicationId = _is.ColumnUuid(
      'applicationId',
      this,
    );
    documentId = _is.ColumnUuid(
      'documentId',
      this,
    );
    required = _is.ColumnBool(
      'required',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusApplicationDocumentUpdateTable updateTable;

  late final _is.ColumnUuid applicationId;

  late final _is.ColumnUuid documentId;

  late final _is.ColumnBool required;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    applicationId,
    documentId,
    required,
    createdAt,
  ];
}

class CampusApplicationDocumentInclude extends _is.IncludeObject {
  CampusApplicationDocumentInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusApplicationDocument.t;
}

class CampusApplicationDocumentIncludeList extends _is.IncludeList {
  CampusApplicationDocumentIncludeList._({
    _is.WhereExpressionBuilder<CampusApplicationDocumentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusApplicationDocument.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusApplicationDocument.t;
}

class CampusApplicationDocumentRepository {
  const CampusApplicationDocumentRepository._();

  /// Returns a list of [CampusApplicationDocument]s matching the given query parameters.
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
  Future<List<CampusApplicationDocument>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusApplicationDocumentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusApplicationDocumentTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationDocumentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusApplicationDocument>(
      where: where?.call(CampusApplicationDocument.t),
      orderBy: orderBy?.call(CampusApplicationDocument.t),
      orderByList: orderByList?.call(CampusApplicationDocument.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusApplicationDocument] matching the given query parameters.
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
  Future<CampusApplicationDocument?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusApplicationDocumentTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusApplicationDocumentTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationDocumentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusApplicationDocument>(
      where: where?.call(CampusApplicationDocument.t),
      orderBy: orderBy?.call(CampusApplicationDocument.t),
      orderByList: orderByList?.call(CampusApplicationDocument.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusApplicationDocument] by its [id] or null if no such row exists.
  Future<CampusApplicationDocument?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusApplicationDocument>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusApplicationDocument]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusApplicationDocument]s will have their `id` fields set.
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
  Future<List<CampusApplicationDocument>> insert(
    _is.DatabaseSession session,
    List<CampusApplicationDocument> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusApplicationDocument>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusApplicationDocument] and returns the inserted row.
  ///
  /// The returned [CampusApplicationDocument] will have its `id` field set.
  Future<CampusApplicationDocument> insertRow(
    _is.DatabaseSession session,
    CampusApplicationDocument row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusApplicationDocument>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusApplicationDocument]s in the list and returns the resulting rows.
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
  /// The returned [CampusApplicationDocument]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusApplicationDocument>> upsert(
    _is.DatabaseSession session,
    List<CampusApplicationDocument> rows, {
    required _is.ColumnSelections<CampusApplicationDocumentTable>
    conflictColumns,
    _is.ColumnSelections<CampusApplicationDocumentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusApplicationDocumentTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusApplicationDocument>(
      rows,
      conflictColumns: conflictColumns(CampusApplicationDocument.t),
      updateColumns: updateColumns?.call(CampusApplicationDocument.t),
      updateWhere: updateWhere?.call(CampusApplicationDocument.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusApplicationDocument] and returns the resulting row.
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
  /// The returned [CampusApplicationDocument] will have its `id` field set.
  Future<CampusApplicationDocument?> upsertRow(
    _is.DatabaseSession session,
    CampusApplicationDocument row, {
    required _is.ColumnSelections<CampusApplicationDocumentTable>
    conflictColumns,
    _is.ColumnSelections<CampusApplicationDocumentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusApplicationDocumentTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusApplicationDocument>(
      row,
      conflictColumns: conflictColumns(CampusApplicationDocument.t),
      updateColumns: updateColumns?.call(CampusApplicationDocument.t),
      updateWhere: updateWhere?.call(CampusApplicationDocument.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusApplicationDocument]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusApplicationDocument>> update(
    _is.DatabaseSession session,
    List<CampusApplicationDocument> rows, {
    _is.ColumnSelections<CampusApplicationDocumentTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusApplicationDocument>(
      rows,
      columns: columns?.call(CampusApplicationDocument.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusApplicationDocument]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusApplicationDocument> updateRow(
    _is.DatabaseSession session,
    CampusApplicationDocument row, {
    _is.ColumnSelections<CampusApplicationDocumentTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusApplicationDocument>(
      row,
      columns: columns?.call(CampusApplicationDocument.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusApplicationDocument] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusApplicationDocument?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusApplicationDocumentUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusApplicationDocument>(
      id,
      columnValues: columnValues(CampusApplicationDocument.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusApplicationDocument]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusApplicationDocument>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusApplicationDocumentUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusApplicationDocumentTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusApplicationDocumentTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationDocumentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusApplicationDocument>(
      columnValues: columnValues(CampusApplicationDocument.t.updateTable),
      where: where(CampusApplicationDocument.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusApplicationDocument.t),
      orderByList: orderByList?.call(CampusApplicationDocument.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusApplicationDocument]s in the list and returns the deleted rows.
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
  Future<List<CampusApplicationDocument>> delete(
    _is.DatabaseSession session,
    List<CampusApplicationDocument> rows, {
    _is.OrderByBuilder<CampusApplicationDocumentTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationDocumentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusApplicationDocument>(
      rows,
      orderBy: orderBy?.call(CampusApplicationDocument.t),
      orderByList: orderByList?.call(CampusApplicationDocument.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusApplicationDocument].
  Future<CampusApplicationDocument> deleteRow(
    _is.DatabaseSession session,
    CampusApplicationDocument row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusApplicationDocument>(
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
  Future<List<CampusApplicationDocument>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusApplicationDocumentTable> where,
    _is.OrderByBuilder<CampusApplicationDocumentTable>? orderBy,
    _is.OrderByListBuilder<CampusApplicationDocumentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusApplicationDocument>(
      where: where(CampusApplicationDocument.t),
      orderBy: orderBy?.call(CampusApplicationDocument.t),
      orderByList: orderByList?.call(CampusApplicationDocument.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusApplicationDocumentTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusApplicationDocument>(
      where: where?.call(CampusApplicationDocument.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusApplicationDocument] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusApplicationDocumentTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusApplicationDocument>(
      where: where(CampusApplicationDocument.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
