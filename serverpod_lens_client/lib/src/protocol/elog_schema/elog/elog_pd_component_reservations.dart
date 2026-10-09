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

abstract class ElogPdComponentReservations
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPdComponentReservations._({
    this.id,
    required this.componentId,
    required this.operationId,
  });

  factory ElogPdComponentReservations({
    _isc.UuidValue? id,
    required _isc.UuidValue componentId,
    required _isc.UuidValue operationId,
  }) = _ElogPdComponentReservationsImpl;

  factory ElogPdComponentReservations.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPdComponentReservations(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      componentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['componentId'],
      ),
      operationId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['operationId'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue componentId;

  _isc.UuidValue operationId;

  /// Returns a shallow copy of this [ElogPdComponentReservations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPdComponentReservations copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? componentId,
    _isc.UuidValue? operationId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdComponentReservations',
      if (id != null) 'id': id?.toJson(),
      'componentId': componentId.toJson(),
      'operationId': operationId.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdComponentReservations',
      if (id != null) 'id': id?.toJson(),
      'componentId': componentId.toJson(),
      'operationId': operationId.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdComponentReservationsImpl extends ElogPdComponentReservations {
  _ElogPdComponentReservationsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue componentId,
    required _isc.UuidValue operationId,
  }) : super._(
         id: id,
         componentId: componentId,
         operationId: operationId,
       );

  /// Returns a shallow copy of this [ElogPdComponentReservations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPdComponentReservations copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? componentId,
    _isc.UuidValue? operationId,
  }) {
    return ElogPdComponentReservations(
      id: id is _isc.UuidValue? ? id : this.id,
      componentId: componentId ?? this.componentId,
      operationId: operationId ?? this.operationId,
    );
  }
}
