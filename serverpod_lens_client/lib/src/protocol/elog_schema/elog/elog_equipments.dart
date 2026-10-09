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

abstract class ElogEquipments
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogEquipments._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.manufacturer,
    this.modelNumber,
    this.serialNumber,
    this.purchaseDate,
    this.installationDate,
    this.warrantyExpiry,
    this.equipmentCategoryId,
  });

  factory ElogEquipments({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? manufacturer,
    String? modelNumber,
    String? serialNumber,
    DateTime? purchaseDate,
    DateTime? installationDate,
    DateTime? warrantyExpiry,
    _isc.UuidValue? equipmentCategoryId,
  }) = _ElogEquipmentsImpl;

  factory ElogEquipments.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogEquipments(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
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
      equipmentCategoryId: jsonSerialization['equipmentCategoryId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['equipmentCategoryId'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String? description;

  String? manufacturer;

  String? modelNumber;

  String? serialNumber;

  DateTime? purchaseDate;

  DateTime? installationDate;

  DateTime? warrantyExpiry;

  _isc.UuidValue? equipmentCategoryId;

  /// Returns a shallow copy of this [ElogEquipments]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogEquipments copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? manufacturer,
    String? modelNumber,
    String? serialNumber,
    DateTime? purchaseDate,
    DateTime? installationDate,
    DateTime? warrantyExpiry,
    _isc.UuidValue? equipmentCategoryId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogEquipments',
      if (id != null) 'id': id?.toJson(),
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
      if (equipmentCategoryId != null)
        'equipmentCategoryId': equipmentCategoryId?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogEquipments',
      if (id != null) 'id': id?.toJson(),
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
      if (equipmentCategoryId != null)
        'equipmentCategoryId': equipmentCategoryId?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogEquipmentsImpl extends ElogEquipments {
  _ElogEquipmentsImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? manufacturer,
    String? modelNumber,
    String? serialNumber,
    DateTime? purchaseDate,
    DateTime? installationDate,
    DateTime? warrantyExpiry,
    _isc.UuidValue? equipmentCategoryId,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         manufacturer: manufacturer,
         modelNumber: modelNumber,
         serialNumber: serialNumber,
         purchaseDate: purchaseDate,
         installationDate: installationDate,
         warrantyExpiry: warrantyExpiry,
         equipmentCategoryId: equipmentCategoryId,
       );

  /// Returns a shallow copy of this [ElogEquipments]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogEquipments copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? manufacturer = _Undefined,
    Object? modelNumber = _Undefined,
    Object? serialNumber = _Undefined,
    Object? purchaseDate = _Undefined,
    Object? installationDate = _Undefined,
    Object? warrantyExpiry = _Undefined,
    Object? equipmentCategoryId = _Undefined,
  }) {
    return ElogEquipments(
      id: id is _isc.UuidValue? ? id : this.id,
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
      equipmentCategoryId: equipmentCategoryId is _isc.UuidValue?
          ? equipmentCategoryId
          : this.equipmentCategoryId,
    );
  }
}
