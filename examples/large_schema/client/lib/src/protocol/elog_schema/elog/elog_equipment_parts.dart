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

abstract class ElogEquipmentParts
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogEquipmentParts._({
    this.id,
    required this.punchSetId,
    required this.code,
    required this.name,
    required this.partType,
    this.serialNumber,
    required this.condition,
    required this.metadata,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ElogEquipmentParts({
    _isc.UuidValue? id,
    required _isc.UuidValue punchSetId,
    required String code,
    required String name,
    required String partType,
    String? serialNumber,
    required String condition,
    required String metadata,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ElogEquipmentPartsImpl;

  factory ElogEquipmentParts.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogEquipmentParts(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      punchSetId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['punchSetId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      partType: jsonSerialization['partType'] as String,
      serialNumber: jsonSerialization['serialNumber'] as String?,
      condition: jsonSerialization['condition'] as String,
      metadata: jsonSerialization['metadata'] as String,
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue punchSetId;

  String code;

  String name;

  String partType;

  String? serialNumber;

  String condition;

  String metadata;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [ElogEquipmentParts]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogEquipmentParts copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? punchSetId,
    String? code,
    String? name,
    String? partType,
    String? serialNumber,
    String? condition,
    String? metadata,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogEquipmentParts',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'code': code,
      'name': name,
      'partType': partType,
      if (serialNumber != null) 'serialNumber': serialNumber,
      'condition': condition,
      'metadata': metadata,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogEquipmentParts',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'code': code,
      'name': name,
      'partType': partType,
      if (serialNumber != null) 'serialNumber': serialNumber,
      'condition': condition,
      'metadata': metadata,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogEquipmentPartsImpl extends ElogEquipmentParts {
  _ElogEquipmentPartsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue punchSetId,
    required String code,
    required String name,
    required String partType,
    String? serialNumber,
    required String condition,
    required String metadata,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         punchSetId: punchSetId,
         code: code,
         name: name,
         partType: partType,
         serialNumber: serialNumber,
         condition: condition,
         metadata: metadata,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [ElogEquipmentParts]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogEquipmentParts copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? punchSetId,
    String? code,
    String? name,
    String? partType,
    Object? serialNumber = _Undefined,
    String? condition,
    String? metadata,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ElogEquipmentParts(
      id: id is _isc.UuidValue? ? id : this.id,
      punchSetId: punchSetId ?? this.punchSetId,
      code: code ?? this.code,
      name: name ?? this.name,
      partType: partType ?? this.partType,
      serialNumber: serialNumber is String? ? serialNumber : this.serialNumber,
      condition: condition ?? this.condition,
      metadata: metadata ?? this.metadata,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
