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

/// Fictional university fixture: assessment.
abstract class CampusSubmissionFile
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusSubmissionFile._({
    this.id,
    required this.submissionId,
    required this.fileName,
    required this.fileUrl,
    required this.sizeBytes,
    this.checksum,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusSubmissionFile({
    _is.UuidValue? id,
    required _is.UuidValue submissionId,
    required String fileName,
    required String fileUrl,
    required int sizeBytes,
    String? checksum,
    DateTime? createdAt,
  }) = _CampusSubmissionFileImpl;

  factory CampusSubmissionFile.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusSubmissionFile(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      submissionId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['submissionId'],
      ),
      fileName: jsonSerialization['fileName'] as String,
      fileUrl: jsonSerialization['fileUrl'] as String,
      sizeBytes: jsonSerialization['sizeBytes'] as int,
      checksum: jsonSerialization['checksum'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusSubmissionFileTable();

  static const db = CampusSubmissionFileRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue submissionId;

  String fileName;

  String fileUrl;

  int sizeBytes;

  String? checksum;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusSubmissionFile]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusSubmissionFile copyWith({
    _is.UuidValue? id,
    _is.UuidValue? submissionId,
    String? fileName,
    String? fileUrl,
    int? sizeBytes,
    String? checksum,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusSubmissionFile',
      if (id != null) 'id': id?.toJson(),
      'submissionId': submissionId.toJson(),
      'fileName': fileName,
      'fileUrl': fileUrl,
      'sizeBytes': sizeBytes,
      if (checksum != null) 'checksum': checksum,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusSubmissionFile',
      if (id != null) 'id': id?.toJson(),
      'submissionId': submissionId.toJson(),
      'fileName': fileName,
      'fileUrl': fileUrl,
      'sizeBytes': sizeBytes,
      if (checksum != null) 'checksum': checksum,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusSubmissionFileInclude include() {
    return CampusSubmissionFileInclude._();
  }

  static CampusSubmissionFileIncludeList includeList({
    _is.WhereExpressionBuilder<CampusSubmissionFileTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSubmissionFileTable>? orderBy,
    _is.OrderByListBuilder<CampusSubmissionFileTable>? orderByList,
    CampusSubmissionFileInclude? include,
  }) {
    return CampusSubmissionFileIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSubmissionFile.t),
      orderByList: orderByList?.call(CampusSubmissionFile.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusSubmissionFileImpl extends CampusSubmissionFile {
  _CampusSubmissionFileImpl({
    _is.UuidValue? id,
    required _is.UuidValue submissionId,
    required String fileName,
    required String fileUrl,
    required int sizeBytes,
    String? checksum,
    DateTime? createdAt,
  }) : super._(
         id: id,
         submissionId: submissionId,
         fileName: fileName,
         fileUrl: fileUrl,
         sizeBytes: sizeBytes,
         checksum: checksum,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusSubmissionFile]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusSubmissionFile copyWith({
    Object? id = _Undefined,
    _is.UuidValue? submissionId,
    String? fileName,
    String? fileUrl,
    int? sizeBytes,
    Object? checksum = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusSubmissionFile(
      id: id is _is.UuidValue? ? id : this.id,
      submissionId: submissionId ?? this.submissionId,
      fileName: fileName ?? this.fileName,
      fileUrl: fileUrl ?? this.fileUrl,
      sizeBytes: sizeBytes ?? this.sizeBytes,
      checksum: checksum is String? ? checksum : this.checksum,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusSubmissionFileUpdateTable
    extends _is.UpdateTable<CampusSubmissionFileTable> {
  CampusSubmissionFileUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> submissionId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.submissionId,
    value,
  );

  _is.ColumnValue<String, String> fileName(String value) => _is.ColumnValue(
    table.fileName,
    value,
  );

  _is.ColumnValue<String, String> fileUrl(String value) => _is.ColumnValue(
    table.fileUrl,
    value,
  );

  _is.ColumnValue<int, int> sizeBytes(int value) => _is.ColumnValue(
    table.sizeBytes,
    value,
  );

  _is.ColumnValue<String, String> checksum(String? value) => _is.ColumnValue(
    table.checksum,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusSubmissionFileTable extends _is.Table<_is.UuidValue?> {
  CampusSubmissionFileTable({super.tableRelation})
    : super(tableName: 'campus_submission_files') {
    updateTable = CampusSubmissionFileUpdateTable(this);
    submissionId = _is.ColumnUuid(
      'submissionId',
      this,
    );
    fileName = _is.ColumnString(
      'fileName',
      this,
    );
    fileUrl = _is.ColumnString(
      'fileUrl',
      this,
    );
    sizeBytes = _is.ColumnInt(
      'sizeBytes',
      this,
    );
    checksum = _is.ColumnString(
      'checksum',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusSubmissionFileUpdateTable updateTable;

  late final _is.ColumnUuid submissionId;

  late final _is.ColumnString fileName;

  late final _is.ColumnString fileUrl;

  late final _is.ColumnInt sizeBytes;

  late final _is.ColumnString checksum;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    submissionId,
    fileName,
    fileUrl,
    sizeBytes,
    checksum,
    createdAt,
  ];
}

class CampusSubmissionFileInclude extends _is.IncludeObject {
  CampusSubmissionFileInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSubmissionFile.t;
}

class CampusSubmissionFileIncludeList extends _is.IncludeList {
  CampusSubmissionFileIncludeList._({
    _is.WhereExpressionBuilder<CampusSubmissionFileTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusSubmissionFile.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusSubmissionFile.t;
}

class CampusSubmissionFileRepository {
  const CampusSubmissionFileRepository._();

  /// Returns a list of [CampusSubmissionFile]s matching the given query parameters.
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
  Future<List<CampusSubmissionFile>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSubmissionFileTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSubmissionFileTable>? orderBy,
    _is.OrderByListBuilder<CampusSubmissionFileTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusSubmissionFile>(
      where: where?.call(CampusSubmissionFile.t),
      orderBy: orderBy?.call(CampusSubmissionFile.t),
      orderByList: orderByList?.call(CampusSubmissionFile.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusSubmissionFile] matching the given query parameters.
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
  Future<CampusSubmissionFile?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSubmissionFileTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusSubmissionFileTable>? orderBy,
    _is.OrderByListBuilder<CampusSubmissionFileTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusSubmissionFile>(
      where: where?.call(CampusSubmissionFile.t),
      orderBy: orderBy?.call(CampusSubmissionFile.t),
      orderByList: orderByList?.call(CampusSubmissionFile.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusSubmissionFile] by its [id] or null if no such row exists.
  Future<CampusSubmissionFile?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusSubmissionFile>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusSubmissionFile]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusSubmissionFile]s will have their `id` fields set.
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
  Future<List<CampusSubmissionFile>> insert(
    _is.DatabaseSession session,
    List<CampusSubmissionFile> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusSubmissionFile>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusSubmissionFile] and returns the inserted row.
  ///
  /// The returned [CampusSubmissionFile] will have its `id` field set.
  Future<CampusSubmissionFile> insertRow(
    _is.DatabaseSession session,
    CampusSubmissionFile row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusSubmissionFile>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusSubmissionFile]s in the list and returns the resulting rows.
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
  /// The returned [CampusSubmissionFile]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSubmissionFile>> upsert(
    _is.DatabaseSession session,
    List<CampusSubmissionFile> rows, {
    required _is.ColumnSelections<CampusSubmissionFileTable> conflictColumns,
    _is.ColumnSelections<CampusSubmissionFileTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSubmissionFileTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusSubmissionFile>(
      rows,
      conflictColumns: conflictColumns(CampusSubmissionFile.t),
      updateColumns: updateColumns?.call(CampusSubmissionFile.t),
      updateWhere: updateWhere?.call(CampusSubmissionFile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusSubmissionFile] and returns the resulting row.
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
  /// The returned [CampusSubmissionFile] will have its `id` field set.
  Future<CampusSubmissionFile?> upsertRow(
    _is.DatabaseSession session,
    CampusSubmissionFile row, {
    required _is.ColumnSelections<CampusSubmissionFileTable> conflictColumns,
    _is.ColumnSelections<CampusSubmissionFileTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusSubmissionFileTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusSubmissionFile>(
      row,
      conflictColumns: conflictColumns(CampusSubmissionFile.t),
      updateColumns: updateColumns?.call(CampusSubmissionFile.t),
      updateWhere: updateWhere?.call(CampusSubmissionFile.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSubmissionFile]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSubmissionFile>> update(
    _is.DatabaseSession session,
    List<CampusSubmissionFile> rows, {
    _is.ColumnSelections<CampusSubmissionFileTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusSubmissionFile>(
      rows,
      columns: columns?.call(CampusSubmissionFile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusSubmissionFile]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusSubmissionFile> updateRow(
    _is.DatabaseSession session,
    CampusSubmissionFile row, {
    _is.ColumnSelections<CampusSubmissionFileTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusSubmissionFile>(
      row,
      columns: columns?.call(CampusSubmissionFile.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusSubmissionFile] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusSubmissionFile?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusSubmissionFileUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusSubmissionFile>(
      id,
      columnValues: columnValues(CampusSubmissionFile.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusSubmissionFile]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusSubmissionFile>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusSubmissionFileUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusSubmissionFileTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusSubmissionFileTable>? orderBy,
    _is.OrderByListBuilder<CampusSubmissionFileTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusSubmissionFile>(
      columnValues: columnValues(CampusSubmissionFile.t.updateTable),
      where: where(CampusSubmissionFile.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusSubmissionFile.t),
      orderByList: orderByList?.call(CampusSubmissionFile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusSubmissionFile]s in the list and returns the deleted rows.
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
  Future<List<CampusSubmissionFile>> delete(
    _is.DatabaseSession session,
    List<CampusSubmissionFile> rows, {
    _is.OrderByBuilder<CampusSubmissionFileTable>? orderBy,
    _is.OrderByListBuilder<CampusSubmissionFileTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusSubmissionFile>(
      rows,
      orderBy: orderBy?.call(CampusSubmissionFile.t),
      orderByList: orderByList?.call(CampusSubmissionFile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusSubmissionFile].
  Future<CampusSubmissionFile> deleteRow(
    _is.DatabaseSession session,
    CampusSubmissionFile row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusSubmissionFile>(
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
  Future<List<CampusSubmissionFile>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSubmissionFileTable> where,
    _is.OrderByBuilder<CampusSubmissionFileTable>? orderBy,
    _is.OrderByListBuilder<CampusSubmissionFileTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusSubmissionFile>(
      where: where(CampusSubmissionFile.t),
      orderBy: orderBy?.call(CampusSubmissionFile.t),
      orderByList: orderByList?.call(CampusSubmissionFile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusSubmissionFileTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusSubmissionFile>(
      where: where?.call(CampusSubmissionFile.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusSubmissionFile] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusSubmissionFileTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusSubmissionFile>(
      where: where(CampusSubmissionFile.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
