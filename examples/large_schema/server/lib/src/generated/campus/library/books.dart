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

/// Fictional university fixture: library.
abstract class CampusBook
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusBook._({
    this.id,
    required this.title,
    required this.subject,
    required this.language,
    required this.tags,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusBook({
    _is.UuidValue? id,
    required String title,
    required String subject,
    required String language,
    required List<String> tags,
    DateTime? createdAt,
  }) = _CampusBookImpl;

  factory CampusBook.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusBook(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      title: jsonSerialization['title'] as String,
      subject: jsonSerialization['subject'] as String,
      language: jsonSerialization['language'] as String,
      tags: _ioh8es0p.Protocol().deserialize<List<String>>(
        jsonSerialization['tags'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusBookTable();

  static const db = CampusBookRepository._();

  @override
  _is.UuidValue? id;

  String title;

  String subject;

  String language;

  List<String> tags;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusBook]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusBook copyWith({
    _is.UuidValue? id,
    String? title,
    String? subject,
    String? language,
    List<String>? tags,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusBook',
      if (id != null) 'id': id?.toJson(),
      'title': title,
      'subject': subject,
      'language': language,
      'tags': tags.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusBook',
      if (id != null) 'id': id?.toJson(),
      'title': title,
      'subject': subject,
      'language': language,
      'tags': tags.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusBookInclude include() {
    return CampusBookInclude._();
  }

  static CampusBookIncludeList includeList({
    _is.WhereExpressionBuilder<CampusBookTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBookTable>? orderBy,
    _is.OrderByListBuilder<CampusBookTable>? orderByList,
    CampusBookInclude? include,
  }) {
    return CampusBookIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusBook.t),
      orderByList: orderByList?.call(CampusBook.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusBookImpl extends CampusBook {
  _CampusBookImpl({
    _is.UuidValue? id,
    required String title,
    required String subject,
    required String language,
    required List<String> tags,
    DateTime? createdAt,
  }) : super._(
         id: id,
         title: title,
         subject: subject,
         language: language,
         tags: tags,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusBook]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusBook copyWith({
    Object? id = _Undefined,
    String? title,
    String? subject,
    String? language,
    List<String>? tags,
    DateTime? createdAt,
  }) {
    return CampusBook(
      id: id is _is.UuidValue? ? id : this.id,
      title: title ?? this.title,
      subject: subject ?? this.subject,
      language: language ?? this.language,
      tags: tags ?? this.tags.map((e0) => e0).toList(),
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusBookUpdateTable extends _is.UpdateTable<CampusBookTable> {
  CampusBookUpdateTable(super.table);

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<String, String> subject(String value) => _is.ColumnValue(
    table.subject,
    value,
  );

  _is.ColumnValue<String, String> language(String value) => _is.ColumnValue(
    table.language,
    value,
  );

  _is.ColumnValue<List<String>, List<String>> tags(List<String> value) =>
      _is.ColumnValue(
        table.tags,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusBookTable extends _is.Table<_is.UuidValue?> {
  CampusBookTable({super.tableRelation}) : super(tableName: 'campus_books') {
    updateTable = CampusBookUpdateTable(this);
    title = _is.ColumnString(
      'title',
      this,
    );
    subject = _is.ColumnString(
      'subject',
      this,
    );
    language = _is.ColumnString(
      'language',
      this,
    );
    tags = _is.ColumnSerializable<List<String>>(
      'tags',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusBookUpdateTable updateTable;

  late final _is.ColumnString title;

  late final _is.ColumnString subject;

  late final _is.ColumnString language;

  late final _is.ColumnSerializable<List<String>> tags;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    title,
    subject,
    language,
    tags,
    createdAt,
  ];
}

class CampusBookInclude extends _is.IncludeObject {
  CampusBookInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusBook.t;
}

class CampusBookIncludeList extends _is.IncludeList {
  CampusBookIncludeList._({
    _is.WhereExpressionBuilder<CampusBookTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusBook.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusBook.t;
}

class CampusBookRepository {
  const CampusBookRepository._();

  /// Returns a list of [CampusBook]s matching the given query parameters.
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
  Future<List<CampusBook>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBookTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBookTable>? orderBy,
    _is.OrderByListBuilder<CampusBookTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusBook>(
      where: where?.call(CampusBook.t),
      orderBy: orderBy?.call(CampusBook.t),
      orderByList: orderByList?.call(CampusBook.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusBook] matching the given query parameters.
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
  Future<CampusBook?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBookTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusBookTable>? orderBy,
    _is.OrderByListBuilder<CampusBookTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusBook>(
      where: where?.call(CampusBook.t),
      orderBy: orderBy?.call(CampusBook.t),
      orderByList: orderByList?.call(CampusBook.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusBook] by its [id] or null if no such row exists.
  Future<CampusBook?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusBook>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusBook]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusBook]s will have their `id` fields set.
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
  Future<List<CampusBook>> insert(
    _is.DatabaseSession session,
    List<CampusBook> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusBook>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusBook] and returns the inserted row.
  ///
  /// The returned [CampusBook] will have its `id` field set.
  Future<CampusBook> insertRow(
    _is.DatabaseSession session,
    CampusBook row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusBook>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusBook]s in the list and returns the resulting rows.
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
  /// The returned [CampusBook]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBook>> upsert(
    _is.DatabaseSession session,
    List<CampusBook> rows, {
    required _is.ColumnSelections<CampusBookTable> conflictColumns,
    _is.ColumnSelections<CampusBookTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusBookTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusBook>(
      rows,
      conflictColumns: conflictColumns(CampusBook.t),
      updateColumns: updateColumns?.call(CampusBook.t),
      updateWhere: updateWhere?.call(CampusBook.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusBook] and returns the resulting row.
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
  /// The returned [CampusBook] will have its `id` field set.
  Future<CampusBook?> upsertRow(
    _is.DatabaseSession session,
    CampusBook row, {
    required _is.ColumnSelections<CampusBookTable> conflictColumns,
    _is.ColumnSelections<CampusBookTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusBookTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusBook>(
      row,
      conflictColumns: conflictColumns(CampusBook.t),
      updateColumns: updateColumns?.call(CampusBook.t),
      updateWhere: updateWhere?.call(CampusBook.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusBook]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBook>> update(
    _is.DatabaseSession session,
    List<CampusBook> rows, {
    _is.ColumnSelections<CampusBookTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusBook>(
      rows,
      columns: columns?.call(CampusBook.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusBook]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusBook> updateRow(
    _is.DatabaseSession session,
    CampusBook row, {
    _is.ColumnSelections<CampusBookTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusBook>(
      row,
      columns: columns?.call(CampusBook.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusBook] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusBook?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusBookUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusBook>(
      id,
      columnValues: columnValues(CampusBook.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusBook]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusBook>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusBookUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CampusBookTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusBookTable>? orderBy,
    _is.OrderByListBuilder<CampusBookTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusBook>(
      columnValues: columnValues(CampusBook.t.updateTable),
      where: where(CampusBook.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusBook.t),
      orderByList: orderByList?.call(CampusBook.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusBook]s in the list and returns the deleted rows.
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
  Future<List<CampusBook>> delete(
    _is.DatabaseSession session,
    List<CampusBook> rows, {
    _is.OrderByBuilder<CampusBookTable>? orderBy,
    _is.OrderByListBuilder<CampusBookTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusBook>(
      rows,
      orderBy: orderBy?.call(CampusBook.t),
      orderByList: orderByList?.call(CampusBook.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusBook].
  Future<CampusBook> deleteRow(
    _is.DatabaseSession session,
    CampusBook row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusBook>(
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
  Future<List<CampusBook>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusBookTable> where,
    _is.OrderByBuilder<CampusBookTable>? orderBy,
    _is.OrderByListBuilder<CampusBookTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusBook>(
      where: where(CampusBook.t),
      orderBy: orderBy?.call(CampusBook.t),
      orderByList: orderByList?.call(CampusBook.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusBookTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusBook>(
      where: where?.call(CampusBook.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusBook] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusBookTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusBook>(
      where: where(CampusBook.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
