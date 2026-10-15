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

abstract class ShopProfile
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  ShopProfile._({this.id, required this.bio});

  factory ShopProfile({int? id, required String bio}) = _ShopProfileImpl;

  factory ShopProfile.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopProfile(
      id: jsonSerialization['id'] as int?,
      bio: jsonSerialization['bio'] as String,
    );
  }

  static final t = ShopProfileTable();

  static const db = ShopProfileRepository._();

  @override
  int? id;

  String bio;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [ShopProfile]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ShopProfile copyWith({int? id, String? bio});
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopProfile',
      if (id != null) 'id': id,
      'bio': bio,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopProfile',
      if (id != null) 'id': id,
      'bio': bio,
    };
  }

  static ShopProfileInclude include() {
    return ShopProfileInclude._();
  }

  static ShopProfileIncludeList includeList({
    _is.WhereExpressionBuilder<ShopProfileTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopProfileTable>? orderBy,
    _is.OrderByListBuilder<ShopProfileTable>? orderByList,
    ShopProfileInclude? include,
  }) {
    return ShopProfileIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopProfile.t),
      orderByList: orderByList?.call(ShopProfile.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopProfileImpl extends ShopProfile {
  _ShopProfileImpl({int? id, required String bio}) : super._(id: id, bio: bio);

  /// Returns a shallow copy of this [ShopProfile]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ShopProfile copyWith({Object? id = _Undefined, String? bio}) {
    return ShopProfile(id: id is int? ? id : this.id, bio: bio ?? this.bio);
  }
}

class ShopProfileUpdateTable extends _is.UpdateTable<ShopProfileTable> {
  ShopProfileUpdateTable(super.table);

  _is.ColumnValue<String, String> bio(String value) =>
      _is.ColumnValue(table.bio, value);
}

class ShopProfileTable extends _is.Table<int?> {
  ShopProfileTable({super.tableRelation}) : super(tableName: 'shop_profiles') {
    updateTable = ShopProfileUpdateTable(this);
    bio = _is.ColumnString('bio', this);
  }

  late final ShopProfileUpdateTable updateTable;

  late final _is.ColumnString bio;

  @override
  List<_is.Column> get columns => [id, bio];
}

class ShopProfileInclude extends _is.IncludeObject {
  ShopProfileInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => ShopProfile.t;
}

class ShopProfileIncludeList extends _is.IncludeList {
  ShopProfileIncludeList._({
    _is.WhereExpressionBuilder<ShopProfileTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShopProfile.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => ShopProfile.t;
}

class ShopProfileRepository {
  const ShopProfileRepository._();

  /// Returns a list of [ShopProfile]s matching the given query parameters.
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
  Future<List<ShopProfile>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopProfileTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopProfileTable>? orderBy,
    _is.OrderByListBuilder<ShopProfileTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ShopProfile>(
      where: where?.call(ShopProfile.t),
      orderBy: orderBy?.call(ShopProfile.t),
      orderByList: orderByList?.call(ShopProfile.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ShopProfile] matching the given query parameters.
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
  Future<ShopProfile?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopProfileTable>? where,
    int? offset,
    _is.OrderByBuilder<ShopProfileTable>? orderBy,
    _is.OrderByListBuilder<ShopProfileTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ShopProfile>(
      where: where?.call(ShopProfile.t),
      orderBy: orderBy?.call(ShopProfile.t),
      orderByList: orderByList?.call(ShopProfile.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ShopProfile] by its [id] or null if no such row exists.
  Future<ShopProfile?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ShopProfile>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ShopProfile]s in the list and returns the inserted rows.
  ///
  /// The returned [ShopProfile]s will have their `id` fields set.
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
  Future<List<ShopProfile>> insert(
    _is.DatabaseSession session,
    List<ShopProfile> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ShopProfile>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ShopProfile] and returns the inserted row.
  ///
  /// The returned [ShopProfile] will have its `id` field set.
  Future<ShopProfile> insertRow(
    _is.DatabaseSession session,
    ShopProfile row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ShopProfile>(row, transaction: transaction);
  }

  /// Upserts all [ShopProfile]s in the list and returns the resulting rows.
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
  /// The returned [ShopProfile]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopProfile>> upsert(
    _is.DatabaseSession session,
    List<ShopProfile> rows, {
    required _is.ColumnSelections<ShopProfileTable> conflictColumns,
    _is.ColumnSelections<ShopProfileTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopProfileTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ShopProfile>(
      rows,
      conflictColumns: conflictColumns(ShopProfile.t),
      updateColumns: updateColumns?.call(ShopProfile.t),
      updateWhere: updateWhere?.call(ShopProfile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ShopProfile] and returns the resulting row.
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
  /// The returned [ShopProfile] will have its `id` field set.
  Future<ShopProfile?> upsertRow(
    _is.DatabaseSession session,
    ShopProfile row, {
    required _is.ColumnSelections<ShopProfileTable> conflictColumns,
    _is.ColumnSelections<ShopProfileTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopProfileTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ShopProfile>(
      row,
      conflictColumns: conflictColumns(ShopProfile.t),
      updateColumns: updateColumns?.call(ShopProfile.t),
      updateWhere: updateWhere?.call(ShopProfile.t),
      transaction: transaction,
    );
  }

  /// Updates all [ShopProfile]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopProfile>> update(
    _is.DatabaseSession session,
    List<ShopProfile> rows, {
    _is.ColumnSelections<ShopProfileTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ShopProfile>(
      rows,
      columns: columns?.call(ShopProfile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ShopProfile]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ShopProfile> updateRow(
    _is.DatabaseSession session,
    ShopProfile row, {
    _is.ColumnSelections<ShopProfileTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ShopProfile>(
      row,
      columns: columns?.call(ShopProfile.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ShopProfile] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ShopProfile?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<ShopProfileUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ShopProfile>(
      id,
      columnValues: columnValues(ShopProfile.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ShopProfile]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopProfile>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ShopProfileUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ShopProfileTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopProfileTable>? orderBy,
    _is.OrderByListBuilder<ShopProfileTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ShopProfile>(
      columnValues: columnValues(ShopProfile.t.updateTable),
      where: where(ShopProfile.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopProfile.t),
      orderByList: orderByList?.call(ShopProfile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ShopProfile]s in the list and returns the deleted rows.
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
  Future<List<ShopProfile>> delete(
    _is.DatabaseSession session,
    List<ShopProfile> rows, {
    _is.OrderByBuilder<ShopProfileTable>? orderBy,
    _is.OrderByListBuilder<ShopProfileTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ShopProfile>(
      rows,
      orderBy: orderBy?.call(ShopProfile.t),
      orderByList: orderByList?.call(ShopProfile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ShopProfile].
  Future<ShopProfile> deleteRow(
    _is.DatabaseSession session,
    ShopProfile row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ShopProfile>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopProfile>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopProfileTable> where,
    _is.OrderByBuilder<ShopProfileTable>? orderBy,
    _is.OrderByListBuilder<ShopProfileTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ShopProfile>(
      where: where(ShopProfile.t),
      orderBy: orderBy?.call(ShopProfile.t),
      orderByList: orderByList?.call(ShopProfile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopProfileTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ShopProfile>(
      where: where?.call(ShopProfile.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ShopProfile] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopProfileTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ShopProfile>(
      where: where(ShopProfile.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
