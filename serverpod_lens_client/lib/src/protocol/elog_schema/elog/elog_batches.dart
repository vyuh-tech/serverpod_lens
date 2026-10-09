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

abstract class ElogBatches
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogBatches._({
    this.id,
    required this.batchNumber,
    required this.productId,
    required this.batchSize,
    required this.batchSizeUnitId,
    this.isActive,
  });

  factory ElogBatches({
    _isc.UuidValue? id,
    required String batchNumber,
    required _isc.UuidValue productId,
    required int batchSize,
    required _isc.UuidValue batchSizeUnitId,
    bool? isActive,
  }) = _ElogBatchesImpl;

  factory ElogBatches.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogBatches(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      batchNumber: jsonSerialization['batchNumber'] as String,
      productId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['productId'],
      ),
      batchSize: jsonSerialization['batchSize'] as int,
      batchSizeUnitId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['batchSizeUnitId'],
      ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String batchNumber;

  _isc.UuidValue productId;

  int batchSize;

  _isc.UuidValue batchSizeUnitId;

  bool? isActive;

  /// Returns a shallow copy of this [ElogBatches]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogBatches copyWith({
    _isc.UuidValue? id,
    String? batchNumber,
    _isc.UuidValue? productId,
    int? batchSize,
    _isc.UuidValue? batchSizeUnitId,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogBatches',
      if (id != null) 'id': id?.toJson(),
      'batchNumber': batchNumber,
      'productId': productId.toJson(),
      'batchSize': batchSize,
      'batchSizeUnitId': batchSizeUnitId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogBatches',
      if (id != null) 'id': id?.toJson(),
      'batchNumber': batchNumber,
      'productId': productId.toJson(),
      'batchSize': batchSize,
      'batchSizeUnitId': batchSizeUnitId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogBatchesImpl extends ElogBatches {
  _ElogBatchesImpl({
    _isc.UuidValue? id,
    required String batchNumber,
    required _isc.UuidValue productId,
    required int batchSize,
    required _isc.UuidValue batchSizeUnitId,
    bool? isActive,
  }) : super._(
         id: id,
         batchNumber: batchNumber,
         productId: productId,
         batchSize: batchSize,
         batchSizeUnitId: batchSizeUnitId,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogBatches]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogBatches copyWith({
    Object? id = _Undefined,
    String? batchNumber,
    _isc.UuidValue? productId,
    int? batchSize,
    _isc.UuidValue? batchSizeUnitId,
    Object? isActive = _Undefined,
  }) {
    return ElogBatches(
      id: id is _isc.UuidValue? ? id : this.id,
      batchNumber: batchNumber ?? this.batchNumber,
      productId: productId ?? this.productId,
      batchSize: batchSize ?? this.batchSize,
      batchSizeUnitId: batchSizeUnitId ?? this.batchSizeUnitId,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}
