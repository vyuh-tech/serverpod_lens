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
abstract class CampusStudentDocument
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusStudentDocument._({
    this.id,
    required this.studentId,
    required this.title,
    required this.documentType,
    required this.fileUrl,
    required this.verified,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentDocument({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required String title,
    required String documentType,
    required String fileUrl,
    required bool verified,
    DateTime? createdAt,
  }) = _CampusStudentDocumentImpl;

  factory CampusStudentDocument.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusStudentDocument(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      title: jsonSerialization['title'] as String,
      documentType: jsonSerialization['documentType'] as String,
      fileUrl: jsonSerialization['fileUrl'] as String,
      verified: _is.BoolJsonExtension.fromJson(jsonSerialization['verified']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusStudentDocumentTable();

  static const db = CampusStudentDocumentRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  String title;

  String documentType;

  String fileUrl;

  bool verified;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusStudentDocument]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusStudentDocument copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    String? title,
    String? documentType,
    String? fileUrl,
    bool? verified,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentDocument',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'title': title,
      'documentType': documentType,
      'fileUrl': fileUrl,
      'verified': verified,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentDocument',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'title': title,
      'documentType': documentType,
      'fileUrl': fileUrl,
      'verified': verified,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusStudentDocumentInclude include() {
    return CampusStudentDocumentInclude._();
  }

  static CampusStudentDocumentIncludeList includeList({
    _is.WhereExpressionBuilder<CampusStudentDocumentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentDocumentTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentDocumentTable>? orderByList,
    CampusStudentDocumentInclude? include,
  }) {
    return CampusStudentDocumentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentDocument.t),
      orderByList: orderByList?.call(CampusStudentDocument.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentDocumentImpl extends CampusStudentDocument {
  _CampusStudentDocumentImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required String title,
    required String documentType,
    required String fileUrl,
    required bool verified,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         title: title,
         documentType: documentType,
         fileUrl: fileUrl,
         verified: verified,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentDocument]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusStudentDocument copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    String? title,
    String? documentType,
    String? fileUrl,
    bool? verified,
    DateTime? createdAt,
  }) {
    return CampusStudentDocument(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      title: title ?? this.title,
      documentType: documentType ?? this.documentType,
      fileUrl: fileUrl ?? this.fileUrl,
      verified: verified ?? this.verified,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusStudentDocumentUpdateTable
    extends _is.UpdateTable<CampusStudentDocumentTable> {
  CampusStudentDocumentUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> studentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.studentId,
    value,
  );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<String, String> documentType(String value) => _is.ColumnValue(
    table.documentType,
    value,
  );

  _is.ColumnValue<String, String> fileUrl(String value) => _is.ColumnValue(
    table.fileUrl,
    value,
  );

  _is.ColumnValue<bool, bool> verified(bool value) => _is.ColumnValue(
    table.verified,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusStudentDocumentTable extends _is.Table<_is.UuidValue?> {
  CampusStudentDocumentTable({super.tableRelation})
    : super(tableName: 'campus_student_documents') {
    updateTable = CampusStudentDocumentUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    documentType = _is.ColumnString(
      'documentType',
      this,
    );
    fileUrl = _is.ColumnString(
      'fileUrl',
      this,
    );
    verified = _is.ColumnBool(
      'verified',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusStudentDocumentUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnString title;

  late final _is.ColumnString documentType;

  late final _is.ColumnString fileUrl;

  late final _is.ColumnBool verified;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    title,
    documentType,
    fileUrl,
    verified,
    createdAt,
  ];
}

class CampusStudentDocumentInclude extends _is.IncludeObject {
  CampusStudentDocumentInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentDocument.t;
}

class CampusStudentDocumentIncludeList extends _is.IncludeList {
  CampusStudentDocumentIncludeList._({
    _is.WhereExpressionBuilder<CampusStudentDocumentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusStudentDocument.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentDocument.t;
}

class CampusStudentDocumentRepository {
  const CampusStudentDocumentRepository._();

  /// Returns a list of [CampusStudentDocument]s matching the given query parameters.
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
  Future<List<CampusStudentDocument>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentDocumentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentDocumentTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentDocumentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusStudentDocument>(
      where: where?.call(CampusStudentDocument.t),
      orderBy: orderBy?.call(CampusStudentDocument.t),
      orderByList: orderByList?.call(CampusStudentDocument.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusStudentDocument] matching the given query parameters.
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
  Future<CampusStudentDocument?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentDocumentTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusStudentDocumentTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentDocumentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusStudentDocument>(
      where: where?.call(CampusStudentDocument.t),
      orderBy: orderBy?.call(CampusStudentDocument.t),
      orderByList: orderByList?.call(CampusStudentDocument.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusStudentDocument] by its [id] or null if no such row exists.
  Future<CampusStudentDocument?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusStudentDocument>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusStudentDocument]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusStudentDocument]s will have their `id` fields set.
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
  Future<List<CampusStudentDocument>> insert(
    _is.DatabaseSession session,
    List<CampusStudentDocument> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusStudentDocument>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusStudentDocument] and returns the inserted row.
  ///
  /// The returned [CampusStudentDocument] will have its `id` field set.
  Future<CampusStudentDocument> insertRow(
    _is.DatabaseSession session,
    CampusStudentDocument row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusStudentDocument>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusStudentDocument]s in the list and returns the resulting rows.
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
  /// The returned [CampusStudentDocument]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentDocument>> upsert(
    _is.DatabaseSession session,
    List<CampusStudentDocument> rows, {
    required _is.ColumnSelections<CampusStudentDocumentTable> conflictColumns,
    _is.ColumnSelections<CampusStudentDocumentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentDocumentTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusStudentDocument>(
      rows,
      conflictColumns: conflictColumns(CampusStudentDocument.t),
      updateColumns: updateColumns?.call(CampusStudentDocument.t),
      updateWhere: updateWhere?.call(CampusStudentDocument.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusStudentDocument] and returns the resulting row.
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
  /// The returned [CampusStudentDocument] will have its `id` field set.
  Future<CampusStudentDocument?> upsertRow(
    _is.DatabaseSession session,
    CampusStudentDocument row, {
    required _is.ColumnSelections<CampusStudentDocumentTable> conflictColumns,
    _is.ColumnSelections<CampusStudentDocumentTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentDocumentTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusStudentDocument>(
      row,
      conflictColumns: conflictColumns(CampusStudentDocument.t),
      updateColumns: updateColumns?.call(CampusStudentDocument.t),
      updateWhere: updateWhere?.call(CampusStudentDocument.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentDocument]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentDocument>> update(
    _is.DatabaseSession session,
    List<CampusStudentDocument> rows, {
    _is.ColumnSelections<CampusStudentDocumentTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusStudentDocument>(
      rows,
      columns: columns?.call(CampusStudentDocument.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusStudentDocument]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusStudentDocument> updateRow(
    _is.DatabaseSession session,
    CampusStudentDocument row, {
    _is.ColumnSelections<CampusStudentDocumentTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusStudentDocument>(
      row,
      columns: columns?.call(CampusStudentDocument.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusStudentDocument] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusStudentDocument?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusStudentDocumentUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusStudentDocument>(
      id,
      columnValues: columnValues(CampusStudentDocument.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentDocument]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentDocument>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusStudentDocumentUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusStudentDocumentTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentDocumentTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentDocumentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusStudentDocument>(
      columnValues: columnValues(CampusStudentDocument.t.updateTable),
      where: where(CampusStudentDocument.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentDocument.t),
      orderByList: orderByList?.call(CampusStudentDocument.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusStudentDocument]s in the list and returns the deleted rows.
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
  Future<List<CampusStudentDocument>> delete(
    _is.DatabaseSession session,
    List<CampusStudentDocument> rows, {
    _is.OrderByBuilder<CampusStudentDocumentTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentDocumentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusStudentDocument>(
      rows,
      orderBy: orderBy?.call(CampusStudentDocument.t),
      orderByList: orderByList?.call(CampusStudentDocument.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusStudentDocument].
  Future<CampusStudentDocument> deleteRow(
    _is.DatabaseSession session,
    CampusStudentDocument row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusStudentDocument>(
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
  Future<List<CampusStudentDocument>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentDocumentTable> where,
    _is.OrderByBuilder<CampusStudentDocumentTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentDocumentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusStudentDocument>(
      where: where(CampusStudentDocument.t),
      orderBy: orderBy?.call(CampusStudentDocument.t),
      orderByList: orderByList?.call(CampusStudentDocument.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentDocumentTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusStudentDocument>(
      where: where?.call(CampusStudentDocument.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusStudentDocument] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentDocumentTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusStudentDocument>(
      where: where(CampusStudentDocument.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
