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

abstract class ElogResourceFlagTypes
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogResourceFlagTypes._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.category,
    this.icon,
    required this.color,
    required this.blocksUsage,
    required this.requiresClearance,
    this.clearanceRoles,
    this.autoClearAfterMinutes,
    this.canBeCreatedByRoles,
    this.clearanceLogTemplateId,
    required this.isActive,
  });

  factory ElogResourceFlagTypes({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String category,
    String? icon,
    required String color,
    required bool blocksUsage,
    required bool requiresClearance,
    List<String>? clearanceRoles,
    int? autoClearAfterMinutes,
    List<String>? canBeCreatedByRoles,
    _is.UuidValue? clearanceLogTemplateId,
    required bool isActive,
  }) = _ElogResourceFlagTypesImpl;

  factory ElogResourceFlagTypes.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogResourceFlagTypes(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      category: jsonSerialization['category'] as String,
      icon: jsonSerialization['icon'] as String?,
      color: jsonSerialization['color'] as String,
      blocksUsage: _is.BoolJsonExtension.fromJson(
        jsonSerialization['blocksUsage'],
      ),
      requiresClearance: _is.BoolJsonExtension.fromJson(
        jsonSerialization['requiresClearance'],
      ),
      clearanceRoles: jsonSerialization['clearanceRoles'] == null
          ? null
          : _ioh8es0p.Protocol().deserialize<List<String>>(
              jsonSerialization['clearanceRoles'],
            ),
      autoClearAfterMinutes: jsonSerialization['autoClearAfterMinutes'] as int?,
      canBeCreatedByRoles: jsonSerialization['canBeCreatedByRoles'] == null
          ? null
          : _ioh8es0p.Protocol().deserialize<List<String>>(
              jsonSerialization['canBeCreatedByRoles'],
            ),
      clearanceLogTemplateId:
          jsonSerialization['clearanceLogTemplateId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['clearanceLogTemplateId'],
            ),
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = ElogResourceFlagTypesTable();

  static const db = ElogResourceFlagTypesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  String category;

  String? icon;

  String color;

  bool blocksUsage;

  bool requiresClearance;

  List<String>? clearanceRoles;

  int? autoClearAfterMinutes;

  List<String>? canBeCreatedByRoles;

  _is.UuidValue? clearanceLogTemplateId;

  bool isActive;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogResourceFlagTypes]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogResourceFlagTypes copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? category,
    String? icon,
    String? color,
    bool? blocksUsage,
    bool? requiresClearance,
    List<String>? clearanceRoles,
    int? autoClearAfterMinutes,
    List<String>? canBeCreatedByRoles,
    _is.UuidValue? clearanceLogTemplateId,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogResourceFlagTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'category': category,
      if (icon != null) 'icon': icon,
      'color': color,
      'blocksUsage': blocksUsage,
      'requiresClearance': requiresClearance,
      if (clearanceRoles != null) 'clearanceRoles': clearanceRoles?.toJson(),
      if (autoClearAfterMinutes != null)
        'autoClearAfterMinutes': autoClearAfterMinutes,
      if (canBeCreatedByRoles != null)
        'canBeCreatedByRoles': canBeCreatedByRoles?.toJson(),
      if (clearanceLogTemplateId != null)
        'clearanceLogTemplateId': clearanceLogTemplateId?.toJson(),
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogResourceFlagTypes',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'category': category,
      if (icon != null) 'icon': icon,
      'color': color,
      'blocksUsage': blocksUsage,
      'requiresClearance': requiresClearance,
      if (clearanceRoles != null) 'clearanceRoles': clearanceRoles?.toJson(),
      if (autoClearAfterMinutes != null)
        'autoClearAfterMinutes': autoClearAfterMinutes,
      if (canBeCreatedByRoles != null)
        'canBeCreatedByRoles': canBeCreatedByRoles?.toJson(),
      if (clearanceLogTemplateId != null)
        'clearanceLogTemplateId': clearanceLogTemplateId?.toJson(),
      'isActive': isActive,
    };
  }

  static ElogResourceFlagTypesInclude include() {
    return ElogResourceFlagTypesInclude._();
  }

  static ElogResourceFlagTypesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogResourceFlagTypesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceFlagTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceFlagTypesTable>? orderByList,
    ElogResourceFlagTypesInclude? include,
  }) {
    return ElogResourceFlagTypesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogResourceFlagTypes.t),
      orderByList: orderByList?.call(ElogResourceFlagTypes.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogResourceFlagTypesImpl extends ElogResourceFlagTypes {
  _ElogResourceFlagTypesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required String category,
    String? icon,
    required String color,
    required bool blocksUsage,
    required bool requiresClearance,
    List<String>? clearanceRoles,
    int? autoClearAfterMinutes,
    List<String>? canBeCreatedByRoles,
    _is.UuidValue? clearanceLogTemplateId,
    required bool isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         category: category,
         icon: icon,
         color: color,
         blocksUsage: blocksUsage,
         requiresClearance: requiresClearance,
         clearanceRoles: clearanceRoles,
         autoClearAfterMinutes: autoClearAfterMinutes,
         canBeCreatedByRoles: canBeCreatedByRoles,
         clearanceLogTemplateId: clearanceLogTemplateId,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogResourceFlagTypes]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogResourceFlagTypes copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    String? category,
    Object? icon = _Undefined,
    String? color,
    bool? blocksUsage,
    bool? requiresClearance,
    Object? clearanceRoles = _Undefined,
    Object? autoClearAfterMinutes = _Undefined,
    Object? canBeCreatedByRoles = _Undefined,
    Object? clearanceLogTemplateId = _Undefined,
    bool? isActive,
  }) {
    return ElogResourceFlagTypes(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      category: category ?? this.category,
      icon: icon is String? ? icon : this.icon,
      color: color ?? this.color,
      blocksUsage: blocksUsage ?? this.blocksUsage,
      requiresClearance: requiresClearance ?? this.requiresClearance,
      clearanceRoles: clearanceRoles is List<String>?
          ? clearanceRoles
          : this.clearanceRoles?.map((e0) => e0).toList(),
      autoClearAfterMinutes: autoClearAfterMinutes is int?
          ? autoClearAfterMinutes
          : this.autoClearAfterMinutes,
      canBeCreatedByRoles: canBeCreatedByRoles is List<String>?
          ? canBeCreatedByRoles
          : this.canBeCreatedByRoles?.map((e0) => e0).toList(),
      clearanceLogTemplateId: clearanceLogTemplateId is _is.UuidValue?
          ? clearanceLogTemplateId
          : this.clearanceLogTemplateId,
      isActive: isActive ?? this.isActive,
    );
  }
}

