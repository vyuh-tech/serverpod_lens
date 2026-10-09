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

abstract class ElogAreaAdjacency
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogAreaAdjacency._({
    this.id,
    required this.areaId,
    required this.adjacentAreaId,
    this.isActive,
  });

  factory ElogAreaAdjacency({
    _isc.UuidValue? id,
    required _isc.UuidValue areaId,
    required _isc.UuidValue adjacentAreaId,
    bool? isActive,
  }) = _ElogAreaAdjacencyImpl;

  factory ElogAreaAdjacency.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogAreaAdjacency(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      areaId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['areaId']),
      adjacentAreaId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['adjacentAreaId'],
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

  _isc.UuidValue areaId;

  _isc.UuidValue adjacentAreaId;

  bool? isActive;

  /// Returns a shallow copy of this [ElogAreaAdjacency]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogAreaAdjacency copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? areaId,
    _isc.UuidValue? adjacentAreaId,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogAreaAdjacency',
      if (id != null) 'id': id?.toJson(),
      'areaId': areaId.toJson(),
      'adjacentAreaId': adjacentAreaId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogAreaAdjacency',
      if (id != null) 'id': id?.toJson(),
      'areaId': areaId.toJson(),
      'adjacentAreaId': adjacentAreaId.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogAreaAdjacencyImpl extends ElogAreaAdjacency {
  _ElogAreaAdjacencyImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue areaId,
    required _isc.UuidValue adjacentAreaId,
    bool? isActive,
  }) : super._(
         id: id,
         areaId: areaId,
         adjacentAreaId: adjacentAreaId,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogAreaAdjacency]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogAreaAdjacency copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? areaId,
    _isc.UuidValue? adjacentAreaId,
    Object? isActive = _Undefined,
  }) {
    return ElogAreaAdjacency(
      id: id is _isc.UuidValue? ? id : this.id,
      areaId: areaId ?? this.areaId,
      adjacentAreaId: adjacentAreaId ?? this.adjacentAreaId,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}
