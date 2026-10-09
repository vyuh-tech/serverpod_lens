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

abstract class ElogAreaEquipment
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogAreaEquipment._({
    this.id,
    required this.areaId,
    required this.equipmentId,
    this.isPrimary,
    this.isActive,
  });

  factory ElogAreaEquipment({
    _is.UuidValue? id,
    required _is.UuidValue areaId,
    required _is.UuidValue equipmentId,
    bool? isPrimary,
    bool? isActive,
  }) = _ElogAreaEquipmentImpl;

  factory ElogAreaEquipment.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogAreaEquipment(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      areaId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['areaId']),
      equipmentId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['equipmentId'],
      ),
      isPrimary: jsonSerialization['isPrimary'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isPrimary']),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogAreaEquipmentTable();

  static const db = ElogAreaEquipmentRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue areaId;

  _is.UuidValue equipmentId;

  bool? isPrimary;

  bool? isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogAreaEquipment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogAreaEquipment copyWith({
    _is.UuidValue? id,
    _is.UuidValue? areaId,
    _is.UuidValue? equipmentId,
    bool? isPrimary,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogAreaEquipment',
      if (id != null) 'id': id?.toJson(),
      'areaId': areaId.toJson(),
      'equipmentId': equipmentId.toJson(),
      if (isPrimary != null) 'isPrimary': isPrimary,
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogAreaEquipment',
      if (id != null) 'id': id?.toJson(),
      'areaId': areaId.toJson(),
      'equipmentId': equipmentId.toJson(),
      if (isPrimary != null) 'isPrimary': isPrimary,
      if (isActive != null) 'isActive': isActive,
    };
  }

  static ElogAreaEquipmentInclude include() {
    return ElogAreaEquipmentInclude._();
  }

  static ElogAreaEquipmentIncludeList includeList({
    _is.WhereExpressionBuilder<ElogAreaEquipmentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreaEquipmentTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaEquipmentTable>? orderByList,
    ElogAreaEquipmentInclude? include,
  }) {
    return ElogAreaEquipmentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogAreaEquipment.t),
      orderByList: orderByList?.call(ElogAreaEquipment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogAreaEquipmentImpl extends ElogAreaEquipment {
  _ElogAreaEquipmentImpl({
    _is.UuidValue? id,
    required _is.UuidValue areaId,
    required _is.UuidValue equipmentId,
    bool? isPrimary,
    bool? isActive,
  }) : super._(
         id: id,
         areaId: areaId,
         equipmentId: equipmentId,
         isPrimary: isPrimary,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogAreaEquipment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogAreaEquipment copyWith({
    Object? id = _Undefined,
    _is.UuidValue? areaId,
    _is.UuidValue? equipmentId,
    Object? isPrimary = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return ElogAreaEquipment(
      id: id is _is.UuidValue? ? id : this.id,
      areaId: areaId ?? this.areaId,
      equipmentId: equipmentId ?? this.equipmentId,
      isPrimary: isPrimary is bool? ? isPrimary : this.isPrimary,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}

class ElogAreaEquipmentUpdateTable
    extends _is.UpdateTable<ElogAreaEquipmentTable> {
  ElogAreaEquipmentUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> areaId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.areaId,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> equipmentId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.equipmentId,
    value,
  );

  _is.ColumnValue<bool, bool> isPrimary(bool? value) => _is.ColumnValue(
    table.isPrimary,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool? value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogAreaEquipmentTable extends _is.Table<_is.UuidValue?> {
  ElogAreaEquipmentTable({super.tableRelation})
    : super(tableName: 'elog_area_equipment') {
    updateTable = ElogAreaEquipmentUpdateTable(this);
    areaId = _is.ColumnUuid(
      'areaId',
      this,
    );
    equipmentId = _is.ColumnUuid(
      'equipmentId',
      this,
    );
    isPrimary = _is.ColumnBool(
      'isPrimary',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogAreaEquipmentUpdateTable updateTable;

  late final _is.ColumnUuid areaId;

  late final _is.ColumnUuid equipmentId;

  late final _is.ColumnBool isPrimary;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    areaId,
    equipmentId,
    isPrimary,
    isActive,
  ];
}

class ElogAreaEquipmentInclude extends _is.IncludeObject {
  ElogAreaEquipmentInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogAreaEquipment.t;
}

class ElogAreaEquipmentIncludeList extends _is.IncludeList {
  ElogAreaEquipmentIncludeList._({
    _is.WhereExpressionBuilder<ElogAreaEquipmentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogAreaEquipment.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogAreaEquipment.t;
}

class ElogAreaEquipmentRepository {
  const ElogAreaEquipmentRepository._();

  /// Returns a list of [ElogAreaEquipment]s matching the given query parameters.
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
  Future<List<ElogAreaEquipment>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreaEquipmentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreaEquipmentTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaEquipmentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogAreaEquipment>(
      where: where?.call(ElogAreaEquipment.t),
      orderBy: orderBy?.call(ElogAreaEquipment.t),
      orderByList: orderByList?.call(ElogAreaEquipment.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogAreaEquipment] matching the given query parameters.
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
  Future<ElogAreaEquipment?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreaEquipmentTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogAreaEquipmentTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaEquipmentTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogAreaEquipment>(
      where: where?.call(ElogAreaEquipment.t),
      orderBy: orderBy?.call(ElogAreaEquipment.t),
      orderByList: orderByList?.call(ElogAreaEquipment.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogAreaEquipment] by its [id] or null if no such row exists.
  Future<ElogAreaEquipment?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogAreaEquipment>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogAreaEquipment]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogAreaEquipment]s will have their `id` fields set.
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
  Future<List<ElogAreaEquipment>> insert(
    _is.DatabaseSession session,
    List<ElogAreaEquipment> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogAreaEquipment>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogAreaEquipment] and returns the inserted row.
  ///
  /// The returned [ElogAreaEquipment] will have its `id` field set.
  Future<ElogAreaEquipment> insertRow(
    _is.DatabaseSession session,
    ElogAreaEquipment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogAreaEquipment>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogAreaEquipment]s in the list and returns the resulting rows.
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
  /// The returned [ElogAreaEquipment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreaEquipment>> upsert(
    _is.DatabaseSession session,
    List<ElogAreaEquipment> rows, {
    required _is.ColumnSelections<ElogAreaEquipmentTable> conflictColumns,
    _is.ColumnSelections<ElogAreaEquipmentTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogAreaEquipmentTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogAreaEquipment>(
      rows,
      conflictColumns: conflictColumns(ElogAreaEquipment.t),
      updateColumns: updateColumns?.call(ElogAreaEquipment.t),
      updateWhere: updateWhere?.call(ElogAreaEquipment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogAreaEquipment] and returns the resulting row.
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
  /// The returned [ElogAreaEquipment] will have its `id` field set.
  Future<ElogAreaEquipment?> upsertRow(
    _is.DatabaseSession session,
    ElogAreaEquipment row, {
    required _is.ColumnSelections<ElogAreaEquipmentTable> conflictColumns,
    _is.ColumnSelections<ElogAreaEquipmentTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogAreaEquipmentTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogAreaEquipment>(
      row,
      conflictColumns: conflictColumns(ElogAreaEquipment.t),
      updateColumns: updateColumns?.call(ElogAreaEquipment.t),
      updateWhere: updateWhere?.call(ElogAreaEquipment.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogAreaEquipment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreaEquipment>> update(
    _is.DatabaseSession session,
    List<ElogAreaEquipment> rows, {
    _is.ColumnSelections<ElogAreaEquipmentTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogAreaEquipment>(
      rows,
      columns: columns?.call(ElogAreaEquipment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogAreaEquipment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogAreaEquipment> updateRow(
    _is.DatabaseSession session,
    ElogAreaEquipment row, {
    _is.ColumnSelections<ElogAreaEquipmentTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogAreaEquipment>(
      row,
      columns: columns?.call(ElogAreaEquipment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogAreaEquipment] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogAreaEquipment?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogAreaEquipmentUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogAreaEquipment>(
      id,
      columnValues: columnValues(ElogAreaEquipment.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogAreaEquipment]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogAreaEquipment>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogAreaEquipmentUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogAreaEquipmentTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogAreaEquipmentTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaEquipmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogAreaEquipment>(
      columnValues: columnValues(ElogAreaEquipment.t.updateTable),
      where: where(ElogAreaEquipment.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogAreaEquipment.t),
      orderByList: orderByList?.call(ElogAreaEquipment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogAreaEquipment]s in the list and returns the deleted rows.
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
  Future<List<ElogAreaEquipment>> delete(
    _is.DatabaseSession session,
    List<ElogAreaEquipment> rows, {
    _is.OrderByBuilder<ElogAreaEquipmentTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaEquipmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogAreaEquipment>(
      rows,
      orderBy: orderBy?.call(ElogAreaEquipment.t),
      orderByList: orderByList?.call(ElogAreaEquipment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogAreaEquipment].
  Future<ElogAreaEquipment> deleteRow(
    _is.DatabaseSession session,
    ElogAreaEquipment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogAreaEquipment>(
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
  Future<List<ElogAreaEquipment>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogAreaEquipmentTable> where,
    _is.OrderByBuilder<ElogAreaEquipmentTable>? orderBy,
    _is.OrderByListBuilder<ElogAreaEquipmentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogAreaEquipment>(
      where: where(ElogAreaEquipment.t),
      orderBy: orderBy?.call(ElogAreaEquipment.t),
      orderByList: orderByList?.call(ElogAreaEquipment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogAreaEquipmentTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogAreaEquipment>(
      where: where?.call(ElogAreaEquipment.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogAreaEquipment] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogAreaEquipmentTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogAreaEquipment>(
      where: where(ElogAreaEquipment.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
