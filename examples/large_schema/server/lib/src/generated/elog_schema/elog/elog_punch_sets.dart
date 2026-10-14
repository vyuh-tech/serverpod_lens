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

abstract class ElogPunchSets
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ElogPunchSets._({
    this.id,
    required this.idField,
    required this.code,
    required this.name,
    this.description,
    this.manufacturer,
    this.modelNumber,
    this.serialNumber,
    this.purchaseDate,
    this.installationDate,
    this.warrantyExpiry,
    this.productId,
    this.supplierId,
    this.manufacturingMonth,
    this.drawingReference,
    this.punchSpecification,
    this.dieSpecification,
    this.upperEmbossing,
    this.lowerEmbossing,
    this.tabletShape,
    this.receivedOn,
    this.openingTabletsMillions,
    this.lastIssuedStart,
    this.lastIssuedEnd,
    this.partsManifest,
    this.registeredComponentCounts,
    this.toolingTypeId,
    required this.inventoryMode,
  });

  factory ElogPunchSets({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required String code,
    required String name,
    String? description,
    String? manufacturer,
    String? modelNumber,
    String? serialNumber,
    DateTime? purchaseDate,
    DateTime? installationDate,
    DateTime? warrantyExpiry,
    _is.UuidValue? productId,
    _is.UuidValue? supplierId,
    String? manufacturingMonth,
    String? drawingReference,
    String? punchSpecification,
    String? dieSpecification,
    String? upperEmbossing,
    String? lowerEmbossing,
    String? tabletShape,
    DateTime? receivedOn,
    double? openingTabletsMillions,
    int? lastIssuedStart,
    int? lastIssuedEnd,
    String? partsManifest,
    String? registeredComponentCounts,
    _is.UuidValue? toolingTypeId,
    required String inventoryMode,
  }) = _ElogPunchSetsImpl;

  factory ElogPunchSets.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPunchSets(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      manufacturer: jsonSerialization['manufacturer'] as String?,
      modelNumber: jsonSerialization['modelNumber'] as String?,
      serialNumber: jsonSerialization['serialNumber'] as String?,
      purchaseDate: jsonSerialization['purchaseDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['purchaseDate'],
            ),
      installationDate: jsonSerialization['installationDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['installationDate'],
            ),
      warrantyExpiry: jsonSerialization['warrantyExpiry'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['warrantyExpiry'],
            ),
      productId: jsonSerialization['productId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['productId']),
      supplierId: jsonSerialization['supplierId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['supplierId'],
            ),
      manufacturingMonth: jsonSerialization['manufacturingMonth'] as String?,
      drawingReference: jsonSerialization['drawingReference'] as String?,
      punchSpecification: jsonSerialization['punchSpecification'] as String?,
      dieSpecification: jsonSerialization['dieSpecification'] as String?,
      upperEmbossing: jsonSerialization['upperEmbossing'] as String?,
      lowerEmbossing: jsonSerialization['lowerEmbossing'] as String?,
      tabletShape: jsonSerialization['tabletShape'] as String?,
      receivedOn: jsonSerialization['receivedOn'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['receivedOn']),
      openingTabletsMillions:
          (jsonSerialization['openingTabletsMillions'] as num?)?.toDouble(),
      lastIssuedStart: jsonSerialization['lastIssuedStart'] as int?,
      lastIssuedEnd: jsonSerialization['lastIssuedEnd'] as int?,
      partsManifest: jsonSerialization['partsManifest'] as String?,
      registeredComponentCounts:
          jsonSerialization['registeredComponentCounts'] as String?,
      toolingTypeId: jsonSerialization['toolingTypeId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['toolingTypeId'],
            ),
      inventoryMode: jsonSerialization['inventoryMode'] as String,
    );
  }

  static final t = ElogPunchSetsTable();

  static const db = ElogPunchSetsRepository._();

  @override
  _is.UuidValue? id;

  _is.UuidValue idField;

  String code;

  String name;

  String? description;

  String? manufacturer;

  String? modelNumber;

  String? serialNumber;

  DateTime? purchaseDate;

  DateTime? installationDate;

  DateTime? warrantyExpiry;

  _is.UuidValue? productId;

  _is.UuidValue? supplierId;

  String? manufacturingMonth;

  String? drawingReference;

  String? punchSpecification;

  String? dieSpecification;

  String? upperEmbossing;

  String? lowerEmbossing;

  String? tabletShape;

  DateTime? receivedOn;

  double? openingTabletsMillions;

  int? lastIssuedStart;

  int? lastIssuedEnd;

  String? partsManifest;

  String? registeredComponentCounts;

  _is.UuidValue? toolingTypeId;

  String inventoryMode;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ElogPunchSets]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ElogPunchSets copyWith({
    _is.UuidValue? id,
    _is.UuidValue? idField,
    String? code,
    String? name,
    String? description,
    String? manufacturer,
    String? modelNumber,
    String? serialNumber,
    DateTime? purchaseDate,
    DateTime? installationDate,
    DateTime? warrantyExpiry,
    _is.UuidValue? productId,
    _is.UuidValue? supplierId,
    String? manufacturingMonth,
    String? drawingReference,
    String? punchSpecification,
    String? dieSpecification,
    String? upperEmbossing,
    String? lowerEmbossing,
    String? tabletShape,
    DateTime? receivedOn,
    double? openingTabletsMillions,
    int? lastIssuedStart,
    int? lastIssuedEnd,
    String? partsManifest,
    String? registeredComponentCounts,
    _is.UuidValue? toolingTypeId,
    String? inventoryMode,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPunchSets',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (modelNumber != null) 'modelNumber': modelNumber,
      if (serialNumber != null) 'serialNumber': serialNumber,
      if (purchaseDate != null) 'purchaseDate': purchaseDate?.toJson(),
      if (installationDate != null)
        'installationDate': installationDate?.toJson(),
      if (warrantyExpiry != null) 'warrantyExpiry': warrantyExpiry?.toJson(),
      if (productId != null) 'productId': productId?.toJson(),
      if (supplierId != null) 'supplierId': supplierId?.toJson(),
      if (manufacturingMonth != null) 'manufacturingMonth': manufacturingMonth,
      if (drawingReference != null) 'drawingReference': drawingReference,
      if (punchSpecification != null) 'punchSpecification': punchSpecification,
      if (dieSpecification != null) 'dieSpecification': dieSpecification,
      if (upperEmbossing != null) 'upperEmbossing': upperEmbossing,
      if (lowerEmbossing != null) 'lowerEmbossing': lowerEmbossing,
      if (tabletShape != null) 'tabletShape': tabletShape,
      if (receivedOn != null) 'receivedOn': receivedOn?.toJson(),
      if (openingTabletsMillions != null)
        'openingTabletsMillions': openingTabletsMillions,
      if (lastIssuedStart != null) 'lastIssuedStart': lastIssuedStart,
      if (lastIssuedEnd != null) 'lastIssuedEnd': lastIssuedEnd,
      if (partsManifest != null) 'partsManifest': partsManifest,
      if (registeredComponentCounts != null)
        'registeredComponentCounts': registeredComponentCounts,
      if (toolingTypeId != null) 'toolingTypeId': toolingTypeId?.toJson(),
      'inventoryMode': inventoryMode,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPunchSets',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (modelNumber != null) 'modelNumber': modelNumber,
      if (serialNumber != null) 'serialNumber': serialNumber,
      if (purchaseDate != null) 'purchaseDate': purchaseDate?.toJson(),
      if (installationDate != null)
        'installationDate': installationDate?.toJson(),
      if (warrantyExpiry != null) 'warrantyExpiry': warrantyExpiry?.toJson(),
      if (productId != null) 'productId': productId?.toJson(),
      if (supplierId != null) 'supplierId': supplierId?.toJson(),
      if (manufacturingMonth != null) 'manufacturingMonth': manufacturingMonth,
      if (drawingReference != null) 'drawingReference': drawingReference,
      if (punchSpecification != null) 'punchSpecification': punchSpecification,
      if (dieSpecification != null) 'dieSpecification': dieSpecification,
      if (upperEmbossing != null) 'upperEmbossing': upperEmbossing,
      if (lowerEmbossing != null) 'lowerEmbossing': lowerEmbossing,
      if (tabletShape != null) 'tabletShape': tabletShape,
      if (receivedOn != null) 'receivedOn': receivedOn?.toJson(),
      if (openingTabletsMillions != null)
        'openingTabletsMillions': openingTabletsMillions,
      if (lastIssuedStart != null) 'lastIssuedStart': lastIssuedStart,
      if (lastIssuedEnd != null) 'lastIssuedEnd': lastIssuedEnd,
      if (partsManifest != null) 'partsManifest': partsManifest,
      if (registeredComponentCounts != null)
        'registeredComponentCounts': registeredComponentCounts,
      if (toolingTypeId != null) 'toolingTypeId': toolingTypeId?.toJson(),
      'inventoryMode': inventoryMode,
    };
  }

  static ElogPunchSetsInclude include() {
    return ElogPunchSetsInclude._();
  }

  static ElogPunchSetsIncludeList includeList({
    _is.WhereExpressionBuilder<ElogPunchSetsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPunchSetsTable>? orderBy,
    _is.OrderByListBuilder<ElogPunchSetsTable>? orderByList,
    ElogPunchSetsInclude? include,
  }) {
    return ElogPunchSetsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPunchSets.t),
      orderByList: orderByList?.call(ElogPunchSets.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPunchSetsImpl extends ElogPunchSets {
  _ElogPunchSetsImpl({
    _is.UuidValue? id,
    required _is.UuidValue idField,
    required String code,
    required String name,
    String? description,
    String? manufacturer,
    String? modelNumber,
    String? serialNumber,
    DateTime? purchaseDate,
    DateTime? installationDate,
    DateTime? warrantyExpiry,
    _is.UuidValue? productId,
    _is.UuidValue? supplierId,
    String? manufacturingMonth,
    String? drawingReference,
    String? punchSpecification,
    String? dieSpecification,
    String? upperEmbossing,
    String? lowerEmbossing,
    String? tabletShape,
    DateTime? receivedOn,
    double? openingTabletsMillions,
    int? lastIssuedStart,
    int? lastIssuedEnd,
    String? partsManifest,
    String? registeredComponentCounts,
    _is.UuidValue? toolingTypeId,
    required String inventoryMode,
  }) : super._(
         id: id,
         idField: idField,
         code: code,
         name: name,
         description: description,
         manufacturer: manufacturer,
         modelNumber: modelNumber,
         serialNumber: serialNumber,
         purchaseDate: purchaseDate,
         installationDate: installationDate,
         warrantyExpiry: warrantyExpiry,
         productId: productId,
         supplierId: supplierId,
         manufacturingMonth: manufacturingMonth,
         drawingReference: drawingReference,
         punchSpecification: punchSpecification,
         dieSpecification: dieSpecification,
         upperEmbossing: upperEmbossing,
         lowerEmbossing: lowerEmbossing,
         tabletShape: tabletShape,
         receivedOn: receivedOn,
         openingTabletsMillions: openingTabletsMillions,
         lastIssuedStart: lastIssuedStart,
         lastIssuedEnd: lastIssuedEnd,
         partsManifest: partsManifest,
         registeredComponentCounts: registeredComponentCounts,
         toolingTypeId: toolingTypeId,
         inventoryMode: inventoryMode,
       );

  /// Returns a shallow copy of this [ElogPunchSets]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ElogPunchSets copyWith({
    Object? id = _Undefined,
    _is.UuidValue? idField,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? manufacturer = _Undefined,
    Object? modelNumber = _Undefined,
    Object? serialNumber = _Undefined,
    Object? purchaseDate = _Undefined,
    Object? installationDate = _Undefined,
    Object? warrantyExpiry = _Undefined,
    Object? productId = _Undefined,
    Object? supplierId = _Undefined,
    Object? manufacturingMonth = _Undefined,
    Object? drawingReference = _Undefined,
    Object? punchSpecification = _Undefined,
    Object? dieSpecification = _Undefined,
    Object? upperEmbossing = _Undefined,
    Object? lowerEmbossing = _Undefined,
    Object? tabletShape = _Undefined,
    Object? receivedOn = _Undefined,
    Object? openingTabletsMillions = _Undefined,
    Object? lastIssuedStart = _Undefined,
    Object? lastIssuedEnd = _Undefined,
    Object? partsManifest = _Undefined,
    Object? registeredComponentCounts = _Undefined,
    Object? toolingTypeId = _Undefined,
    String? inventoryMode,
  }) {
    return ElogPunchSets(
      id: id is _is.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      manufacturer: manufacturer is String? ? manufacturer : this.manufacturer,
      modelNumber: modelNumber is String? ? modelNumber : this.modelNumber,
      serialNumber: serialNumber is String? ? serialNumber : this.serialNumber,
      purchaseDate: purchaseDate is DateTime?
          ? purchaseDate
          : this.purchaseDate,
      installationDate: installationDate is DateTime?
          ? installationDate
          : this.installationDate,
      warrantyExpiry: warrantyExpiry is DateTime?
          ? warrantyExpiry
          : this.warrantyExpiry,
      productId: productId is _is.UuidValue? ? productId : this.productId,
      supplierId: supplierId is _is.UuidValue? ? supplierId : this.supplierId,
      manufacturingMonth: manufacturingMonth is String?
          ? manufacturingMonth
          : this.manufacturingMonth,
      drawingReference: drawingReference is String?
          ? drawingReference
          : this.drawingReference,
      punchSpecification: punchSpecification is String?
          ? punchSpecification
          : this.punchSpecification,
      dieSpecification: dieSpecification is String?
          ? dieSpecification
          : this.dieSpecification,
      upperEmbossing: upperEmbossing is String?
          ? upperEmbossing
          : this.upperEmbossing,
      lowerEmbossing: lowerEmbossing is String?
          ? lowerEmbossing
          : this.lowerEmbossing,
      tabletShape: tabletShape is String? ? tabletShape : this.tabletShape,
      receivedOn: receivedOn is DateTime? ? receivedOn : this.receivedOn,
      openingTabletsMillions: openingTabletsMillions is double?
          ? openingTabletsMillions
          : this.openingTabletsMillions,
      lastIssuedStart: lastIssuedStart is int?
          ? lastIssuedStart
          : this.lastIssuedStart,
      lastIssuedEnd: lastIssuedEnd is int? ? lastIssuedEnd : this.lastIssuedEnd,
      partsManifest: partsManifest is String?
          ? partsManifest
          : this.partsManifest,
      registeredComponentCounts: registeredComponentCounts is String?
          ? registeredComponentCounts
          : this.registeredComponentCounts,
      toolingTypeId: toolingTypeId is _is.UuidValue?
          ? toolingTypeId
          : this.toolingTypeId,
      inventoryMode: inventoryMode ?? this.inventoryMode,
    );
  }
}

