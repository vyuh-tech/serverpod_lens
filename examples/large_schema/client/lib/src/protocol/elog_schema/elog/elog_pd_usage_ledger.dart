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

abstract class ElogPdUsageLedger
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPdUsageLedger._({
    this.id,
    required this.operationId,
    required this.assemblyId,
    required this.componentId,
    required this.quantity,
    required this.unit,
    required this.attribution,
    required this.createdAt,
  });

  factory ElogPdUsageLedger({
    _isc.UuidValue? id,
    required _isc.UuidValue operationId,
    required _isc.UuidValue assemblyId,
    required _isc.UuidValue componentId,
    required BigInt quantity,
    required String unit,
    required String attribution,
    required DateTime createdAt,
  }) = _ElogPdUsageLedgerImpl;

  factory ElogPdUsageLedger.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPdUsageLedger(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      operationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['operationId'],
      ),
      assemblyId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['assemblyId'],
      ),
      componentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['componentId'],
      ),
      quantity: _isc.BigIntJsonExtension.fromJson(
        jsonSerialization['quantity'],
      ),
      unit: jsonSerialization['unit'] as String,
      attribution: jsonSerialization['attribution'] as String,
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue operationId;

  _isc.UuidValue assemblyId;

  _isc.UuidValue componentId;

  BigInt quantity;

  String unit;

  String attribution;

  DateTime createdAt;

  /// Returns a shallow copy of this [ElogPdUsageLedger]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPdUsageLedger copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? operationId,
    _isc.UuidValue? assemblyId,
    _isc.UuidValue? componentId,
    BigInt? quantity,
    String? unit,
    String? attribution,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdUsageLedger',
      if (id != null) 'id': id?.toJson(),
      'operationId': operationId.toJson(),
      'assemblyId': assemblyId.toJson(),
      'componentId': componentId.toJson(),
      'quantity': quantity.toJson(),
      'unit': unit,
      'attribution': attribution,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdUsageLedger',
      if (id != null) 'id': id?.toJson(),
      'operationId': operationId.toJson(),
      'assemblyId': assemblyId.toJson(),
      'componentId': componentId.toJson(),
      'quantity': quantity.toJson(),
      'unit': unit,
      'attribution': attribution,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdUsageLedgerImpl extends ElogPdUsageLedger {
  _ElogPdUsageLedgerImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue operationId,
    required _isc.UuidValue assemblyId,
    required _isc.UuidValue componentId,
    required BigInt quantity,
    required String unit,
    required String attribution,
    required DateTime createdAt,
  }) : super._(
         id: id,
         operationId: operationId,
         assemblyId: assemblyId,
         componentId: componentId,
         quantity: quantity,
         unit: unit,
         attribution: attribution,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [ElogPdUsageLedger]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPdUsageLedger copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? operationId,
    _isc.UuidValue? assemblyId,
    _isc.UuidValue? componentId,
    BigInt? quantity,
    String? unit,
    String? attribution,
    DateTime? createdAt,
  }) {
    return ElogPdUsageLedger(
      id: id is _isc.UuidValue? ? id : this.id,
      operationId: operationId ?? this.operationId,
      assemblyId: assemblyId ?? this.assemblyId,
      componentId: componentId ?? this.componentId,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      attribution: attribution ?? this.attribution,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