class ElogResourceFlagTypesUpdateTable
    extends _is.UpdateTable<ElogResourceFlagTypesTable> {
  ElogResourceFlagTypesUpdateTable(super.table);

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

  _is.ColumnValue<String, String> category(String value) => _is.ColumnValue(
    table.category,
    value,
  );

  _is.ColumnValue<String, String> icon(String? value) => _is.ColumnValue(
    table.icon,
    value,
  );

  _is.ColumnValue<String, String> color(String value) => _is.ColumnValue(
    table.color,
    value,
  );

  _is.ColumnValue<bool, bool> blocksUsage(bool value) => _is.ColumnValue(
    table.blocksUsage,
    value,
  );

  _is.ColumnValue<bool, bool> requiresClearance(bool value) => _is.ColumnValue(
    table.requiresClearance,
    value,
  );

  _is.ColumnValue<List<String>, List<String>> clearanceRoles(
    List<String>? value,
  ) => _is.ColumnValue(
    table.clearanceRoles,
    value,
  );

  _is.ColumnValue<int, int> autoClearAfterMinutes(int? value) =>
      _is.ColumnValue(
        table.autoClearAfterMinutes,
        value,
      );

  _is.ColumnValue<List<String>, List<String>> canBeCreatedByRoles(
    List<String>? value,
  ) => _is.ColumnValue(
    table.canBeCreatedByRoles,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> clearanceLogTemplateId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.clearanceLogTemplateId,
    value,
  );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class ElogResourceFlagTypesTable extends _is.Table<_is.UuidValue?> {
  ElogResourceFlagTypesTable({super.tableRelation})
    : super(tableName: 'elog_resource_flag_types') {
    updateTable = ElogResourceFlagTypesUpdateTable(this);
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
    category = _is.ColumnString(
      'category',
      this,
    );
    icon = _is.ColumnString(
      'icon',
      this,
    );
    color = _is.ColumnString(
      'color',
      this,
    );
    blocksUsage = _is.ColumnBool(
      'blocksUsage',
      this,
    );
    requiresClearance = _is.ColumnBool(
      'requiresClearance',
      this,
    );
    clearanceRoles = _is.ColumnSerializable<List<String>>(
      'clearanceRoles',
      this,
    );
    autoClearAfterMinutes = _is.ColumnInt(
      'autoClearAfterMinutes',
      this,
    );
    canBeCreatedByRoles = _is.ColumnSerializable<List<String>>(
      'canBeCreatedByRoles',
      this,
    );
    clearanceLogTemplateId = _is.ColumnUuid(
      'clearanceLogTemplateId',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final ElogResourceFlagTypesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString category;

  late final _is.ColumnString icon;

  late final _is.ColumnString color;

  late final _is.ColumnBool blocksUsage;

  late final _is.ColumnBool requiresClearance;

  late final _is.ColumnSerializable<List<String>> clearanceRoles;

  late final _is.ColumnInt autoClearAfterMinutes;

  late final _is.ColumnSerializable<List<String>> canBeCreatedByRoles;

  late final _is.ColumnUuid clearanceLogTemplateId;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    category,
    icon,
    color,
    blocksUsage,
    requiresClearance,
    clearanceRoles,
    autoClearAfterMinutes,
    canBeCreatedByRoles,
    clearanceLogTemplateId,
    isActive,
  ];
}

class ElogResourceFlagTypesInclude extends _is.IncludeObject {
  ElogResourceFlagTypesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogResourceFlagTypes.t;
}

class ElogResourceFlagTypesIncludeList extends _is.IncludeList {
  ElogResourceFlagTypesIncludeList._({
    _is.WhereExpressionBuilder<ElogResourceFlagTypesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogResourceFlagTypes.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogResourceFlagTypes.t;
}

class ElogResourceFlagTypesRepository {
  const ElogResourceFlagTypesRepository._();

  /// Returns a list of [ElogResourceFlagTypes]s matching the given query parameters.
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
  Future<List<ElogResourceFlagTypes>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceFlagTypesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceFlagTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceFlagTypesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogResourceFlagTypes>(
      where: where?.call(ElogResourceFlagTypes.t),
      orderBy: orderBy?.call(ElogResourceFlagTypes.t),
      orderByList: orderByList?.call(ElogResourceFlagTypes.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogResourceFlagTypes] matching the given query parameters.
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
  Future<ElogResourceFlagTypes?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceFlagTypesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogResourceFlagTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceFlagTypesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogResourceFlagTypes>(
      where: where?.call(ElogResourceFlagTypes.t),
      orderBy: orderBy?.call(ElogResourceFlagTypes.t),
      orderByList: orderByList?.call(ElogResourceFlagTypes.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogResourceFlagTypes] by its [id] or null if no such row exists.
  Future<ElogResourceFlagTypes?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogResourceFlagTypes>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogResourceFlagTypes]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogResourceFlagTypes]s will have their `id` fields set.
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
  Future<List<ElogResourceFlagTypes>> insert(
    _is.DatabaseSession session,
    List<ElogResourceFlagTypes> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogResourceFlagTypes>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogResourceFlagTypes] and returns the inserted row.
  ///
  /// The returned [ElogResourceFlagTypes] will have its `id` field set.
  Future<ElogResourceFlagTypes> insertRow(
    _is.DatabaseSession session,
    ElogResourceFlagTypes row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogResourceFlagTypes>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogResourceFlagTypes]s in the list and returns the resulting rows.
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
  /// The returned [ElogResourceFlagTypes]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceFlagTypes>> upsert(
    _is.DatabaseSession session,
    List<ElogResourceFlagTypes> rows, {
    required _is.ColumnSelections<ElogResourceFlagTypesTable> conflictColumns,
    _is.ColumnSelections<ElogResourceFlagTypesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogResourceFlagTypesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogResourceFlagTypes>(
      rows,
      conflictColumns: conflictColumns(ElogResourceFlagTypes.t),
      updateColumns: updateColumns?.call(ElogResourceFlagTypes.t),
      updateWhere: updateWhere?.call(ElogResourceFlagTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogResourceFlagTypes] and returns the resulting row.
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
  /// The returned [ElogResourceFlagTypes] will have its `id` field set.
  Future<ElogResourceFlagTypes?> upsertRow(
    _is.DatabaseSession session,
    ElogResourceFlagTypes row, {
    required _is.ColumnSelections<ElogResourceFlagTypesTable> conflictColumns,
    _is.ColumnSelections<ElogResourceFlagTypesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogResourceFlagTypesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogResourceFlagTypes>(
      row,
      conflictColumns: conflictColumns(ElogResourceFlagTypes.t),
      updateColumns: updateColumns?.call(ElogResourceFlagTypes.t),
      updateWhere: updateWhere?.call(ElogResourceFlagTypes.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogResourceFlagTypes]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceFlagTypes>> update(
    _is.DatabaseSession session,
    List<ElogResourceFlagTypes> rows, {
    _is.ColumnSelections<ElogResourceFlagTypesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogResourceFlagTypes>(
      rows,
      columns: columns?.call(ElogResourceFlagTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogResourceFlagTypes]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogResourceFlagTypes> updateRow(
    _is.DatabaseSession session,
    ElogResourceFlagTypes row, {
    _is.ColumnSelections<ElogResourceFlagTypesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogResourceFlagTypes>(
      row,
      columns: columns?.call(ElogResourceFlagTypes.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogResourceFlagTypes] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogResourceFlagTypes?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogResourceFlagTypesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogResourceFlagTypes>(
      id,
      columnValues: columnValues(ElogResourceFlagTypes.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogResourceFlagTypes]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogResourceFlagTypes>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogResourceFlagTypesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogResourceFlagTypesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogResourceFlagTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceFlagTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogResourceFlagTypes>(
      columnValues: columnValues(ElogResourceFlagTypes.t.updateTable),
      where: where(ElogResourceFlagTypes.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogResourceFlagTypes.t),
      orderByList: orderByList?.call(ElogResourceFlagTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogResourceFlagTypes]s in the list and returns the deleted rows.
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
  Future<List<ElogResourceFlagTypes>> delete(
    _is.DatabaseSession session,
    List<ElogResourceFlagTypes> rows, {
    _is.OrderByBuilder<ElogResourceFlagTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceFlagTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogResourceFlagTypes>(
      rows,
      orderBy: orderBy?.call(ElogResourceFlagTypes.t),
      orderByList: orderByList?.call(ElogResourceFlagTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogResourceFlagTypes].
  Future<ElogResourceFlagTypes> deleteRow(
    _is.DatabaseSession session,
    ElogResourceFlagTypes row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogResourceFlagTypes>(
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
  Future<List<ElogResourceFlagTypes>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogResourceFlagTypesTable> where,
    _is.OrderByBuilder<ElogResourceFlagTypesTable>? orderBy,
    _is.OrderByListBuilder<ElogResourceFlagTypesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogResourceFlagTypes>(
      where: where(ElogResourceFlagTypes.t),
      orderBy: orderBy?.call(ElogResourceFlagTypes.t),
      orderByList: orderByList?.call(ElogResourceFlagTypes.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogResourceFlagTypesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogResourceFlagTypes>(
      where: where?.call(ElogResourceFlagTypes.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogResourceFlagTypes] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogResourceFlagTypesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogResourceFlagTypes>(
      where: where(ElogResourceFlagTypes.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
