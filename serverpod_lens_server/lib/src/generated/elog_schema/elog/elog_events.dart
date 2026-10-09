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

abstract class ElogEvents
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogEvents._({
    this.id,
    required this.idField,
    required this.eventNumber,
    required this.streamType,
    required this.streamId,
    required this.eventType,
    required this.eventCategory,
    required this.eventAt,
    required this.createdAt,
    this.performedBy,
    this.correlationId,
    this.causationId,
    this.notes,
    required this.eventData,
    required this.metadata,
  });

  factory ElogEvents({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required BigInt eventNumber,
    required String streamType,
    required _is.UuidValue streamId,
    required String eventType,
    required String eventCategory,
    required DateTime eventAt,
    required DateTime createdAt,
    _is.UuidValue? performedBy,
    _is.UuidValue? correlationId,
    _is.UuidValue? causationId,
    String? notes,
    required String eventData,
    required String metadata,
  }) = _ElogEventsImpl;

  factory ElogEvents.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogEvents(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      eventNumber: _is.BigIntJsonExtension.fromJson(
        jsonSerialization['eventNumber'],
      ),
      streamType: jsonSerialization['streamType'] as String,
      streamId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['streamId'],
      ),
      eventType: jsonSerialization['eventType'] as String,
      eventCategory: jsonSerialization['eventCategory'] as String,
      eventAt: _is.DateTimeJsonExtension.fromJson(jsonSerialization['eventAt']),
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      performedBy: jsonSerialization['performedBy'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['performedBy'],
            ),
      correlationId: jsonSerialization['correlationId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['correlationId'],
            ),
      causationId: jsonSerialization['causationId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['causationId'],
            ),
      notes: jsonSerialization['notes'] as String?,
      eventData: jsonSerialization['eventData'] as String,
      metadata: jsonSerialization['metadata'] as String,
    );
  }

  static final t = ElogEventsTable();

  static const db = ElogEventsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue idField;

  BigInt eventNumber;

  String streamType;

  _is.UuidValue streamId;

  String eventType;

  String eventCategory;

  DateTime eventAt;

  DateTime createdAt;

  _is.UuidValue? performedBy;

  _is.UuidValue? correlationId;

  _is.UuidValue? causationId;

  String? notes;

  String eventData;

  String metadata;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogEvents]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogEvents copyWith({
    _is.UuidValue? id,
    _is.UuidValue? idField,
    BigInt? eventNumber,
    String? streamType,
    _is.UuidValue? streamId,
    String? eventType,
    String? eventCategory,
    DateTime? eventAt,
    DateTime? createdAt,
    _is.UuidValue? performedBy,
    _is.UuidValue? correlationId,
    _is.UuidValue? causationId,
    String? notes,
    String? eventData,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogEvents',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'eventNumber': eventNumber.toJson(),
      'streamType': streamType,
      'streamId': streamId.toJson(),
      'eventType': eventType,
      'eventCategory': eventCategory,
      'eventAt': eventAt.toJson(),
      'createdAt': createdAt.toJson(),
      if (performedBy != null) 'performedBy': performedBy?.toJson(),
      if (correlationId != null) 'correlationId': correlationId?.toJson(),
      if (causationId != null) 'causationId': causationId?.toJson(),
      if (notes != null) 'notes': notes,
      'eventData': eventData,
      'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogEvents',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'eventNumber': eventNumber.toJson(),
      'streamType': streamType,
      'streamId': streamId.toJson(),
      'eventType': eventType,
      'eventCategory': eventCategory,
      'eventAt': eventAt.toJson(),
      'createdAt': createdAt.toJson(),
      if (performedBy != null) 'performedBy': performedBy?.toJson(),
      if (correlationId != null) 'correlationId': correlationId?.toJson(),
      if (causationId != null) 'causationId': causationId?.toJson(),
      if (notes != null) 'notes': notes,
      'eventData': eventData,
      'metadata': metadata,
    };
  }

  static ElogEventsInclude include() {
    return ElogEventsInclude._();
  }

  static ElogEventsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogEventsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEventsTable>? orderBy,
    _is.OrderByListBuilder<ElogEventsTable>? orderByList,
    ElogEventsInclude? include,
  }) {
    return ElogEventsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEvents.t),
      orderByList: orderByList?.call(ElogEvents.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogEventsImpl extends ElogEvents {
  _ElogEventsImpl({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required BigInt eventNumber,
    required String streamType,
    required _is.UuidValue streamId,
    required String eventType,
    required String eventCategory,
    required DateTime eventAt,
    required DateTime createdAt,
    _is.UuidValue? performedBy,
    _is.UuidValue? correlationId,
    _is.UuidValue? causationId,
    String? notes,
    required String eventData,
    required String metadata,
  }) : super._(
         id: id,
         idField: idField,
         eventNumber: eventNumber,
         streamType: streamType,
         streamId: streamId,
         eventType: eventType,
         eventCategory: eventCategory,
         eventAt: eventAt,
         createdAt: createdAt,
         performedBy: performedBy,
         correlationId: correlationId,
         causationId: causationId,
         notes: notes,
         eventData: eventData,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [ElogEvents]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogEvents copyWith({
    Object? id = _Undefined,
    _is.UuidValue? idField,
    BigInt? eventNumber,
    String? streamType,
    _is.UuidValue? streamId,
    String? eventType,
    String? eventCategory,
    DateTime? eventAt,
    DateTime? createdAt,
    Object? performedBy = _Undefined,
    Object? correlationId = _Undefined,
    Object? causationId = _Undefined,
    Object? notes = _Undefined,
    String? eventData,
    String? metadata,
  }) {
    return ElogEvents(
      id: id is _is.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      eventNumber: eventNumber ?? this.eventNumber,
      streamType: streamType ?? this.streamType,
      streamId: streamId ?? this.streamId,
      eventType: eventType ?? this.eventType,
      eventCategory: eventCategory ?? this.eventCategory,
      eventAt: eventAt ?? this.eventAt,
      createdAt: createdAt ?? this.createdAt,
      performedBy: performedBy is _is.UuidValue?
          ? performedBy
          : this.performedBy,
      correlationId: correlationId is _is.UuidValue?
          ? correlationId
          : this.correlationId,
      causationId: causationId is _is.UuidValue?
          ? causationId
          : this.causationId,
      notes: notes is String? ? notes : this.notes,
      eventData: eventData ?? this.eventData,
      metadata: metadata ?? this.metadata,
    );
  }
}

class ElogEventsUpdateTable extends _is.UpdateTable<ElogEventsTable> {
  ElogEventsUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> idField(_is.UuidValue value) =>
      _is.ColumnValue(
        table.idField,
        value,
      );

  _is.ColumnValue<BigInt, BigInt> eventNumber(BigInt value) => _is.ColumnValue(
    table.eventNumber,
    value,
  );

  _is.ColumnValue<String, String> streamType(String value) => _is.ColumnValue(
    table.streamType,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> streamId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.streamId,
        value,
      );

  _is.ColumnValue<String, String> eventType(String value) => _is.ColumnValue(
    table.eventType,
    value,
  );

  _is.ColumnValue<String, String> eventCategory(String value) =>
      _is.ColumnValue(
        table.eventCategory,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> eventAt(DateTime value) =>
      _is.ColumnValue(
        table.eventAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> performedBy(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.performedBy,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> correlationId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.correlationId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> causationId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.causationId,
    value,
  );

  _is.ColumnValue<String, String> notes(String? value) => _is.ColumnValue(
    table.notes,
    value,
  );

  _is.ColumnValue<String, String> eventData(String value) => _is.ColumnValue(
    table.eventData,
    value,
  );

  _is.ColumnValue<String, String> metadata(String value) => _is.ColumnValue(
    table.metadata,
    value,
  );
}

class ElogEventsTable extends _is.Table<_is.UuidValue?> {
  ElogEventsTable({super.tableRelation}) : super(tableName: 'elog_events') {
    updateTable = ElogEventsUpdateTable(this);
    idField = _is.ColumnUuid(
      'idField',
      this,
    );
    eventNumber = _is.ColumnBigInt(
      'eventNumber',
      this,
    );
    streamType = _is.ColumnString(
      'streamType',
      this,
    );
    streamId = _is.ColumnUuid(
      'streamId',
      this,
    );
    eventType = _is.ColumnString(
      'eventType',
      this,
    );
    eventCategory = _is.ColumnString(
      'eventCategory',
      this,
    );
    eventAt = _is.ColumnDateTime(
      'eventAt',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    performedBy = _is.ColumnUuid(
      'performedBy',
      this,
    );
    correlationId = _is.ColumnUuid(
      'correlationId',
      this,
    );
    causationId = _is.ColumnUuid(
      'causationId',
      this,
    );
    notes = _is.ColumnString(
      'notes',
      this,
    );
    eventData = _is.ColumnString(
      'eventData',
      this,
    );
    metadata = _is.ColumnString(
      'metadata',
      this,
    );
  }

  late final ElogEventsUpdateTable updateTable;

  late final _is.ColumnUuid idField;

  late final _is.ColumnBigInt eventNumber;

  late final _is.ColumnString streamType;

  late final _is.ColumnUuid streamId;

  late final _is.ColumnString eventType;

  late final _is.ColumnString eventCategory;

  late final _is.ColumnDateTime eventAt;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnUuid performedBy;

  late final _is.ColumnUuid correlationId;

  late final _is.ColumnUuid causationId;

  late final _is.ColumnString notes;

  late final _is.ColumnString eventData;

  late final _is.ColumnString metadata;

  @override
  List<_is.Column> get columns => [
    id,
    idField,
    eventNumber,
    streamType,
    streamId,
    eventType,
    eventCategory,
    eventAt,
    createdAt,
    performedBy,
    correlationId,
    causationId,
    notes,
    eventData,
    metadata,
  ];
}

class ElogEventsInclude extends _is.IncludeObject {
  ElogEventsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEvents.t;
}

class ElogEventsIncludeList extends _is.IncludeList {
  ElogEventsIncludeList._({
    _is.WhereExpressionBuilder<ElogEventsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogEvents.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogEvents.t;
}

class ElogEventsRepository {
  const ElogEventsRepository._();

  /// Returns a list of [ElogEvents]s matching the given query parameters.
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
  Future<List<ElogEvents>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEventsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEventsTable>? orderBy,
    _is.OrderByListBuilder<ElogEventsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogEvents>(
      where: where?.call(ElogEvents.t),
      orderBy: orderBy?.call(ElogEvents.t),
      orderByList: orderByList?.call(ElogEvents.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogEvents] matching the given query parameters.
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
  Future<ElogEvents?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEventsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogEventsTable>? orderBy,
    _is.OrderByListBuilder<ElogEventsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogEvents>(
      where: where?.call(ElogEvents.t),
      orderBy: orderBy?.call(ElogEvents.t),
      orderByList: orderByList?.call(ElogEvents.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogEvents] by its [id] or null if no such row exists.
  Future<ElogEvents?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogEvents>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogEvents]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogEvents]s will have their `id` fields set.
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
  Future<List<ElogEvents>> insert(
    _is.DatabaseSession session,
    List<ElogEvents> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogEvents>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogEvents] and returns the inserted row.
  ///
  /// The returned [ElogEvents] will have its `id` field set.
  Future<ElogEvents> insertRow(
    _is.DatabaseSession session,
    ElogEvents row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogEvents>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogEvents]s in the list and returns the resulting rows.
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
  /// The returned [ElogEvents]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEvents>> upsert(
    _is.DatabaseSession session,
    List<ElogEvents> rows, {
    required _is.ColumnSelections<ElogEventsTable> conflictColumns,
    _is.ColumnSelections<ElogEventsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEventsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogEvents>(
      rows,
      conflictColumns: conflictColumns(ElogEvents.t),
      updateColumns: updateColumns?.call(ElogEvents.t),
      updateWhere: updateWhere?.call(ElogEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogEvents] and returns the resulting row.
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
  /// The returned [ElogEvents] will have its `id` field set.
  Future<ElogEvents?> upsertRow(
    _is.DatabaseSession session,
    ElogEvents row, {
    required _is.ColumnSelections<ElogEventsTable> conflictColumns,
    _is.ColumnSelections<ElogEventsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogEventsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogEvents>(
      row,
      conflictColumns: conflictColumns(ElogEvents.t),
      updateColumns: updateColumns?.call(ElogEvents.t),
      updateWhere: updateWhere?.call(ElogEvents.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEvents]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEvents>> update(
    _is.DatabaseSession session,
    List<ElogEvents> rows, {
    _is.ColumnSelections<ElogEventsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogEvents>(
      rows,
      columns: columns?.call(ElogEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogEvents]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogEvents> updateRow(
    _is.DatabaseSession session,
    ElogEvents row, {
    _is.ColumnSelections<ElogEventsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogEvents>(
      row,
      columns: columns?.call(ElogEvents.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogEvents] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogEvents?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogEventsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogEvents>(
      id,
      columnValues: columnValues(ElogEvents.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogEvents]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogEvents>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogEventsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogEventsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogEventsTable>? orderBy,
    _is.OrderByListBuilder<ElogEventsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogEvents>(
      columnValues: columnValues(ElogEvents.t.updateTable),
      where: where(ElogEvents.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogEvents.t),
      orderByList: orderByList?.call(ElogEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogEvents]s in the list and returns the deleted rows.
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
  Future<List<ElogEvents>> delete(
    _is.DatabaseSession session,
    List<ElogEvents> rows, {
    _is.OrderByBuilder<ElogEventsTable>? orderBy,
    _is.OrderByListBuilder<ElogEventsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogEvents>(
      rows,
      orderBy: orderBy?.call(ElogEvents.t),
      orderByList: orderByList?.call(ElogEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogEvents].
  Future<ElogEvents> deleteRow(
    _is.DatabaseSession session,
    ElogEvents row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogEvents>(
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
  Future<List<ElogEvents>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEventsTable> where,
    _is.OrderByBuilder<ElogEventsTable>? orderBy,
    _is.OrderByListBuilder<ElogEventsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogEvents>(
      where: where(ElogEvents.t),
      orderBy: orderBy?.call(ElogEvents.t),
      orderByList: orderByList?.call(ElogEvents.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogEventsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogEvents>(
      where: where?.call(ElogEvents.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogEvents] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogEventsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogEvents>(
      where: where(ElogEvents.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
