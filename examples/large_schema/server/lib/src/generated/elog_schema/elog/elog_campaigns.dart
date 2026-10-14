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

abstract class ElogCampaigns
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogCampaigns._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.productId,
    required this.batchLimit,
    required this.status,
    this.startedAt,
    this.completedAt,
    this.notes,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
    required this.versionNumber,
  });

  factory ElogCampaigns({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required _is.UuidValue productId,
    required int batchLimit,
    required String status,
    DateTime? startedAt,
    DateTime? completedAt,
    String? notes,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    required int versionNumber,
  }) = _ElogCampaignsImpl;

  factory ElogCampaigns.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogCampaigns(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      productId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['productId'],
      ),
      batchLimit: jsonSerialization['batchLimit'] as int,
      status: jsonSerialization['status'] as String,
      startedAt: jsonSerialization['startedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      notes: jsonSerialization['notes'] as String?,
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
      versionNumber: jsonSerialization['versionNumber'] as int,
    );
  }

  static final t = ElogCampaignsTable();

  static const db = ElogCampaignsRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  _is.UuidValue productId;

  int batchLimit;

  String status;

  DateTime? startedAt;

  DateTime? completedAt;

  String? notes;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  int versionNumber;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogCampaigns]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogCampaigns copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    _is.UuidValue? productId,
    int? batchLimit,
    String? status,
    DateTime? startedAt,
    DateTime? completedAt,
    String? notes,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    int? versionNumber,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogCampaigns',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'productId': productId.toJson(),
      'batchLimit': batchLimit,
      'status': status,
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (notes != null) 'notes': notes,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      'versionNumber': versionNumber,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogCampaigns',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'productId': productId.toJson(),
      'batchLimit': batchLimit,
      'status': status,
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (notes != null) 'notes': notes,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      'versionNumber': versionNumber,
    };
  }

  static ElogCampaignsInclude include() {
    return ElogCampaignsInclude._();
  }

  static ElogCampaignsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogCampaignsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogCampaignsTable>? orderBy,
    _is.OrderByListBuilder<ElogCampaignsTable>? orderByList,
    ElogCampaignsInclude? include,
  }) {
    return ElogCampaignsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogCampaigns.t),
      orderByList: orderByList?.call(ElogCampaigns.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogCampaignsImpl extends ElogCampaigns {
  _ElogCampaignsImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required _is.UuidValue productId,
    required int batchLimit,
    required String status,
    DateTime? startedAt,
    DateTime? completedAt,
    String? notes,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    required int versionNumber,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         productId: productId,
         batchLimit: batchLimit,
         status: status,
         startedAt: startedAt,
         completedAt: completedAt,
         notes: notes,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
         versionNumber: versionNumber,
       );

  /// Returns a shallow copy of this [ElogCampaigns]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogCampaigns copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    _is.UuidValue? productId,
    int? batchLimit,
    String? status,
    Object? startedAt = _Undefined,
    Object? completedAt = _Undefined,
    Object? notes = _Undefined,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    int? versionNumber,
  }) {
    return ElogCampaigns(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      productId: productId ?? this.productId,
      batchLimit: batchLimit ?? this.batchLimit,
      status: status ?? this.status,
      startedAt: startedAt is DateTime? ? startedAt : this.startedAt,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      notes: notes is String? ? notes : this.notes,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
      versionNumber: versionNumber ?? this.versionNumber,
    );
  }
}

