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
import 'package:serverpod_client/serverpod_client.dart' as _isc;

abstract class ElogPunchSets
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
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
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required String code,
    required String name,
    String? description,
    String? manufacturer,
    String? modelNumber,
    String? serialNumber,
    DateTime? purchaseDate,
    DateTime? installationDate,
    DateTime? warrantyExpiry,
    _isc.UuidValue? productId,
    _isc.UuidValue? supplierId,
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
    _isc.UuidValue? toolingTypeId,
    required String inventoryMode,
  }) = _ElogPunchSetsImpl;

  factory ElogPunchSets.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPunchSets(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _isc.UuidValueJsonExtension.fromJson(
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
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['purchaseDate'],
            ),
      installationDate: jsonSerialization['installationDate'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['installationDate'],
            ),
      warrantyExpiry: jsonSerialization['warrantyExpiry'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['warrantyExpiry'],
            ),
      productId: jsonSerialization['productId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['productId'],
            ),
      supplierId: jsonSerialization['supplierId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
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
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['receivedOn'],
            ),
      openingTabletsMillions:
          (jsonSerialization['openingTabletsMillions'] as num?)?.toDouble(),
      lastIssuedStart: jsonSerialization['lastIssuedStart'] as int?,
      lastIssuedEnd: jsonSerialization['lastIssuedEnd'] as int?,
      partsManifest: jsonSerialization['partsManifest'] as String?,
      registeredComponentCounts:
          jsonSerialization['registeredComponentCounts'] as String?,
      toolingTypeId: jsonSerialization['toolingTypeId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['toolingTypeId'],
            ),
      inventoryMode: jsonSerialization['inventoryMode'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue idField;

  String code;

  String name;

  String? description;

  String? manufacturer;

  String? modelNumber;

  String? serialNumber;

  DateTime? purchaseDate;

  DateTime? installationDate;

  DateTime? warrantyExpiry;

  _isc.UuidValue? productId;

  _isc.UuidValue? supplierId;

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

  _isc.UuidValue? toolingTypeId;

  String inventoryMode;

  /// Returns a shallow copy of this [ElogPunchSets]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPunchSets copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? idField,
    String? code,
    String? name,
    String? description,
    String? manufacturer,
    String? modelNumber,
    String? serialNumber,
    DateTime? purchaseDate,
    DateTime? installationDate,
    DateTime? warrantyExpiry,
    _isc.UuidValue? productId,
    _isc.UuidValue? supplierId,
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
    _isc.UuidValue? toolingTypeId,
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

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPunchSetsImpl extends ElogPunchSets {
  _ElogPunchSetsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required String code,
    required String name,
    String? description,
    String? manufacturer,
    String? modelNumber,
    String? serialNumber,
    DateTime? purchaseDate,
    DateTime? installationDate,
    DateTime? warrantyExpiry,
    _isc.UuidValue? productId,
    _isc.UuidValue? supplierId,
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
    _isc.UuidValue? toolingTypeId,
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
  @_isc.useResult
  @override
  ElogPunchSets copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? idField,
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
      id: id is _isc.UuidValue? ? id : this.id,
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
      productId: productId is _isc.UuidValue? ? productId : this.productId,
      supplierId: supplierId is _isc.UuidValue? ? supplierId : this.supplierId,
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
      toolingTypeId: toolingTypeId is _isc.UuidValue?
          ? toolingTypeId
          : this.toolingTypeId,
      inventoryMode: inventoryMode ?? this.inventoryMode,
    );
  }
}