class ElogPunchSetsUpdateTable extends _is.UpdateTable<ElogPunchSetsTable> {
  ElogPunchSetsUpdateTable(super.table);

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

  _is.ColumnValue<String, String> manufacturer(String? value) =>
      _is.ColumnValue(
        table.manufacturer,
        value,
      );

  _is.ColumnValue<String, String> modelNumber(String? value) => _is.ColumnValue(
    table.modelNumber,
    value,
  );

  _is.ColumnValue<String, String> serialNumber(String? value) =>
      _is.ColumnValue(
        table.serialNumber,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> purchaseDate(DateTime? value) =>
      _is.ColumnValue(
        table.purchaseDate,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> installationDate(DateTime? value) =>
      _is.ColumnValue(
        table.installationDate,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> warrantyExpiry(DateTime? value) =>
      _is.ColumnValue(
        table.warrantyExpiry,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> productId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.productId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> supplierId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.supplierId,
    value,
  );

  _is.ColumnValue<String, String> manufacturingMonth(String? value) =>
      _is.ColumnValue(
        table.manufacturingMonth,
        value,
      );

  _is.ColumnValue<String, String> drawingReference(String? value) =>
      _is.ColumnValue(
        table.drawingReference,
        value,
      );

  _is.ColumnValue<String, String> punchSpecification(String? value) =>
      _is.ColumnValue(
        table.punchSpecification,
        value,
      );

  _is.ColumnValue<String, String> dieSpecification(String? value) =>
      _is.ColumnValue(
        table.dieSpecification,
        value,
      );

  _is.ColumnValue<String, String> upperEmbossing(String? value) =>
      _is.ColumnValue(
        table.upperEmbossing,
        value,
      );

  _is.ColumnValue<String, String> lowerEmbossing(String? value) =>
      _is.ColumnValue(
        table.lowerEmbossing,
        value,
      );

  _is.ColumnValue<String, String> tabletShape(String? value) => _is.ColumnValue(
    table.tabletShape,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> receivedOn(DateTime? value) =>
      _is.ColumnValue(
        table.receivedOn,
        value,
      );

  _is.ColumnValue<double, double> openingTabletsMillions(double? value) =>
      _is.ColumnValue(
        table.openingTabletsMillions,
        value,
      );

  _is.ColumnValue<int, int> lastIssuedStart(int? value) => _is.ColumnValue(
    table.lastIssuedStart,
    value,
  );

  _is.ColumnValue<int, int> lastIssuedEnd(int? value) => _is.ColumnValue(
    table.lastIssuedEnd,
    value,
  );

  _is.ColumnValue<String, String> partsManifest(String? value) =>
      _is.ColumnValue(
        table.partsManifest,
        value,
      );

  _is.ColumnValue<String, String> registeredComponentCounts(String? value) =>
      _is.ColumnValue(
        table.registeredComponentCounts,
        value,
      );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> toolingTypeId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.toolingTypeId,
    value,
  );

  _is.ColumnValue<String, String> inventoryMode(String value) =>
      _is.ColumnValue(
        table.inventoryMode,
        value,
      );
}

class ElogPunchSetsTable extends _is.Table<_is.UuidValue?> {
  ElogPunchSetsTable({super.tableRelation})
    : super(tableName: 'elog_punch_sets') {
    updateTable = ElogPunchSetsUpdateTable(this);
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
    manufacturer = _is.ColumnString(
      'manufacturer',
      this,
    );
    modelNumber = _is.ColumnString(
      'modelNumber',
      this,
    );
    serialNumber = _is.ColumnString(
      'serialNumber',
      this,
    );
    purchaseDate = _is.ColumnDateTime(
      'purchaseDate',
      this,
    );
    installationDate = _is.ColumnDateTime(
      'installationDate',
      this,
    );
    warrantyExpiry = _is.ColumnDateTime(
      'warrantyExpiry',
      this,
    );
    productId = _is.ColumnUuid(
      'productId',
      this,
    );
    supplierId = _is.ColumnUuid(
      'supplierId',
      this,
    );
    manufacturingMonth = _is.ColumnString(
      'manufacturingMonth',
      this,
    );
    drawingReference = _is.ColumnString(
      'drawingReference',
      this,
    );
    punchSpecification = _is.ColumnString(
      'punchSpecification',
      this,
    );
    dieSpecification = _is.ColumnString(
      'dieSpecification',
      this,
    );
    upperEmbossing = _is.ColumnString(
      'upperEmbossing',
      this,
    );
    lowerEmbossing = _is.ColumnString(
      'lowerEmbossing',
      this,
    );
    tabletShape = _is.ColumnString(
      'tabletShape',
      this,
    );
    receivedOn = _is.ColumnDateTime(
      'receivedOn',
      this,
    );
    openingTabletsMillions = _is.ColumnDouble(
      'openingTabletsMillions',
      this,
    );
    lastIssuedStart = _is.ColumnInt(
      'lastIssuedStart',
      this,
    );
    lastIssuedEnd = _is.ColumnInt(
      'lastIssuedEnd',
      this,
    );
    partsManifest = _is.ColumnString(
      'partsManifest',
      this,
    );
    registeredComponentCounts = _is.ColumnString(
      'registeredComponentCounts',
      this,
    );
    toolingTypeId = _is.ColumnUuid(
      'toolingTypeId',
      this,
    );
    inventoryMode = _is.ColumnString(
      'inventoryMode',
      this,
    );
  }

  late final ElogPunchSetsUpdateTable updateTable;

  late final _is.ColumnUuid idField;

  late final _is.ColumnString code;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString manufacturer;

  late final _is.ColumnString modelNumber;

  late final _is.ColumnString serialNumber;

  late final _is.ColumnDateTime purchaseDate;

  late final _is.ColumnDateTime installationDate;

  late final _is.ColumnDateTime warrantyExpiry;

  late final _is.ColumnUuid productId;

  late final _is.ColumnUuid supplierId;

  late final _is.ColumnString manufacturingMonth;

  late final _is.ColumnString drawingReference;

  late final _is.ColumnString punchSpecification;

  late final _is.ColumnString dieSpecification;

  late final _is.ColumnString upperEmbossing;

  late final _is.ColumnString lowerEmbossing;

  late final _is.ColumnString tabletShape;

  late final _is.ColumnDateTime receivedOn;

  late final _is.ColumnDouble openingTabletsMillions;

  late final _is.ColumnInt lastIssuedStart;

  late final _is.ColumnInt lastIssuedEnd;

  late final _is.ColumnString partsManifest;

  late final _is.ColumnString registeredComponentCounts;

  late final _is.ColumnUuid toolingTypeId;

  late final _is.ColumnString inventoryMode;

  @override
  List<_is.Column> get columns => [
    id,
    idField,
    code,
    name,
    description,
    manufacturer,
    modelNumber,
    serialNumber,
    purchaseDate,
    installationDate,
    warrantyExpiry,
    productId,
    supplierId,
    manufacturingMonth,
    drawingReference,
    punchSpecification,
    dieSpecification,
    upperEmbossing,
    lowerEmbossing,
    tabletShape,
    receivedOn,
    openingTabletsMillions,
    lastIssuedStart,
    lastIssuedEnd,
    partsManifest,
    registeredComponentCounts,
    toolingTypeId,
    inventoryMode,
  ];
}

class ElogPunchSetsInclude extends _is.IncludeObject {
  ElogPunchSetsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPunchSets.t;
}

class ElogPunchSetsIncludeList extends _is.IncludeList {
  ElogPunchSetsIncludeList._({
    _is.WhereExpressionBuilder<ElogPunchSetsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ElogPunchSets.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ElogPunchSets.t;
}

class ElogPunchSetsRepository {
  const ElogPunchSetsRepository._();

  /// Returns a list of [ElogPunchSets]s matching the given query parameters.
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
  Future<List<ElogPunchSets>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPunchSetsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPunchSetsTable>? orderBy,
    _is.OrderByListBuilder<ElogPunchSetsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ElogPunchSets>(
      where: where?.call(ElogPunchSets.t),
      orderBy: orderBy?.call(ElogPunchSets.t),
      orderByList: orderByList?.call(ElogPunchSets.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ElogPunchSets] matching the given query parameters.
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
  Future<ElogPunchSets?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPunchSetsTable>? where,
    int? offset,
    _is.OrderByBuilder<ElogPunchSetsTable>? orderBy,
    _is.OrderByListBuilder<ElogPunchSetsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ElogPunchSets>(
      where: where?.call(ElogPunchSets.t),
      orderBy: orderBy?.call(ElogPunchSets.t),
      orderByList: orderByList?.call(ElogPunchSets.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ElogPunchSets] by its [id] or null if no such row exists.
  Future<ElogPunchSets?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ElogPunchSets>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ElogPunchSets]s in the list and returns the inserted rows.
  ///
  /// The returned [ElogPunchSets]s will have their `id` fields set.
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
  Future<List<ElogPunchSets>> insert(
    _is.DatabaseSession session,
    List<ElogPunchSets> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ElogPunchSets>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ElogPunchSets] and returns the inserted row.
  ///
  /// The returned [ElogPunchSets] will have its `id` field set.
  Future<ElogPunchSets> insertRow(
    _is.DatabaseSession session,
    ElogPunchSets row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ElogPunchSets>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ElogPunchSets]s in the list and returns the resulting rows.
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
  /// The returned [ElogPunchSets]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPunchSets>> upsert(
    _is.DatabaseSession session,
    List<ElogPunchSets> rows, {
    required _is.ColumnSelections<ElogPunchSetsTable> conflictColumns,
    _is.ColumnSelections<ElogPunchSetsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPunchSetsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ElogPunchSets>(
      rows,
      conflictColumns: conflictColumns(ElogPunchSets.t),
      updateColumns: updateColumns?.call(ElogPunchSets.t),
      updateWhere: updateWhere?.call(ElogPunchSets.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ElogPunchSets] and returns the resulting row.
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
  /// The returned [ElogPunchSets] will have its `id` field set.
  Future<ElogPunchSets?> upsertRow(
    _is.DatabaseSession session,
    ElogPunchSets row, {
    required _is.ColumnSelections<ElogPunchSetsTable> conflictColumns,
    _is.ColumnSelections<ElogPunchSetsTable>? updateColumns,
    _is.WhereExpressionBuilder<ElogPunchSetsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ElogPunchSets>(
      row,
      conflictColumns: conflictColumns(ElogPunchSets.t),
      updateColumns: updateColumns?.call(ElogPunchSets.t),
      updateWhere: updateWhere?.call(ElogPunchSets.t),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPunchSets]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPunchSets>> update(
    _is.DatabaseSession session,
    List<ElogPunchSets> rows, {
    _is.ColumnSelections<ElogPunchSetsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ElogPunchSets>(
      rows,
      columns: columns?.call(ElogPunchSets.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ElogPunchSets]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ElogPunchSets> updateRow(
    _is.DatabaseSession session,
    ElogPunchSets row, {
    _is.ColumnSelections<ElogPunchSetsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ElogPunchSets>(
      row,
      columns: columns?.call(ElogPunchSets.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ElogPunchSets] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ElogPunchSets?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ElogPunchSetsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ElogPunchSets>(
      id,
      columnValues: columnValues(ElogPunchSets.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ElogPunchSets]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ElogPunchSets>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ElogPunchSetsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ElogPunchSetsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ElogPunchSetsTable>? orderBy,
    _is.OrderByListBuilder<ElogPunchSetsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ElogPunchSets>(
      columnValues: columnValues(ElogPunchSets.t.updateTable),
      where: where(ElogPunchSets.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ElogPunchSets.t),
      orderByList: orderByList?.call(ElogPunchSets.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ElogPunchSets]s in the list and returns the deleted rows.
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
  Future<List<ElogPunchSets>> delete(
    _is.DatabaseSession session,
    List<ElogPunchSets> rows, {
    _is.OrderByBuilder<ElogPunchSetsTable>? orderBy,
    _is.OrderByListBuilder<ElogPunchSetsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ElogPunchSets>(
      rows,
      orderBy: orderBy?.call(ElogPunchSets.t),
      orderByList: orderByList?.call(ElogPunchSets.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ElogPunchSets].
  Future<ElogPunchSets> deleteRow(
    _is.DatabaseSession session,
    ElogPunchSets row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ElogPunchSets>(
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
  Future<List<ElogPunchSets>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPunchSetsTable> where,
    _is.OrderByBuilder<ElogPunchSetsTable>? orderBy,
    _is.OrderByListBuilder<ElogPunchSetsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ElogPunchSets>(
      where: where(ElogPunchSets.t),
      orderBy: orderBy?.call(ElogPunchSets.t),
      orderByList: orderByList?.call(ElogPunchSets.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ElogPunchSetsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ElogPunchSets>(
      where: where?.call(ElogPunchSets.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ElogPunchSets] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ElogPunchSetsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ElogPunchSets>(
      where: where(ElogPunchSets.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
