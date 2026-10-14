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

abstract class PublicEntityLifecycleConfigurations
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  PublicEntityLifecycleConfigurations._({
    this.id,
    required this.entityType,
    required this.registrationEsignRequired,
    required this.registrationRemarksRequired,
    required this.registrationApprovalsRequired,
    required this.modificationEsignRequired,
    required this.modificationRemarksRequired,
    required this.modificationApprovalsRequired,
    required this.statusChangeEsignRequired,
    required this.statusChangeRemarksRequired,
    required this.statusChangeApprovalsRequired,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
    required this.versionNumber,
  });

  factory PublicEntityLifecycleConfigurations({
    _is.UuidValue? id,
    required String entityType,
    required bool registrationEsignRequired,
    required bool registrationRemarksRequired,
    required int registrationApprovalsRequired,
    required bool modificationEsignRequired,
    required bool modificationRemarksRequired,
    required int modificationApprovalsRequired,
    required bool statusChangeEsignRequired,
    required bool statusChangeRemarksRequired,
    required int statusChangeApprovalsRequired,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    required int versionNumber,
  }) = _PublicEntityLifecycleConfigurationsImpl;

  factory PublicEntityLifecycleConfigurations.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return PublicEntityLifecycleConfigurations(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      entityType: jsonSerialization['entityType'] as String,
      registrationEsignRequired: _is.BoolJsonExtension.fromJson(
        jsonSerialization['registrationEsignRequired'],
      ),
      registrationRemarksRequired: _is.BoolJsonExtension.fromJson(
        jsonSerialization['registrationRemarksRequired'],
      ),
      registrationApprovalsRequired:
          jsonSerialization['registrationApprovalsRequired'] as int,
      modificationEsignRequired: _is.BoolJsonExtension.fromJson(
        jsonSerialization['modificationEsignRequired'],
      ),
      modificationRemarksRequired: _is.BoolJsonExtension.fromJson(
        jsonSerialization['modificationRemarksRequired'],
      ),
      modificationApprovalsRequired:
          jsonSerialization['modificationApprovalsRequired'] as int,
      statusChangeEsignRequired: _is.BoolJsonExtension.fromJson(
        jsonSerialization['statusChangeEsignRequired'],
      ),
      statusChangeRemarksRequired: _is.BoolJsonExtension.fromJson(
        jsonSerialization['statusChangeRemarksRequired'],
      ),
      statusChangeApprovalsRequired:
          jsonSerialization['statusChangeApprovalsRequired'] as int,
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

  static final t = PublicEntityLifecycleConfigurationsTable();

  static const db = PublicEntityLifecycleConfigurationsRepository._();

  @override
  _is.UuidValue? id;

  String entityType;

  bool registrationEsignRequired;

  bool registrationRemarksRequired;

  int registrationApprovalsRequired;

  bool modificationEsignRequired;

  bool modificationRemarksRequired;

  int modificationApprovalsRequired;

  bool statusChangeEsignRequired;

  bool statusChangeRemarksRequired;

  int statusChangeApprovalsRequired;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _is.UuidValue? createdBy;

  _is.UuidValue? updatedBy;

  int versionNumber;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [PublicEntityLifecycleConfigurations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  PublicEntityLifecycleConfigurations copyWith({
    _is.UuidValue? id,
    String? entityType,
    bool? registrationEsignRequired,
    bool? registrationRemarksRequired,
    int? registrationApprovalsRequired,
    bool? modificationEsignRequired,
    bool? modificationRemarksRequired,
    int? modificationApprovalsRequired,
    bool? statusChangeEsignRequired,
    bool? statusChangeRemarksRequired,
    int? statusChangeApprovalsRequired,
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
      '__className__': 'PublicEntityLifecycleConfigurations',
      if (id != null) 'id': id?.toJson(),
      'entityType': entityType,
      'registrationEsignRequired': registrationEsignRequired,
      'registrationRemarksRequired': registrationRemarksRequired,
      'registrationApprovalsRequired': registrationApprovalsRequired,
      'modificationEsignRequired': modificationEsignRequired,
      'modificationRemarksRequired': modificationRemarksRequired,
      'modificationApprovalsRequired': modificationApprovalsRequired,
      'statusChangeEsignRequired': statusChangeEsignRequired,
      'statusChangeRemarksRequired': statusChangeRemarksRequired,
      'statusChangeApprovalsRequired': statusChangeApprovalsRequired,
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
      '__className__': 'PublicEntityLifecycleConfigurations',
      if (id != null) 'id': id?.toJson(),
      'entityType': entityType,
      'registrationEsignRequired': registrationEsignRequired,
      'registrationRemarksRequired': registrationRemarksRequired,
      'registrationApprovalsRequired': registrationApprovalsRequired,
      'modificationEsignRequired': modificationEsignRequired,
      'modificationRemarksRequired': modificationRemarksRequired,
      'modificationApprovalsRequired': modificationApprovalsRequired,
      'statusChangeEsignRequired': statusChangeEsignRequired,
      'statusChangeRemarksRequired': statusChangeRemarksRequired,
      'statusChangeApprovalsRequired': statusChangeApprovalsRequired,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      'versionNumber': versionNumber,
    };
  }

  static PublicEntityLifecycleConfigurationsInclude include() {
    return PublicEntityLifecycleConfigurationsInclude._();
  }

  static PublicEntityLifecycleConfigurationsIncludeList includeList({
    _is.WhereExpressionBuilder<PublicEntityLifecycleConfigurationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityLifecycleConfigurationsTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityLifecycleConfigurationsTable>?
    orderByList,
    PublicEntityLifecycleConfigurationsInclude? include,
  }) {
    return PublicEntityLifecycleConfigurationsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicEntityLifecycleConfigurations.t),
      orderByList: orderByList?.call(PublicEntityLifecycleConfigurations.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicEntityLifecycleConfigurationsImpl
    extends PublicEntityLifecycleConfigurations {
  _PublicEntityLifecycleConfigurationsImpl({
    _is.UuidValue? id,
    required String entityType,
    required bool registrationEsignRequired,
    required bool registrationRemarksRequired,
    required int registrationApprovalsRequired,
    required bool modificationEsignRequired,
    required bool modificationRemarksRequired,
    required int modificationApprovalsRequired,
    required bool statusChangeEsignRequired,
    required bool statusChangeRemarksRequired,
    required int statusChangeApprovalsRequired,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _is.UuidValue? createdBy,
    _is.UuidValue? updatedBy,
    required int versionNumber,
  }) : super._(
         id: id,
         entityType: entityType,
         registrationEsignRequired: registrationEsignRequired,
         registrationRemarksRequired: registrationRemarksRequired,
         registrationApprovalsRequired: registrationApprovalsRequired,
         modificationEsignRequired: modificationEsignRequired,
         modificationRemarksRequired: modificationRemarksRequired,
         modificationApprovalsRequired: modificationApprovalsRequired,
         statusChangeEsignRequired: statusChangeEsignRequired,
         statusChangeRemarksRequired: statusChangeRemarksRequired,
         statusChangeApprovalsRequired: statusChangeApprovalsRequired,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
         versionNumber: versionNumber,
       );

  /// Returns a shallow copy of this [PublicEntityLifecycleConfigurations]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  PublicEntityLifecycleConfigurations copyWith({
    Object? id = _Undefined,
    String? entityType,
    bool? registrationEsignRequired,
    bool? registrationRemarksRequired,
    int? registrationApprovalsRequired,
    bool? modificationEsignRequired,
    bool? modificationRemarksRequired,
    int? modificationApprovalsRequired,
    bool? statusChangeEsignRequired,
    bool? statusChangeRemarksRequired,
    int? statusChangeApprovalsRequired,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    int? versionNumber,
  }) {
    return PublicEntityLifecycleConfigurations(
      id: id is _is.UuidValue? ? id : this.id,
      entityType: entityType ?? this.entityType,
      registrationEsignRequired:
          registrationEsignRequired ?? this.registrationEsignRequired,
      registrationRemarksRequired:
          registrationRemarksRequired ?? this.registrationRemarksRequired,
      registrationApprovalsRequired:
          registrationApprovalsRequired ?? this.registrationApprovalsRequired,
      modificationEsignRequired:
          modificationEsignRequired ?? this.modificationEsignRequired,
      modificationRemarksRequired:
          modificationRemarksRequired ?? this.modificationRemarksRequired,
      modificationApprovalsRequired:
          modificationApprovalsRequired ?? this.modificationApprovalsRequired,
      statusChangeEsignRequired:
          statusChangeEsignRequired ?? this.statusChangeEsignRequired,
      statusChangeRemarksRequired:
          statusChangeRemarksRequired ?? this.statusChangeRemarksRequired,
      statusChangeApprovalsRequired:
          statusChangeApprovalsRequired ?? this.statusChangeApprovalsRequired,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _is.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _is.UuidValue? ? updatedBy : this.updatedBy,
      versionNumber: versionNumber ?? this.versionNumber,
    );
  }
}

class PublicEntityLifecycleConfigurationsUpdateTable
    extends _is.UpdateTable<PublicEntityLifecycleConfigurationsTable> {
  PublicEntityLifecycleConfigurationsUpdateTable(super.table);

  _is.ColumnValue<String, String> entityType(String value) => _is.ColumnValue(
    table.entityType,
    value,
  );

  _is.ColumnValue<bool, bool> registrationEsignRequired(bool value) =>
      _is.ColumnValue(
        table.registrationEsignRequired,
        value,
      );

  _is.ColumnValue<bool, bool> registrationRemarksRequired(bool value) =>
      _is.ColumnValue(
        table.registrationRemarksRequired,
        value,
      );

  _is.ColumnValue<int, int> registrationApprovalsRequired(int value) =>
      _is.ColumnValue(
        table.registrationApprovalsRequired,
        value,
      );

  _is.ColumnValue<bool, bool> modificationEsignRequired(bool value) =>
      _is.ColumnValue(
        table.modificationEsignRequired,
        value,
      );

  _is.ColumnValue<bool, bool> modificationRemarksRequired(bool value) =>
      _is.ColumnValue(
        table.modificationRemarksRequired,
        value,
      );

  _is.ColumnValue<int, int> modificationApprovalsRequired(int value) =>
      _is.ColumnValue(
        table.modificationApprovalsRequired,
        value,
      );

  _is.ColumnValue<bool, bool> statusChangeEsignRequired(bool value) =>
      _is.ColumnValue(
        table.statusChangeEsignRequired,
        value,
      );

  _is.ColumnValue<bool, bool> statusChangeRemarksRequired(bool value) =>
      _is.ColumnValue(
        table.statusChangeRemarksRequired,
        value,
      );

  _is.ColumnValue<int, int> statusChangeApprovalsRequired(int value) =>
      _is.ColumnValue(
        table.statusChangeApprovalsRequired,
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

class PublicEntityLifecycleConfigurationsTable
    extends _is.Table<_is.UuidValue?> {
  PublicEntityLifecycleConfigurationsTable({super.tableRelation})
    : super(tableName: 'public_entity_lifecycle_configurations') {
    updateTable = PublicEntityLifecycleConfigurationsUpdateTable(this);
    entityType = _is.ColumnString(
      'entityType',
      this,
    );
    registrationEsignRequired = _is.ColumnBool(
      'registrationEsignRequired',
      this,
    );
    registrationRemarksRequired = _is.ColumnBool(
      'registrationRemarksRequired',
      this,
    );
    registrationApprovalsRequired = _is.ColumnInt(
      'registrationApprovalsRequired',
      this,
    );
    modificationEsignRequired = _is.ColumnBool(
      'modificationEsignRequired',
      this,
    );
    modificationRemarksRequired = _is.ColumnBool(
      'modificationRemarksRequired',
      this,
    );
    modificationApprovalsRequired = _is.ColumnInt(
      'modificationApprovalsRequired',
      this,
    );
    statusChangeEsignRequired = _is.ColumnBool(
      'statusChangeEsignRequired',
      this,
    );
    statusChangeRemarksRequired = _is.ColumnBool(
      'statusChangeRemarksRequired',
      this,
    );
    statusChangeApprovalsRequired = _is.ColumnInt(
      'statusChangeApprovalsRequired',
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

  late final PublicEntityLifecycleConfigurationsUpdateTable updateTable;

  late final _is.ColumnString entityType;

  late final _is.ColumnBool registrationEsignRequired;

  late final _is.ColumnBool registrationRemarksRequired;

  late final _is.ColumnInt registrationApprovalsRequired;

  late final _is.ColumnBool modificationEsignRequired;

  late final _is.ColumnBool modificationRemarksRequired;

  late final _is.ColumnInt modificationApprovalsRequired;

  late final _is.ColumnBool statusChangeEsignRequired;

  late final _is.ColumnBool statusChangeRemarksRequired;

  late final _is.ColumnInt statusChangeApprovalsRequired;

  late final _is.ColumnBool isActive;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  late final _is.ColumnUuid createdBy;

  late final _is.ColumnUuid updatedBy;

  late final _is.ColumnInt versionNumber;

  @override
  List<_is.Column> get columns => [
    id,
    entityType,
    registrationEsignRequired,
    registrationRemarksRequired,
    registrationApprovalsRequired,
    modificationEsignRequired,
    modificationRemarksRequired,
    modificationApprovalsRequired,
    statusChangeEsignRequired,
    statusChangeRemarksRequired,
    statusChangeApprovalsRequired,
    isActive,
    createdAt,
    updatedAt,
    createdBy,
    updatedBy,
    versionNumber,
  ];
}

class PublicEntityLifecycleConfigurationsInclude extends _is.IncludeObject {
  PublicEntityLifecycleConfigurationsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicEntityLifecycleConfigurations.t;
}

class PublicEntityLifecycleConfigurationsIncludeList extends _is.IncludeList {
  PublicEntityLifecycleConfigurationsIncludeList._({
    _is.WhereExpressionBuilder<PublicEntityLifecycleConfigurationsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PublicEntityLifecycleConfigurations.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => PublicEntityLifecycleConfigurations.t;
}

class PublicEntityLifecycleConfigurationsRepository {
  const PublicEntityLifecycleConfigurationsRepository._();

  /// Returns a list of [PublicEntityLifecycleConfigurations]s matching the given query parameters.
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
  Future<List<PublicEntityLifecycleConfigurations>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityLifecycleConfigurationsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityLifecycleConfigurationsTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityLifecycleConfigurationsTable>?
    orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PublicEntityLifecycleConfigurations>(
      where: where?.call(PublicEntityLifecycleConfigurations.t),
      orderBy: orderBy?.call(PublicEntityLifecycleConfigurations.t),
      orderByList: orderByList?.call(PublicEntityLifecycleConfigurations.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PublicEntityLifecycleConfigurations] matching the given query parameters.
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
  Future<PublicEntityLifecycleConfigurations?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityLifecycleConfigurationsTable>? where,
    int? offset,
    _is.OrderByBuilder<PublicEntityLifecycleConfigurationsTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityLifecycleConfigurationsTable>?
    orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PublicEntityLifecycleConfigurations>(
      where: where?.call(PublicEntityLifecycleConfigurations.t),
      orderBy: orderBy?.call(PublicEntityLifecycleConfigurations.t),
      orderByList: orderByList?.call(PublicEntityLifecycleConfigurations.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PublicEntityLifecycleConfigurations] by its [id] or null if no such row exists.
  Future<PublicEntityLifecycleConfigurations?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PublicEntityLifecycleConfigurations>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PublicEntityLifecycleConfigurations]s in the list and returns the inserted rows.
  ///
  /// The returned [PublicEntityLifecycleConfigurations]s will have their `id` fields set.
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
  Future<List<PublicEntityLifecycleConfigurations>> insert(
    _is.DatabaseSession session,
    List<PublicEntityLifecycleConfigurations> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<PublicEntityLifecycleConfigurations>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [PublicEntityLifecycleConfigurations] and returns the inserted row.
  ///
  /// The returned [PublicEntityLifecycleConfigurations] will have its `id` field set.
  Future<PublicEntityLifecycleConfigurations> insertRow(
    _is.DatabaseSession session,
    PublicEntityLifecycleConfigurations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<PublicEntityLifecycleConfigurations>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [PublicEntityLifecycleConfigurations]s in the list and returns the resulting rows.
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
  /// The returned [PublicEntityLifecycleConfigurations]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityLifecycleConfigurations>> upsert(
    _is.DatabaseSession session,
    List<PublicEntityLifecycleConfigurations> rows, {
    required _is.ColumnSelections<PublicEntityLifecycleConfigurationsTable>
    conflictColumns,
    _is.ColumnSelections<PublicEntityLifecycleConfigurationsTable>?
    updateColumns,
    _is.WhereExpressionBuilder<PublicEntityLifecycleConfigurationsTable>?
    updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<PublicEntityLifecycleConfigurations>(
      rows,
      conflictColumns: conflictColumns(PublicEntityLifecycleConfigurations.t),
      updateColumns: updateColumns?.call(PublicEntityLifecycleConfigurations.t),
      updateWhere: updateWhere?.call(PublicEntityLifecycleConfigurations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [PublicEntityLifecycleConfigurations] and returns the resulting row.
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
  /// The returned [PublicEntityLifecycleConfigurations] will have its `id` field set.
  Future<PublicEntityLifecycleConfigurations?> upsertRow(
    _is.DatabaseSession session,
    PublicEntityLifecycleConfigurations row, {
    required _is.ColumnSelections<PublicEntityLifecycleConfigurationsTable>
    conflictColumns,
    _is.ColumnSelections<PublicEntityLifecycleConfigurationsTable>?
    updateColumns,
    _is.WhereExpressionBuilder<PublicEntityLifecycleConfigurationsTable>?
    updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<PublicEntityLifecycleConfigurations>(
      row,
      conflictColumns: conflictColumns(PublicEntityLifecycleConfigurations.t),
      updateColumns: updateColumns?.call(PublicEntityLifecycleConfigurations.t),
      updateWhere: updateWhere?.call(PublicEntityLifecycleConfigurations.t),
      transaction: transaction,
    );
  }

  /// Updates all [PublicEntityLifecycleConfigurations]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityLifecycleConfigurations>> update(
    _is.DatabaseSession session,
    List<PublicEntityLifecycleConfigurations> rows, {
    _is.ColumnSelections<PublicEntityLifecycleConfigurationsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<PublicEntityLifecycleConfigurations>(
      rows,
      columns: columns?.call(PublicEntityLifecycleConfigurations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [PublicEntityLifecycleConfigurations]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PublicEntityLifecycleConfigurations> updateRow(
    _is.DatabaseSession session,
    PublicEntityLifecycleConfigurations row, {
    _is.ColumnSelections<PublicEntityLifecycleConfigurationsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<PublicEntityLifecycleConfigurations>(
      row,
      columns: columns?.call(PublicEntityLifecycleConfigurations.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PublicEntityLifecycleConfigurations] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PublicEntityLifecycleConfigurations?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<
      PublicEntityLifecycleConfigurationsUpdateTable
    >
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<PublicEntityLifecycleConfigurations>(
      id,
      columnValues: columnValues(
        PublicEntityLifecycleConfigurations.t.updateTable,
      ),
      transaction: transaction,
    );
  }

  /// Updates all [PublicEntityLifecycleConfigurations]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PublicEntityLifecycleConfigurations>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<
      PublicEntityLifecycleConfigurationsUpdateTable
    >
    columnValues,
    required _is.WhereExpressionBuilder<
      PublicEntityLifecycleConfigurationsTable
    >
    where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PublicEntityLifecycleConfigurationsTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityLifecycleConfigurationsTable>?
    orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<PublicEntityLifecycleConfigurations>(
      columnValues: columnValues(
        PublicEntityLifecycleConfigurations.t.updateTable,
      ),
      where: where(PublicEntityLifecycleConfigurations.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicEntityLifecycleConfigurations.t),
      orderByList: orderByList?.call(PublicEntityLifecycleConfigurations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [PublicEntityLifecycleConfigurations]s in the list and returns the deleted rows.
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
  Future<List<PublicEntityLifecycleConfigurations>> delete(
    _is.DatabaseSession session,
    List<PublicEntityLifecycleConfigurations> rows, {
    _is.OrderByBuilder<PublicEntityLifecycleConfigurationsTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityLifecycleConfigurationsTable>?
    orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<PublicEntityLifecycleConfigurations>(
      rows,
      orderBy: orderBy?.call(PublicEntityLifecycleConfigurations.t),
      orderByList: orderByList?.call(PublicEntityLifecycleConfigurations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [PublicEntityLifecycleConfigurations].
  Future<PublicEntityLifecycleConfigurations> deleteRow(
    _is.DatabaseSession session,
    PublicEntityLifecycleConfigurations row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PublicEntityLifecycleConfigurations>(
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
  Future<List<PublicEntityLifecycleConfigurations>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<
      PublicEntityLifecycleConfigurationsTable
    >
    where,
    _is.OrderByBuilder<PublicEntityLifecycleConfigurationsTable>? orderBy,
    _is.OrderByListBuilder<PublicEntityLifecycleConfigurationsTable>?
    orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<PublicEntityLifecycleConfigurations>(
      where: where(PublicEntityLifecycleConfigurations.t),
      orderBy: orderBy?.call(PublicEntityLifecycleConfigurations.t),
      orderByList: orderByList?.call(PublicEntityLifecycleConfigurations.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PublicEntityLifecycleConfigurationsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<PublicEntityLifecycleConfigurations>(
      where: where?.call(PublicEntityLifecycleConfigurations.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PublicEntityLifecycleConfigurations] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<
      PublicEntityLifecycleConfigurationsTable
    >
    where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PublicEntityLifecycleConfigurations>(
      where: where(PublicEntityLifecycleConfigurations.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
