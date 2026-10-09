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

abstract class ElogPdAllocationLines
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPdAllocationLines._({
    this.id,
    required this.allocationId,
    required this.assemblyId,
    required this.ordinal,
    required this.status,
    this.returnedOperationId,
  });

  factory ElogPdAllocationLines({
    _isc.UuidValue? id,
    required _isc.UuidValue allocationId,
    required _isc.UuidValue assemblyId,
    required int ordinal,
    required String status,
    _isc.UuidValue? returnedOperationId,
  }) = _ElogPdAllocationLinesImpl;

  factory ElogPdAllocationLines.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPdAllocationLines(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      allocationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['allocationId'],
      ),
      assemblyId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['assemblyId'],
      ),
      ordinal: jsonSerialization['ordinal'] as int,
      status: jsonSerialization['status'] as String,
      returnedOperationId: jsonSerialization['returnedOperationId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['returnedOperationId'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue allocationId;

  _isc.UuidValue assemblyId;

  int ordinal;

  String status;

  _isc.UuidValue? returnedOperationId;

  /// Returns a shallow copy of this [ElogPdAllocationLines]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPdAllocationLines copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? allocationId,
    _isc.UuidValue? assemblyId,
    int? ordinal,
    String? status,
    _isc.UuidValue? returnedOperationId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdAllocationLines',
      if (id != null) 'id': id?.toJson(),
      'allocationId': allocationId.toJson(),
      'assemblyId': assemblyId.toJson(),
      'ordinal': ordinal,
      'status': status,
      if (returnedOperationId != null)
        'returnedOperationId': returnedOperationId?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdAllocationLines',
      if (id != null) 'id': id?.toJson(),
      'allocationId': allocationId.toJson(),
      'assemblyId': assemblyId.toJson(),
      'ordinal': ordinal,
      'status': status,
      if (returnedOperationId != null)
        'returnedOperationId': returnedOperationId?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdAllocationLinesImpl extends ElogPdAllocationLines {
  _ElogPdAllocationLinesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue allocationId,
    required _isc.UuidValue assemblyId,
    required int ordinal,
    required String status,
    _isc.UuidValue? returnedOperationId,
  }) : super._(
         id: id,
         allocationId: allocationId,
         assemblyId: assemblyId,
         ordinal: ordinal,
         status: status,
         returnedOperationId: returnedOperationId,
       );

  /// Returns a shallow copy of this [ElogPdAllocationLines]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPdAllocationLines copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? allocationId,
    _isc.UuidValue? assemblyId,
    int? ordinal,
    String? status,
    Object? returnedOperationId = _Undefined,
  }) {
    return ElogPdAllocationLines(
      id: id is _isc.UuidValue? ? id : this.id,
      allocationId: allocationId ?? this.allocationId,
      assemblyId: assemblyId ?? this.assemblyId,
      ordinal: ordinal ?? this.ordinal,
      status: status ?? this.status,
      returnedOperationId: returnedOperationId is _isc.UuidValue?
          ? returnedOperationId
          : this.returnedOperationId,
    );
  }
}
