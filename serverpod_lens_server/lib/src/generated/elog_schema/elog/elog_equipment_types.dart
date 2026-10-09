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

abstract class ElogEquipmentTypes
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogEquipmentTypes._({
    this.id,
    required this.idField,
    required this.code,
    required this.name,
    this.description,
    this.equipmentCategoryId,
    required this.config,
    required this.versionNumber,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogEquipmentTypes({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required String code,
    required String name,
    String? description,
    _is.UuidValue? equipmentCategoryId,
    required String config,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _ElogEquipmentTypesImpl;

  factory ElogEquipmentTypes.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogEquipmentTypes(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      equipmentCategoryId: jsonSerialization['equipmentCategoryId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['equipmentCategoryId'],
            ),
      config: jsonSerialization['config'] as String,
      versionNumber: jsonSerialization['versionNumber'] as int,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['createdBy']),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['updatedBy']),
    );
  }

  static final t = ElogEquipmentTypesTable();

  static const db = ElogEquipmentTypesRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue idField;

  String code;

  String name;

  String? description;

  _is.UuidValue? equipmentCategoryId;

  String config;

  int versionNumber;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogEquipmentTypes]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogEquipmentTypes copyWith({
    _is.UuidValue? id,
    _is.UuidValue? idField,
    String? code,
    String? name,
    String? description,
    _is.UuidValue? equipmentCategoryId,
    String? config,
    int? versionNumber,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogEquipmentTypes',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (equipmentCategoryId != null)
        'equipmentCategoryId': equipmentCategoryId?.toJson(),
      'config': config,
      'versionNumber': versionNumber,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogEquipmentTypes',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (equipmentCategoryId != null)
        'equipmentCategoryId': equipmentCategoryId?.toJson(),
      'config': config,
      'versionNumber': versionNumber,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static ElogEquipmentTypesInclude include() {
    return ElogEquipmentTypesInclude._();
  }

  static ElogEquipmentTypesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogEquipmentTypesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentTypesTable>? orderByList,
    ElogEquipmentTypesInclude? include,
  }) {
    return ElogEquipmentTypesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEquipmentTypes.t),
      orderByList: orderByList?.call(ElogEquipmentTypes.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogEquipmentTypesImpl extends ElogEquipmentTypes {
  _ElogEquipmentTypesImpl({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required String code,
    required String name,
    String? description,
    _is.UuidValue? equipmentCategoryId,
    required String config,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) : super._(
         id: id,
         idField: idField,
         code: code,
         name: name,
         description: description,
         equipmentCategoryId: equipmentCategoryId,
         config: config,
         versionNumber: versionNumber,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogEquipmentTypes]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogEquipmentTypes copyWith({
    Object? id = _Undefined,
    _is.UuidValue? idField,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? equipmentCategoryId = _Undefined,
    String? config,
    int? versionNumber,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogEquipmentTypes(
      id: id is _is.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      equipmentCategoryId: equipmentCategoryId is _is.UuidValue?
          ? equipmentCategoryId
          : this.equipmentCategoryId,
      config: config ?? this.config,
      versionNumber: versionNumber ?? this.versionNumber,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class ElogEquipmentTypesUpdateTable
    extends _is.UpdateTable<ElogEquipmentTypesTable> {
  ElogEquipmentTypesUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> idField(_is.UuidValue value) =>
      _is.ColumnValue(
        table.idField,
        value,
      );

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> description(String? value) => _is.ColumnValue(
    table.description,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> equipmentCategoryId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.equipmentCategoryId,
    value,
  );

  _is.ColumnValue<String, String> config(String value) => _is.ColumnValue(
    table.config,
    value,
  );

  _is.ColumnValue<int, int> versionNumber(int value) => _is.ColumnValue(
    table.versionNumber,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> createdBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.createdBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> updatedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.updatedBy,
    value,
  );
}

class ElogEquipmentTypesTable extends _is.Table<_is.UuidValue?> {
  ElogEquipmentTypesTable({super.tableRelation})
    : super(tableName: 'elog_equipment_types') {
    updateTable = ElogEquipmentTypesUpdateTable(this);
    idField = _is.ColumnUuid(
      'idField',
      this,
    );
    code = _is.ColumnString(
      'code',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    description = _is.ColumnString(
      'description',
      this,
    );
    equipmentCategoryId = _is.ColumnUuid(
      'equipmentCategoryId',
      this,
    );
    config = _is.ColumnString(
      'config',
      this,
    );
    versionNumber = _is.ColumnInt(
      'versionNumber',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
    );
    createdBy = _is.ColumnUuid(
      'createdBy',
      this,
    );
    updatedBy = _is.ColumnUuid(
      'updatedBy',
      this,
    );
  }

  late final ElogEquipmentTypesUpdateTable updateTable;

  late final _is.ColumnUuid idField;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnUuid equipmentCategoryId;

  late final _is.ColumnString config;

  late final _is.ColumnInt versionNumber;

  late final _is.ColumnBool isActive;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    idField,
    code,
    name,
    description,
    equipmentCategoryId,
    config,
    versionNumber,
    isActive,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class ElogEquipmentTypesInclude extends _is.IncludeObject {
  ElogEquipmentTypesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEquipmentTypes.t;
}

class ElogEquipmentTypesIncludeList extends _is.IncludeList {
  ElogEquipmentTypesIncludeList._({
    _is.WhereExpressionBuilder<ElogEquipmentTypesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogEquipmentTypes.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEquipmentTypes.t;
}

class ElogEquipmentTypesRepository {
  const ElogEquipmentTypesRepository._();

  /// Returns a list of [ElogEquipmentTypes]s matching the given query parameters.
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
  Future<List<ElogEquipmentTypes>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentTypesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentTypesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogEquipmentTypes>(
      where: where?.call(ElogEquipmentTypes.t),
      orderBy: orderBy?.call(ElogEquipmentTypes.t),
      orderByList: orderByList?.call(ElogEquipmentTypes.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogEquipmentTypes] matching the given query parameters.
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
  Future<ElogEquipmentTypes?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentTypesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentTypesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogEquipmentTypes>(
      where: where?.call(ElogEquipmentTypes.t),
      orderBy: orderBy?.call(ElogEquipmentTypes.t),
      orderByList: orderByList?.call(ElogEquipmentTypes.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogEquipmentTypes] by its [id] or null if no such row exists.
  Future<ElogEquipmentTypes?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogEquipmentTypes>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogEquipmentTypes]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogEquipmentTypes]s will have their `id` fields set.
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
  Future<List<ElogEquipmentTypes>> insert(
    _is.DatabaseSession session,
    List<ElogEquipmentTypes> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogEquipmentTypes>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogEquipmentTypes] and returns the inserted row.
  ///
  /// The returned [ElogEquipmentTypes] will have its `id` field set.
  Future<ElogEquipmentTypes> insertRow(
    _is.DatabaseSession session,
    ElogEquipmentTypes row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogEquipmentTypes>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogEquipmentTypes]s in the list and returns the resulting rows.
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
  /// The returned [ElogEquipmentTypes]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipmentTypes>> upsert(
    _is.DatabaseSession session,
    List<ElogEquipmentTypes> rows, {
    required _is.ColumnSelections<ElogEquipmentTypesTable> conflictColumns,
    _is.ColumnSelections<ElogEquipmentTypesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEquipmentTypesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogEquipmentTypes>(
      rows,
      conflictColumns: conflictColumns(ElogEquipmentTypes.t),
      updateColumns: updateColumns?.call(ElogEquipmentTypes.t),
      updateWhere: updateWhere?.call(ElogEquipmentTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogEquipmentTypes] and returns the resulting row.
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
  /// The returned [ElogEquipmentTypes] will have its `id` field set.
  Future<ElogEquipmentTypes?> upsertRow(
    _is.DatabaseSession session,
    ElogEquipmentTypes row, {
    required _is.ColumnSelections<ElogEquipmentTypesTable> conflictColumns,
    _is.ColumnSelections<ElogEquipmentTypesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEquipmentTypesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogEquipmentTypes>(
      row,
      conflictColumns: conflictColumns(ElogEquipmentTypes.t),
      updateColumns: updateColumns?.call(ElogEquipmentTypes.t),
      updateWhere: updateWhere?.call(ElogEquipmentTypes.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEquipmentTypes]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipmentTypes>> update(
    _is.DatabaseSession session,
    List<ElogEquipmentTypes> rows, {
    _is.ColumnSelections<ElogEquipmentTypesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogEquipmentTypes>(
      rows,
      columns: columns?.call(ElogEquipmentTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogEquipmentTypes]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogEquipmentTypes> updateRow(
    _is.DatabaseSession session,
    ElogEquipmentTypes row, {
    _is.ColumnSelections<ElogEquipmentTypesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogEquipmentTypes>(
      row,
      columns: columns?.call(ElogEquipmentTypes.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogEquipmentTypes] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogEquipmentTypes?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogEquipmentTypesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogEquipmentTypes>(
      id,
      columnValues: columnValues(ElogEquipmentTypes.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEquipmentTypes]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEquipmentTypes>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogEquipmentTypesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogEquipmentTypesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEquipmentTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogEquipmentTypes>(
      columnValues: columnValues(ElogEquipmentTypes.t.updateTable),
      where: where(ElogEquipmentTypes.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEquipmentTypes.t),
      orderByList: orderByList?.call(ElogEquipmentTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogEquipmentTypes]s in the list and returns the deleted rows.
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
  Future<List<ElogEquipmentTypes>> delete(
    _is.DatabaseSession session,
    List<ElogEquipmentTypes> rows, {
    _is.OrderByBuilder<ElogEquipmentTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogEquipmentTypes>(
      rows,
      orderBy: orderBy?.call(ElogEquipmentTypes.t),
      orderByList: orderByList?.call(ElogEquipmentTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogEquipmentTypes].
  Future<ElogEquipmentTypes> deleteRow(
    _is.DatabaseSession session,
    ElogEquipmentTypes row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogEquipmentTypes>(
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
  Future<List<ElogEquipmentTypes>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEquipmentTypesTable> where,
    _is.OrderByBuilder<ElogEquipmentTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogEquipmentTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogEquipmentTypes>(
      where: where(ElogEquipmentTypes.t),
      orderBy: orderBy?.call(ElogEquipmentTypes.t),
      orderByList: orderByList?.call(ElogEquipmentTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEquipmentTypesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogEquipmentTypes>(
      where: where?.call(ElogEquipmentTypes.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogEquipmentTypes] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEquipmentTypesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogEquipmentTypes>(
      where: where(ElogEquipmentTypes.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
