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

abstract class ElogBusinessAssociates
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogBusinessAssociates._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.associateType,
    required this.associateStatus,
    this.contactPerson,
    this.email,
    this.phone,
    this.address,
    this.website,
  });

  factory ElogBusinessAssociates({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required List<String> associateType,
    required String associateStatus,
    String? contactPerson,
    String? email,
    String? phone,
    String? address,
    String? website,
  }) = _ElogBusinessAssociatesImpl;

  factory ElogBusinessAssociates.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogBusinessAssociates(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      associateType: _ioh8es0p.Protocol().deserialize<List<String>>(
        jsonSerialization['associateType'],
      ),
      associateStatus: jsonSerialization['associateStatus'] as String,
      contactPerson: jsonSerialization['contactPerson'] as String?,
      email: jsonSerialization['email'] as String?,
      phone: jsonSerialization['phone'] as String?,
      address: jsonSerialization['address'] as String?,
      website: jsonSerialization['website'] as String?,
    );
  }

  static final t = ElogBusinessAssociatesTable();

  static const db = ElogBusinessAssociatesRepository._();

  @override
  _is.UuidValue? id;

  String code;

  String name;

  String? description;

  List<String> associateType;

  String associateStatus;

  String? contactPerson;

  String? email;

  String? phone;

  String? address;

  String? website;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogBusinessAssociates]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogBusinessAssociates copyWith({
    _is.UuidValue? id,
    String? code,
    String? name,
    String? description,
    List<String>? associateType,
    String? associateStatus,
    String? contactPerson,
    String? email,
    String? phone,
    String? address,
    String? website,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogBusinessAssociates',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'associateType': associateType.toJson(),
      'associateStatus': associateStatus,
      if (contactPerson != null) 'contactPerson': contactPerson,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (website != null) 'website': website,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogBusinessAssociates',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'associateType': associateType.toJson(),
      'associateStatus': associateStatus,
      if (contactPerson != null) 'contactPerson': contactPerson,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (website != null) 'website': website,
    };
  }

  static ElogBusinessAssociatesInclude include() {
    return ElogBusinessAssociatesInclude._();
  }

  static ElogBusinessAssociatesIncludeList includeList({
    _is.WhereExpressionBuilder<ElogBusinessAssociatesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogBusinessAssociatesTable>? orderBy,
    _is.OrderByListBuilder<ElogBusinessAssociatesTable>? orderByList,
    ElogBusinessAssociatesInclude? include,
  }) {
    return ElogBusinessAssociatesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogBusinessAssociates.t),
      orderByList: orderByList?.call(ElogBusinessAssociates.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogBusinessAssociatesImpl extends ElogBusinessAssociates {
  _ElogBusinessAssociatesImpl({
    _is.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required List<String> associateType,
    required String associateStatus,
    String? contactPerson,
    String? email,
    String? phone,
    String? address,
    String? website,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         associateType: associateType,
         associateStatus: associateStatus,
         contactPerson: contactPerson,
         email: email,
         phone: phone,
         address: address,
         website: website,
       );

  /// Returns a shallow copy of this [ElogBusinessAssociates]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogBusinessAssociates copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    List<String>? associateType,
    String? associateStatus,
    Object? contactPerson = _Undefined,
    Object? email = _Undefined,
    Object? phone = _Undefined,
    Object? address = _Undefined,
    Object? website = _Undefined,
  }) {
    return ElogBusinessAssociates(
      id: id is _is.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      associateType:
          associateType ?? this.associateType.map((e0) => e0).toList(),
      associateStatus: associateStatus ?? this.associateStatus,
      contactPerson: contactPerson is String?
          ? contactPerson
          : this.contactPerson,
      email: email is String? ? email : this.email,
      phone: phone is String? ? phone : this.phone,
      address: address is String? ? address : this.address,
      website: website is String? ? website : this.website,
    );
  }
}

