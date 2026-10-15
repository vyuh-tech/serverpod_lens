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
abstract class CampusStudentAddress
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  CampusStudentAddress._({
    this.id,
    required this.studentId,
    required this.kind,
    required this.line1,
    required this.city,
    required this.postalCode,
    required this.countryCode,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusStudentAddress({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required String kind,
    required String line1,
    required String city,
    required String postalCode,
    required String countryCode,
    DateTime? createdAt,
  }) = _CampusStudentAddressImpl;

  factory CampusStudentAddress.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusStudentAddress(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      kind: jsonSerialization['kind'] as String,
      line1: jsonSerialization['line1'] as String,
      city: jsonSerialization['city'] as String,
      postalCode: jsonSerialization['postalCode'] as String,
      countryCode: jsonSerialization['countryCode'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CampusStudentAddressTable();

  static const db = CampusStudentAddressRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue studentId;

  String kind;

  String line1;

  String city;

  String postalCode;

  String countryCode;

  DateTime createdAt;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [CampusStudentAddress]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CampusStudentAddress copyWith({
    _is.UuidValue? id,
    _is.UuidValue? studentId,
    String? kind,
    String? line1,
    String? city,
    String? postalCode,
    String? countryCode,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusStudentAddress',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'kind': kind,
      'line1': line1,
      'city': city,
      'postalCode': postalCode,
      'countryCode': countryCode,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusStudentAddress',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      'kind': kind,
      'line1': line1,
      'city': city,
      'postalCode': postalCode,
      'countryCode': countryCode,
      'createdAt': createdAt.toJson(),
    };
  }

  static CampusStudentAddressInclude include() {
    return CampusStudentAddressInclude._();
  }

  static CampusStudentAddressIncludeList includeList({
    _is.WhereExpressionBuilder<CampusStudentAddressTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentAddressTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentAddressTable>? orderByList,
    CampusStudentAddressInclude? include,
  }) {
    return CampusStudentAddressIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentAddress.t),
      orderByList: orderByList?.call(CampusStudentAddress.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusStudentAddressImpl extends CampusStudentAddress {
  _CampusStudentAddressImpl({
    _is.UuidValue? id,
    required _is.UuidValue studentId,
    required String kind,
    required String line1,
    required String city,
    required String postalCode,
    required String countryCode,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         kind: kind,
         line1: line1,
         city: city,
         postalCode: postalCode,
         countryCode: countryCode,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusStudentAddress]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CampusStudentAddress copyWith({
    Object? id = _Undefined,
    _is.UuidValue? studentId,
    String? kind,
    String? line1,
    String? city,
    String? postalCode,
    String? countryCode,
    DateTime? createdAt,
  }) {
    return CampusStudentAddress(
      id: id is _is.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      kind: kind ?? this.kind,
      line1: line1 ?? this.line1,
      city: city ?? this.city,
      postalCode: postalCode ?? this.postalCode,
      countryCode: countryCode ?? this.countryCode,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class CampusStudentAddressUpdateTable
    extends _is.UpdateTable<CampusStudentAddressTable> {
  CampusStudentAddressUpdateTable(super.table);

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

  _is.ColumnValue<String, String> line1(String value) => _is.ColumnValue(
    table.line1,
    value,
  );

  _is.ColumnValue<String, String> city(String value) => _is.ColumnValue(
    table.city,
    value,
  );

  _is.ColumnValue<String, String> postalCode(String value) => _is.ColumnValue(
    table.postalCode,
    value,
  );

  _is.ColumnValue<String, String> countryCode(String value) => _is.ColumnValue(
    table.countryCode,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class CampusStudentAddressTable extends _is.Table<_is.UuidValue?> {
  CampusStudentAddressTable({super.tableRelation})
    : super(tableName: 'campus_student_addresses') {
    updateTable = CampusStudentAddressUpdateTable(this);
    studentId = _is.ColumnUuid(
      'studentId',
      this,
    );
    kind = _is.ColumnString(
      'kind',
      this,
    );
    line1 = _is.ColumnString(
      'line1',
      this,
    );
    city = _is.ColumnString(
      'city',
      this,
    );
    postalCode = _is.ColumnString(
      'postalCode',
      this,
    );
    countryCode = _is.ColumnString(
      'countryCode',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final CampusStudentAddressUpdateTable updateTable;

  late final _is.ColumnUuid studentId;

  late final _is.ColumnString kind;

  late final _is.ColumnString line1;

  late final _is.ColumnString city;

  late final _is.ColumnString postalCode;

  late final _is.ColumnString countryCode;

  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    studentId,
    kind,
    line1,
    city,
    postalCode,
    countryCode,
    createdAt,
  ];
}

class CampusStudentAddressInclude extends _is.IncludeObject {
  CampusStudentAddressInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentAddress.t;
}

class CampusStudentAddressIncludeList extends _is.IncludeList {
  CampusStudentAddressIncludeList._({
    _is.WhereExpressionBuilder<CampusStudentAddressTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CampusStudentAddress.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => CampusStudentAddress.t;
}

class CampusStudentAddressRepository {
  const CampusStudentAddressRepository._();

  /// Returns a list of [CampusStudentAddress]s matching the given query parameters.
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
  Future<List<CampusStudentAddress>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentAddressTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentAddressTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentAddressTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<CampusStudentAddress>(
      where: where?.call(CampusStudentAddress.t),
      orderBy: orderBy?.call(CampusStudentAddress.t),
      orderByList: orderByList?.call(CampusStudentAddress.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [CampusStudentAddress] matching the given query parameters.
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
  Future<CampusStudentAddress?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentAddressTable>? where,
    int? offset,
    _is.OrderByBuilder<CampusStudentAddressTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentAddressTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<CampusStudentAddress>(
      where: where?.call(CampusStudentAddress.t),
      orderBy: orderBy?.call(CampusStudentAddress.t),
      orderByList: orderByList?.call(CampusStudentAddress.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [CampusStudentAddress] by its [id] or null if no such row exists.
  Future<CampusStudentAddress?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<CampusStudentAddress>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [CampusStudentAddress]s in the list and returns the inserted rows.
  ///
  /// The returned [CampusStudentAddress]s will have their `id` fields set.
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
  Future<List<CampusStudentAddress>> insert(
    _is.DatabaseSession session,
    List<CampusStudentAddress> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<CampusStudentAddress>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [CampusStudentAddress] and returns the inserted row.
  ///
  /// The returned [CampusStudentAddress] will have its `id` field set.
  Future<CampusStudentAddress> insertRow(
    _is.DatabaseSession session,
    CampusStudentAddress row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<CampusStudentAddress>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [CampusStudentAddress]s in the list and returns the resulting rows.
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
  /// The returned [CampusStudentAddress]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentAddress>> upsert(
    _is.DatabaseSession session,
    List<CampusStudentAddress> rows, {
    required _is.ColumnSelections<CampusStudentAddressTable> conflictColumns,
    _is.ColumnSelections<CampusStudentAddressTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentAddressTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<CampusStudentAddress>(
      rows,
      conflictColumns: conflictColumns(CampusStudentAddress.t),
      updateColumns: updateColumns?.call(CampusStudentAddress.t),
      updateWhere: updateWhere?.call(CampusStudentAddress.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [CampusStudentAddress] and returns the resulting row.
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
  /// The returned [CampusStudentAddress] will have its `id` field set.
  Future<CampusStudentAddress?> upsertRow(
    _is.DatabaseSession session,
    CampusStudentAddress row, {
    required _is.ColumnSelections<CampusStudentAddressTable> conflictColumns,
    _is.ColumnSelections<CampusStudentAddressTable>? updateColumns,
    _is.WhereExpressionBuilder<CampusStudentAddressTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<CampusStudentAddress>(
      row,
      conflictColumns: conflictColumns(CampusStudentAddress.t),
      updateColumns: updateColumns?.call(CampusStudentAddress.t),
      updateWhere: updateWhere?.call(CampusStudentAddress.t),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentAddress]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentAddress>> update(
    _is.DatabaseSession session,
    List<CampusStudentAddress> rows, {
    _is.ColumnSelections<CampusStudentAddressTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<CampusStudentAddress>(
      rows,
      columns: columns?.call(CampusStudentAddress.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [CampusStudentAddress]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CampusStudentAddress> updateRow(
    _is.DatabaseSession session,
    CampusStudentAddress row, {
    _is.ColumnSelections<CampusStudentAddressTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<CampusStudentAddress>(
      row,
      columns: columns?.call(CampusStudentAddress.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CampusStudentAddress] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CampusStudentAddress?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CampusStudentAddressUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<CampusStudentAddress>(
      id,
      columnValues: columnValues(CampusStudentAddress.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CampusStudentAddress]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<CampusStudentAddress>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CampusStudentAddressUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<CampusStudentAddressTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CampusStudentAddressTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentAddressTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<CampusStudentAddress>(
      columnValues: columnValues(CampusStudentAddress.t.updateTable),
      where: where(CampusStudentAddress.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CampusStudentAddress.t),
      orderByList: orderByList?.call(CampusStudentAddress.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [CampusStudentAddress]s in the list and returns the deleted rows.
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
  Future<List<CampusStudentAddress>> delete(
    _is.DatabaseSession session,
    List<CampusStudentAddress> rows, {
    _is.OrderByBuilder<CampusStudentAddressTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentAddressTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<CampusStudentAddress>(
      rows,
      orderBy: orderBy?.call(CampusStudentAddress.t),
      orderByList: orderByList?.call(CampusStudentAddress.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [CampusStudentAddress].
  Future<CampusStudentAddress> deleteRow(
    _is.DatabaseSession session,
    CampusStudentAddress row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CampusStudentAddress>(
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
  Future<List<CampusStudentAddress>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentAddressTable> where,
    _is.OrderByBuilder<CampusStudentAddressTable>? orderBy,
    _is.OrderByListBuilder<CampusStudentAddressTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<CampusStudentAddress>(
      where: where(CampusStudentAddress.t),
      orderBy: orderBy?.call(CampusStudentAddress.t),
      orderByList: orderByList?.call(CampusStudentAddress.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CampusStudentAddressTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<CampusStudentAddress>(
      where: where?.call(CampusStudentAddress.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [CampusStudentAddress] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CampusStudentAddressTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<CampusStudentAddress>(
      where: where(CampusStudentAddress.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
