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

abstract class ElogToolingProductQualifications
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogToolingProductQualifications._({
    this.id,
    required this.toolingTypeId,
    required this.productId,
    required this.status,
    required this.effectiveFrom,
    this.effectiveUntil,
    this.qualificationReference,
    required this.qualifiedAt,
    this.qualifiedBy,
    required this.versionNumber,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogToolingProductQualifications({
    _is.UuidValue? id,
    required _is.UuidValue toolingTypeId,
    required _is.UuidValue productId,
    required String status,
    required DateTime effectiveFrom,
    DateTime? effectiveUntil,
    String? qualificationReference,
    required DateTime qualifiedAt,
    _is.UuidValue? qualifiedBy,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) = _ElogToolingProductQualificationsImpl;

  factory ElogToolingProductQualifications.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogToolingProductQualifications(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      toolingTypeId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['toolingTypeId'],
      ),
      productId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['productId'],
      ),
      status: jsonSerialization['status'] as String,
      effectiveFrom: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['effectiveFrom'],
      ),
      effectiveUntil: jsonSerialization['effectiveUntil'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['effectiveUntil'],
            ),
      qualificationReference:
          jsonSerialization['qualificationReference'] as String?,
      qualifiedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['qualifiedAt'],
      ),
      qualifiedBy: jsonSerialization['qualifiedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['qualifiedBy'],
            ),
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

  static final t = ElogToolingProductQualificationsTable();

  static const db = ElogToolingProductQualificationsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue toolingTypeId;

  _is.UuidValue productId;

  String status;

  DateTime effectiveFrom;

  DateTime? effectiveUntil;

  String? qualificationReference;

  DateTime qualifiedAt;

  _is.UuidValue? qualifiedBy;

  int versionNumber;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogToolingProductQualifications]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogToolingProductQualifications copyWith({
    _is.UuidValue? id,
    _is.UuidValue? toolingTypeId,
    _is.UuidValue? productId,
    String? status,
    DateTime? effectiveFrom,
    DateTime? effectiveUntil,
    String? qualificationReference,
    DateTime? qualifiedAt,
    _is.UuidValue? qualifiedBy,
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
      '__className__': 'ElogToolingProductQualifications',
      if (id != null) 'id': id?.toJson(),
      'toolingTypeId': toolingTypeId.toJson(),
      'productId': productId.toJson(),
      'status': status,
      'effectiveFrom': effectiveFrom.toJson(),
      if (effectiveUntil != null) 'effectiveUntil': effectiveUntil?.toJson(),
      if (qualificationReference != null)
        'qualificationReference': qualificationReference,
      'qualifiedAt': qualifiedAt.toJson(),
      if (qualifiedBy != null) 'qualifiedBy': qualifiedBy?.toJson(),
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
      '__className__': 'ElogToolingProductQualifications',
      if (id != null) 'id': id?.toJson(),
      'toolingTypeId': toolingTypeId.toJson(),
      'productId': productId.toJson(),
      'status': status,
      'effectiveFrom': effectiveFrom.toJson(),
      if (effectiveUntil != null) 'effectiveUntil': effectiveUntil?.toJson(),
      if (qualificationReference != null)
        'qualificationReference': qualificationReference,
      'qualifiedAt': qualifiedAt.toJson(),
      if (qualifiedBy != null) 'qualifiedBy': qualifiedBy?.toJson(),
      'versionNumber': versionNumber,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  static ElogToolingProductQualificationsInclude include() {
    return ElogToolingProductQualificationsInclude._();
  }

  static ElogToolingProductQualificationsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogToolingProductQualificationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogToolingProductQualificationsTable>? orderBy,
    _is.OrderByListBuilder<ElogToolingProductQualificationsTable>? orderByList,
    ElogToolingProductQualificationsInclude? include,
  }) {
    return ElogToolingProductQualificationsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogToolingProductQualifications.t),
      orderByList: orderByList?.call(ElogToolingProductQualifications.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogToolingProductQualificationsImpl
    extends ElogToolingProductQualifications {
  _ElogToolingProductQualificationsImpl({
    _is.UuidValue? id,
    required _is.UuidValue toolingTypeId,
    required _is.UuidValue productId,
    required String status,
    required DateTime effectiveFrom,
    DateTime? effectiveUntil,
    String? qualificationReference,
    required DateTime qualifiedAt,
    _is.UuidValue? qualifiedBy,
    required int versionNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
  }) : super._(
         id: id,
         toolingTypeId: toolingTypeId,
         productId: productId,
         status: status,
         effectiveFrom: effectiveFrom,
         effectiveUntil: effectiveUntil,
         qualificationReference: qualificationReference,
         qualifiedAt: qualifiedAt,
         qualifiedBy: qualifiedBy,
         versionNumber: versionNumber,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogToolingProductQualifications]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogToolingProductQualifications copyWith({
    Object? id = _Undefined,
    _is.UuidValue? toolingTypeId,
    _is.UuidValue? productId,
    String? status,
    DateTime? effectiveFrom,
    Object? effectiveUntil = _Undefined,
    Object? qualificationReference = _Undefined,
    DateTime? qualifiedAt,
    Object? qualifiedBy = _Undefined,
    int? versionNumber,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogToolingProductQualifications(
      id: id is _is.UuidValue? ? id : this.id,
      toolingTypeId: toolingTypeId ?? this.toolingTypeId,
      productId: productId ?? this.productId,
      status: status ?? this.status,
      effectiveFrom: effectiveFrom ?? this.effectiveFrom,
      effectiveUntil: effectiveUntil is DateTime?
          ? effectiveUntil
          : this.effectiveUntil,
      qualificationReference: qualificationReference is String?
          ? qualificationReference
          : this.qualificationReference,
      qualifiedAt: qualifiedAt ?? this.qualifiedAt,
      qualifiedBy: qualifiedBy is _is.UuidValue?
          ? qualifiedBy
          : this.qualifiedBy,
      versionNumber: versionNumber ?? this.versionNumber,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}

class ElogToolingProductQualificationsUpdateTable
    extends _is.UpdateTable<ElogToolingProductQualificationsTable> {
  ElogToolingProductQualificationsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> toolingTypeId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.toolingTypeId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> productId(
    _is.UuidValue value,
  ) => _is.ColumnValue(
    table.productId,
    value,
  );

  _is.ColumnValue<String, String> status(String value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> effectiveFrom(DateTime value) =>
      _is.ColumnValue(
        table.effectiveFrom,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> effectiveUntil(DateTime? value) =>
      _is.ColumnValue(
        table.effectiveUntil,
        value,
      );

  _is.ColumnValue<String, String> qualificationReference(String? value) =>
      _is.ColumnValue(
        table.qualificationReference,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> qualifiedAt(DateTime value) =>
      _is.ColumnValue(
        table.qualifiedAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> qualifiedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.qualifiedBy,
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

class ElogToolingProductQualificationsTable extends _is.Table<_is.UuidValue?> {
  ElogToolingProductQualificationsTable({super.tableRelation})
    : super(tableName: 'elog_tooling_product_qualifications') {
    updateTable = ElogToolingProductQualificationsUpdateTable(this);
    toolingTypeId = _is.ColumnUuid(
      'toolingTypeId',
      this,
    );
    productId = _is.ColumnUuid(
      'productId',
      this,
    );
    status = _is.ColumnString(
      'status',
      this,
    );
    effectiveFrom = _is.ColumnDateTime(
      'effectiveFrom',
      this,
    );
    effectiveUntil = _is.ColumnDateTime(
      'effectiveUntil',
      this,
    );
    qualificationReference = _is.ColumnString(
      'qualificationReference',
      this,
    );
    qualifiedAt = _is.ColumnDateTime(
      'qualifiedAt',
      this,
    );
    qualifiedBy = _is.ColumnUuid(
      'qualifiedBy',
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

  late final ElogToolingProductQualificationsUpdateTable updateTable;

  late final _is.ColumnUuid toolingTypeId;

  late final _is.ColumnUuid productId;

  late final _is.ColumnString status;

  late final _is.ColumnDateTime effectiveFrom;

  late final _is.ColumnDateTime effectiveUntil;

  late final _is.ColumnString qualificationReference;

  late final _is.ColumnDateTime qualifiedAt;

  late final _is.ColumnUuid qualifiedBy;

  late final _is.ColumnInt versionNumber;

  late final _is.ColumnBool isActive;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  @override
  List<_is.Column> get columns => [
    id,
    toolingTypeId,
    productId,
    status,
    effectiveFrom,
    effectiveUntil,
    qualificationReference,
    qualifiedAt,
    qualifiedBy,
    versionNumber,
    isActive,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
  ];
}

class ElogToolingProductQualificationsInclude extends _is.IncludeObject {
  ElogToolingProductQualificationsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogToolingProductQualifications.t;
}

class ElogToolingProductQualificationsIncludeList extends _is.IncludeList {
  ElogToolingProductQualificationsIncludeList._({
    _is.WhereExpressionBuilder<ElogToolingProductQualificationsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogToolingProductQualifications.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogToolingProductQualifications.t;
}

class ElogToolingProductQualificationsRepository {
  const ElogToolingProductQualificationsRepository._();

  /// Returns a list of [ElogToolingProductQualifications]s matching the given query parameters.
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
  Future<List<ElogToolingProductQualifications>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogToolingProductQualificationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogToolingProductQualificationsTable>? orderBy,
    _is.OrderByListBuilder<ElogToolingProductQualificationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogToolingProductQualifications>(
      where: where?.call(ElogToolingProductQualifications.t),
      orderBy: orderBy?.call(ElogToolingProductQualifications.t),
      orderByList: orderByList?.call(ElogToolingProductQualifications.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogToolingProductQualifications] matching the given query parameters.
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
  Future<ElogToolingProductQualifications?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogToolingProductQualificationsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogToolingProductQualificationsTable>? orderBy,
    _is.OrderByListBuilder<ElogToolingProductQualificationsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogToolingProductQualifications>(
      where: where?.call(ElogToolingProductQualifications.t),
      orderBy: orderBy?.call(ElogToolingProductQualifications.t),
      orderByList: orderByList?.call(ElogToolingProductQualifications.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogToolingProductQualifications] by its [id] or null if no such row exists.
  Future<ElogToolingProductQualifications?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogToolingProductQualifications>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogToolingProductQualifications]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogToolingProductQualifications]s will have their `id` fields set.
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
  Future<List<ElogToolingProductQualifications>> insert(
    _is.DatabaseSession session,
    List<ElogToolingProductQualifications> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogToolingProductQualifications>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogToolingProductQualifications] and returns the inserted row.
  ///
  /// The returned [ElogToolingProductQualifications] will have its `id` field set.
  Future<ElogToolingProductQualifications> insertRow(
    _is.DatabaseSession session,
    ElogToolingProductQualifications row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogToolingProductQualifications>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogToolingProductQualifications]s in the list and returns the resulting rows.
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
  /// The returned [ElogToolingProductQualifications]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogToolingProductQualifications>> upsert(
    _is.DatabaseSession session,
    List<ElogToolingProductQualifications> rows, {
    required _is.ColumnSelections<ElogToolingProductQualificationsTable>
    conflictColumns,
    _is.ColumnSelections<ElogToolingProductQualificationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogToolingProductQualificationsTable>?
    updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogToolingProductQualifications>(
      rows,
      conflictColumns: conflictColumns(ElogToolingProductQualifications.t),
      updateColumns: updateColumns?.call(ElogToolingProductQualifications.t),
      updateWhere: updateWhere?.call(ElogToolingProductQualifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogToolingProductQualifications] and returns the resulting row.
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
  /// The returned [ElogToolingProductQualifications] will have its `id` field set.
  Future<ElogToolingProductQualifications?> upsertRow(
    _is.DatabaseSession session,
    ElogToolingProductQualifications row, {
    required _is.ColumnSelections<ElogToolingProductQualificationsTable>
    conflictColumns,
    _is.ColumnSelections<ElogToolingProductQualificationsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogToolingProductQualificationsTable>?
    updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogToolingProductQualifications>(
      row,
      conflictColumns: conflictColumns(ElogToolingProductQualifications.t),
      updateColumns: updateColumns?.call(ElogToolingProductQualifications.t),
      updateWhere: updateWhere?.call(ElogToolingProductQualifications.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogToolingProductQualifications]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogToolingProductQualifications>> update(
    _is.DatabaseSession session,
    List<ElogToolingProductQualifications> rows, {
    _is.ColumnSelections<ElogToolingProductQualificationsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogToolingProductQualifications>(
      rows,
      columns: columns?.call(ElogToolingProductQualifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogToolingProductQualifications]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogToolingProductQualifications> updateRow(
    _is.DatabaseSession session,
    ElogToolingProductQualifications row, {
    _is.ColumnSelections<ElogToolingProductQualificationsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogToolingProductQualifications>(
      row,
      columns: columns?.call(ElogToolingProductQualifications.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogToolingProductQualifications] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogToolingProductQualifications?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<
      ElogToolingProductQualificationsUpdateTable
    >
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogToolingProductQualifications>(
      id,
      columnValues: columnValues(
        ElogToolingProductQualifications.t.updateTable,
      ),
      transaction: transaction,
    );
  }

  /// Updates all [ElogToolingProductQualifications]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogToolingProductQualifications>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<
      ElogToolingProductQualificationsUpdateTable
    >
    columnValues,
    required _is.WhereExpressionBuilder<ElogToolingProductQualificationsTable>
    where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogToolingProductQualificationsTable>? orderBy,
    _is.OrderByListBuilder<ElogToolingProductQualificationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogToolingProductQualifications>(
      columnValues: columnValues(
        ElogToolingProductQualifications.t.updateTable,
      ),
      where: where(ElogToolingProductQualifications.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogToolingProductQualifications.t),
      orderByList: orderByList?.call(ElogToolingProductQualifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogToolingProductQualifications]s in the list and returns the deleted rows.
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
  Future<List<ElogToolingProductQualifications>> delete(
    _is.DatabaseSession session,
    List<ElogToolingProductQualifications> rows, {
    _is.OrderByBuilder<ElogToolingProductQualificationsTable>? orderBy,
    _is.OrderByListBuilder<ElogToolingProductQualificationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogToolingProductQualifications>(
      rows,
      orderBy: orderBy?.call(ElogToolingProductQualifications.t),
      orderByList: orderByList?.call(ElogToolingProductQualifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogToolingProductQualifications].
  Future<ElogToolingProductQualifications> deleteRow(
    _is.DatabaseSession session,
    ElogToolingProductQualifications row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogToolingProductQualifications>(
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
  Future<List<ElogToolingProductQualifications>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogToolingProductQualificationsTable>
    where,
    _is.OrderByBuilder<ElogToolingProductQualificationsTable>? orderBy,
    _is.OrderByListBuilder<ElogToolingProductQualificationsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogToolingProductQualifications>(
      where: where(ElogToolingProductQualifications.t),
      orderBy: orderBy?.call(ElogToolingProductQualifications.t),
      orderByList: orderByList?.call(ElogToolingProductQualifications.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogToolingProductQualificationsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogToolingProductQualifications>(
      where: where?.call(ElogToolingProductQualifications.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogToolingProductQualifications] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogToolingProductQualificationsTable>
    where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogToolingProductQualifications>(
      where: where(ElogToolingProductQualifications.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