class ElogBusinessAssociatesUpdateTable
    extends _is.UpdateTable<ElogBusinessAssociatesTable> {
  ElogBusinessAssociatesUpdateTable(super.table);

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

  _is.ColumnValue<List<String>, List<String>> associateType(
    List<String> value,
  ) => _is.ColumnValue(
    table.associateType,
    value,
  );

  _is.ColumnValue<String, String> associateStatus(String value) =>
      _is.ColumnValue(
        table.associateStatus,
        value,
      );

  _is.ColumnValue<String, String> contactPerson(String? value) =>
      _is.ColumnValue(
        table.contactPerson,
        value,
      );

  _is.ColumnValue<String, String> email(String? value) => _is.ColumnValue(
    table.email,
    value,
  );

  _is.ColumnValue<String, String> phone(String? value) => _is.ColumnValue(
    table.phone,
    value,
  );

  _is.ColumnValue<String, String> address(String? value) => _is.ColumnValue(
    table.address,
    value,
  );

  _is.ColumnValue<String, String> website(String? value) => _is.ColumnValue(
    table.website,
    value,
  );
}

class ElogBusinessAssociatesTable extends _is.Table<_is.UuidValue?> {
  ElogBusinessAssociatesTable({super.tableRelation})
    : super(tableName: 'elog_business_associates') {
    updateTable = ElogBusinessAssociatesUpdateTable(this);
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
    associateType = _is.ColumnSerializable<List<String>>(
      'associateType',
      this,
    );
    associateStatus = _is.ColumnString(
      'associateStatus',
      this,
    );
    contactPerson = _is.ColumnString(
      'contactPerson',
      this,
    );
    email = _is.ColumnString(
      'email',
      this,
    );
    phone = _is.ColumnString(
      'phone',
      this,
    );
    address = _is.ColumnString(
      'address',
      this,
    );
    website = _is.ColumnString(
      'website',
      this,
    );
  }

  late final ElogBusinessAssociatesUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnSerializable<List<String>> associateType;

  late final _is.ColumnString associateStatus;

  late final _is.ColumnString contactPerson;

  late final _is.ColumnString email;

  late final _is.ColumnString phone;

  late final _is.ColumnString address;

  late final _is.ColumnString website;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    name,
    description,
    associateType,
    associateStatus,
    contactPerson,
    email,
    phone,
    address,
    website,
  ];
}

class ElogBusinessAssociatesInclude extends _is.IncludeObject {
  ElogBusinessAssociatesInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogBusinessAssociates.t;
}

