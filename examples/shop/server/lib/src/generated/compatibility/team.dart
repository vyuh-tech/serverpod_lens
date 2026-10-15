/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: dead_code, unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _is;
import 'package:shop_server/src/generated/protocol.dart' as _iicbhma1;
import '../compatibility/member.dart' as _inil7hhp;

abstract class ShopTeam
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  ShopTeam._({this.id, required this.name, this.members});

  factory ShopTeam({
    int? id,
    required String name,
    List<_inil7hhp.ShopMember>? members,
  }) = _ShopTeamImpl;

  factory ShopTeam.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopTeam(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      members: jsonSerialization['members'] == null
          ? null
          : _iicbhma1.Protocol().deserialize<List<_inil7hhp.ShopMember>>(
              jsonSerialization['members'],
            ),
    );
  }

  static final t = ShopTeamTable();

  static const db = ShopTeamRepository._();

  @override
  int? id;

  String name;

  List<_inil7hhp.ShopMember>? members;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [ShopTeam]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ShopTeam copyWith({
    int? id,
    String? name,
    List<_inil7hhp.ShopMember>? members,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopTeam',
      if (id != null) 'id': id,
      'name': name,
      if (members != null)
        'members': members?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopTeam',
      if (id != null) 'id': id,
      'name': name,
      if (members != null)
        'members': members?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static ShopTeamInclude include({_inil7hhp.ShopMemberIncludeList? members}) {
    return ShopTeamInclude._(members: members);
  }

  static ShopTeamIncludeList includeList({
    _is.WhereExpressionBuilder<ShopTeamTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopTeamTable>? orderBy,
    _is.OrderByListBuilder<ShopTeamTable>? orderByList,
    ShopTeamInclude? include,
  }) {
    return ShopTeamIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopTeam.t),
      orderByList: orderByList?.call(ShopTeam.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopTeamImpl extends ShopTeam {
  _ShopTeamImpl({
    int? id,
    required String name,
    List<_inil7hhp.ShopMember>? members,
  }) : super._(id: id, name: name, members: members);

  /// Returns a shallow copy of this [ShopTeam]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ShopTeam copyWith({
    Object? id = _Undefined,
    String? name,
    Object? members = _Undefined,
  }) {
    return ShopTeam(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      members: members is List<_inil7hhp.ShopMember>?
          ? members
          : this.members?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class ShopTeamUpdateTable extends _is.UpdateTable<ShopTeamTable> {
  ShopTeamUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) =>
      _is.ColumnValue(table.name, value);
}

class ShopTeamTable extends _is.Table<int?> {
  ShopTeamTable({super.tableRelation}) : super(tableName: 'shop_teams') {
    updateTable = ShopTeamUpdateTable(this);
    name = _is.ColumnString('name', this);
  }

  late final ShopTeamUpdateTable updateTable;

  late final _is.ColumnString name;

  _inil7hhp.ShopMemberTable? ___members;

  _is.ManyRelation<_inil7hhp.ShopMemberTable>? _members;

  _inil7hhp.ShopMemberTable get __members {
    if (___members != null) return ___members!;
    ___members = _is.createRelationTable(
      relationFieldName: '__members',
      field: ShopTeam.t.id,
      foreignField: _inil7hhp.ShopMember.t.teamId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _inil7hhp.ShopMemberTable(tableRelation: foreignTableRelation),
    );
    return ___members!;
  }

  _is.ManyRelation<_inil7hhp.ShopMemberTable> get members {
    if (_members != null) return _members!;
    var relationTable = _is.createRelationTable(
      relationFieldName: 'members',
      field: ShopTeam.t.id,
      foreignField: _inil7hhp.ShopMember.t.teamId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _inil7hhp.ShopMemberTable(tableRelation: foreignTableRelation),
    );
    _members = _is.ManyRelation<_inil7hhp.ShopMemberTable>(
      tableWithRelations: relationTable,
      table: _inil7hhp.ShopMemberTable(
        tableRelation: relationTable.tableRelation!.lastRelation,
      ),
    );
    return _members!;
  }

  @override
  List<_is.Column> get columns => [id, name];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'members') {
      return __members;
    }
    return null;
  }
}

class ShopTeamInclude extends _is.IncludeObject {
  ShopTeamInclude._({_inil7hhp.ShopMemberIncludeList? members}) {
    _members = members;
  }

  _inil7hhp.ShopMemberIncludeList? _members;

  @override
  Map<String, _is.Include?> get includes => {'members': _members};

  @override
  _is.Table<int?> get table => ShopTeam.t;
}

class ShopTeamIncludeList extends _is.IncludeList {
  ShopTeamIncludeList._({
    _is.WhereExpressionBuilder<ShopTeamTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShopTeam.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => ShopTeam.t;
}

class ShopTeamRepository {
  const ShopTeamRepository._();

  final attach = const ShopTeamAttachRepository._();

  final attachRow = const ShopTeamAttachRowRepository._();

  /// Returns a list of [ShopTeam]s matching the given query parameters.
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
  Future<List<ShopTeam>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopTeamTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopTeamTable>? orderBy,
    _is.OrderByListBuilder<ShopTeamTable>? orderByList,
    _is.Transaction? transaction,
    ShopTeamInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ShopTeam>(
      where: where?.call(ShopTeam.t),
      orderBy: orderBy?.call(ShopTeam.t),
      orderByList: orderByList?.call(ShopTeam.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ShopTeam] matching the given query parameters.
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
  Future<ShopTeam?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopTeamTable>? where,
    int? offset,
    _is.OrderByBuilder<ShopTeamTable>? orderBy,
    _is.OrderByListBuilder<ShopTeamTable>? orderByList,
    _is.Transaction? transaction,
    ShopTeamInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ShopTeam>(
      where: where?.call(ShopTeam.t),
      orderBy: orderBy?.call(ShopTeam.t),
      orderByList: orderByList?.call(ShopTeam.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ShopTeam] by its [id] or null if no such row exists.
  Future<ShopTeam?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    ShopTeamInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ShopTeam>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ShopTeam]s in the list and returns the inserted rows.
  ///
  /// The returned [ShopTeam]s will have their `id` fields set.
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
  Future<List<ShopTeam>> insert(
    _is.DatabaseSession session,
    List<ShopTeam> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ShopTeam>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ShopTeam] and returns the inserted row.
  ///
  /// The returned [ShopTeam] will have its `id` field set.
  Future<ShopTeam> insertRow(
    _is.DatabaseSession session,
    ShopTeam row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ShopTeam>(row, transaction: transaction);
  }

  /// Upserts all [ShopTeam]s in the list and returns the resulting rows.
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
  /// The returned [ShopTeam]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopTeam>> upsert(
    _is.DatabaseSession session,
    List<ShopTeam> rows, {
    required _is.ColumnSelections<ShopTeamTable> conflictColumns,
    _is.ColumnSelections<ShopTeamTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopTeamTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ShopTeam>(
      rows,
      conflictColumns: conflictColumns(ShopTeam.t),
      updateColumns: updateColumns?.call(ShopTeam.t),
      updateWhere: updateWhere?.call(ShopTeam.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ShopTeam] and returns the resulting row.
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
  /// The returned [ShopTeam] will have its `id` field set.
  Future<ShopTeam?> upsertRow(
    _is.DatabaseSession session,
    ShopTeam row, {
    required _is.ColumnSelections<ShopTeamTable> conflictColumns,
    _is.ColumnSelections<ShopTeamTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopTeamTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ShopTeam>(
      row,
      conflictColumns: conflictColumns(ShopTeam.t),
      updateColumns: updateColumns?.call(ShopTeam.t),
      updateWhere: updateWhere?.call(ShopTeam.t),
      transaction: transaction,
    );
  }

  /// Updates all [ShopTeam]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopTeam>> update(
    _is.DatabaseSession session,
    List<ShopTeam> rows, {
    _is.ColumnSelections<ShopTeamTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ShopTeam>(
      rows,
      columns: columns?.call(ShopTeam.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ShopTeam]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ShopTeam> updateRow(
    _is.DatabaseSession session,
    ShopTeam row, {
    _is.ColumnSelections<ShopTeamTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ShopTeam>(
      row,
      columns: columns?.call(ShopTeam.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ShopTeam] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ShopTeam?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<ShopTeamUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ShopTeam>(
      id,
      columnValues: columnValues(ShopTeam.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ShopTeam]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopTeam>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ShopTeamUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ShopTeamTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopTeamTable>? orderBy,
    _is.OrderByListBuilder<ShopTeamTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ShopTeam>(
      columnValues: columnValues(ShopTeam.t.updateTable),
      where: where(ShopTeam.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopTeam.t),
      orderByList: orderByList?.call(ShopTeam.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ShopTeam]s in the list and returns the deleted rows.
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
  Future<List<ShopTeam>> delete(
    _is.DatabaseSession session,
    List<ShopTeam> rows, {
    _is.OrderByBuilder<ShopTeamTable>? orderBy,
    _is.OrderByListBuilder<ShopTeamTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ShopTeam>(
      rows,
      orderBy: orderBy?.call(ShopTeam.t),
      orderByList: orderByList?.call(ShopTeam.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ShopTeam].
  Future<ShopTeam> deleteRow(
    _is.DatabaseSession session,
    ShopTeam row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ShopTeam>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopTeam>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopTeamTable> where,
    _is.OrderByBuilder<ShopTeamTable>? orderBy,
    _is.OrderByListBuilder<ShopTeamTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ShopTeam>(
      where: where(ShopTeam.t),
      orderBy: orderBy?.call(ShopTeam.t),
      orderByList: orderByList?.call(ShopTeam.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopTeamTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ShopTeam>(
      where: where?.call(ShopTeam.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ShopTeam] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopTeamTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ShopTeam>(
      where: where(ShopTeam.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class ShopTeamAttachRepository {
  const ShopTeamAttachRepository._();

  /// Creates a relation between this [ShopTeam] and the given [ShopMember]s
  /// by setting each [ShopMember]'s foreign key `teamId` to refer to this [ShopTeam].
  Future<void> members(
    _is.DatabaseSession session,
    ShopTeam shopTeam,
    List<_inil7hhp.ShopMember> shopMember, {
    _is.Transaction? transaction,
  }) async {
    if (shopMember.any((e) => e.id == null)) {
      throw ArgumentError.notNull('shopMember.id');
    }
    if (shopTeam.id == null) {
      throw ArgumentError.notNull('shopTeam.id');
    }

    var $shopMember = shopMember
        .map((e) => e.copyWith(teamId: shopTeam.id))
        .toList();
    await session.db.update<_inil7hhp.ShopMember>(
      $shopMember,
      columns: [_inil7hhp.ShopMember.t.teamId],
      transaction: transaction,
    );
  }
}

class ShopTeamAttachRowRepository {
  const ShopTeamAttachRowRepository._();

  /// Creates a relation between this [ShopTeam] and the given [ShopMember]
  /// by setting the [ShopMember]'s foreign key `teamId` to refer to this [ShopTeam].
  Future<void> members(
    _is.DatabaseSession session,
    ShopTeam shopTeam,
    _inil7hhp.ShopMember shopMember, {
    _is.Transaction? transaction,
  }) async {
    if (shopMember.id == null) {
      throw ArgumentError.notNull('shopMember.id');
    }
    if (shopTeam.id == null) {
      throw ArgumentError.notNull('shopTeam.id');
    }

    var $shopMember = shopMember.copyWith(teamId: shopTeam.id);
    await session.db.updateRow<_inil7hhp.ShopMember>(
      $shopMember,
      columns: [_inil7hhp.ShopMember.t.teamId],
      transaction: transaction,
    );
  }
}