class ElogCampaignsUpdateTable extends _is.UpdateTable<ElogCampaignsTable> {
  ElogCampaignsUpdateTable(super.table);

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

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> productId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.productId,
    value,
  );

  _is.ColumnValue<int, int> batchLimit(int value) => _is.ColumnValue(
    table.batchLimit,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> startedAt(DateTime? value) =>
      _is.ColumnValue(
        table.startedAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> completedAt(DateTime? value) =>
      _is.ColumnValue(
        table.completedAt,
        value,
      );

  _is.ColumnValue<String, String> notes(String? value) => _is.ColumnValue(
    table.notes,
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

  _is.ColumnValue<int, int> versionNumber(int value) => _is.ColumnValue(
    table.versionNumber,
    value,
  );
}

class ElogCampaignsTable extends _is.Table<_is.UuidValue?> {
  ElogCampaignsTable({super.tableRelation})
    : super(tableName: 'elog_campaigns') {
    updateTable = ElogCampaignsUpdateTable(this);
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
    productId = _is.ColumnUuid(
      'productId',
      this,
    );
    batchLimit = _is.ColumnInt(
      'batchLimit',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    startedAt = _is.ColumnDateTime(
      'startedAt',
      this,
    );
    completedAt = _is.ColumnDateTime(
      'completedAt',
      this,
    );
    notes = _is.ColumnString(
      'notes',
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
    versionNumber = _is.ColumnInt(
      'versionNumber',
      this,
    );
  }

  late final ElogCampaignsUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnUuid productId;

  late final _is.ColumnInt batchLimit;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime startedAt;

  late final _is.ColumnDateTime completedAt;

  late final _is.ColumnString notes;

  late final _is.ColumnBool isActive;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  late final _is.ColumnInt versionNumber;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    productId,
    batchLimit,
    status,
    startedAt,
    completedAt,
    notes,
    isActive,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
    versionNumber,
  ];
}

class ElogCampaignsInclude extends _is.IncludeObject {
  ElogCampaignsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogCampaigns.t;
}

class ElogCampaignsIncludeList extends _is.IncludeList {
  ElogCampaignsIncludeList._({
    _is.WhereExpressionBuilder<ElogCampaignsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogCampaigns.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogCampaigns.t;
}

class ElogCampaignsRepository {
  const ElogCampaignsRepository._();

  /// Returns a list of [ElogCampaigns]s matching the given query parameters.
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
  Future<List<ElogCampaigns>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogCampaignsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogCampaignsTable>? orderBy,
    _is.OrderByListBuilder<ElogCampaignsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogCampaigns>(
      where: where?.call(ElogCampaigns.t),
      orderBy: orderBy?.call(ElogCampaigns.t),
      orderByList: orderByList?.call(ElogCampaigns.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogCampaigns] matching the given query parameters.
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
  Future<ElogCampaigns?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogCampaignsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogCampaignsTable>? orderBy,
    _is.OrderByListBuilder<ElogCampaignsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogCampaigns>(
      where: where?.call(ElogCampaigns.t),
      orderBy: orderBy?.call(ElogCampaigns.t),
      orderByList: orderByList?.call(ElogCampaigns.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogCampaigns] by its [id] or null if no such row exists.
  Future<ElogCampaigns?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogCampaigns>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogCampaigns]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogCampaigns]s will have their `id` fields set.
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
  Future<List<ElogCampaigns>> insert(
    _is.DatabaseSession session,
    List<ElogCampaigns> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogCampaigns>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogCampaigns] and returns the inserted row.
  ///
  /// The returned [ElogCampaigns] will have its `id` field set.
  Future<ElogCampaigns> insertRow(
    _is.DatabaseSession session,
    ElogCampaigns row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogCampaigns>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogCampaigns]s in the list and returns the resulting rows.
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
  /// The returned [ElogCampaigns]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogCampaigns>> upsert(
    _is.DatabaseSession session,
    List<ElogCampaigns> rows, {
    required _is.ColumnSelections<ElogCampaignsTable> conflictColumns,
    _is.ColumnSelections<ElogCampaignsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogCampaignsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogCampaigns>(
      rows,
      conflictColumns: conflictColumns(ElogCampaigns.t),
      updateColumns: updateColumns?.call(ElogCampaigns.t),
      updateWhere: updateWhere?.call(ElogCampaigns.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogCampaigns] and returns the resulting row.
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
  /// The returned [ElogCampaigns] will have its `id` field set.
  Future<ElogCampaigns?> upsertRow(
    _is.DatabaseSession session,
    ElogCampaigns row, {
    required _is.ColumnSelections<ElogCampaignsTable> conflictColumns,
    _is.ColumnSelections<ElogCampaignsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogCampaignsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogCampaigns>(
      row,
      conflictColumns: conflictColumns(ElogCampaigns.t),
      updateColumns: updateColumns?.call(ElogCampaigns.t),
      updateWhere: updateWhere?.call(ElogCampaigns.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogCampaigns]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogCampaigns>> update(
    _is.DatabaseSession session,
    List<ElogCampaigns> rows, {
    _is.ColumnSelections<ElogCampaignsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogCampaigns>(
      rows,
      columns: columns?.call(ElogCampaigns.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogCampaigns]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogCampaigns> updateRow(
    _is.DatabaseSession session,
    ElogCampaigns row, {
    _is.ColumnSelections<ElogCampaignsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogCampaigns>(
      row,
      columns: columns?.call(ElogCampaigns.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogCampaigns] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogCampaigns?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogCampaignsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogCampaigns>(
      id,
      columnValues: columnValues(ElogCampaigns.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogCampaigns]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogCampaigns>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogCampaignsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogCampaignsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogCampaignsTable>? orderBy,
    _is.OrderByListBuilder<ElogCampaignsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogCampaigns>(
      columnValues: columnValues(ElogCampaigns.t.updateTable),
      where: where(ElogCampaigns.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogCampaigns.t),
      orderByList: orderByList?.call(ElogCampaigns.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogCampaigns]s in the list and returns the deleted rows.
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
  Future<List<ElogCampaigns>> delete(
    _is.DatabaseSession session,
    List<ElogCampaigns> rows, {
    _is.OrderByBuilder<ElogCampaignsTable>? orderBy,
    _is.OrderByListBuilder<ElogCampaignsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogCampaigns>(
      rows,
      orderBy: orderBy?.call(ElogCampaigns.t),
      orderByList: orderByList?.call(ElogCampaigns.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogCampaigns].
  Future<ElogCampaigns> deleteRow(
    _is.DatabaseSession session,
    ElogCampaigns row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogCampaigns>(
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
  Future<List<ElogCampaigns>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogCampaignsTable> where,
    _is.OrderByBuilder<ElogCampaignsTable>? orderBy,
    _is.OrderByListBuilder<ElogCampaignsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogCampaigns>(
      where: where(ElogCampaigns.t),
      orderBy: orderBy?.call(ElogCampaigns.t),
      orderByList: orderByList?.call(ElogCampaigns.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogCampaignsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogCampaigns>(
      where: where?.call(ElogCampaigns.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogCampaigns] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogCampaignsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogCampaigns>(
      where: where(ElogCampaigns.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