class ElogBusinessAssociatesIncludeList extends _is.IncludeList {
  ElogBusinessAssociatesIncludeList._({
    _is.WhereExpressionBuilder<ElogBusinessAssociatesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogBusinessAssociates.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogBusinessAssociates.t;
}

class ElogBusinessAssociatesRepository {
  const ElogBusinessAssociatesRepository._();

  /// Returns a list of [ElogBusinessAssociates]s matching the given query parameters.
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
  Future<List<ElogBusinessAssociates>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogBusinessAssociatesTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogBusinessAssociatesTable>? orderBy,
    _is.OrderByListBuilder<ElogBusinessAssociatesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogBusinessAssociates>(
      where: where?.call(ElogBusinessAssociates.t),
      orderBy: orderBy?.call(ElogBusinessAssociates.t),
      orderByList: orderByList?.call(ElogBusinessAssociates.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogBusinessAssociates] matching the given query parameters.
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
  Future<ElogBusinessAssociates?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogBusinessAssociatesTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogBusinessAssociatesTable>? orderBy,
    _is.OrderByListBuilder<ElogBusinessAssociatesTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogBusinessAssociates>(
      where: where?.call(ElogBusinessAssociates.t),
      orderBy: orderBy?.call(ElogBusinessAssociates.t),
      orderByList: orderByList?.call(ElogBusinessAssociates.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogBusinessAssociates] by its [id] or null if no such row exists.
  Future<ElogBusinessAssociates?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogBusinessAssociates>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogBusinessAssociates]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogBusinessAssociates]s will have their `id` fields set.
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
  Future<List<ElogBusinessAssociates>> insert(
    _is.DatabaseSession session,
    List<ElogBusinessAssociates> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogBusinessAssociates>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogBusinessAssociates] and returns the inserted row.
  ///
  /// The returned [ElogBusinessAssociates] will have its `id` field set.
  Future<ElogBusinessAssociates> insertRow(
    _is.DatabaseSession session,
    ElogBusinessAssociates row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogBusinessAssociates>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogBusinessAssociates]s in the list and returns the resulting rows.
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
  /// The returned [ElogBusinessAssociates]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogBusinessAssociates>> upsert(
    _is.DatabaseSession session,
    List<ElogBusinessAssociates> rows, {
    required _is.ColumnSelections<ElogBusinessAssociatesTable> conflictColumns,
    _is.ColumnSelections<ElogBusinessAssociatesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogBusinessAssociatesTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogBusinessAssociates>(
      rows,
      conflictColumns: conflictColumns(ElogBusinessAssociates.t),
      updateColumns: updateColumns?.call(ElogBusinessAssociates.t),
      updateWhere: updateWhere?.call(ElogBusinessAssociates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogBusinessAssociates] and returns the resulting row.
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
  /// The returned [ElogBusinessAssociates] will have its `id` field set.
  Future<ElogBusinessAssociates?> upsertRow(
    _is.DatabaseSession session,
    ElogBusinessAssociates row, {
    required _is.ColumnSelections<ElogBusinessAssociatesTable> conflictColumns,
    _is.ColumnSelections<ElogBusinessAssociatesTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogBusinessAssociatesTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogBusinessAssociates>(
      row,
      conflictColumns: conflictColumns(ElogBusinessAssociates.t),
      updateColumns: updateColumns?.call(ElogBusinessAssociates.t),
      updateWhere: updateWhere?.call(ElogBusinessAssociates.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogBusinessAssociates]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogBusinessAssociates>> update(
    _is.DatabaseSession session,
    List<ElogBusinessAssociates> rows, {
    _is.ColumnSelections<ElogBusinessAssociatesTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogBusinessAssociates>(
      rows,
      columns: columns?.call(ElogBusinessAssociates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogBusinessAssociates]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogBusinessAssociates> updateRow(
    _is.DatabaseSession session,
    ElogBusinessAssociates row, {
    _is.ColumnSelections<ElogBusinessAssociatesTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogBusinessAssociates>(
      row,
      columns: columns?.call(ElogBusinessAssociates.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogBusinessAssociates] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogBusinessAssociates?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogBusinessAssociatesUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogBusinessAssociates>(
      id,
      columnValues: columnValues(ElogBusinessAssociates.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogBusinessAssociates]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogBusinessAssociates>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogBusinessAssociatesUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ElogBusinessAssociatesTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogBusinessAssociatesTable>? orderBy,
    _is.OrderByListBuilder<ElogBusinessAssociatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogBusinessAssociates>(
      columnValues: columnValues(ElogBusinessAssociates.t.updateTable),
      where: where(ElogBusinessAssociates.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogBusinessAssociates.t),
      orderByList: orderByList?.call(ElogBusinessAssociates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogBusinessAssociates]s in the list and returns the deleted rows.
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
  Future<List<ElogBusinessAssociates>> delete(
    _is.DatabaseSession session,
    List<ElogBusinessAssociates> rows, {
    _is.OrderByBuilder<ElogBusinessAssociatesTable>? orderBy,
    _is.OrderByListBuilder<ElogBusinessAssociatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogBusinessAssociates>(
      rows,
      orderBy: orderBy?.call(ElogBusinessAssociates.t),
      orderByList: orderByList?.call(ElogBusinessAssociates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogBusinessAssociates].
  Future<ElogBusinessAssociates> deleteRow(
    _is.DatabaseSession session,
    ElogBusinessAssociates row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogBusinessAssociates>(
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
  Future<List<ElogBusinessAssociates>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogBusinessAssociatesTable> where,
    _is.OrderByBuilder<ElogBusinessAssociatesTable>? orderBy,
    _is.OrderByListBuilder<ElogBusinessAssociatesTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogBusinessAssociates>(
      where: where(ElogBusinessAssociates.t),
      orderBy: orderBy?.call(ElogBusinessAssociates.t),
      orderByList: orderByList?.call(ElogBusinessAssociates.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogBusinessAssociatesTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogBusinessAssociates>(
      where: where?.call(ElogBusinessAssociates.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogBusinessAssociates] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogBusinessAssociatesTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogBusinessAssociates>(
      where: where(ElogBusinessAssociates.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
